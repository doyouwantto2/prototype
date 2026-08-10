import { prisma } from "../lib/prisma";

export async function main() {
  const newUser = await prisma.user.create({
    data: {
      name: "Hi",
      email: "Hi",
      password: "Hi",
    },
  });
}

main();
