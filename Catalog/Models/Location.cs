using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Catalog.Models
{
    [Table("locations")]
    public class Location
    {
        [Key]
        public string LocationId { get; set; }
        public int? Capacity { get; set; } 
        public int? Area { get; set; } 
        public double? Latitude { get; set; } 
        public double? Longitude { get; set; }

        public Location() { }
    }
}
