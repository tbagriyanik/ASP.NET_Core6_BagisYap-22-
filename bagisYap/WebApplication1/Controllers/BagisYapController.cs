using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using WebApplication1.Data;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class BagisYapController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BagisYapController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index(int? tur = null)
        {
            if (tur != null)
            {
                ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi", tur);
            }
            else
                ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi");
           
            return View();
        }

        public IActionResult Ekle()
        {
            ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi");

            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Ekle([Bind("Id,bagisci,miktar,bagisTuruID")] bagis bagis)
        {
            if (bagis.bagisci != "" && bagis.miktar > 0)
            {
                _context.Add(bagis);
                await _context.SaveChangesAsync();

                ViewData["bagisTuruID"] = new SelectList(_context.Set<bagisturu>(), "Id", "bagisAdi", bagis.bagisTuruID);
            } else
                return RedirectToAction(nameof(Index));
            return View(bagis);
        }
    }
}
