-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2024 at 10:58 PM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nppbggua_glambox_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `customer_email` varchar(80) NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `order_date` varchar(30) NOT NULL,
  `customer_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`customer_info`)),
  `recipient_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`recipient_info`)),
  `dilivery_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`dilivery_info`)),
  `order_discount` decimal(5,2) NOT NULL,
  `order_total_cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `customer_email`, `products`, `order_date`, `customer_info`, `recipient_info`, `dilivery_info`, `order_discount`, `order_total_cost`) VALUES
(13, 'ln2981', 'lindokuhleascar@gmail.com', '[{\"product_id\":9,\"product_name\":\"10\\\" Straight Wig\",\"product_category\":\"straight wig\",\"product_size\":\"10\\\"\",\"product_price\":\"2750.00\",\"product_img\":\"assets\\/img\\/products\\/10-inch-straight-wig.jpeg\",\"product_tags\":\"wigs,wig\",\"product_description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \",\"totalPrice\":2750,\"qty\":\"1\"}]', '11 Oct 2022 - 17:01', '{\"name\":\"Lindokuhle\",\"surname\":\"Nsibande\",\"phone\":\"0603884180\",\"email\":\"lindokuhleascar@gmail.com\",\"billing_address\":\"1232 street Check, Esikhawini, Durban, KwaZulu-Natal, 3887, South Africa\"}', '{\"name\":\"Lindokuhle\",\"surname\":\"Nsibande\",\"phone\":\"0603884180\",\"email\":\"lindokuhleascar@gmail.com\",\"recipientAddress\":\"1232 street Check, Esikhawini, Durban, KwaZulu-Natal, 3887, South Africa\"}', '{\"deliveryFee\":100,\"delivery_address\":\"1232 street Check, Esikhawini, Durban, KwaZulu-Natal, 3887, South Africa\"}', 0.00, 2850.00),
(14, 'ns8611', 'j.sikhakhane@yahoo.com', '[{\"product_id\":7,\"product_name\":\"16\\\" front lace\",\"product_category\":\"lace-front-wigs\",\"product_size\":\"16\\\"\",\"product_price\":\"3050.00\",\"product_img\":\"assets\\/img\\/products\\/16-lace-front.jpg\",\"product_tags\":\"wigs\",\"product_description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \",\"totalPrice\":3050,\"qty\":\"1\"}]', '17 Oct 2022 - 13:39', '{\"name\":\"Ndumiso\",\"surname\":\"Sikhakhane\",\"phone\":\"0812465781\",\"email\":\"j.sikhakhane@yahoo.com\",\"billing_address\":\"101, Victoria Embankment, Durban, Durban, KwaZulu-Natal, 4000, South Africa\"}', '{\"name\":\"Ndumiso\",\"surname\":\"Sikhakhane\",\"phone\":\"0812465781\",\"email\":\"j.sikhakhane@yahoo.com\",\"recipientAddress\":\"101, Victoria Embankment, Durban, Durban, KwaZulu-Natal, 4000, South Africa\"}', '{\"deliveryFee\":100,\"delivery_address\":\"101, Victoria Embankment, Durban, Durban, KwaZulu-Natal, 4000, South Africa\"}', 0.00, 3150.00),
(15, 'ln1441', 'lindokuhleaustingoje@gmail.com', '[{\"product_id\":1,\"product_name\":\"10\\\" Bob Wig\",\"product_category\":\"lace-front-wigs\",\"product_size\":\"10\\\"\",\"product_price\":\"2450.00\",\"product_img\":\"assets\\/img\\/products\\/prod1.png\",\"product_tags\":\"wigs\",\"product_description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \",\"totalPrice\":2450,\"qty\":\"1\"}]', '21 Oct 2022 - 13:13', '{\"name\":\"Lindokuhle\",\"surname\":\"Nsibande\",\"phone\":\"0603884180\",\"email\":\"lindokuhleaustingoje@gmail.com\",\"billing_address\":\"1232 street Check, Esikhawini, Durban, KwaZulu-Natal, 3887, South Africa\"}', '{\"name\":\"Lindokuhle\",\"surname\":\"Nsibande\",\"phone\":\"0603884180\",\"email\":\"lindokuhleaustingoje@gmail.com\",\"recipientAddress\":\"1232 street Check, Esikhawini, Durban, KwaZulu-Natal, 3887, South Africa\"}', '{\"deliveryFee\":100,\"delivery_address\":\"1232 street Check, Esikhawini, Durban, KwaZulu-Natal, 3887, South Africa\"}', 0.00, 2550.00),
(16, 'ns8821', 'ndumiso@infinitygrowthdigital.co.za', '[{\"product_id\":1,\"product_name\":\"10\\\" Bob Wig\",\"product_category\":\"lace-front-wigs\",\"product_size\":\"10\\\"\",\"product_price\":\"2450.00\",\"product_img\":\"assets\\/img\\/products\\/prod1.png\",\"product_tags\":\"wigs\",\"product_description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \",\"totalPrice\":2450,\"qty\":\"1\"}]', '21 Oct 2022 - 15:03', '{\"name\":\"Ndumiso\",\"surname\":\"Sikhakhane\",\"phone\":\"0812465781\",\"email\":\"ndumiso@infinitygrowthdigital.co.za\",\"billing_address\":\"101, Victoria Embankment, Durban, Durban, KwaZulu-Natal, 4000, South Africa\"}', '{\"name\":\"Ndumiso\",\"surname\":\"Sikhakhane\",\"phone\":\"0812465781\",\"email\":\"ndumiso@infinitygrowthdigital.co.za\",\"recipientAddress\":\"101, Victoria Embankment, Durban, Durban, KwaZulu-Natal, 4000, South Africa\"}', '{\"deliveryFee\":100,\"delivery_address\":\"101, Victoria Embankment, Durban, Durban, KwaZulu-Natal, 4000, South Africa\"}', 0.00, 2550.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `product_size` varchar(20) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `product_tags` varchar(100) NOT NULL,
  `product_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_size`, `product_price`, `product_img`, `product_tags`, `product_description`) VALUES
(1, '10\" Bob Wig', 'lace-front-wigs', '10\"', 2450.00, 'assets/img/products/prod1.png', 'wigs', ''),
(2, '14\" kinky', 'kinky-wigs', '14\"', 2450.00, 'assets/img/products/prod2.png', 'wigs', ' '),
(3, '20\" Body Weave', 'deep-curls-wigs', '14\"', 3050.00, 'assets/img/products/prod3.png', 'wigs', ''),
(4, '8\" pixi straight', 'pixi-straight-wigs', '8\"', 2450.00, 'assets/img/products/prod4.png', 'wigs', ''),
(5, '20\" Front Lace', 'lace-front-wigs', '20\"', 3750.00, 'assets/img/products/20-Lace-front.jpg', 'wigs', ''),
(6, '12\" deep curls', 'deep-curls-wigs', '12\"', 2450.00, 'assets/img/products/12-deep-curls.jpg', 'wigs', ''),
(8, '8\" Curls', 'curls', '8\"', 2050.00, 'assets/img/products/8-inch-curls.jpeg', 'wigs', ' '),
(9, '10\" Straight Wig', 'straight wig', '10\"', 2750.00, 'assets/img/products/10-inch-straight-wig.jpeg', 'wigs', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`order_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
