/*
  Warnings:

  - A unique constraint covering the columns `[user_referral_code]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `User` ADD COLUMN `user_referral_code` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `User_user_referral_code_key` ON `User`(`user_referral_code`);
