import { Response } from "express";

const convertBigInt = (data: any): any => {
  return JSON.parse(
    JSON.stringify(data, (_, value) =>
      typeof value === "bigint" ? value.toString() : value
    )
  );
};

export const sendSuccessResponse = (
  res: Response,
  data: any,
  message: string = "Success"
) => {
  const safeData = convertBigInt(data);

  return res.status(200).json({
    success: true,
    message,
    data: safeData,
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