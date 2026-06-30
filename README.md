# URL Shortener
## Description 
### A full-stack URL Shortener built with Spring Boot that lets users create, manage, and track shortened links through a clean web interface. It uses PostgreSQL + Flyway for reliable data storage/migrations and includes Spring Security for authentication and role-based access. Users have the ability to view analytics for their shortened links, including the click count and can manage for how long(1-365 days) they want to keep the url active.
## Tech Stack
- **Backend:** Java, Spring Boot, Spring Security, Spring Data JPA
- **Frontend:** Thymeleaf, Bootstrap
- **Database:** PostgreSQL, Flyway
- **Build Tool:** Maven
- **Version Control:** Git, GitHub
## Features
- User registration and authentication
- Create and manage shortened URLs
- Set expiration dates for shortened URLs (1-365 days)
- View analytics for each shortened URL (click count)
- Role-based access control (Admin/User)
- Responsive web interface using Bootstrap
- Database migrations handled by Flyway
