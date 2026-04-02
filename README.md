UniPortal Developer said

<h1 align="center">
UniPortal
</h1>

<p align="center">
<a href="https://angular.dev/"><img src="https://img.shields.io/badge/Angular_21-DD0031?style=flat-square&logo=angular&logoColor=white" alt="Angular"></a>
<a href="https://nestjs.com/"><img src="https://img.shields.io/badge/NestJS_11-E0234E?style=flat-square&logo=nestjs&logoColor=white" alt="NestJS"></a>
<a href="https://www.postgresql.org/"><img src="https://img.shields.io/badge/PostgreSQL_18.3-4169E1?style=flat-square&logo=postgresql&logoColor=white" alt="PostgreSQL"></a>
<a href="https://www.docker.com/"><img src="https://img.shields.io/badge/Docker_Compose-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker"></a>
</p>

<p align="center">
<a href="#local-development-setup"><img src="https://img.shields.io/badge/Deployment-Local_Only-blue?style=flat-square" alt="Local Development"></a>
</p>

A full-stack web application rebuilding a university's Student Information Portal from the ground up. UniPortal unifies the full range of student and academic administration workflows in one modern, maintainable platform. It serves four distinct user groups within a university institution: students, faculty, registrars, and administrators.

> **Note:** UniPortal is designed to run locally from a cloned repository with no dependency on external commercial services, cloud integrations, or paid accounts.

## Features

- **Strict Role-Based Access:** The entire system is governed by a strict access model defined by four distinct user roles, ensuring each group only accesses their permitted views and actions.

- **Student Dashboard:** Students can view their grades, manage their course registrations, check their schedules, submit document requests, and receive announcements.

- **Faculty Portal:** Faculty can quickly access their course rosters and enter grades for the specific sections they are assigned to teach.

- **Registrar Tools:** Registrars maintain broader access to oversee student records across the institution, manage enrollment operations, and approve document requests.

- **Admin Control:** Administrators maintain full system access, manage user accounts, and handle announcement publishing.

- **Monorepo Architecture:** The system uses a clean structure separating the Angular frontend and NestJS backend at the root level.

- **Fully Dockerized Local Dev:** The full stack, including the frontend, backend, PostgreSQL database, and pgAdmin, runs locally via a single docker compose up command.

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (the only required install)

That's it. No Node.js, PostgreSQL, or Redis installation needed on your machine.

## Getting Started

### 1. Clone the repository

```bash
git clone <repository-url>
cd uniportal
```

### 2. Set up environment variables

```bash
cp .env.example .env
```

Open `.env` and replace all `changeme` values with your own secrets before running.

### 3. Start the full stack

```bash
docker compose up --build
```

This starts all five services:

| Service          | URL                          |
| ---------------- | ---------------------------- |
| Angular frontend | http://localhost:4200        |
| NestJS API       | http://localhost:3000/api/v1 |
| pgAdmin 4        | http://localhost:5050        |
| PostgreSQL       | http://localhost:5432        |

### 4. Stop the stack

```bash
docker compose down
```

To also remove persisted data volumes:

```bash
docker compose down -v
```

## Environment Variables

All variables are documented in `.env.example`. Never commit your `.env` file.
Key variables:

| Variable             | Description                                   |
| -------------------- | --------------------------------------------- |
| `POSTGRES_DB`        | PostgreSQL database name                      |
| `POSTGRES_USER`      | PostgreSQL superuser username                 |
| `POSTGRES_PASSWORD`  | PostgreSQL superuser password                 |
| `PGADMIN_EMAIL`      | Login email for the pgAdmin web UI            |
| `PGADMIN_PASSWORD`   | Login password for the pgAdmin web UI         |
| `JWT_ACCESS_SECRET`  | Secret for signing short-lived access tokens  |
| `JWT_REFRESH_SECRET` | Secret for signing long-lived refresh tokens  |
| `FRONTEND_URL`       | Allowed CORS origin (default: localhost:4200) |

## Acknowledgments

- [Angular](https://angular.dev/)
- [NestJS](https://nestjs.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Docker](https://www.docker.com/)

## Disclaimer

This project is scoped as a local learning project. There is no active production hosting, CI/CD pipeline, or environment promotion strategy. All execution and testing happen entirely locally via the provided Docker Compose configuration. Every dependency in the stack is free and open source.
