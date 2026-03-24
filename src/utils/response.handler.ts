import { Response } from "express";

export const sendSuccessResponse = (
  res: Response,
  data: any,
  message: string = "Success"
) => {
  return res.status(200).json({
    success: true,
    message,
    data,
  });
};

export const sendSuccessNoDataResponse = (
  res: Response,
  message: string = "Success"
) => {
  return res.status(200).json({
    success: true,
    message,
  });
};

export const sendErrorResponse = (
  res: Response,
  message: string = "Internal Server Error",
  statusCode: number = 500
) => {
  return res.status(statusCode).json({
    success: false,
    message,
  });
};

export const sendUnauthorizedResponse = (
  res: Response,
  message: string = "Unauthorized"
) => {
  return res.status(401).json({
    success: false,
    message,
  });
};

export const sendNotFoundResponse = (
  res: Response,
  message: string = "Data not found"
) => {
  return res.status(404).json({
    success: false,
    message,
  });
};

export const sendBadRequestResponse = (
  res: Response,
  message: string = "Bad request"
) => {
  return res.status(400).json({
    success: false,
    message,
  });
};