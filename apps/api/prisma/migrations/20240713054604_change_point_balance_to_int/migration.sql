/*
  Warnings:

  - Made the column `point_balance` on table `User` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `User` MODIFY `point_balance` INTEGER NOT NULL DEFAULT 0;
