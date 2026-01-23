using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Security.Cryptography;
using System.Threading.Tasks;
using WebPontosTuristicos.Data;

namespace WebPontosTuristicos.Pages
{
    public class CadastroModel : PageModel
    {
        private readonly ILogger<CadastroModel> _logger;
        
        private readonly AppDbContext _context;
        public IList<EstadoModel> Estados { get; set; }
        public IList<CidadeModel> Cidades { get; set; }

        [BindProperty]
        public PontoTuristicoModel Ponto { get; set; }

        public CadastroModel(ILogger<CadastroModel> logger,
                             AppDbContext appDbContext)
        {
            _logger = logger;
            _context = appDbContext;
        }

        public async Task OnGet()
        {
            Estados = await _context.Estados.ToListAsync();
        }

        public async Task<JsonResult> OnGetCidadesAsync(int estadoId)
        {
            var cidades = await _context.Cidades
                .Where(c => c.ID_Estado == estadoId)
                .Select(c => new
                {
                    c.ID_Cidade,
                    c.Nome_Cidade
                })
                .ToListAsync();

            return new JsonResult(cidades);
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                Estados = await _context.Estados.ToListAsync();
                return Page();
            }

            Ponto.Data_Cadastro = DateTime.Now;

            _context.PontosTuristicos.Add(Ponto);
            await _context.SaveChangesAsync();

            return RedirectToPage("/Index");
        }


    }

}


