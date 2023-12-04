using System;
using Catalog.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MySqlConnector;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Catalog.Controllers;

/// <summary>
/// Main controller for this project.
/// Handles all the API queries for this project.
/// </summary>
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

    /// <summary>
    /// Gets the list of locations as Location model from database server
    /// Used for populating drop downs.
    /// </summary>
    /// <param name="limit">Limit number of locations</param>
    /// <returns>Ok Http Response with JSON of locations</returns>
    [HttpGet("Location")]
    public IActionResult GetLocations(int? limit)
    {
        IQueryable<Location> query = _context.Locations;

        if (limit.HasValue)
        {
            query = query.Take(limit.Value);
        }

        var locations = query.ToList();

        return Ok(locations);
    }

    /// <summary>
    /// Gets all faculties model from database server.
    /// Use for populating drop downs. If no email is specified, all faculties are
    /// retrieved
    /// </summary>
    /// <param name="email">Key to query</param>
    /// <returns>List of faculties</returns>
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


    /// <summary>
    /// Main report query to get report data to display session information
    /// from the database that is joined from multiple tables together.
    /// If nulls are provided for all parameters, all sessions will be returned.
    /// </summary>
    /// <param name="courseSubject">Course subject to query i.e.(CS = Computer Science)</param>
    /// <param name="courseNumber">5-digit Course code number i.e. 348000</param>
    /// <param name="type">Type of lesson i.e. PSO </param>
    /// <param name="location">LocationId of location session is held</param>
    /// <param name="creditValue">Minimum credits</param>
    /// <param name="startTime">Start time of the lesson</param>
    /// <returns>List of Session objects where criterion is fufilled.</returns>
    [HttpGet("Session")]
    public IEnumerable<Session> Sessions(string? courseSubject, string? courseNumber, string? type, string? location, int? creditValue, DateTime? startTime)
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
        AND CourseCreditMinimumValue >= {4}
        AND STR_TO_DATE(UPPER(CONCAT(sessions.publishedStart, 'm')), '%l:%i%p') >= (STR_TO_DATE({5}, '%l:%i%p'));";
        DateTime defaultTime = DateTime.MinValue.Date;
        string formattedTime = (startTime ?? defaultTime).ToString("hh:mmtt");
        List<Session> sessions = _context.Sessions.FromSqlRaw(query, courseSubject,
            courseNumber,
            type,
            location,
            creditValue ?? 0,
            formattedTime).ToList();
        return sessions;

    }

    /// <summary>
    /// Gets the Sessions from session table. If null parameters are provided
    /// all the sessions are returned
    /// </summary>
    /// <param name="section">Section key to be queried</param>
    /// <returns>List of Sessions that fufil the criteria</returns>
    [HttpGet("Section")]
    public IEnumerable<Session> Sessions(string? section)
    {
        string query = @"
        SELECT * FROM sessions WHERE Section = COALESCE({0},Section);";
        List<Session> sessions = _context.Sessions.FromSqlRaw(query, section).ToList();
        return sessions;

    }

    /// <summary>
    /// Performs the update to the database server for session table. Section cannot be null.
    /// </summary>
    /// <param name="sessionInput">Takes in the JSON object of the Session table with updated values</param>
    /// <returns>HTTP ok when successful</returns>
    [HttpPost("UpdateSession")]
    public IActionResult UpdateSession([FromBody] Session sessionInput)
    {
        string convertedPublishedStart = Session.ConvertTimeFormat(sessionInput.PublishedStart ?? "00:00");
        string convertedPublishedEnd = Session.ConvertTimeFormat(sessionInput.PublishedEnd ?? "00:00");
        try
        {
            // Call the stored procedure
            _context.Database.ExecuteSqlRaw("CALL UpdateSession({0}, {1}, {2}, {3}, {4}, {5})",
                sessionInput.CourseName,
                sessionInput.Section,
                sessionInput.Type ?? string.Empty,
                convertedPublishedStart,
                convertedPublishedEnd,
                sessionInput.Location ?? string.Empty);

            return Ok("Session inserted successfully");
        }
        catch (Exception ex)
        {
            return BadRequest($"Error: {ex.Message}");
        }
    }


    /// <summary>
    /// Performs an insertion of a new session to the session table.
    /// </summary>
    /// <param name="sessionInput">New session in the form of a JSON object of Session to be inserted</param>
    /// <returns>HTTP ok when successful</returns>
    [HttpPost("Session")]
    public IActionResult InsertSession([FromBody] Session sessionInput)
    {
        string convertedPublishedStart = Session.ConvertTimeFormat(sessionInput.PublishedStart ?? "00:00");
        string convertedPublishedEnd = Session.ConvertTimeFormat(sessionInput.PublishedEnd ?? "00:00");
        try
        {
            // Call the stored procedure
            _context.Database.ExecuteSqlRaw("CALL InsertSession({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})",
                sessionInput.CourseName,
                sessionInput.Section,
                sessionInput.Type ?? string.Empty,
                sessionInput.DayOfWeek ?? string.Empty,
                convertedPublishedStart,
                convertedPublishedEnd,
                sessionInput.Location ?? string.Empty,
                sessionInput.Email ?? string.Empty);

            return Ok("Session inserted successfully");
        }
        catch (Exception ex)
        {
            return BadRequest($"Error: {ex.Message}");
        }
    }

    /// <summary>
    /// Performs a deletion of a session given the Section.
    /// </summary>
    /// <param name="id">Section - Primary key to delete</param>
    /// <returns>HTTP 204 when successful</returns>
    [HttpDelete("DeleteSession")]
    public IActionResult DeleteSession(string id)
    {
        var session = _context.Sessions.Find(id);

        if (session == null)
        {
            return NotFound("Id cannot be found"); // Return 404 Not Found if the session with the given id is not found
        }

        _context.Sessions.Remove(session);
        _context.SaveChanges();

        return NoContent(); // Return 204 No Content if the session is successfully deleted
    }    

}

