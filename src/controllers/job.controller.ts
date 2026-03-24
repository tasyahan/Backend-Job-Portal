import { Request, Response, NextFunction } from "express";
import * as JobService from "../services/job.service";
import {
  sendSuccessNoDataResponse,
  sendSuccessResponse,
  sendErrorResponse,
} from "../utils/response.handler";

export const createJob = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const userId = req.user.id_user;

    await JobService.createJob(req.body, userId);

    return sendSuccessNoDataResponse(res, "Job created successfully");
  } catch (error) {
    return sendErrorResponse(res, "Something went wrong", 501);
  }
};

export const getJobs = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const query = {
      search: req.query.search,
      area: req.query.area,
      category: req.query.category,
      tag: req.query.tag,
      page: req.query.page ?? 1,
      limit: req.query.limit ?? 10,
    };

    const result = await JobService.getJobs(query);

    if (!result.jobs || result.jobs.length === 0) {
      return sendSuccessResponse(res, {
        jobs: [],
        pagination: {
          total_job: 0,
          page: Number(query.page),
          limit: Number(query.limit),
          total_pages: 0,
        },
      }, "No jobs found");
    }

    return sendSuccessResponse(res, result, "Get jobs success");
  } catch (error) {
    return sendErrorResponse(res, "Something went wrong", 501);
  }
}

export const getJobDetail = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const id = Number(req.params.id);

    const job = await JobService.getJobDetail(id);

    return sendSuccessResponse(res, job, "Get job detail success");
  } catch (error) {
    return sendErrorResponse(res, "Something went wrong", 501);
  }
};