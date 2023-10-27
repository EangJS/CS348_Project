using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Catalog.Models
{
	public class Session
	{
		public string CourseName { get; set; }
		[Key]
		public string Section { get; set; }
		public string Type { get; set; }
		public string DayOfWeek { get; set; }
		public string PublishedStart { get; set; }
		public string PublishedEnd { get; set; }
		public string Location { get; set; }
		public string Email { get; set; }

        public Session()
		{
		}
	}
}

