import { z } from "zod";

export const userSchema = z.object({
  fullname: z.string().min(3),
  username: z.string().min(3),
  email: z.string().email(),
  password: z.string().min(6),
});

export const loginSchema = z.object({
  email: z.string().email(),
  password: z.string().min(6),
});

export type TUserSchema = z.infer<typeof userSchema>;
export type TLoginSchema = z.infer<typeof loginSchema>;