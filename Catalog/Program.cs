using Microsoft.EntityFrameworkCore;
using MySqlConnector;

var myCors = "MyOrigins";
var builder = WebApplication.CreateBuilder(args);

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: myCors,
                      policy =>
                      {
                          policy.WithOrigins("http://localhost:3000").AllowAnyMethod().AllowAnyHeader();
                      });
});

// Add services to the container.

builder.Services.AddControllers();
builder.Configuration
    .SetBasePath(Environment.CurrentDirectory)
    .AddJsonFile("appsettings.json");

builder.Services.AddDbContext<CatalogDbContext>(options =>
{
    options.UseMySql(builder.Configuration.GetConnectionString("CatalogString"),
        ServerVersion.AutoDetect(builder.Configuration.GetConnectionString("CatalogString")));
});

using MySqlConnection connection = new MySqlConnection(builder.Configuration.GetConnectionString("CatalogString"));
connection.Open();
builder.Services.AddSingleton(connection);

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();
app.UseCors(myCors);
// Configure the HTTP request pipeline.
app.UseSwagger();

if (app.Environment.IsDevelopment())
{
    app.UseSwaggerUI();
}


app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

