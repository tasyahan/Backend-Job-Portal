import { Request, Response, NextFunction } from "express";
import { verifyToken } from "../utils/jwt.handler";
import { sendUnauthorizedResponse } from "../utils/response.handler";

export const authenticate = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const authHeader = req.headers.authorization;

    if (!authHeader) {
      return sendUnauthorizedResponse(res, "Token required");
    }

    const token = authHeader.split(" ")[1];
    const decoded: any = verifyToken(token);

    req.user = decoded;
    next();
  } catch (error) {
    return sendUnauthorizedResponse(res, "Invalid token");
  }
};

export const adminOnly = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  if (!req.user?.is_admin) {
    return sendUnauthorizedResponse(res, "Admin only");
  }

  next();
};