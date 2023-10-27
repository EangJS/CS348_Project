using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Catalog.Models
{
	public class Courses
	{
		[Column("CourseSubjectAbbreviation")]
		public string SubjectAbbreviation { get; set; }
		[Key]
		[Column("CourseNumber")]
		public string Number { get; set; }
		//public string ShortTitle { get; set; }
		//public string LongTitle{get;set;}
		//public string Description{get;set;}
		//public string CreditBasis{get;set;}
		//public string CreditMinimumValue{get;set;}
		//public string CreditMaximumValue{get;set;}
		//public string Level{get;set;}
        //public string Attribute{get;set;}


        public Courses()
		{
		}
	}
}

