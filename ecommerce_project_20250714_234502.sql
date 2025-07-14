-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- DROP TABLE "cache" ------------------------------------------
DROP TABLE IF EXISTS `cache` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "cache" ----------------------------------------
CREATE TABLE `cache`( 
	`key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`value` MediumText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`expiration` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `key` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- DROP TABLE "cache_locks" ------------------------------------
DROP TABLE IF EXISTS `cache_locks` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "cache_locks" ----------------------------------
CREATE TABLE `cache_locks`( 
	`key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`owner` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`expiration` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `key` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- DROP TABLE "carts" ------------------------------------------
DROP TABLE IF EXISTS `carts` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "carts" ----------------------------------------
CREATE TABLE `carts`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`phone` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`address` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`product_title` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`quantity` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`price` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`Image` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`Product_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`user_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 27;
-- -------------------------------------------------------------


-- DROP TABLE "categories" -------------------------------------
DROP TABLE IF EXISTS `categories` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "categories" -----------------------------------
CREATE TABLE `categories`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`category_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 17;
-- -------------------------------------------------------------


-- DROP TABLE "comments" ---------------------------------------
DROP TABLE IF EXISTS `comments` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "comments" -------------------------------------
CREATE TABLE `comments`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`comment` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`user_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- -------------------------------------------------------------


-- DROP TABLE "failed_jobs" ------------------------------------
DROP TABLE IF EXISTS `failed_jobs` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "failed_jobs" ----------------------------------
CREATE TABLE `failed_jobs`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`uuid` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`connection` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`queue` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`payload` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`exception` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`failed_at` Timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `failed_jobs_uuid_unique` UNIQUE( `uuid` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- DROP TABLE "job_batches" ------------------------------------
DROP TABLE IF EXISTS `job_batches` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "job_batches" ----------------------------------
CREATE TABLE `job_batches`( 
	`id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`total_jobs` Int( 11 ) NOT NULL,
	`pending_jobs` Int( 11 ) NOT NULL,
	`failed_jobs` Int( 11 ) NOT NULL,
	`failed_job_ids` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`options` MediumText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`cancelled_at` Int( 11 ) NULL DEFAULT NULL,
	`created_at` Int( 11 ) NOT NULL,
	`finished_at` Int( 11 ) NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- DROP TABLE "jobs" -------------------------------------------
DROP TABLE IF EXISTS `jobs` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "jobs" -----------------------------------------
CREATE TABLE `jobs`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`queue` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`payload` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`attempts` TinyInt( 3 ) UNSIGNED NOT NULL,
	`reserved_at` Int( 10 ) UNSIGNED NULL DEFAULT NULL,
	`available_at` Int( 10 ) UNSIGNED NOT NULL,
	`created_at` Int( 10 ) UNSIGNED NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- DROP TABLE "migrations" -------------------------------------
DROP TABLE IF EXISTS `migrations` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "migrations" -----------------------------------
CREATE TABLE `migrations`( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`migration` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`batch` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 19;
-- -------------------------------------------------------------


-- DROP TABLE "notifications" ----------------------------------
DROP TABLE IF EXISTS `notifications` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "notifications" --------------------------------
CREATE TABLE `notifications`( 
	`id` Char( 36 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`type` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`notifiable_type` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`notifiable_id` BigInt( 20 ) UNSIGNED NOT NULL,
	`data` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`read_at` Timestamp NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- DROP TABLE "orders" -----------------------------------------
DROP TABLE IF EXISTS `orders` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "orders" ---------------------------------------
CREATE TABLE `orders`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`phone` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`address` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`user_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`product_title` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`quantity` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`price` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`image` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`product_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`payment_status` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`delivery_status` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 20;
-- -------------------------------------------------------------


-- DROP TABLE "password_reset_tokens" --------------------------
DROP TABLE IF EXISTS `password_reset_tokens` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "password_reset_tokens" ------------------------
CREATE TABLE `password_reset_tokens`( 
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `email` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- DROP TABLE "personal_access_tokens" -------------------------
DROP TABLE IF EXISTS `personal_access_tokens` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "personal_access_tokens" -----------------------
CREATE TABLE `personal_access_tokens`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`tokenable_type` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`tokenable_id` BigInt( 20 ) UNSIGNED NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 64 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`abilities` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`last_used_at` Timestamp NULL DEFAULT NULL,
	`expires_at` Timestamp NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `personal_access_tokens_token_unique` UNIQUE( `token` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- DROP TABLE "products" ---------------------------------------
DROP TABLE IF EXISTS `products` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "products" -------------------------------------
CREATE TABLE `products`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`title` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`description` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`quantity` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`category` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`price` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`discount` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`image` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 15;
-- -------------------------------------------------------------


-- DROP TABLE "replies" ----------------------------------------
DROP TABLE IF EXISTS `replies` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "replies" --------------------------------------
CREATE TABLE `replies`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`comment_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`reply` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`user_id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- DROP TABLE "sessions" ---------------------------------------
DROP TABLE IF EXISTS `sessions` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "sessions" -------------------------------------
CREATE TABLE `sessions`( 
	`id` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`user_id` BigInt( 20 ) UNSIGNED NULL DEFAULT NULL,
	`ip_address` VarChar( 45 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`user_agent` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`payload` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`last_activity` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- DROP TABLE "users" ------------------------------------------
DROP TABLE IF EXISTS `users` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`usertype` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
	`phone` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`address` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`email_verified_at` Timestamp NULL DEFAULT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`two_factor_secret` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`two_factor_recovery_codes` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`two_factor_confirmed_at` Timestamp NULL DEFAULT NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `users_email_unique` UNIQUE( `email` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 10;
-- -------------------------------------------------------------


-- Dump data of "cache" ------------------------------------
-- ---------------------------------------------------------


-- Dump data of "cache_locks" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "carts" ------------------------------------
BEGIN;

REPLACE INTO `carts`(`id`,`name`,`email`,`phone`,`address`,`product_title`,`quantity`,`price`,`Image`,`Product_id`,`user_id`,`created_at`,`updated_at`) VALUES 
( '6', 'nithya', 'nithya@gmail.com', '1324242233', 'kdfiadsfsdfk', 'formal black', '1', '1000', '1743244951.jpg', '1', '4', '2025-03-31 02:57:42', '2025-03-31 02:57:42' ),
( '7', 'nithya', 'nithya@gmail.com', '1324242233', 'kdfiadsfsdfk', 'women formal skirt and shirt', '1', '3500', '1743320991.jpg', '9', '4', '2025-03-31 02:57:53', '2025-03-31 02:57:53' ),
( '8', 'nithya', 'nithya@gmail.com', '1324242233', 'kdfiadsfsdfk', 'women dress 3', '1', '4500', '1743321036.jpg', '10', '4', '2025-03-31 02:58:04', '2025-03-31 02:58:04' ),
( '10', 'admin', 'admin@gmail.com', '2324242244', 'lkgnadkljfdgkl', 'formal black 1', '1', '1000', '1746902064.jpg', '1', '3', '2025-05-10 19:16:45', '2025-05-10 19:16:45' ),
( '11', 'admin', 'admin@gmail.com', '2324242244', 'lkgnadkljfdgkl', 'Spread collor Casual shirt', '1', '2000', '1746902556.jpg', '2', '3', '2025-05-10 19:17:02', '2025-05-10 19:17:02' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "categories" -------------------------------
BEGIN;

REPLACE INTO `categories`(`id`,`category_name`,`created_at`,`updated_at`) VALUES 
( '4', 'tops', '2025-03-27 22:06:42', '2025-03-27 22:06:42' ),
( '5', 'laptop', '2025-03-27 22:10:19', '2025-03-27 22:10:19' ),
( '6', 'mobiles', '2025-03-27 22:10:49', '2025-03-27 22:10:49' ),
( '7', 'tshirts', '2025-03-27 22:11:16', '2025-03-27 22:11:16' ),
( '8', 'toys', '2025-03-27 22:13:08', '2025-03-27 22:13:08' ),
( '9', 'earbuds', '2025-03-27 22:24:47', '2025-03-27 22:24:47' ),
( '10', 'rings', '2025-03-27 22:30:17', '2025-03-27 22:30:17' ),
( '11', 'nosepins', '2025-03-27 22:34:58', '2025-03-27 22:34:58' ),
( '12', 'baggy pants', '2025-03-27 22:38:00', '2025-03-27 22:38:00' ),
( '14', 'formal men shirts', '2025-03-29 02:48:34', '2025-03-29 02:48:34' ),
( '15', 'women formals', '2025-03-30 02:18:02', '2025-03-30 02:18:02' ),
( '16', 'Acessories', '2025-03-31 22:21:09', '2025-03-31 22:21:09' ),
( '17', 'test', '2025-05-10 21:32:27', '2025-05-10 21:32:27' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "comments" ---------------------------------
BEGIN;

REPLACE INTO `comments`(`id`,`name`,`comment`,`user_id`,`created_at`,`updated_at`) VALUES 
( '6', 'Nithya', 'hiii', '7', '2025-04-16 12:57:33', '2025-04-16 12:57:33' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "failed_jobs" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "job_batches" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "jobs" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "migrations" -------------------------------
BEGIN;

REPLACE INTO `migrations`(`id`,`migration`,`batch`) VALUES 
( '1', '0001_01_01_000000_create_users_table', '1' ),
( '2', '0001_01_01_000001_create_cache_table', '1' ),
( '3', '0001_01_01_000002_create_jobs_table', '1' ),
( '4', '2014_10_12_000000_create_users_table', '2' ),
( '5', '2025_03_27_174154_create_categories_table', '3' ),
( '6', '2014_10_12_100000_create_password_reset_tokens_table', '3' ),
( '7', '2014_10_12_200000_add_two_factor_columns_to_users_table', '4' ),
( '8', '2019_08_19_000000_create_failed_jobs_table', '5' ),
( '9', '2019_12_14_000001_create_personal_access_tokens_table', '6' ),
( '10', '2025_03_26_114012_create_sessions_table', '5' ),
( '11', '2025_03_28_045320_create_products_table', '7' ),
( '12', '2025_03_28_175933_create_products_table', '8' ),
( '13', '2025_03_29_080038_create_products_table', '9' ),
( '14', '2025_03_30_170748_create_carts_table', '10' ),
( '15', '2025_03_31_154954_create_orders_table', '11' ),
( '16', '2025_04_04_051519_create_notifications_table', '12' ),
( '17', '2025_04_16_164553_create_comments_table', '13' ),
( '18', '2025_04_16_164606_create_replies_table', '13' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "notifications" ----------------------------
-- ---------------------------------------------------------


-- Dump data of "orders" -----------------------------------
BEGIN;

REPLACE INTO `orders`(`id`,`name`,`email`,`phone`,`address`,`user_id`,`product_title`,`quantity`,`price`,`image`,`product_id`,`payment_status`,`delivery_status`,`created_at`,`updated_at`) VALUES 
( '8', 'jyothika', 'jyothika@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'shirts', '1', '2000', '1743236599.jpg', '2', 'Amount Received', 'delivered', '2025-04-02 06:34:26', '2025-04-02 22:27:36' ),
( '9', 'jyothika', 'jyothika@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Amount Received', 'delivered', '2025-04-02 07:03:06', '2025-04-02 22:28:43' ),
( '10', 'user', 'user@gmail.com', '1234567891', 'kdanfkdshxj', '1', 'shirts', '1', '2000', '1743236599.jpg', '2', 'Paid through card', 'processing', '2025-04-02 22:30:55', '2025-04-02 22:30:55' ),
( '11', 'user', 'user@gmail.com', '1234567891', 'kdanfkdshxj', '1', 'toy', '1', '480', '1743321157.jpg', '12', 'Paid through card', 'processing', '2025-04-02 22:30:56', '2025-04-02 22:30:56' ),
( '12', 'user', 'user@gmail.com', '1234567891', 'kdanfkdshxj', '1', 'laptop', '1', '150000', '1743245225.jpg', '5', 'Paid through card', 'processing', '2025-04-02 22:30:56', '2025-04-02 22:30:56' ),
( '13', 'admin', 'admin@gmail.com', '2324242244', 'lkgnadkljfdgkl', '3', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Paid through card', 'processing', '2025-04-03 06:54:35', '2025-04-03 06:54:35' ),
( '14', 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Amount Received', 'delivered', '2025-04-04 12:33:10', '2025-04-04 12:59:22' ),
( '15', 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Paid through card', 'processing', '2025-04-15 00:00:23', '2025-04-15 00:00:23' ),
( '16', 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '1', '1000', '1743244951.jpg', '1', 'cash on delivery', 'processing', '2025-04-16 22:33:33', '2025-04-16 22:33:33' ),
( '17', 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formals for women', '3', '7500', '1743320931.jpg', '8', 'cash on delivery', 'processing', '2025-04-17 01:28:53', '2025-04-17 01:28:53' ),
( '18', 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '2', '2000', '1743244951.jpg', '1', 'cash on delivery', 'processing', '2025-04-17 01:28:53', '2025-04-17 01:28:53' ),
( '19', 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'shirts', '4', '2000', '1743236599.jpg', '2', 'cash on delivery', 'processing', '2025-04-17 01:28:53', '2025-04-17 01:28:53' ),
( '20', 'J Alvin', 'allwinfog@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'formal black 1', '1', '1000', '1743244951.jpg', '1', 'cash on delivery', 'processing', '2025-05-10 14:11:29', '2025-05-10 14:11:29' ),
( '21', 'J Alvin', 'allwinfog@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'formal black 1', '1', '1000', '1746902064.jpg', '1', 'cash on delivery', 'processing', '2025-05-10 19:33:34', '2025-05-10 19:33:34' ),
( '22', 'J Alvin', 'allwinfog@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'Spread collor Casual shirt', '2', '2000', '1746902556.jpg', '2', 'cash on delivery', 'processing', '2025-05-10 19:33:35', '2025-05-10 19:33:35' ),
( '23', 'J Alvin', 'allwinfog@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'formal black 1', '2', '2000', '1746902064.jpg', '1', 'cash on delivery', 'processing', '2025-05-10 19:36:55', '2025-05-10 19:36:55' ),
( '24', 'J Alvin', 'allwinfog@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'Spread collor Casual shirt', '1', '2000', '1746902556.jpg', '2', 'cash on delivery', 'processing', '2025-05-10 19:36:55', '2025-05-10 19:36:55' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "password_reset_tokens" --------------------
BEGIN;

REPLACE INTO `password_reset_tokens`(`email`,`token`,`created_at`) VALUES 
( 'jyothika@gmail.com', '$2y$12$o2d0.3oXtabmAdepHE8sCuSMXRM37ueBKSwJmFsAGfdRUTjdW1L8m', '2025-05-09 14:41:16' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "personal_access_tokens" -------------------
-- ---------------------------------------------------------


-- Dump data of "products" ---------------------------------
BEGIN;

REPLACE INTO `products`(`id`,`title`,`description`,`quantity`,`category`,`price`,`discount`,`image`,`created_at`,`updated_at`) VALUES 
( '1', 'formal black 1', 'formal shirt', '0', 'formal men shirts', '1200', '1000', '1746902064.jpg', '2025-03-29 02:47:28', '2025-05-10 21:15:07' ),
( '2', 'Spread collor Casual shirt', 'Casual shirt', '19', 'formal men shirts', '2000', NULL, '1746902556.jpg', '2025-03-29 02:53:19', '2025-05-10 19:36:55' ),
( '5', 'laptop', 'latest laptop design with high speed processor', '1', 'laptop', '150000', NULL, '1746911329.jpg', '2025-03-29 05:17:05', '2025-05-10 21:08:49' ),
( '6', 'shirts', 'formal shirt', '1', 'formal men shirts', '2000', '1800', '1743245270.jpg', '2025-03-29 05:17:50', '2025-03-30 04:02:24' ),
( '8', 'formals for women', 'beautiful women formal dress', '0', 'women formals', '3000', '2500', '1746911407.jpg', '2025-03-30 02:18:51', '2025-05-10 21:13:34' ),
( '9', 'women formal skirt and shirt', 'formal wear skirt and shirt for women', '2', 'women formals', '4000', '3500', '1743320991.jpg', '2025-03-30 02:19:52', '2025-03-30 04:03:14' ),
( '10', 'women dress 3', '3 dresses', '3', 'women formals', '5000', '4500', '1743321036.jpg', '2025-03-30 02:20:36', '2025-03-30 04:03:43' ),
( '11', 'dell laptop', 'latest processor laptop', '1', 'laptop', '150000', NULL, '1743321110.jpg', '2025-03-30 02:21:50', '2025-03-30 02:21:50' ),
( '12', 'toy', 'children toys', '3', 'toys', '500', '480', '1743321157.jpg', '2025-03-30 02:22:37', '2025-03-30 04:04:07' ),
( '13', 'Acessories', 'Necklace', '1', 'Acessories', '500', '400', '1743479567.jpg', '2025-03-31 22:22:47', '2025-03-31 22:22:47' ),
( '14', 'Acessories', 'Necklace', '1', 'Acessories', '500', '400', '1743479568.jpg', '2025-03-31 22:22:48', '2025-03-31 22:22:48' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "replies" ----------------------------------
BEGIN;

REPLACE INTO `replies`(`id`,`name`,`comment_id`,`reply`,`user_id`,`created_at`,`updated_at`) VALUES 
( '2', 'Nithya', NULL, 'hello', '7', '2025-04-16 23:12:15', '2025-04-16 23:12:15' ),
( '3', 'Nithya', NULL, 'hello', '7', '2025-04-16 23:12:29', '2025-04-16 23:12:29' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "sessions" ---------------------------------
BEGIN;

REPLACE INTO `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) VALUES 
( 'g27AqCZVEuIaqQHWgbZ2z6H5Gdw5mnGBFnpXcnpp', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVcwZUF3S3VGQ0JoYzVhQTljUTFDTVdJakR6amlqY01tVlNlYk1IZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1752515416' ),
( 'nObH7P7UkzD716eMN99wQOPCpMLzReQDSulVwxFZ', '3', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGx4Qlcwa2MwMDJjdzUxdmhNZVZ2ZkZUdHM1UjNKZUdmMjRrTnplcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcmludF9wZGYvOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', '1747051290' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
BEGIN;

REPLACE INTO `users`(`id`,`name`,`email`,`usertype`,`phone`,`address`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`two_factor_confirmed_at`,`remember_token`,`created_at`,`updated_at`) VALUES 
( '1', 'user', 'user@gmail.com', '0', '1234567891', 'kdanfkdshxj', NULL, '$2y$12$hrOenVC71uYoB.u//OshBOXtDe1bTYnnqMtAzXh0ltrmcA3qv6Gey', NULL, NULL, NULL, NULL, '2025-03-26 06:57:17', '2025-03-26 06:57:17' ),
( '3', 'admin', 'admin@gmail.com', '1', '2324242244', 'lkgnadkljfdgkl', '2025-04-03 18:25:44', '$2y$12$MZDZ4y0meeva6qnBTKtvu.cbWdyYAqjX2sZTs8BO5qXAS3vWqPWZK', NULL, NULL, NULL, 'vLnSngnMxvDEFd7ddAfmoQt4pKCFuv6DXbndqdxeJkwUqLS2iNK2xE3x2YMd', '2025-03-26 11:36:27', '2025-03-26 11:36:27' ),
( '4', 'nithya', 'nithya@gmail.com', '0', '1324242233', 'kdfiadsfsdfk', NULL, '$2y$12$pMP3bOgdM1GB4S529hRV3Oje2oVckZrj/JHttIfWEE2TL23hnCrpG', NULL, NULL, NULL, NULL, '2025-03-31 02:13:02', '2025-03-31 02:13:02' ),
( '5', 'J Alvin', 'allwinfog@gmail.com', '0', '52436274784', 'hgdfjgrkyltkh', '2025-05-09 14:48:56', '$2y$12$MZDZ4y0meeva6qnBTKtvu.cbWdyYAqjX2sZTs8BO5qXAS3vWqPWZK', NULL, NULL, NULL, 'xI5tmsTG1m11QVMoJCYeKpv4CicX7OAuWWGrBQ6EDTKDTLEZLNmLxVa4IzwY', '2025-03-31 22:19:50', '2025-05-10 14:07:33' ),
( '6', 'Nithya', 'neee7125@gmail.com', '0', '8904297524', 'dhgkdjgdlfkhlf', NULL, '$2y$12$4MWayA1a2ltNaYbCuvbv3eVeemq6Wab/Xb5hDrIn4zVQOJuIRf5RS', NULL, NULL, NULL, NULL, '2025-04-03 02:36:15', '2025-04-03 02:36:15' ),
( '7', 'Nithya', 'shreenithya862@gmail.com', '0', '8904297524', 'dhgkdjgdlfkhlf', '2025-04-03 05:52:42', '$2y$12$OaB3tD6izoWk05GJv8EcReOrtbSqMb6vtltn0zBc1PHKzKrjSTrIK', NULL, NULL, NULL, NULL, '2025-04-03 05:47:35', '2025-04-03 05:52:42' ),
( '8', 'malika mam', 'mallidshetty@gmail.com', '0', '78533456677', 'cgfkj', NULL, '$2y$12$MfaVHrSkdZR4MaAOWpWSAOvhfYr7mOZccpb38raqRP1mMraMfxJxq', NULL, NULL, NULL, NULL, '2025-04-14 23:57:34', '2025-04-14 23:57:34' ),
( '9', 'bhavyashree', 'shreebhavya876@gmail.com', '0', '8990779876', 'alkjfldskjlkgt', NULL, '$2y$12$u81yYE.T97gNvfAACm51CO0Bf8ujvv0JQQ.Thv5Ph.iO9cfTam4UC', NULL, NULL, NULL, NULL, '2025-04-16 11:06:24', '2025-04-16 11:06:24' );
COMMIT;
-- ---------------------------------------------------------


-- CREATE INDEX "jobs_queue_index" -----------------------------
CREATE INDEX `jobs_queue_index` USING BTREE ON `jobs`( `queue` );
-- -------------------------------------------------------------


-- CREATE INDEX "notifications_notifiable_type_notifiable_id_index" 
CREATE INDEX `notifications_notifiable_type_notifiable_id_index` USING BTREE ON `notifications`( `notifiable_type`, `notifiable_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" 
CREATE INDEX `personal_access_tokens_tokenable_type_tokenable_id_index` USING BTREE ON `personal_access_tokens`( `tokenable_type`, `tokenable_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "sessions_last_activity_index" -----------------
CREATE INDEX `sessions_last_activity_index` USING BTREE ON `sessions`( `last_activity` );
-- -------------------------------------------------------------


-- CREATE INDEX "sessions_user_id_index" -----------------------
CREATE INDEX `sessions_user_id_index` USING BTREE ON `sessions`( `user_id` );
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


