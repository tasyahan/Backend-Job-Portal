import { Request, Response, NextFunction } from "express";
import * as UserService from "../services/user.service";
import { userSchema, loginSchema } from "../types/zod";
import {
  sendSuccessResponse,
  sendSuccessNoDataResponse,
  sendUnauthorizedResponse,
  sendBadRequestResponse,
} from "../utils/response.handler";
import { comparePasswords } from "../utils/bcrypt.handler";
import { generateToken } from "../utils/jwt.handler";

export const validateLoginData = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const result = loginSchema.safeParse(req.body);

  if (!result.success) {
    return sendBadRequestResponse(res, result.error.message);
  }

  req.body = result.data;
  next();
};

export const register = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const result = userSchema.safeParse(req.body);

    if (!result.success) {
      return sendBadRequestResponse(res, result.error.message);
    }

    const data = result.data;

    const existingUser = await UserService.findUserByEmail(data.email);

    if (existingUser) {
      return sendBadRequestResponse(res, "Email already registered");
    }

    await UserService.createUser(data);

    return sendSuccessNoDataResponse(res, "Register success");
  } catch (error) {
    next(error);
  }
};

export const login = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { email, password } = req.body;

    const user = await UserService.findUserByEmail(email);

    if (!user) {
      return sendUnauthorizedResponse(res, "Invalid credentials");
    }

    const isMatch = await comparePasswords(password, user.password);

    if (!isMatch) {
      return sendUnauthorizedResponse(res, "Invalid credentials");
    }

    const token = generateToken({
      id_user: user.id_user,
      email: user.email,
      is_admin: user.is_admin,
    });

    return sendSuccessResponse(
      res,
      {
        token,
      },
      "Login success"
    );
  } catch (error) {
    next(error);
  }
};

export const logout = async (req: Request, res: Response) => {
  return sendSuccessNoDataResponse(res, "Logout success");
};