using Microsoft.AspNetCore.Mvc;
using WebPontosTuristicos.Data;

namespace WebPontosTuristicos.Controllers
{
    public class PontosTuristicosController : Controller
    {
        private readonly AppDbContext _context;

        public PontosTuristicosController(AppDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var pontos = _context.PontosTuristicos.ToList();
            return View(pontos);
        }
    }
}