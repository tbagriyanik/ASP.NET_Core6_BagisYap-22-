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
    public class bagisturusController : Controller
    {
        private readonly ApplicationDbContext _context;

        public bagisturusController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: bagisturus
        public async Task<IActionResult> Index()
        {
              return _context.bagisturu != null ? 
                          View(await _context.bagisturu.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.bagisturu'  is null.");
        }

        // GET: bagisturus/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.bagisturu == null)
            {
                return NotFound();
            }

            var bagisturu = await _context.bagisturu
                .FirstOrDefaultAsync(m => m.Id == id);
            if (bagisturu == null)
            {
                return NotFound();
            }

            return View(bagisturu);
        }

        // GET: bagisturus/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: bagisturus/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,bagisAdi,bagisDetay,resim")] bagisturu bagisturu)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bagisturu);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(bagisturu);
        }

        // GET: bagisturus/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.bagisturu == null)
            {
                return NotFound();
            }

            var bagisturu = await _context.bagisturu.FindAsync(id);
            if (bagisturu == null)
            {
                return NotFound();
            }
            return View(bagisturu);
        }

        // POST: bagisturus/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,bagisAdi,bagisDetay,resim")] bagisturu bagisturu)
        {
            if (id != bagisturu.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bagisturu);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!bagisturuExists(bagisturu.Id))
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
            return View(bagisturu);
        }

        // GET: bagisturus/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.bagisturu == null)
            {
                return NotFound();
            }

            var bagisturu = await _context.bagisturu
                .FirstOrDefaultAsync(m => m.Id == id);
            if (bagisturu == null)
            {
                return NotFound();
            }

            return View(bagisturu);
        }

        // POST: bagisturus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.bagisturu == null)
            {
                return Problem("Entity set 'ApplicationDbContext.bagisturu'  is null.");
            }
            var bagisturu = await _context.bagisturu.FindAsync(id);
            if (bagisturu != null)
            {
                _context.bagisturu.Remove(bagisturu);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool bagisturuExists(int id)
        {
          return (_context.bagisturu?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
