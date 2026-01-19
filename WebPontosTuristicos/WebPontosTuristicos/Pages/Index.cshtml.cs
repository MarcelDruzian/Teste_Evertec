using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebPontosTuristicos.Data;

namespace WebPontosTuristicos.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly AppDbContext _context;

        public IndexModel(AppDbContext context)
        {
            _context = context;
        }

        public IList<PontoTuristicoModel> PontosTuristicos { get; set; }

        public async Task OnGetAsync()
        {
            PontosTuristicos = await _context.PontosTuristicos.ToListAsync();
        }
    }
}
