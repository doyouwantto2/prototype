/*
  Warnings:

  - You are about to drop the column `reputation` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `gained_reputation` on the `votes` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "users" DROP COLUMN "reputation",
ADD COLUMN     "point" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "votes" DROP COLUMN "gained_reputation",
ADD COLUMN     "gained_point" INTEGER NOT NULL DEFAULT 0;
