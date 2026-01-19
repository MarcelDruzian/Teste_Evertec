using Microsoft.EntityFrameworkCore;

namespace WebPontosTuristicos.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext() { }
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<CidadeModel> Cidades { get; set; }
        public DbSet<PontoTuristicoModel> PontosTuristicos { get; set; }
        public DbSet<EstadoModel> Estados { get; set; }
    }
}
