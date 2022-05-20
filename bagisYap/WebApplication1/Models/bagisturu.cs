using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApplication1.Models
{
    public class bagisturu
    {
        [Key]
        public int Id { get; set; }
        public string? bagisAdi { get; set; }
        public string? bagisDetay { get; set; }
        public string? resim { get; set; }

        [NotMapped]
        public float altToplam { get; set; }
        [NotMapped]
        public int altSay { get; set; }
    }
}
