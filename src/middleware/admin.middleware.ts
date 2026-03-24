import { Request, Response, NextFunction } from "express";
import { sendUnauthorizedResponse } from "../utils/response.handler";

export const adminMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const user = (req as any).user;

  if (!user || !user.is_admin) {
    return sendUnauthorizedResponse(res, "Admin access only");
  }

  next();
};