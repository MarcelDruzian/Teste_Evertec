using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("Estados")]
public class EstadoModel
{
    [Key]
    [Column("ID_Estado")]
    public int ID_Estado { get; set; }
    [Column("Sigla_Estado")]
    public string Sigla_Estado { get; set; }

    [Column("Nome")]
    public string Nome_Estado { get; set; }
}
