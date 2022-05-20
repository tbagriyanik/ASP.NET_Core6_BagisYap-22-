using System.ComponentModel.DataAnnotations;

namespace WebApplication1.Models
{
    public class bagis
    {
        [Key]
        public int Id { get; set; }
        public string? bagisci { get; set; }
        public float miktar { get; set; }

        public int bagisTuruID  { get; set; }
        public bagisturu bagisturu { get; set; }
    }
}
