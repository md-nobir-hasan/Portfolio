-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 02:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `um_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'খুলনা', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 'চুয়াডাঙ্গা', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'খুলনা', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_qualifications`
--

CREATE TABLE `education_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` longtext DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_qualifications`
--

INSERT INTO `education_qualifications` (`id`, `name`, `des`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'এস এস সি', 'সেকান্ডারি স্কুল সারটিফিকেট', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'এইস এস সি', 'হায়ার স্কুল সারটিফিকেট', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ekhanas`
--

CREATE TABLE `ekhanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `union_id` bigint(20) UNSIGNED DEFAULT NULL,
  `word_id` bigint(20) UNSIGNED DEFAULT NULL,
  `village_id` bigint(20) UNSIGNED DEFAULT NULL,
  `holding_no` varchar(255) DEFAULT NULL,
  `yearly_income` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bn_name` varchar(255) DEFAULT NULL,
  `ed_quali_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `m_male` varchar(255) DEFAULT NULL,
  `m_female` varchar(255) DEFAULT NULL,
  `m_child` varchar(255) DEFAULT NULL,
  `paka_house` int(11) DEFAULT NULL,
  `adhapaka_house` int(11) DEFAULT NULL,
  `kasa_house` int(11) DEFAULT NULL,
  `yearly_house_rent` varchar(255) DEFAULT NULL,
  `tax_paid` decimal(8,2) DEFAULT 0.00,
  `dob` timestamp NULL DEFAULT NULL,
  `birth_no` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tuboil` enum('0','1') DEFAULT NULL,
  `toilet_type` varchar(255) DEFAULT NULL,
  `sc_past` varchar(255) DEFAULT NULL,
  `sc_present` varchar(255) DEFAULT NULL,
  `sc_future` varchar(255) DEFAULT NULL,
  `rent_type` varchar(255) DEFAULT NULL,
  `land_house` varchar(255) DEFAULT NULL,
  `land_cultivate` varchar(255) DEFAULT NULL,
  `infrastructure` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekhanas`
--

INSERT INTO `ekhanas` (`id`, `union_id`, `word_id`, `village_id`, `holding_no`, `yearly_income`, `name`, `bn_name`, `ed_quali_id`, `phone`, `spouse_name`, `mother_name`, `m_male`, `m_female`, `m_child`, `paka_house`, `adhapaka_house`, `kasa_house`, `yearly_house_rent`, `tax_paid`, `dob`, `birth_no`, `nid`, `gender`, `religion_id`, `profession_id`, `tuboil`, `toilet_type`, `sc_past`, `sc_present`, `sc_future`, `rent_type`, `land_house`, `land_cultivate`, `infrastructure`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 1, '920004', '4234', '423', '432432', 2, '45612378945', '4234', '4324', '2', '2', '2', 2, 2, NULL, '32800', '2863.00', '2023-04-22 18:00:00', '4324', '3423432', 'পুরুষ', 1, 2, '1', 'পাকা', NULL, NULL, NULL, 'নিজে বসবাস', '43', '43', 'আবাসিক', 1, 1, NULL, NULL, '2023-04-24 07:21:39', '2023-04-24 07:25:58'),
(5, 2, 4, 2, '920005', '3442', '423', '4324', 2, '43243432332', '4324', '4324', '4324', '43', '4', 4, 4, NULL, '65600', '1909.00', '2023-04-23 18:00:00', '4325345', '4234324', 'পুরুষ', 1, 1, '1', 'পাকা', NULL, NULL, NULL, 'নিজে বসবাস', '43', '34', 'আবাসিক', 1, 1, NULL, NULL, '2023-04-24 20:27:12', '2023-04-24 20:28:31'),
(6, 2, 4, 2, '920006', '32432', '4234', '4234', 2, '45612312312', 'fsdfsd', 'fsdf', '2', '2', '2', 3, 3, NULL, '49200', '4295.00', '2023-04-26 18:00:00', '53455345345', '5345435', 'পুরুষ', 1, 2, '1', 'পাকা', NULL, NULL, NULL, 'নিজে বসবাস', '3', '4', 'আবাসিক', 1, 1, NULL, NULL, '2023-04-26 05:52:50', '2023-04-26 06:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_years`
--

CREATE TABLE `financial_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_years`
--

