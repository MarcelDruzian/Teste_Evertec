using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("Ponto_Turistico")]
public class PontoTuristicoModel
{
    [Key]
    [Column("ID_Ponto_Turistico")]
    public int ID_Ponto_Turistico { get; set; }
    
    [Column("Nome_Ponto_Turistico")]
    public string Nome_Ponto_Turistico { get; set; }
    
    [Column("Referencia_Ponto_Turistico")]
    public string Referencia_Ponto_Turistico { get; set; }

    [ForeignKey("Cidade")]
    [Column("ID_Cidade")]
    public int ID_Cidade { get; set; }

    [Column("Descricao")]
    public string Descricao { get; set; }
    public CidadeModel Cidade { get; set; }
}
