import { prisma } from "../lib/prisma";

export const createJob = async (data: any, userId: number) => {
  return prisma.jobs.create({
    data: {
      user_id: userId,

      title: data.title,
      company_name: data.company_name,

      salary_min: BigInt(data.salary_min) ?? 0,
      salary_max: BigInt(data.salary_max) ?? 0,

      area_id: Number(data.area_id),
      category_id: Number(data.category_id),
      experience_level_id: Number(data.experience_level_id),
      industry_id: Number(data.industry_id),

      job_detail: {
        create: {
          description: data.description ?? null,
          requirements: data.requirements ?? null,
          benefits: data.benefits ?? null,
        },
      },

      job_tags: {
        create:
          data.tag_ids?.map((id: number) => ({
            tag_id: Number(id),
          })) ?? [],
      },
    },
    include: {
      user: false,
      category: true,
      area: true,
      experience_level: true,
      industry: true,
      job_detail: false,
      job_tags: {
        include: {
          tag: true,
        },
      },
    },
  });
};

export const getJobs = async (query: any) => {
  const { search, area, category, tag, page = 1, limit = 10 } = query;
  const skip = (Number(page) - 1) * Number(limit);

  const where: any = {};

  if (search) {
    where.OR = [
      { title: { contains: search, mode: "insensitive" } },
      { job_detail: { description: { contains: search, mode: "insensitive" } } },
    ];
  }

  if (area) {
    where.area_id = Number(area);
  }

  if (category) {
    where.category_id = Number(category);
  }

  if (tag) {
    where.job_tags = { some: { tag_id: Number(tag) } };
  }

  const [jobs, total] = await Promise.all([
    prisma.jobs.findMany({
      where,
      select: {
        id_job: true,
        title: true,
        company_name: true,
        salary_min: true,
        salary_max: true,
        area_id: true,
        category_id: true,
        experience_level_id: true,
        industry_id: true,
        published_at: true,
        created_at: true,
        updated_at: true,
        job_tags: { select: { tag_id: true } },
      },
      orderBy: { published_at: "desc" },
      skip,
      take: Number(limit),
    }),
    prisma.jobs.count({ where }),
  ]);

  const jobsCleaned = jobs.map(job => ({
    ...job,
    job_tags: job.job_tags.map(jt => jt.tag_id),
  }));

  return {
    jobs: jobsCleaned,
    pagination: {
      total_job: total,
      page: Number(page),
      limit: Number(limit),
      total_pages: Math.ceil(total / limit),
    },
  };
};

export const getJobDetail = async (id: number) => {
  const job = await prisma.jobs.findUnique({
    where: { id_job: id },
    include: {
      job_detail: true,
      area: true,
      category: true,
      experience_level: true,
      industry: true,
      job_tags: {
        include: {
          tag: true,
        },
      },
    },
  });

  if (!job) return null;

  const { user_id, job_tags, ...rest } = job;

  return {
    ...rest,
    job_tags: job_tags.map(jt => jt.tag), 
  };
};