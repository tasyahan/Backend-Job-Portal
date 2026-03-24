import { prisma } from "../lib/prisma";
import { TUserSchema } from "../types/zod";
import { hashPassword } from "../utils/bcrypt.handler";

export const countUsers = async () => {
  return prisma.users.count();
};

export const findUserByEmail = async (email: string) => {
  return prisma.users.findUnique({
    where: { email },
  });
};

export const createUser = async (data: TUserSchema) => {
  const totalUsers = await countUsers();

  const hashedPassword = await hashPassword(data.password);

  return prisma.users.create({
    data: {
      fullname: data.fullname,
      username: data.username,
      email: data.email,
      password: hashedPassword,
      is_admin: totalUsers === 0,
      active: true,
    },
  });
};