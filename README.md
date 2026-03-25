# Job Portal Backend

Backend API for a Job Portal using **TypeScript**, **Prisma**, and **Express REST API**.

## Table of Contents
- [Tech Stack](#tech-stack)
- [Setup Instructions](#setup-instructions)
- [Run Project](#run-project)
- [API Endpoints](#api-endpoints)
- [Design Decisions](#design-decisions)

---

## Tech Stack
- Node.js & TypeScript
- Express.js (REST API)
- Prisma (ORM)
- PostgreSQL (Database)
- JWT Authentication
- Bcrypt for password hashing

---

## Setup Instructions

1. **Clone repository**
```bash
git clone <https://github.com/tasyahan/Backend-Job-Portal.git>
cd <Backend-Job-Portal>
````

2. **Install dependencies**

```bash
npm install
```

3. **Environment Variables**

Create a `.env` file in the root folder:

```env
DATABASE_URL="postgresql://username:password@localhost:5432/db_name?schema=public"
JWT_SECRET="your_jwt_secret"
PORT=8080
```

4. **Run Prisma migrations and generate client**

```bash
npx prisma migrate dev --name init
npx prisma generate
```

---

## Run Project

* Development mode:

```bash
npm run dev
```

* Production mode:

```bash
npm run build
npm start
```

The backend will run at `http://localhost:8080`.

---

## Database ERD

![ERD](docs/erd.png)

---

## API Endpoints

### Auth

* **Register** (first registered user becomes Admin)

```http
POST /api/v1/auth/register
Body:
{
  "fullname": "Admin Name",
  "username": "admin",
  "email": "admin@example.com",
  "password": "yourpassword"
}
```

* **Login**

```http
POST /api/v1/auth/login
Body:
{
  "email": "admin@example.com",
  "password": "yourpassword"
}
Response:
{
  "success": true,
  "message": "Login success",
  "data": {
    "token": "<jwt_token>"
  }
}
```

* **Logout**

```http
POST /api/v1/auth/logout
Headers: Authorization: Bearer <jwt_token>
Response:
{
  "success": true,
  "message": "Logout success"
}
```

---

### Jobs

> Note: Job creation is only allowed for Admin users.

* **Create Job**

```http
POST /api/v1/job/create
Headers: Authorization: Bearer <jwt_token>
Body:
{
  "title": "Backend Engineer",
  "company_name": "Company ABC",
  "salary_min": 8000000,
  "salary_max": 15000000,
  "area_id": 1,
  "category_id": 1,
  "experience_level_id": 3,
  "industry_id": 1,
  "description": "Build scalable backend services",
  "requirements": "Education: Bachelor's degree\nExperience: Node.js\nDatabase: PostgreSQL",
  "benefits": "BPJS\nRemote Work\nBonus",
  "tag_ids": [1,4,10]
}
Response:
{
  "success": true,
  "message": "Job created successfully"
}
```

* **Get All Jobs**

```http
GET /api/v1/job
Query params: search, area, category, tag, page, limit
Example: /api/v1/job?search=engineer&area=1&category=4&tag=10&page=1&limit=10
Response:
{
  "success": true,
  "message": "Get jobs success",
  "data": {
    "jobs": [
      {
        "id_job": 1,
        "title": "Backend Engineer",
        "company_name": "Company ABC",
        "salary_min": "8000000",
        "salary_max": "15000000",
        "area_id": 1,
        "category_id": 1,
        "experience_level_id": 3,
        "industry_id": 1,
        "published_at": "2026-03-24T14:35:35.114Z",
        "created_at": "2026-03-24T14:35:35.114Z",
        "updated_at": "2026-03-24T14:35:35.114Z",
        "job_tags": [1,4,10]
      }
    ],
    "pagination": {
      "total_job": 1,
      "page": 1,
      "limit": 10,
      "total_pages": 1
    }
  }
}
```

* **Get Job by ID**

```http
GET /api/v1/job/:id
Example: /api/v1/job/1
Response:
{
  "success": true,
  "message": "Get job detail success",
  "data": {
    "id_job": 1,
    "title": "Backend Engineer",
    "company_name": "Company ABC",
    "salary_min": "8000000",
    "salary_max": "15000000",
    "area_id": 1,
    "category_id": 1,
    "experience_level_id": 3,
    "industry_id": 1,
    "published_at": "2026-03-24T14:35:35.114Z",
    "created_at": "2026-03-24T14:35:35.114Z",
    "updated_at": "2026-03-24T14:35:35.114Z",
    "job_detail": {
      "description": "Build scalable backend services",
      "requirements": "Education: Bachelor's degree\nExperience: Node.js\nDatabase: PostgreSQL",
      "benefits": "BPJS\nRemote Work\nBonus"
    },
    "area": {"id_area": 1,"area_name": "Jakarta"},
    "category": {"id_category": 1,"category_name": "Engineering"},
    "experience_level": {"id_experience_level": 3,"experience_level": "Junior"},
    "industry": {"id_industry": 1,"industry_name": "Information Technology"},
    "job_tags": [1,4,10]
  }
}
```

---

### Options / Reference Data

* **Job Categories**

```http
GET /api/v1/option/job-categories
Response:
[
  {"id_category":1,"category_name":"Engineering"},
  {"id_category":2,"category_name":"Marketing"}
]
```

* **Areas**

```http
GET /api/v1/option/areas
Response:
[
  {"id_area":1,"area_name":"Jakarta"},
  {"id_area":2,"area_name":"Bandung"}
]
```

* **Experience Levels**

```http
GET /api/v1/option/experience-levels
Response:
[
  {"id_experience_level":1,"experience_level":"Intern"},
  {"id_experience_level":2,"experience_level":"Junior"},
  {"id_experience_level":3,"experience_level":"Senior"}
]
```

* **Industries**

```http
GET /api/v1/option/industries
Response:
[
  {"id_industry":1,"industry_name":"Information Technology"},
  {"id_industry":2,"industry_name":"Finance"}
]
```

* **Tags**

```http
GET /api/v1/option/tags
Response:
[
  {"id_tag":1,"tag_name":"Remote"},
  {"id_tag":4,"tag_name":"Full-time"},
  {"id_tag":10,"tag_name":"Node.js"}
]
```

---

## Design Decisions

* First registered user is automatically Admin.
* Job creation is restricted to Admin users only.
* `job_tags` are returned as an array of IDs for easier frontend consumption.
* Options endpoints provide reference data (categories, areas, tags, industries, experience levels) to avoid repeating nested objects in job responses.
* Pagination is applied to `/api/v1/job` to handle large datasets.
* BigInt salary values are converted to string in API responses for JSON safety.
