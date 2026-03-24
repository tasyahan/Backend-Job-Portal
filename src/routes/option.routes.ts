import express from "express";
import {
  getJobCategories,
  getAreas,
  getExperienceLevels,
  getIndustries,
  getTags,
} from "../controllers/option.controller";

const router = express.Router();

router.get("/job-categories", getJobCategories);
router.get("/areas", getAreas);
router.get("/experience-levels", getExperienceLevels);
router.get("/industries", getIndustries);
router.get("/tags", getTags);

export default router;