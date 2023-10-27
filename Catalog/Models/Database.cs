using Microsoft.EntityFrameworkCore;
using MySqlConnector;

namespace Catalog.Models
{
	public class Database
    {
        private readonly MySqlConnection _connection;
        private readonly CatalogDbContext _context;



        public Database(MySqlConnection connection, CatalogDbContext catalogDbContext)
        {
            this._connection = connection;
            this._context = catalogDbContext;
        }

        public void Connection()
        {
            int limit = 2;
            //List<Courses> entities = _context.SessionList.FromSqlRaw("SELECT * FROM Sessions LIMIT {0}",limit).ToList();

        }

		public void Connection2()
		{

            try
            {
                // Execute your SQL query
                string query = "SELECT * FROM Courses LIMIT 1";
                using (MySqlCommand cmd = new MySqlCommand(query, _connection))
                {
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string name = reader.GetString("CourseNumber");

                            // Process the data as needed
                            Console.WriteLine($"Name: {name}");
                        }
                    }
                }
                
            }
            catch (MySqlException ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
            

        }
    }
}

