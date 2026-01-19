using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("Cidades")]
public class CidadeModel
{
    [Key]
    [Column("ID_Cidade")]
    public int ID_Cidade { get; set; }

    [Column("Nome")]    
    public string Nome_Cidade { get; set; }

    [ForeignKey("Estado")]
    [Column("ID_Estado")]
    public int ID_Estado { get; set; }
    
    public EstadoModel Estado { get; set; }
}