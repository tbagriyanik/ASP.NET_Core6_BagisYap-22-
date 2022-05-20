using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class bagisController : Controller
    {
        private readonly ApplicationDbContext _context;

        public bagisController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: bagis
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.bagis.Include(b => b.bagisturu);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: bagis/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.bagis == null)
            {
                return NotFound();
            }

            var bagis = await _context.bagis
                .Include(b => b.bagisturu)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (bagis == null)
            {
                return NotFound();
            }

            return View(bagis);
        }

        // GET: bagis/Create
        public IActionResult Create()
        {
            ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi");
            return View();
        }

        // POST: bagis/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,bagisci,miktar,bagisTuruID")] bagis bagis)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bagis);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi", bagis.bagisTuruID);
            return View(bagis);
        }

        // GET: bagis/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.bagis == null)
            {
                return NotFound();
            }

            var bagis = await _context.bagis.FindAsync(id);
            if (bagis == null)
            {
                return NotFound();
            }
            ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi", bagis.bagisTuruID);
            return View(bagis);
        }

        // POST: bagis/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,bagisci,miktar,bagisTuruID")] bagis bagis)
        {
            if (id != bagis.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bagis);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!bagisExists(bagis.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi", bagis.bagisTuruID);
            return View(bagis);
        }

        // GET: bagis/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.bagis == null)
            {
                return NotFound();
            }

            var bagis = await _context.bagis
                .Include(b => b.bagisturu)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (bagis == null)
            {
                return NotFound();
            }

            return View(bagis);
        }

        // POST: bagis/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.bagis == null)
            {
                return Problem("Entity set 'ApplicationDbContext.bagis'  is null.");
            }
            var bagis = await _context.bagis.FindAsync(id);
            if (bagis != null)
            {
                _context.bagis.Remove(bagis);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool bagisExists(int id)
        {
          return (_context.bagis?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
