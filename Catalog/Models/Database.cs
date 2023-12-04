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
    }
}

