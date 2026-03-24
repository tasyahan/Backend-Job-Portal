import { Router } from "express";
import * as JobController from "../controllers/job.controller";
import { authenticate, adminOnly } from "../middlewares/auth.middleware";

const router = Router();

router.post(
  "/create",
  authenticate,
  adminOnly,
  JobController.createJob
);

router.get("/", JobController.getJobs);
router.get("/:id", JobController.getJobDetail);

export default router;