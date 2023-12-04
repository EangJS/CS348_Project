# CS 34800 Information Systems Project Fall 2023

This readme provides information on setting up and running the CS 348 Course Catalog Project that utilizes MySQL as the database, ASP.NET Core Web API for the backend, and create-react-app for the frontend.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [Backend Setup](#backend-setup)
  - [Database Setup](#database-setup)
  - [Frontend Setup](#frontend-setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [Services](#services)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/)
- [.NET SDK](https://dotnet.microsoft.com/download)
- [MySQL Server](https://dev.mysql.com/downloads/)
- [Visual Studio](https://visualstudio.microsoft.com/downloads/)

## Installation

### Backend Setup

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/your-repository.git
    ```

2. **Navigate to the backend folder:**

    ```bash
    cd Catalog
    ```

3. **Open `appsettings.json` and configure the MySQL connection string:**

    ```json
    {
    "Logging": {
        "LogLevel": {
        "Default": "Information",
        "Microsoft": "Warning",
        "Microsoft.Hosting.Lifetime": "Information"
        }
        },
    "AllowedHosts": "*",
    "ConnectionStrings": { "CatalogString": "Server=green-tea.mysql.database.azure.com;User ID={yourId};Password={yourPassword};Database=Catalog" }
    }
    ```

4. **Start the ASP.NET Core Web API:**

    ```bash
    dotnet run
    ```

The backend should now be running on `http://localhost:5029`.

### Database Setup

1. **Create an instance of MySQL**
Preferbly use azure which has been the default for my project

2. **Load the data and stored procedures**
Sample data used for this project can be found in ```./Database```
The Locations table have been excluded in this folder.

:warning: Do note that populated data from the *.sql is not accurate and may not follow normalized forms as it has not been processed. However, in the existing project's database, data has been mostly cleaned.

### Frontend Setup

1. **Navigate to the frontend folder:**

    ```bash
    cd frontend
    ```

2. **Install dependencies:**

    ```bash
    npm install
    ```
3. **Create .env File**
    Add the following into the ```.env``` file you created. Modify if necessary.
    ```
    REACT_APP_SUBSCRIPTION_KEY={If using Azure}
    REACT_APP_API_URL=http://localhost:5029
    ```

3. **Start the React development server:**

    ```bash
    npm start
    ```

The frontend should now be accessible at `http://localhost:3000`.

## Usage

Visit `http://localhost:3000` in your browser to use the web application. The frontend communicates with the ASP.NET Core Web API, which in turn interacts with the MySQL database.

## Services

### Backend and Database
The MySQL Database Server is being hosted on Azure for the duration of the project.

The ASP.NET Core backend application is Hosted on Azure App Service and its API endpoints are managed by Azure API Management Service.

### Frontend
The frontend react application is hosted on [Vercel](https://vercel.com/dashboard) using the free hobbist plan.
Remember to add the .env file to the Vercel environment variables.

### CI/CD
This project's repository can be found on https://github.com/EangJS/CS348_Project 
The CI/CD workflows are configured in ```.github/workflows```. Deployment to Azure and Vercel are configured to be deployed automatically on push to master branch.

