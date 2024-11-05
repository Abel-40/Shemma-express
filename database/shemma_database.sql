-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 11:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shemma_database`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'motorolla'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Family'),
(2, 'Ladies'),
(3, 'Mens'),
(4, 'Old'),
(5, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 1, 'Habesha jano kemis', 2000, '100% cotton beautiful habesha cultural dress', '1708718981_1.jpg', '0221'),
(2, 2, 1, 'Habesha Tibeb', 1500, 'HAbesha handwoven beatiful dress', '1708719110_2.jfif', '0222'),
(3, 2, 1, 'Pink embroidery tibeb', 2500, 'Pink color 100% cotton habesha kemiss', '1708719224_3.jpg', '0223'),
(4, 2, 1, 'Habesha kemis', 1500, 'Beautiful lexurious habesha cotton dress ', '1708719321_4.jpg', '0224'),
(5, 2, 1, 'Wolaita cultural dress', 1500, 'Wolaita tribes cultural cotton dress', '1708719403_5.jpg', '0225'),
(6, 2, 1, 'Tilet', 1300, 'Habesha tilet or handwoven dress', '1708719525_6.jpg', '0226'),
(7, 2, 1, 'Habesha kemis', 2000, 'Black tilet habesha dress', '1708719596_7.jpg', '0227'),
(8, 2, 1, 'Zuriya', 3000, 'Best habesha dress disigned for wedding', '1708719660_8.jfif', '0228'),
(9, 2, 1, 'Handwoven habesha dress', 2500, 'Masmerizing tilf habesha dress', '1708719747_9.jpg', '0101'),
(10, 2, 1, 'Arsi cultural dress', 1800, 'Arsi oromo beautiful traditional cloths', '1708719821_Arsi design.jpg', '0102'),
(11, 2, 1, 'Wolaita cultural cloth', 3500, 'Wolaita tribes traditional lexurius ladies cloth', '1708719910_Wolaita ladies.jpg', '0103'),
(12, 2, 1, 'Gurage cloths', 2000, 'Gurage cultural ladies dress', '1708720037_Gurage.jpg', '0106'),
(16, 3, 1, 'Habesha shirt', 1000, 'Habesha men’s handwoven cotton shirt', '1708722082_1.jpg', '00004'),
(17, 3, 1, 'Habesha t-shirt', 1200, 'Good habesha t-shirts', '1708722418_3.jpg', '0108'),
(18, 3, 1, 'Habeshan t-shirt', 1100, 'Habeshan men best design', '1708722499_4.jpg', '0109'),
(19, 3, 1, 'Habesha libs', 2500, 'Habesha full mens luxury cloth', '1708722616_6.jpg', '0107'),
(20, 3, 1, 'T-shirt', 1700, 'Man Top Black and Orange Embroidery Long Sleeves Shirt', '1708722773_8.jpg', '0105'),
(21, 3, 1, 'Dorze scarf', 500, 'Dorze tribe cultural scarf', '1708722837_Dorze scarf.jpg', '01001'),
(22, 3, 1, 'Wolaita shirt', 1300, 'Wolaita cultural mens shirt', '1708723678_Wolaita man.jpg', '00001'),
(23, 3, 1, 'Raya traditional', 4000, 'Raya oromia mens tradtional cloths', '1708723750_Raya.jpg', '00002'),
(24, 3, 1, 'Wollega men', 1800, 'Wollega oromia mens fashion', '1708723832_Wollega.jpg', '00003'),
(25, 4, 1, 'Habesha libs', 3500, 'Ethiopian cultural mens cloths', '1708723912_1.jpg', '0003'),
(26, 4, 1, 'Gamo mulu libs', 5000, 'Gamo cultural 100% cotton handwoven cloths (Cultural design)', '1708723980_2.jfif', '0004'),
(27, 5, 1, 'Habesha kemis', 2000, 'Little lady traditional dress', '1708724111_1.jpg', '0004'),
(28, 5, 1, 'Amhara man cloth', 1300, 'Amhara traditional little man  clothing', '1708724195_2.jfif', '005'),
(29, 5, 1, 'Dress', 1500, 'Amhara traditional females (kids) dress ', '1708724254_3.jfif', '006'),
(30, 5, 1, 'Ethio kids dress', 2500, 'Traditional Ethiopian toddler dress', '1708724444_df4c8e4cdb02ab3b4171912f7018266b.jpg', '005'),
(31, 5, 1, 'Habesha libs', 1900, 'Best kids habesha design', '1708724548_download (1).jfif', '0006'),
(32, 5, 1, 'Habesha girls libs', 1300, 'Handmade Ethiopian little lady dress', '1708724713_download (2).jfif', '0011'),
(33, 5, 1, 'Childs valvet', 1600, 'Traditional Childs velvet cloth', '1708724815_download (3).jfif', '0012'),
(34, 5, 1, 'Habesha kemis', 2100, 'Kids Habesha dress', '1708724922_images (1).jfif', '0013'),
(35, 1, 1, 'Habesha dress', 2500, 'Cut off shoulder two piece Ethiopian girls habesha dress', '1708725089_images (5).jfif', '0024'),
(36, 1, 1, 'Habesha family', 10000, 'Habesha family beautiful cultural design', '1708725249_1e7351e83473eafec080a7d6970da204.jpg', '00'),
(37, 1, 1, 'Family Habesha kemis', 9000, 'Ethiopian Habesha family full cultural cloths', '1708725398_38bcab1acd969739633178794c4c6a3d.jpg', '0011'),
(38, 1, 1, 'Habesha family libs', 20000, 'Ethiopian family beautiful event dress', '1708725514_524509f1082af0207946440a83ce2616.jpg', '0023'),
(39, 1, 1, 'Family mulu libs', 12000, 'Habeshan family cultural well designed fashion', '1708726001_download (4).jfif', '00032'),
(40, 1, 1, 'Oromo Family', 20000, 'Ethiopian family oromo cultural outifits', '1708726139_ea209591f4df196e51cde8c8fd6ee9f7.jpg', '0004'),
(41, 1, 1, 'Habesha shirt', 17000, 'Eritrean and Ethiopian Couple habesha traditional dress', '1708726254_images (1).jfif', '00045'),
(42, 1, 1, 'Habesha Wedding design', 35000, 'Ethiopian wedding (mels) full traditional cloths', '1708726387_images (3).jfif', '0021'),
(43, 1, 1, 'Habesha family', 15000, 'Best cultural design for some event for all family', '1708726514_images (4).jfif', '0023'),
(44, 1, 1, 'Habesh Tibeb', 21000, 'Habeshan family handwoven cotton dress and shirts', '1708726625_images (6).jfif', '00034'),
(45, 1, 1, 'Wedding cloth', 14000, 'Habeshan beautiful wedding cloth', '1708726737_images (7).jfif', '008'),
(46, 1, 1, 'Habesha Enkutatash famly cloth', 30000, 'Best family package for Ethiopian new year (Enkutatash)', '1708726856_images.jfif', '0097'),
(47, 1, 1, 'Habesha cloths', 9500, 'Best tradtional dress', '1708726966_maxresdefault.jpg', '0056'),
(48, 5, 1, 'Dress', 2300, 'Traditional red kids habesha dress', '1708727053_images.jfif', '0054'),
(49, 1, 1, 'Habesha shirt', 800, 'Kids traditional cloths', '1708727148_images (8).jfif', '0045');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
