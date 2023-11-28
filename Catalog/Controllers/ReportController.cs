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

    [HttpGet("Location")]
    public IActionResult GetLocations(int? limit)
    {
        IQueryable<Location> query = _context.Locations;

        if (limit.HasValue)
        {
            query = query.Take(limit.Value);
        }

        var sessions = query.ToList();

        return Ok(sessions);
    }

    [HttpGet("Faculty")]
    public IEnumerable<Faculty> GetFacultyByEmail(string? email)
    {
        string query = @"
        SELECT *
        FROM faculty
        WHERE
        email = COALESCE({0},email);
        ";
        List<Faculty> faculties = _context.Faculties.FromSqlRaw(query, email).ToList();
        return faculties;
    }

    [HttpGet("Session")]
    public IEnumerable<Session> Sessions(string? courseSubject, string? courseNumber, string? type, string? location, int? creditValue)
    {
        string query = @"
        SELECT *
        FROM sessions
        JOIN courses
            on sessions.CourseName = CONCAT(courses.CourseSubjectAbbreviation,' ',courses.CourseNumber)
        JOIN locations
            on sessions.Location = locations.LocationId
        WHERE 
        CourseSubjectAbbreviation = COALESCE({0},CourseSubjectAbbreviation) 
        AND CourseNumber = COALESCE({1},CourseNumber)
        AND Type=COALESCE({2},Type)
        AND locations.LocationId = COALESCE({3},locations.LocationId)
        AND CourseCreditMinimumValue >= {4};";
        List<Session> sessions = _context.Sessions.FromSqlRaw(query, courseSubject, courseNumber, type, location, creditValue ?? 0).ToList();
        return sessions;

    }

    [HttpPost("Session")]
    public IActionResult InsertSession([FromBody] Session sessionInput)
    {
        try
        {
            // Call the stored procedure
            _context.Database.ExecuteSqlRaw("CALL InsertSession({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})",
                sessionInput.CourseName,
                sessionInput.Section,
                sessionInput.Type,
                sessionInput.DayOfWeek,
                sessionInput.PublishedStart,
                sessionInput.PublishedEnd,
                sessionInput.Location,
                sessionInput.Email);

            return Ok("Session inserted successfully");
        }
        catch (Exception ex)
        {
            return BadRequest($"Error: {ex.Message}");
        }
    }

    [HttpDelete("Session/{id}")]
    public IActionResult DeleteSession(string id)
    {
        var session = _context.Sessions.Find(id);

        if (session == null)
        {
            return NotFound(); // Return 404 Not Found if the session with the given id is not found
        }

        _context.Sessions.Remove(session);
        _context.SaveChanges();

        return NoContent(); // Return 204 No Content if the session is successfully deleted
    }

    [HttpDelete("Course/{id}")]
    public IActionResult DeleteCourse(string id)
    {
        var course = _context.Courses.Find(id);

        if (course == null)
        {
            return NotFound(); // Return 404 Not Found if the session with the given id is not found
        }

        _context.Courses.Remove(course);
        _context.SaveChanges();

        return NoContent(); // Return 204 No Content if the session is successfully deleted
    }
  
    [HttpDelete("Location/{id}")]
    public IActionResult DeleteLocation(string id)
    {
        var location = _context.Locations.Find(id);

        if (location == null)
        {
            return NotFound(); // Return 404 Not Found if the session with the given id is not found
        }

        _context.Locations.Remove(location);
        _context.SaveChanges();

        return NoContent(); // Return 204 No Content if the session is successfully deleted
    }
    

}

