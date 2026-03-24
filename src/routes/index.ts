import { Router } from "express";
import authRoutes from "./auth.route";
import jobRoutes from "./job.route";
import optionRoutes from "./option.routes";

const router = Router();

router.use("/auth", authRoutes);
router.use("/job", jobRoutes);
router.use("/option", optionRoutes);

export default router;