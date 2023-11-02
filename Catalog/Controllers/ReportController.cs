using Catalog.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MySqlConnector;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Catalog.Controllers;

[ApiController]
[Route("[/]")]
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
    public IEnumerable<Session> GetSessions(int? limit)
    {
        List<Session> sessions = _context.Sessions.FromSqlRaw("SELECT * FROM Sessions LIMIT {0}", limit ?? 10).ToList();
        return sessions;
    }

    /**
    [HttpPost]
    public IActionResult UpdateSession(string courseName, string section, string type,
            string dayOfWeek, string publishedStart, string publishedEnd,
            string location, string email)
    {
        Session session = new Session(courseName, section, type,
            dayOfWeek, publishedStart, publishedEnd,
            location, email);
        _context.Sessions.Add(session);
        _context.SaveChanges();

        return Ok();
    }
    **/
    [HttpPost]
    public IActionResult UpdateSession([FromBody] Session session)
    {
        _context.Sessions.Add(session);
        _context.SaveChanges();
        return Ok();
    }
}

