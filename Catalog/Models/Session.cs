using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Catalog.Models
{
    [Table("sessions")]
    public class Session
    {
        public string CourseName { get; set; }
        [Key]
        public string Section { get; set; }
        public string? Type { get; set; }
        public string? DayOfWeek { get; set; }
        public string? PublishedStart { get; set; }
        public string? PublishedEnd { get; set; }
        public string? Location { get; set; }
        public string? Email { get; set; }

        public Session() { }

        public Session(string courseName, string section, string type,
            string dayOfWeek, string publishedStart, string publishedEnd,
            string location, string email)
        {
            CourseName = courseName;
            Section = section;
            Type = type;
            DayOfWeek = dayOfWeek;
            PublishedStart = publishedStart;
            PublishedEnd = publishedEnd;
            Location = location;
            Email = email;
        }

        public static string ConvertTimeFormat(string inputTime)
        {
            // Parse the input time string
            string[] timeComponents = inputTime.Split(':');
            int hours = int.Parse(timeComponents[0]);
            int minutes = int.Parse(timeComponents[1]);

            // Create a DateTime object with an arbitrary date and the parsed time
            DateTime dateTime = new DateTime(2000, 1, 1, hours, minutes, 0);

            // Format the time in the desired output format
            string formattedTime = dateTime.ToString("hh:mmtt", System.Globalization.CultureInfo.InvariantCulture);


            return formattedTime.Remove(formattedTime.Length - 1).ToLower(); // Convert to lowercase for 'p' or 'a' in the result
        }
    }
}

