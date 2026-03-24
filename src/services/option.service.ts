import { prisma } from "../lib/prisma";

export const getJobCategories = async () => {
  return prisma.job_categories.findMany({
    orderBy: { id_category: "asc" },
  });
};

export const getAreas = async () => {
  return prisma.areas.findMany({
    orderBy: { id_area: "asc" },
  });
};

export const getExperienceLevels = async () => {
  return prisma.experience_levels.findMany({
    orderBy: { id_experience_level: "asc" },
  });
};

export const getIndustries = async () => {
  return prisma.industries.findMany({
    orderBy: { id_industry: "asc" },
  });
};

export const getTags = async () => {
  return prisma.tags.findMany({
    orderBy: { id_tag: "asc" },
  });
};