using Microsoft.EntityFrameworkCore;
using Catalog.Models;

public class CatalogDbContext : DbContext
{
    public CatalogDbContext(DbContextOptions options) : base(options)
    {
    }

    public DbSet<Courses> CourseList { get; set; }
    public DbSet<Session> SessionList { get; set; }
}
