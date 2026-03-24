import { Request, Response, NextFunction } from "express";
import * as OptionService from "../services/option.service";
import {
  sendSuccessResponse,
  sendSuccessNoDataResponse,
  sendErrorResponse,
} from "../utils/response.handler";


export const getJobCategories = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const data = await OptionService.getJobCategories();
    if (!data || data.length === 0) return sendSuccessNoDataResponse(res, "No job categories found");
    return sendSuccessResponse(res, data, "Success get job categories");
  } catch (error) {
    return sendErrorResponse(res, "Failed to get job categories");
  }
};

export const getAreas = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const data = await OptionService.getAreas();
    if (!data || data.length === 0) return sendSuccessNoDataResponse(res, "No areas found");
    return sendSuccessResponse(res, data, "Success get areas");
  } catch (error) {
    return sendErrorResponse(res, "Failed to get areas");
  }
};

export const getExperienceLevels = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const data = await OptionService.getExperienceLevels();
    if (!data || data.length === 0) return sendSuccessNoDataResponse(res, "No experience levels found");
    return sendSuccessResponse(res, data, "Success get experience levels");
  } catch (error) {
    return sendErrorResponse(res, "Failed to get experience levels");
  }
};

export const getIndustries = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const data = await OptionService.getIndustries();
    if (!data || data.length === 0) return sendSuccessNoDataResponse(res, "No industries found");
    return sendSuccessResponse(res, data, "Success get industries");
  } catch (error) {
    return sendErrorResponse(res, "Failed to get industries");
  }
};

export const getTags = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const data = await OptionService.getTags();
    if (!data || data.length === 0) return sendSuccessNoDataResponse(res, "No tags found");
    return sendSuccessResponse(res, data, "Success get tags");
  } catch (error) {
    return sendErrorResponse(res, "Failed to get tags");
  }
};