INSERT INTO `financial_years` (`id`, `from`, `to`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 2023, 2024, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `house_structures`
--

CREATE TABLE `house_structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `des` longtext DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `house_tax_deposites`
--

CREATE TABLE `house_tax_deposites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ekhana_id` bigint(20) UNSIGNED NOT NULL,
  `f_year_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `f_kisti` decimal(8,2) DEFAULT 0.00,
  `s_kisti` decimal(8,2) DEFAULT 0.00,
  `t_kisti` decimal(8,2) DEFAULT 0.00,
  `fo_kisti` decimal(8,2) DEFAULT 0.00,
  `deposite_date` timestamp NULL DEFAULT NULL,
  `f_date` timestamp NULL DEFAULT NULL,
  `s_date` timestamp NULL DEFAULT NULL,
  `t_date` timestamp NULL DEFAULT NULL,
  `paid_amount` decimal(8,2) DEFAULT 0.00,
  `arrears` decimal(8,2) DEFAULT 0.00,
  `fine` decimal(8,2) DEFAULT 0.00,
  `approval` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `union_id` bigint(20) UNSIGNED NOT NULL,
  `word_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `house_tax_deposites`
--

INSERT INTO `house_tax_deposites` (`id`, `ekhana_id`, `f_year_id`, `total_amount`, `f_kisti`, `s_kisti`, `t_kisti`, `fo_kisti`, `deposite_date`, `f_date`, `s_date`, `t_date`, `paid_amount`, `arrears`, `fine`, `approval`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `union_id`, `word_id`, `created_at`, `updated_at`) VALUES
(2, 4, 1, '2863.00', '954.00', '954.00', '955.00', '0.00', '2023-04-24 18:00:00', '2023-04-23 18:00:00', '2023-04-24 18:00:00', '2023-04-25 18:00:00', '2863.00', '0.00', '0.00', '1', NULL, NULL, NULL, NULL, 1, 1, '2023-04-24 07:22:31', '2023-04-26 00:26:10'),
(3, 5, 1, '5726.00', '1909.00', '0.00', '0.00', '0.00', '2023-04-23 18:00:00', '2023-04-23 18:00:00', NULL, NULL, '1909.00', '0.00', '0.00', '1', NULL, NULL, NULL, NULL, 2, 4, '2023-04-24 20:28:09', '2023-04-24 20:28:31'),
(4, 6, 1, '4295.00', '1432.00', '1432.00', '1431.00', '0.00', '2023-04-25 18:00:00', '2023-04-23 18:00:00', '2023-04-24 18:00:00', '2023-04-25 18:00:00', '4295.00', '0.00', '0.00', '1', NULL, NULL, NULL, NULL, 2, 4, '2023-04-26 06:08:02', '2023-04-26 06:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `hstu_ekhana_bkdns`
--

CREATE TABLE `hstu_ekhana_bkdns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT '0',
  `hstru_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ekhana_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_03_12_232000_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_03_10_015338_create_sessions_table', 1),
(8, '2023_03_11_091735_create_divisions_table', 1),
(9, '2023_03_12_082216_create_districts_table', 1),
(10, '2023_03_12_105916_create_upazilas_table', 1),
(11, '2023_03_13_001918_create_modules_table', 1),
(12, '2023_03_13_001929_create_permissions_table', 1),
(13, '2023_03_14_021152_create_unions_table', 1),
(14, '2023_03_14_021228_create_words_table', 1),
(15, '2023_03_14_021347_create_villages_table', 1),
(16, '2023_03_14_225517_create_education_qualifications_table', 1),
(17, '2023_03_14_225529_create_taxes_table', 1),
(18, '2023_03_14_225538_create_house_structures_table', 1),
(19, '2023_03_14_225545_create_professions_table', 1),
(20, '2023_03_14_225557_create_religions_table', 1),
(21, '2023_03_15_062146_create_ekhanas_table', 1),
(22, '2023_03_15_070955_create_hstu_ekhana_bkdns_table', 1),
(23, '2023_03_26_020942_create_financial_years_table', 1),
(24, '2023_03_26_030825_create_house_tax_deposites_table', 1),
(25, '2023_04_04_034148_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `a_union` int(11) DEFAULT NULL,
  `a_power` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `a_union`, `a_power`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Setup', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Division', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'District', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Upazila', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Union', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Word', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Village', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Education Qualification', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Profession', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Setup Tax', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Religion', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Financial Year', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'House Structure', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'User Management', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Role', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'User', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Tax', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'E-Khana', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Calculation', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'House Tax Deposite', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'House Tax Deposite List', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Village Based Levy', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'ওয়ার্ড ভিত্তিক ধার্য', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'টপলিষ্ট/ডেইলি পোষ্টিং', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'ধার্য/আদায় টপশীট', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'ডেইলি পোষ্টিং', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'ডেইলি পোষ্টিং টপশিট', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'বিল প্রিন্ট', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'সিঙ্গেল বিল প্রিন্ট (পুরাতন)', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Approval', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Tax Deposite Approval', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'সমস্ত বিল প্রিন্ট (পুরাতন)', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'সিঙ্গেল বিল প্রিন্ট', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'সমস্ত বিল প্রিন্ট', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('eea61efd-ac45-4c55-800f-411a4012589f', 'App\\Notifications\\HTaxDepoDelAproval', 'App\\Models\\User', 1, '{\"user_id\":1,\"name\":\"Super Admin\",\"msg\":\"\\u09ac\\u09be\\u09b8\\u09be\\u09ac\\u09be\\u09dc\\u09bf \\u0995\\u09b0 \\u09ae\\u09c1\\u099b\\u09be\\u09b0 \\u0986\\u09ac\\u09c7\\u09a6\\u09a8\"}', '2023-04-26 00:25:28', '2023-04-24 07:27:47', '2023-04-26 00:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `add` int(11) DEFAULT NULL,
  `show` int(11) DEFAULT NULL,
  `edit` int(11) DEFAULT NULL,
  `delete` int(11) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `module_id`, `add`, `show`, `edit`, `delete`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 4, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 5, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 6, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 7, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 8, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 9, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 10, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 11, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 12, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 13, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 14, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 15, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 16, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 17, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 18, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 19, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 20, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, 21, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, 22, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, 23, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, 24, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, 25, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1, 26, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1, 27, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, 28, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1, 29, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1, 30, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1, 31, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1, 32, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 2, 2, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 2, 3, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 2, 4, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 2, 5, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 2, 6, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 2, 7, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 2, 8, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 2, 9, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 2, 10, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 2, 11, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 2, 12, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 2, 13, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 2, 14, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 2, 15, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 2, 16, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 2, 17, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 2, 18, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 2, 19, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 2, 20, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 2, 21, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 2, 22, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 3, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 3, 2, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 3, 3, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 3, 4, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 3, 5, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 3, 6, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 3, 7, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 3, 8, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 3, 9, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 3, 10, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 3, 11, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 3, 12, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 3, 13, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 3, 14, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 3, 15, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 3, 16, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 3, 17, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 3, 18, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 3, 19, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 3, 20, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 3, 21, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 3, 22, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 1, 33, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 1, 34, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 1, 35, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 1, 34, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` longtext DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `name`, `des`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'ছাত্র', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'কৃষক', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` longtext DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `des`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'ইসলাম', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'হিন্দু', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'খৃষ্টান', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'বৌদ্ধ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'Power', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Union', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Hasan', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pqpusyHhAgsIcZ9ERcUgGbAX01Wu80UWQMxyUsKX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic0p1eHVGWVpuWlNZanFkc2NVOWdaQkdvclMxY1pxNzZHZ1dGY1hxdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRTVVFIQXdpaWxXejBSMGNyTk03eEN1bk41Q1JoVE45MEZ6ckNHdjkzTW1rZTdtSkphcFVzTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi90YXgvY2FsY3VsYXRpb24vZGVwb3NpdGUvY3JlYXRlIjt9fQ==', 1682511296);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(5,3) NOT NULL,
  `des` longtext DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `price`, `des`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'বাসাবাড়ির কর', '8.729', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `name`, `code`, `division_id`, `district_id`, `upazila_id`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'মিরপুর-১০', 41, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'বেগমপুর', 42, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'উথলি', 43, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `name`, `division_id`, `district_id`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'মিরপুর', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'দর্শনা', 2, 3, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `show_pass` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `word_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `show_pass`, `address`, `role_id`, `word_id`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'support@reshub.info', '01988406007', 'CceANO98B@B1', NULL, 1, 1, NULL, '$2y$10$SUQHAwiilWz0R0crNM7xCunN5CRhTN90FzrCGv93Mmke7mJJapUsO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `union_id` bigint(20) UNSIGNED DEFAULT NULL,
  `word_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `name`, `code`, `division_id`, `district_id`, `upazila_id`, `union_id`, `word_id`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'পর্বত', 31, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'উজলপুর', 32, 1, 1, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `union_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `name`, `code`, `division_id`, `district_id`, `upazila_id`, `union_id`, `created_by`, `updated_by`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, '1', 51, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2', 52, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '4', 53, 2, 3, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '5', 54, 2, 3, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1', 55, 2, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2', 56, 2, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id` (`division_id`),
  ADD KEY `districts_created_by` (`created_by`),
  ADD KEY `districts_updated_by` (`updated_by`),
  ADD KEY `districts_deleted_by` (`deleted_by`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisions_created_by` (`created_by`),
  ADD KEY `divisions_updated_by` (`updated_by`),
  ADD KEY `divisions_deleted_by` (`deleted_by`);

--
-- Indexes for table `education_qualifications`
--
ALTER TABLE `education_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_qualifications_created_by` (`created_by`),
  ADD KEY `education_qualifications_updated_by` (`updated_by`),
  ADD KEY `education_qualifications_deleted_by` (`deleted_by`);

--
-- Indexes for table `ekhanas`
--
ALTER TABLE `ekhanas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ekhanas_birth_no_unique` (`birth_no`),
  ADD UNIQUE KEY `ekhanas_nid_unique` (`nid`),
  ADD KEY `ekhanas_union_id` (`union_id`),
  ADD KEY `ekhanas_word_id` (`word_id`),
  ADD KEY `ekhanas_village_id` (`village_id`),
  ADD KEY `ekhanas_ed_quali_id` (`ed_quali_id`),
  ADD KEY `ekhanas_religion_id` (`religion_id`),
  ADD KEY `ekhanas_profession_id` (`profession_id`),
  ADD KEY `ekhanas_created_by` (`created_by`),
  ADD KEY `ekhanas_updated_by` (`updated_by`),
  ADD KEY `ekhanas_deleted_by` (`deleted_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `financial_years`
--
ALTER TABLE `financial_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financial_years_created_by` (`created_by`),
  ADD KEY `financial_years_updated_by` (`updated_by`),
  ADD KEY `financial_years_deleted_by` (`deleted_by`);

--
-- Indexes for table `house_structures`
--
ALTER TABLE `house_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_structures_created_by` (`created_by`),
  ADD KEY `house_structures_updated_by` (`updated_by`),
  ADD KEY `house_structures_deleted_by` (`deleted_by`);

--
-- Indexes for table `house_tax_deposites`
--
ALTER TABLE `house_tax_deposites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_tax_deposites_ekhana_id` (`ekhana_id`),
  ADD KEY `house_tax_deposites_union_id` (`union_id`),
  ADD KEY `house_tax_deposites_word_id` (`word_id`),
  ADD KEY `house_tax_deposites_f_year_id` (`f_year_id`),
  ADD KEY `house_tax_deposites_created_by` (`created_by`),
  ADD KEY `house_tax_deposites_updated_by` (`updated_by`),
  ADD KEY `house_tax_deposites_deleted_by` (`deleted_by`);

--
-- Indexes for table `hstu_ekhana_bkdns`
--
ALTER TABLE `hstu_ekhana_bkdns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hstu_ekhana_bkdns_hstru_id` (`hstru_id`),
  ADD KEY `hstu_ekhana_bkdns_ekhana_id` (`ekhana_id`),
  ADD KEY `hstu_ekhana_bkdns_created_by` (`created_by`),
  ADD KEY `hstu_ekhana_bkdns_updated_by` (`updated_by`),
  ADD KEY `hstu_ekhana_bkdns_deleted_by` (`deleted_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_created_by` (`created_by`),
  ADD KEY `modules_updated_by` (`updated_by`),
  ADD KEY `modules_deleted_by` (`deleted_by`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_role_id` (`role_id`),
  ADD KEY `permissions_module_id` (`module_id`),
  ADD KEY `permissions_created_by` (`created_by`),
  ADD KEY `permissions_updated_by` (`updated_by`),
  ADD KEY `permissions_deleted_by` (`deleted_by`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `professions_created_by` (`created_by`),
  ADD KEY `professions_updated_by` (`updated_by`),
  ADD KEY `professions_deleted_by` (`deleted_by`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `religions_created_by` (`created_by`),
  ADD KEY `religions_updated_by` (`updated_by`),
  ADD KEY `religions_deleted_by` (`deleted_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_created_by` (`created_by`),
  ADD KEY `taxes_updated_by` (`updated_by`),
  ADD KEY `taxes_deleted_by` (`deleted_by`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unions_division_id` (`division_id`),
  ADD KEY `unions_district_id` (`district_id`),
  ADD KEY `unions_upazila_id` (`upazila_id`),
  ADD KEY `unions_created_by` (`created_by`),
  ADD KEY `unions_updated_by` (`updated_by`),
  ADD KEY `unions_deleted_by` (`deleted_by`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazilas_division_id` (`division_id`),
  ADD KEY `upazilas_district_id` (`district_id`),
  ADD KEY `upazilas_created_by` (`created_by`),
  ADD KEY `upazilas_updated_by` (`updated_by`),
  ADD KEY `upazilas_deleted_by` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_role_id` (`role_id`),
  ADD KEY `users_created_by` (`created_by`),
  ADD KEY `users_updated_by` (`updated_by`),
  ADD KEY `users_deleted_by` (`deleted_by`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villages_division_id` (`division_id`),
  ADD KEY `villages_district_id` (`district_id`),
  ADD KEY `villages_upazila_id` (`upazila_id`),
  ADD KEY `villages_union_id` (`union_id`),
  ADD KEY `villages_word_id` (`word_id`),
  ADD KEY `villages_created_by` (`created_by`),
  ADD KEY `villages_updated_by` (`updated_by`),
  ADD KEY `villages_deleted_by` (`deleted_by`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `words_division_id` (`division_id`),
  ADD KEY `words_district_id` (`district_id`),
  ADD KEY `words_upazila_id` (`upazila_id`),
  ADD KEY `words_union_id` (`union_id`),
  ADD KEY `words_created_by` (`created_by`),
  ADD KEY `words_updated_by` (`updated_by`),
  ADD KEY `words_deleted_by` (`deleted_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `education_qualifications`
--
ALTER TABLE `education_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ekhanas`
--
ALTER TABLE `ekhanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_years`
--
ALTER TABLE `financial_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `house_structures`
--
ALTER TABLE `house_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `house_tax_deposites`
--
ALTER TABLE `house_tax_deposites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hstu_ekhana_bkdns`
--
ALTER TABLE `hstu_ekhana_bkdns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `districts_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `districts_division_id` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `districts_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `divisions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `divisions_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `divisions_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education_qualifications`
--
ALTER TABLE `education_qualifications`
  ADD CONSTRAINT `education_qualifications_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `education_qualifications_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `education_qualifications_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ekhanas`
--
ALTER TABLE `ekhanas`
  ADD CONSTRAINT `ekhanas_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_ed_quali_id` FOREIGN KEY (`ed_quali_id`) REFERENCES `education_qualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_profession_id` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_religion_id` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_union_id` FOREIGN KEY (`union_id`) REFERENCES `unions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_village_id` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekhanas_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `financial_years`
--
ALTER TABLE `financial_years`
  ADD CONSTRAINT `financial_years_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `financial_years_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `financial_years_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `house_structures`
--
ALTER TABLE `house_structures`
  ADD CONSTRAINT `house_structures_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_structures_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_structures_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `house_tax_deposites`
--
ALTER TABLE `house_tax_deposites`
  ADD CONSTRAINT `house_tax_deposites_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_tax_deposites_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_tax_deposites_ekhana_id` FOREIGN KEY (`ekhana_id`) REFERENCES `ekhanas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_tax_deposites_f_year_id` FOREIGN KEY (`f_year_id`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_tax_deposites_union_id` FOREIGN KEY (`union_id`) REFERENCES `unions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_tax_deposites_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `house_tax_deposites_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hstu_ekhana_bkdns`
--
ALTER TABLE `hstu_ekhana_bkdns`
  ADD CONSTRAINT `hstu_ekhana_bkdns_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hstu_ekhana_bkdns_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hstu_ekhana_bkdns_ekhana_id` FOREIGN KEY (`ekhana_id`) REFERENCES `ekhanas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hstu_ekhana_bkdns_hstru_id` FOREIGN KEY (`hstru_id`) REFERENCES `house_structures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hstu_ekhana_bkdns_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modules_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modules_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_module_id` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professions`
--
ALTER TABLE `professions`
  ADD CONSTRAINT `professions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professions_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professions_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `religions`
--
ALTER TABLE `religions`
  ADD CONSTRAINT `religions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `religions_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `religions_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taxes_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taxes_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unions`
--
ALTER TABLE `unions`
  ADD CONSTRAINT `unions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unions_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unions_district_id` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unions_division_id` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unions_upazila_id` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unions_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upazilas_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upazilas_district_id` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upazilas_division_id` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `upazilas_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_district_id` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_division_id` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_union_id` FOREIGN KEY (`union_id`) REFERENCES `unions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_upazila_id` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `villages_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `words`
--
ALTER TABLE `words`
  ADD CONSTRAINT `words_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `words_deleted_by` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `words_district_id` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `words_division_id` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `words_union_id` FOREIGN KEY (`union_id`) REFERENCES `unions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `words_upazila_id` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `words_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
