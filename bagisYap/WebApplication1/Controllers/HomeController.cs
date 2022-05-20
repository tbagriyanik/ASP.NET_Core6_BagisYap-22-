using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebApplication1.Data;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _context = context;
            _logger = logger;
        }

        public IActionResult Index()
        {
            var _tablo = _context.bagisturu.ToList();

            foreach (var item in _tablo)
            {
                item.altToplam = toplam(item.Id);
                item.altSay = say(item.Id);
            }
            return View(_tablo.ToList());
        }

        public float toplam(int id)
        {
            return _context.bagis.Where(x => x.bagisTuruID == id).Sum(x => x.miktar);
        }

        public int say(int id)
        {
            return _context.bagis.Where(x => x.bagisTuruID == id).Count();
        }

        public IActionResult Yonet()
        {
            ViewData["say"] = _context.bagis.Count();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}