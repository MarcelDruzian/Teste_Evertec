using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.EntityFrameworkCore;
using WebPontosTuristicos.Data;

namespace WebPontosTuristicos.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly AppDbContext _context;
        
        [BindProperty(SupportsGet = true)]
        public string TermoBusca { get; set; }

        public IndexModel(AppDbContext context)
        {
            _context = context;
        }

        public IList<PontoTuristicoModel> PontosTuristicos { get; set; }

        public async Task OnGetAsync()
        {            
            if (!string.IsNullOrEmpty(TermoBusca))
            {
                PontosTuristicos = await _context.PontosTuristicos
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
                    //.Take(5)
                    .Where(ponto => ponto.Nome_Ponto_Turistico.Contains(TermoBusca) ||
                                    ponto.Referencia_Ponto_Turistico.Contains(TermoBusca) ||
                                    ponto.Descricao.Contains(TermoBusca))
                    .OrderByDescending(p => p.Data_Cadastro)
                    .ToListAsync();
            }
            else
            {
                PontosTuristicos = await _context.PontosTuristicos
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
                    .OrderByDescending(p => p.Data_Cadastro)
                    .ToListAsync();
            }            
        }
    }
}
