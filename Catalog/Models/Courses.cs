using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Catalog.Models
{
	/// <summary>
	/// Model that represents the courses from the database's courses table.
	/// </summary>
	public class Courses
	{
		[Column("CourseSubjectAbbreviation")]
		public string SubjectAbbreviation { get; set; }
		[Key]
		[Column("CourseNumber")]
		public string Number { get; set; }

        public Courses()
		{
		}
	}
}

