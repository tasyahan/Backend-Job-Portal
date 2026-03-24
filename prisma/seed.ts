import "dotenv/config";
import { Pool } from "pg";
import { PrismaPg } from "@prisma/adapter-pg";
import { PrismaClient } from "../generated/prisma/client";

const connectionString = process.env.DATABASE_URL as string;
const pool = new Pool({ connectionString });
const adapter = new PrismaPg(pool as any);

const prisma = new PrismaClient({ adapter });

async function main() {
  const categories = [
  "Engineering",
  "Technology",
  "Product",
  "Design",
  "Marketing",
  "Sales",
  "Human Resources",
  "Finance",
  "Operations",
  "Customer Service",
  "Business Development",
  "Strategy",
  "Data",
  "Legal",
  "Procurement",
  "Supply Chain",
  "Production",
  "Quality Assurance",
  "Retail",
  "Manufacturing",
  "IT Support",
  "Security",
  "Administration"
];

  for (const name of categories) {
    await prisma.job_categories.upsert({
      where: { category_name: name },
      update: {},
      create: { category_name: name },
    });
  }

  const areas = [
    "Jakarta",
    "Bandung",
    "Surabaya",
    "Yogyakarta",
    "Semarang",
    "Malang",
    "Bekasi",
    "Depok",
    "Tangerang",
    "Bogor",
    "Denpasar",
    "Batam",
    "Medan",
    "Makassar",
    "Palembang",
    "Balikpapan",
    "Samarinda",
    "Banjarmasin",
    "Solo",
    "Cirebon"
  ];

  for (const area of areas) {
    const existing = await prisma.areas.findFirst({
      where: { area_name: area },
    });

    if (!existing) {
      await prisma.areas.create({
        data: { area_name: area },
      });
    }
  }

  const levels = [
    "Internship",
    "Fresh Graduate",
    "Junior",
    "Mid-level",
    "Senior",
    "Lead",
    "Manager",
    "Head",
    "Director"
  ];

  for (const level of levels) {
    await prisma.experience_levels.upsert({
      where: { experience_level: level },
      update: {},
      create: { experience_level: level },
    });
  }

  const industries = [
    "Information Technology",
    "Finance",
    "Banking",
    "Insurance",
    "Healthcare",
    "Education",
    "E-commerce",
    "Telecommunication",
    "Logistics",
    "Manufacturing",
    "Automotive",
    "Energy",
    "Startup",
    "Consulting",
    "Digital Agency",
    "Gaming",
    "Media",
    "Hospitality",
    "Retail",
    "Government"
  ];

  for (const ind of industries) {
    await prisma.industries.upsert({
      where: { industry_name: ind },
      update: {},
      create: { industry_name: ind },
    });
  }

  const tags = [
    "Remote",
    "Hybrid",
    "Onsite",
    "Full-time",
    "Part-time",
    "Contract",
    "Freelance",
    "React",
    "Next.js",
    "Node.js",
    "TypeScript",
    "JavaScript",
    "Python",
    "Django",
    "Laravel",
    "Go",
    "Java",
    "Spring Boot",
    "AWS",
    "Docker",
    "Kubernetes",
    "PostgreSQL",
    "MongoDB",
    "Redis",
    "GraphQL",
    "REST API",
    "Startup",
    "Corporate",
    "Urgent Hiring",
    "Entry Level"
  ];

  for (const tag of tags) {
    await prisma.tags.upsert({
      where: { tag_name: tag },
      update: {},
      create: { tag_name: tag },
    });
  }

  // console.log("Seed data completed!");
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
    await pool.end();
  });