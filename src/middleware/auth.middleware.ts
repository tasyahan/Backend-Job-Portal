import { Request, Response, NextFunction } from "express";
import { verifyToken } from "../utils/jwt.handler";
import { sendUnauthorizedResponse } from "../utils/response.handler";

export const authMiddleware = (
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

    const decoded = verifyToken(token);

    (req as any).user = decoded;

    next();
  } catch (error) {
    return sendUnauthorizedResponse(res, "Invalid token");
  }
};