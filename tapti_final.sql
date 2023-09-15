-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 08:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_shop_baba`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `pin_code` varchar(11) NOT NULL,
  `locality` text NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'India',
  `address_type` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `name`, `mobile`, `pin_code`, `locality`, `address`, `city`, `state`, `country`, `address_type`, `is_deleted`, `timestamp`) VALUES
(19, 9, 'Durgesh Kumar', '7667107173', '851133', 'rani bagh', 'Mokhtiyarpur bhagwanpur begusarai Bihar', 'Begusarai', 'Bihar', 'India', 'home', 0, '2023-06-30 10:14:47'),
(20, 9, 'vikash kumar', '7667107173', '585556', 'ranibagh', 'Mokhtiyarpur bhagwanpur begusarai Bihar', 'Begusarai', 'Delhi', 'India', 'office', 0, '2023-07-04 06:58:06'),
(23, 9, 'asd', '2342442424', '232323', 'sad', '23424', '234324', 'Arunachal Pradesh', 'India', 'office', 0, '2023-08-10 11:35:39'),
(24, 9, 'AMIT ', '1234567890', '124578', 'rani bagh', 'SDFASF', 'NEW DELHI', 'Rajasthan', 'India', 'office', 0, '2023-08-12 11:06:07'),
(25, 15, 'Suraj S/O Santosh sharma', '9817145647', '110044', 'India', 'Suraj S/O Santosh sharma H 22A Pooja Bhawan', 'New Delhi', 'Delhi', 'India', 'home', 0, '2023-08-12 11:41:35'),
(26, 15, 'Sujata Singh', '9171488528', '110052', 'Delhi', 'H 502 Lajpat nagar', 'New Delhi', 'Delhi', 'India', 'office', 0, '2023-08-12 11:43:38'),
(28, 9, 'sdfas', '3452345542', '234523', 'test', 'asdfasffasdf', 'asdfasdf', 'Arunachal Pradesh', 'India', 'home', 0, '2023-09-11 06:29:44'),
(29, 23, 'test name', '3425235235', '234345', 'fgsdgsd', 'asdfasdff', 'sadfsfs', 'Chhattisgarh', 'India', 'home', 0, '2023-09-11 06:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `total_price`, `is_deleted`, `timestamp`) VALUES
(1, 17, 8, 1, 9500, 0, '2023-08-19 13:02:55'),
(35, 1, 9, 1, 4650, 0, '2023-09-13 12:57:29'),
(36, 1, 12, 1, 4562, 0, '2023-09-14 04:57:04'),
(39, 23, 1, 2, 19998, 0, '2023-09-14 05:13:40'),
(40, 23, 2, 2, 17998, 0, '2023-09-14 05:18:46'),
(41, 23, 12, 1, 4562, 0, '2023-09-14 05:18:47'),
(42, 23, 9, 2, 9300, 0, '2023-09-14 05:18:48'),
(43, 23, 3, 1, 4999, 0, '2023-09-14 05:19:25'),
(44, 23, 8, 2, 19000, 0, '2023-09-14 05:19:36'),
(46, 9, 3, 2, 9998, 0, '2023-09-14 06:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `is_deleted`, `timestamp`) VALUES
(1, 'BRASS INSTRUMENTS', '64e0698c4260b4.09290644.png', 0, '2023-08-19 07:04:44'),
(2, 'SILVER INSTRUMENTS', '64e069a961dee7.76341230.png', 0, '2023-08-19 07:05:13'),
(3, 'WOODEN INSTRUMENTS', '64e069cdef3b56.71217139.png', 0, '2023-08-19 07:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price_single_unit` bigint(20) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `delivery_status` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `order_event` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_canceled` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `product_id`, `address_id`, `transaction_id`, `quantity`, `price_single_unit`, `total_price`, `payment_method`, `payment_status`, `delivery_status`, `order_status`, `order_event`, `order_date`, `is_deleted`, `is_canceled`, `timestamp`) VALUES
(1, '1692598502f0d38c08', 9, 3, 23, NULL, 1, 4999, 4999, 'pod', 'pending', 'canceled', 'canceled', '[{\"event_name\":\"order placed\",\"Date\":\"21-08-2023\",\"Time\":\"11:45:02\"},{\"event_name\":\"order canceled\",\"Date\":\"21-08-2023\",\"Time\":\"12:04:59\"}]', '2023-08-21 11:45:02', 0, 1, '2023-08-21 06:15:02'),
(2, '1692598502647f5899', 9, 9, 23, NULL, 1, 4650, 4650, 'pod', 'pending', 'order placed', 'pending', '[{\"event_name\":\"order placed\",\"Date\":\"21-08-2023\",\"Time\":\"11:45:02\"}]', '2023-08-21 11:45:02', 0, 0, '2023-08-21 06:15:02'),
(3, '1692599353e7c70558', 9, 2, 20, NULL, 1, 8999, 8999, 'pod', 'pending', 'canceled', 'canceled', '[{\"event_name\":\"order placed\",\"Date\":\"21-08-2023\",\"Time\":\"11:59:13\"},{\"event_name\":\"order confirmed\",\"Date\":\"21-08-2023\",\"Time\":\"12:04:49\"},{\"event_name\":\"order canceled\",\"Date\":\"21-08-2023\",\"Time\":\"12:06:27\"}]', '2023-08-21 11:59:13', 0, 1, '2023-08-21 06:29:13'),
(4, '1692783748a5a09c7f', 9, 3, 20, NULL, 1, 4999, 4999, 'pod', 'pending', 'canceled', 'canceled', '[{\"event_name\":\"order placed\",\"Date\":\"23-08-2023\",\"Time\":\"15:12:28\"},{\"event_name\":\"order canceled\",\"Date\":\"11-09-2023\",\"Time\":\"14:29:05\"}]', '2023-08-23 15:12:28', 0, 1, '2023-08-23 09:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_image` text NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_desc` text NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `base_price` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_price`, `product_desc`, `sub_category_id`, `base_price`, `quantity`, `is_deleted`, `timestamp`) VALUES
(1, 'brass bugle', '64e073641af562.17849095.png', 9999, ' The Brand New Execellent Bb Low Pitch Tuneable Army Bugle,Militaria Bugle,School Bugle,Scout Bugle is made of good quality brass and materials and well finished.our all musical instruments have good quality components,professional sound and technically approved by the musicians world wide.', 1, 0, 0, 0, '2023-08-19 07:46:44'),
(2, 'silver baritone', '64e0831ecbd083.59662955.png', 8999, 'OUR PRODUCT QUALITY ATTENTION we believe that no product is complete without putting it in to practical experience. This is the main strength of our products. All our products like Trombone, Euphonium, Bugel Cooper, Trumpet, Pocket Cornet, Tenor Core, French Horn and other Musical instruments are well accepted in the market mainly because of the quality it maintains all through these years.', 6, 0, 0, 0, '2023-08-19 08:53:50'),
(3, 'brass flugel horn', '64e08c25a0c4c9.58680185.png', 4999, 'brass flugel horn', 2, 0, 0, 0, '2023-08-19 09:32:21'),
(4, 'brass trombone', '64e09fbdcc82a6.10984914.png', 6325, 'The modern bass trombone is pitched in B  It is identical in length to the tenor trombone, but has a wider bore and a larger bell to aid in the production of a fuller, deeper tone in the lower register.', 3, 0, 0, 1, '2023-08-19 10:55:57'),
(5, 'brass trombone', '64e0a5b5af5e56.51907627.png', 2650, 'The modern bass trombone is pitched in B  It is identical in length to the tenor trombone, but has a wider bore and a larger bell to aid in the production of a fuller, deeper tone in the lower register', 3, 0, 0, 0, '2023-08-19 11:21:25'),
(6, 'brass trumpet', '64e0a8b71d36c1.54933892.png', 4639, 'Owing to the rich industrial experience and expertise in this business, we are involved in providing Brass', 4, 0, 0, 0, '2023-08-19 11:34:15'),
(7, 'silver bugle', '64e0ae2b3a9352.32519315.png', 4650, '\r\nSilver Bugle is becoming a most demandable instrument nowadays, it demand  increase in School functions, Marriage Band, Government sector supply.', 7, 0, 0, 0, '2023-08-19 11:57:31'),
(8, 'silver Euphonium', '64e0afdf489d98.53055345.png', 9500, 'It is made of high quality silver under the guidance of experienced workers Beautifully designed with great sound quality Comes with a durable carry case , and high quality brass mouthpieceIt has smooth functioning valves with comfortable pearl inlaid buttons which are Easy to learn and paly', 8, 0, 0, 0, '2023-08-19 12:04:47'),
(9, 'silver mellophone', '64e0b143c5c495.28079827.png', 4650, 'Backed ourselves with a crew of dexterous workers, we are readily affianced in providing a distinctive plethora of Mellophone Horn Silver. In conformism with the advancement taking place in the market, these presented products are developed with utmost excellence', 10, 0, 0, 0, '2023-08-19 12:10:43'),
(10, 'silver pocket trumpet', '64e0b2c5e074d7.41313756.png', 9500, 'The tone of Pocket Trumpet is the popular tone which is suitable for both Beginners & Experts, such as students, music fan, band performance and so on', 11, 0, 0, 0, '2023-08-19 12:17:09'),
(11, 'dilruba', '64e0b3b609f6b0.34476396.png', 52522, 'Special type Dilruba professional type generally use by Raggis wtth adjustable horse hair bow in spl.fibre box.Available in 2 colors.', 12, 0, 0, 0, '2023-08-19 12:21:10'),
(12, 'Munda Sitar', '64e0b57810f8e0.58093341.png', 4562, 'We are one of the trusted companies of Showpiece sitar. Our products are enormously admired in the market owing to their top features.', 13, 0, 0, 0, '2023-08-19 12:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `product_id`, `image_path`, `is_deleted`, `time_stamp`) VALUES
(1, 1, '64e0736421eaf5.46873124.jpg', 0, '2023-08-19 07:46:44'),
(2, 1, '64e0736423a0f4.16333210.jpg', 0, '2023-08-19 07:46:44'),
(3, 1, '64e073642557e5.19567073.jpg', 0, '2023-08-19 07:46:44'),
(4, 1, '64e073642861f5.53513914.jpg', 0, '2023-08-19 07:46:44'),
(5, 2, '64e0831ed62ce6.99981228.jpg', 0, '2023-08-19 08:53:50'),
(6, 2, '64e0831ed7dbc1.86016188.jpg', 0, '2023-08-19 08:53:50'),
(7, 2, '64e0831edd18b2.31331138.jpg', 0, '2023-08-19 08:53:50'),
(8, 2, '64e0831ee47e98.26149806.jpg', 0, '2023-08-19 08:53:50'),
(9, 2, '64e0831eee40d3.98868723.jpg', 0, '2023-08-19 08:53:50'),
(10, 3, '64e08c25a90999.99205340.jpg', 0, '2023-08-19 09:32:21'),
(11, 3, '64e08c25ab3c88.82808190.jpg', 0, '2023-08-19 09:32:21'),
(12, 3, '64e08c25accea3.88930104.jpg', 0, '2023-08-19 09:32:21'),
(13, 3, '64e08c25b5e9d5.99843501.jpg', 0, '2023-08-19 09:32:21'),
(14, 3, '64e08c25b93497.30421195.jpg', 0, '2023-08-19 09:32:21'),
(15, 4, '64e09fbdd082a5.43366308.jpg', 0, '2023-08-19 10:55:57'),
(16, 4, '64e09fbdd37fd0.77284850.jpg', 0, '2023-08-19 10:55:57'),
(17, 4, '64e09fbdd61eb3.76885163.jpg', 0, '2023-08-19 10:55:57'),
(18, 4, '64e09fbdd79ed8.11032782.jpg', 0, '2023-08-19 10:55:57'),
(19, 4, '64e09fbdd90611.99683632.jpg', 0, '2023-08-19 10:55:57'),
(20, 5, '64e0a5b5be3964.55835264.jpg', 0, '2023-08-19 11:21:25'),
(21, 5, '64e0a5b5c087d8.46331564.jpg', 0, '2023-08-19 11:21:25'),
(22, 5, '64e0a5b5c21a41.13916496.jpg', 0, '2023-08-19 11:21:25'),
(23, 5, '64e0a5b5c3ba20.34049534.jpg', 0, '2023-08-19 11:21:25'),
(24, 5, '64e0a5b5c58043.70045079.jpg', 0, '2023-08-19 11:21:25'),
(25, 5, '64e0a5b5c6e906.57241410.jpg', 0, '2023-08-19 11:21:25'),
(26, 6, '64e0a8b7281993.97294723.jpg', 0, '2023-08-19 11:34:15'),
(27, 6, '64e0a8b729a601.06169213.jpg', 0, '2023-08-19 11:34:15'),
(28, 6, '64e0a8b72af359.44380483.jpg', 0, '2023-08-19 11:34:15'),
(29, 6, '64e0a8b72c5c27.05934284.jpg', 0, '2023-08-19 11:34:15'),
(30, 6, '64e0a8b72df735.68029350.jpg', 0, '2023-08-19 11:34:15'),
(31, 7, '64e0ae2b45a868.59393845.jpg', 0, '2023-08-19 11:57:31'),
(32, 7, '64e0ae2b476a59.05863025.jpg', 0, '2023-08-19 11:57:31'),
(33, 7, '64e0ae2b48f5f8.53544532.jpg', 0, '2023-08-19 11:57:31'),
(34, 7, '64e0ae2b4a4da5.75686373.jpg', 0, '2023-08-19 11:57:31'),
(35, 7, '64e0ae2b4bd4a5.21098904.jpg', 0, '2023-08-19 11:57:31'),
(36, 8, '64e0afdf5116a7.08606470.jpg', 0, '2023-08-19 12:04:47'),
(37, 8, '64e0afdf528d25.06027401.jpg', 0, '2023-08-19 12:04:47'),
(38, 8, '64e0afdf53f884.21262079.jpg', 0, '2023-08-19 12:04:47'),
(39, 8, '64e0afdf555f45.60836480.jpg', 0, '2023-08-19 12:04:47'),
(40, 8, '64e0afdf56f9c6.24686286.jpg', 0, '2023-08-19 12:04:47'),
(41, 9, '64e0b143d13b10.53332095.jpg', 0, '2023-08-19 12:10:43'),
(42, 9, '64e0b143d32447.79707007.jpg', 0, '2023-08-19 12:10:43'),
(43, 9, '64e0b143d49500.86005150.jpg', 0, '2023-08-19 12:10:43'),
(44, 10, '64e0b2c5e9a6f0.61462805.jpg', 0, '2023-08-19 12:17:09'),
(45, 10, '64e0b2c5ec6211.53198081.jpg', 0, '2023-08-19 12:17:09'),
(46, 10, '64e0b2c5edb6b8.96029684.jpg', 0, '2023-08-19 12:17:09'),
(47, 10, '64e0b2c5f0a0c7.15872209.jpg', 0, '2023-08-19 12:17:09'),
(48, 10, '64e0b2c5f21681.78603792.jpg', 0, '2023-08-19 12:17:09'),
(49, 11, '64e0b3b6118988.76784402.jpg', 0, '2023-08-19 12:21:10'),
(50, 11, '64e0b3b612e993.74278965.jpg', 0, '2023-08-19 12:21:10'),
(51, 11, '64e0b3b6145fe0.12314841.jpg', 0, '2023-08-19 12:21:10'),
(52, 11, '64e0b3b615bb67.78381409.jpg', 0, '2023-08-19 12:21:10'),
(53, 12, '64e0b5781b9c58.12791192.jpg', 0, '2023-08-19 12:28:40'),
(54, 12, '64e0b5781cfa00.45217849.jpg', 0, '2023-08-19 12:28:40'),
(55, 12, '64e0b5781e7d58.93857291.jpg', 0, '2023-08-19 12:28:40'),
(56, 12, '64e0b578200b10.79586595.jpg', 0, '2023-08-19 12:28:40'),
(57, 12, '64e0b5782181d6.44187061.jpg', 0, '2023-08-19 12:28:40'),
(58, 12, '64e0b578230131.50371963.jpg', 0, '2023-08-19 12:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_record`
--

CREATE TABLE `razorpay_record` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `razorpay_order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `specification_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`specification_id`, `product_id`, `name`, `value`, `is_deleted`, `timestamp`) VALUES
(1, 1, 'Material Type', 'Brass', 0, '2023-08-19 07:46:44'),
(2, 1, 'Instrument Key', 'BB', 0, '2023-08-19 07:46:44'),
(3, 1, 'Size', 'BELL DIAMETER: 4 inches.', 0, '2023-08-19 07:46:44'),
(4, 2, 'Mounting Hardware', '‎Case', 0, '2023-08-19 08:53:50'),
(5, 2, 'Batteries Required', '‎No', 0, '2023-08-19 08:53:50'),
(6, 2, 'Material', 'Silver', 0, '2023-08-19 08:53:50'),
(7, 3, 'Color Name', 'Nickel', 0, '2023-08-19 09:32:21'),
(8, 3, 'Material Type', 'Brass, Nickel', 0, '2023-08-19 09:32:21'),
(9, 3, 'Style', 'Mouthpiece, Flat', 0, '2023-08-19 09:32:21'),
(10, 3, 'Finish Type', 'Polished', 0, '2023-08-19 09:32:21'),
(11, 4, '', '', 0, '2023-08-19 10:55:57'),
(12, 5, 'Production Capacity', '500', 0, '2023-08-19 11:21:25'),
(13, 5, 'Valve', '7.5 INCHES', 0, '2023-08-19 11:21:25'),
(14, 5, 'Feature', 'MUSICAL BANDS', 0, '2023-08-19 11:21:25'),
(15, 5, 'Application', 'MUSICAL FUNCTIONS', 0, '2023-08-19 11:21:25'),
(16, 5, 'Usage', 'IDEAL FOR FUNCTIONS', 0, '2023-08-19 11:21:25'),
(17, 5, 'Bell Diameter', '7.5 inch', 0, '2023-08-19 11:21:25'),
(18, 6, 'Type Of Instruments	', 'Trumpet', 0, '2023-08-19 11:34:15'),
(19, 6, 'Material', 'Brass', 0, '2023-08-19 11:34:15'),
(20, 6, 'Type', 'Brass', 0, '2023-08-19 11:34:15'),
(21, 6, 'Color', 'Golden', 0, '2023-08-19 11:34:15'),
(22, 6, 'Packaging Type	', 'Hard Case', 0, '2023-08-19 11:34:15'),
(23, 6, 'Weight', '4 to 5 kg', 0, '2023-08-19 11:34:15'),
(24, 7, 'Material	', 'Brass', 0, '2023-08-19 11:57:31'),
(25, 7, 'Color', 'Silver', 0, '2023-08-19 11:57:31'),
(26, 7, 'Weight', '4 to 5 kg', 0, '2023-08-19 11:57:31'),
(27, 7, 'Surface Finish	', 'Nickel Polished', 0, '2023-08-19 11:57:31'),
(28, 7, 'Packaging Type	', 'Box', 0, '2023-08-19 11:57:31'),
(29, 8, 'Material', 'Silver', 0, '2023-08-19 12:04:47'),
(30, 8, 'Color	', 'Silver', 0, '2023-08-19 12:04:47'),
(31, 8, 'Weight	', '3 Kg', 0, '2023-08-19 12:04:47'),
(32, 8, 'Surface Finish	', 'Nickel Plated', 0, '2023-08-19 12:04:47'),
(33, 8, 'Packaging Type	', 'Box', 0, '2023-08-19 12:04:47'),
(34, 9, 'Material', 'Silver', 0, '2023-08-19 12:10:43'),
(35, 9, 'Color	', 'Silver', 0, '2023-08-19 12:10:43'),
(36, 9, 'Packaging Type	', 'Box', 0, '2023-08-19 12:10:43'),
(37, 9, 'Weight	', '3 Kg', 0, '2023-08-19 12:10:43'),
(38, 9, 'Surface Finish	', 'Nickel Plated', 0, '2023-08-19 12:10:43'),
(39, 9, 'Country Of Origin', 'India', 0, '2023-08-19 12:10:43'),
(40, 10, 'Material', 'Silver', 0, '2023-08-19 12:17:09'),
(41, 10, 'Type Of Instruments	', 'Trumpet', 0, '2023-08-19 12:17:09'),
(42, 10, 'Color', 'Golden', 0, '2023-08-19 12:17:09'),
(43, 10, 'Packaging Type	', 'Hard Case', 0, '2023-08-19 12:17:09'),
(44, 10, 'Country Of Origin', 'India', 0, '2023-08-19 12:17:09'),
(45, 10, 'Usage', 'Schools , Army And Police Band, etc.', 0, '2023-08-19 12:17:09'),
(46, 11, 'Width', '45 cm', 0, '2023-08-19 12:21:10'),
(47, 11, 'Type', 'Electric Guitars', 0, '2023-08-19 12:21:10'),
(48, 11, 'Performance Level	', 'Intermediate', 0, '2023-08-19 12:21:10'),
(49, 11, 'Color', 'Multicolor', 0, '2023-08-19 12:21:10'),
(50, 11, 'Material', 'Wooden', 0, '2023-08-19 12:21:10'),
(51, 11, 'No Of Strings	', '6', 0, '2023-08-19 12:21:10'),
(52, 12, 'Size', 'Standard', 0, '2023-08-19 12:28:40'),
(53, 12, 'Weight', 'Less than 1kg aprrox', 0, '2023-08-19 12:28:40'),
(54, 12, 'Usage/Application	', 'Musical Function', 0, '2023-08-19 12:28:40'),
(55, 12, 'Material', 'Wooden', 0, '2023-08-19 12:28:40'),
(56, 12, 'Color	', 'Multicolor', 0, '2023-08-19 12:28:40'),
(57, 12, 'Number Of Stop Knobs	', '18', 0, '2023-08-19 12:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sub_category_image` varchar(255) NOT NULL DEFAULT '64e08c25accea3.88930104.jpg',
  `category_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `name`, `sub_category_image`, `category_id`, `is_deleted`, `timestamp`) VALUES
(1, 'bugle', '64e08c25accea3.88930104.jpg', 1, 0, '2023-08-19 07:13:55'),
(2, 'flugel', '64e08c25accea3.88930104.jpg', 1, 0, '2023-08-19 07:14:03'),
(3, 'trombone', '64e08c25accea3.88930104.jpg', 1, 0, '2023-08-19 07:14:10'),
(4, 'trumpet', '64e08c25accea3.88930104.jpg', 1, 0, '2023-08-19 07:14:19'),
(5, 'trumpet-bb', '64e08c25accea3.88930104.jpg', 1, 0, '2023-08-19 07:14:29'),
(6, 'baritone', '64e08c25accea3.88930104.jpg', 2, 0, '2023-08-19 07:19:07'),
(7, 'bugle', '64e08c25accea3.88930104.jpg', 2, 0, '2023-08-19 07:19:20'),
(8, 'Euphonium', '64e08c25accea3.88930104.jpg', 2, 0, '2023-08-19 07:19:27'),
(9, 'euphonium', '64e08c25accea3.88930104.jpg', 2, 1, '2023-08-19 07:19:35'),
(10, 'mellophone', '64e08c25accea3.88930104.jpg', 2, 0, '2023-08-19 07:19:43'),
(11, 'pocket trumpet', '64e08c25accea3.88930104.jpg', 2, 0, '2023-08-19 07:21:16'),
(12, 'dilruba', '64e08c25accea3.88930104.jpg', 3, 0, '2023-08-19 07:22:54'),
(13, 'Munda Sitar', '64e08c25accea3.88930104.jpg', 3, 0, '2023-08-19 07:23:07'),
(14, 'sitar', '64e08c25accea3.88930104.jpg', 3, 0, '2023-08-19 07:23:21'),
(15, 'clarinet', '64e08c25accea3.88930104.jpg', 3, 0, '2023-08-19 07:23:40'),
(16, 'd flute', '64e08c25accea3.88930104.jpg', 3, 0, '2023-08-19 07:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `mobile`, `password`, `user_type`, `is_deleted`, `timestamp`) VALUES
(1, 'durgesh kumar', 'durgesh@gmail.com', '7667107173', '12345', 'admin', 0, '2023-06-21 17:29:23'),
(9, 'vikash kumar', 'durgeshkumarraj62@gmail.com', '9508727678', '12345', 'customer', 0, '2023-06-23 17:27:25'),
(10, 'naveen', 'naveen@gmail.com', '6205925686', '12345', 'customer', 0, '2023-06-28 04:10:23'),
(15, 'Suraj', 'suraj.sinha@gmail.com', '9898120141', 'Suraj@1', 'customer', 0, '2023-08-12 11:24:31'),
(17, 'shariq', 'er.shariq057@gmail.com', '8545856598', '123', 'customer', 0, '2023-08-18 06:33:19'),
(23, 'test', 'test@gmail.com', '7667107175', '12', 'customer', 0, '2023-09-07 12:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`wishlist_id`, `user_id`, `product_id`, `is_deleted`, `timestamp`) VALUES
(1, 17, 7, 0, '2023-08-19 13:02:44'),
(2, 17, 5, 0, '2023-08-19 13:02:53'),
(12, 23, 11, 0, '2023-09-14 05:13:22'),
(13, 23, 1, 0, '2023-09-14 05:13:23'),
(14, 23, 10, 0, '2023-09-14 05:13:25'),
(15, 9, 9, 0, '2023-09-14 06:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_table_ibfk_1` (`sub_category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `razorpay_record`
--
ALTER TABLE `razorpay_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`specification_id`),
  ADD KEY `product_specifications_table_ibfk_1` (`product_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`),
  ADD KEY `sub_category_ibfk_1` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `razorpay_record`
--
ALTER TABLE `razorpay_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `specification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`sub_category_id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `razorpay_record`
--
ALTER TABLE `razorpay_record`
  ADD CONSTRAINT `razorpay_record_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `razorpay_record_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
