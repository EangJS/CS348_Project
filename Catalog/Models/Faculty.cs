using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Catalog.Models
{
    [Table("faculty")]
    public class Faculty
    {
        [Key]
        public string UPN { get; set; }
        public string? Name { get; set; }
        public string? Department { get; set; }
        public string? Email { get; set; }

        public Faculty() { }

    }
}

