using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Security.Cryptography;
using System.Threading.Tasks;
using WebPontosTuristicos.Data;

namespace WebPontosTuristicos.Pages
{
    public class DetalhesModel : PageModel
    {
        private readonly ILogger<CadastroModel> _logger;
        
        private readonly AppDbContext _context;
        public EstadoModel Estados { get; set; }
        public CidadeModel Cidades { get; set; }

        public IList<EstadoModel> ListaEstados { get; set; }
        public List<CidadeModel> ListaCidades { get; set; }

        [BindProperty]
        public PontoTuristicoModel Ponto { get; set; }

        [BindProperty(SupportsGet = true)]
        public int Id { get; set; }

        [BindProperty]
        public bool IsEditMode { get; set; }

        [BindProperty]
        public int EstadoSelecionadoId { get; set; }

        public DetalhesModel(ILogger<CadastroModel> logger,
                             AppDbContext appDbContext)
        {
            _logger = logger;
            _context = appDbContext;
        }

        public async Task OnGet()
        {
            CarregarDados();
        }

        private void CarregarDados()
        {
            Ponto = _context.PontosTuristicos
            .Join(_context.Cidades,
                  p => p.ID_Cidade,
                  c => c.ID_Cidade,
                  (p, c) => new PontoTuristicoModel
                  {
                      ID_Ponto_Turistico = p.ID_Ponto_Turistico,
                      Nome_Ponto_Turistico = p.Nome_Ponto_Turistico,
                      Referencia_Ponto_Turistico = p.Referencia_Ponto_Turistico,
                      ID_Cidade = p.ID_Cidade,
                      Descricao = p.Descricao,
                      Data_Cadastro = p.Data_Cadastro,
                      Cidade = c
                  })
            .First(p => p.ID_Ponto_Turistico == Id);

            EstadoSelecionadoId = Ponto.Cidade.ID_Estado;

            Estados = _context.Estados.First(e => e.ID_Estado.Equals(EstadoSelecionadoId));

            onGetListaEstados();
        }

        private void onGetListaEstados()
        {
            ListaEstados = _context.Estados.ToList();
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

        public IActionResult OnPostEditar()
        {
            IsEditMode = true;
            onGetListaEstados();
            CarregarDados();
            return Page();
        }


        public async Task<IActionResult> OnPostSalvarAsync()
        {
            if (!ModelState.IsValid)
            {
                CarregarDados();
                return Page();
            }

            //Ponto.Data_Cadastro = DateTime.Now;

            _context.PontosTuristicos.Update(Ponto);
            await _context.SaveChangesAsync();

            IsEditMode = false;
            CarregarDados();
            return Page();
        }

        public async Task<IActionResult> OnPostExcluirAsync()
        {
            await _context.PontosTuristicos
                .Where(p => p.ID_Ponto_Turistico == Id)
                .ExecuteDeleteAsync();

            return RedirectToPage("/Index");
        }

    }

}


