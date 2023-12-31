﻿using Microsoft.EntityFrameworkCore;
using Catalog.Models;

public class CatalogDbContext : DbContext
{
    public CatalogDbContext(DbContextOptions options) : base(options)
    {
    }

    public DbSet<Courses> Courses { get; set; }
    public DbSet<Session> Sessions { get; set; }
    public DbSet<Location> Locations { get; set; }
    public DbSet<Faculty> Faculties { get; set; }
}
