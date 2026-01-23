using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.SqlServer.Server;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("Ponto_Turistico")]
public class PontoTuristicoModel
{
    [Key]
    [Column("ID_Ponto_Turistico")]
    public int ID_Ponto_Turistico { get; set; }

    [Required]
    [Column("Nome_Ponto_Turistico")]
    public string Nome_Ponto_Turistico { get; set; }

    [Required]
    [Column("Referencia_Ponto_Turistico")]
    public string Referencia_Ponto_Turistico { get; set; }

    [ForeignKey("Cidade")]
    [Required(ErrorMessage = "Selecione uma cidade")]
    [Column("ID_Cidade")]
    public int? ID_Cidade { get; set; }

    [Column("Descricao")]
    public string Descricao { get; set; }

    [ValidateNever]
    [Column("Data_Cadastro")]
    public DateTime Data_Cadastro { get; set; }

    [ValidateNever]
    public CidadeModel Cidade { get; set; }
}
