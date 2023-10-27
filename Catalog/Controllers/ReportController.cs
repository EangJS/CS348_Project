using Catalog.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MySqlConnector;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Catalog.Controllers;

[ApiController]
[Route("[controller]")]
public class ReportController : ControllerBase
{

    private readonly MySqlConnection _connection;
    private readonly CatalogDbContext _context;

    public ReportController(MySqlConnection connection, CatalogDbContext catalogDbContext)
    {
        this._connection = connection;
        this._context = catalogDbContext;
    }

    // GET: /<controller>/
    [HttpGet]
    public IEnumerable<Session> GetSessions()
    {
        List<Session> sessions = _context.SessionList.FromSqlRaw("SELECT * FROM Sessions LIMIT {0}", 5).ToList();
        return sessions;
    }

    [HttpGet("moresessions")]
    public IEnumerable<Session> GetMoreSessions()
    {
        List<Session> sessions = _context.SessionList.FromSqlRaw("SELECT * FROM Sessions LIMIT {0}", 10).ToList();
        return sessions;
    }
}

