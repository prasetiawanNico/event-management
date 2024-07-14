/*
  Warnings:

  - You are about to drop the column `user_referral_code` on the `User` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[own_referral_code]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `User_user_referral_code_key` ON `User`;

-- AlterTable
ALTER TABLE `User` DROP COLUMN `user_referral_code`,
    ADD COLUMN `own_referral_code` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `User_own_referral_code_key` ON `User`(`own_referral_code`);
