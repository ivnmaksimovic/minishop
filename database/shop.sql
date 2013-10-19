-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 19, 2013 at 02:23 PM
-- Server version: 5.5.32
-- PHP Version: 5.5.3-1+debphp.org~precise+2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_description`, `imgPath`) VALUES
(1, 'Etnies', 'Americki brand bla bla', 'brand_026e223a2759e1c84e7609e2e930e1780d5a7255.jpg'),
(2, 'Fallen', 'Australijski brand poznat po', 'brand_2072b19dbe101cba8b76f18575d443f6038a9ceb.jpg'),
(3, 'Emerica', 'Americki brand stari', 'brand_f1451df8573d80aa2c031024254754b471f09553.jpg'),
(4, 'Dakine', 'Rancevi vrhunskog kvaliteta', 'brand_1f19e7ba12546833b6a46c670089519dea097007.jpg'),
(5, 'Roxy', 'Zenski fensi brand', 'brand_8f6735dfa905fd78feeb1584289001f8aaa30fc8.jpg'),
(6, 'Rope', 'Domaci brand', 'brand_7ec97f5f01134448567782462fd2fc2a40205ef6.jpg'),
(7, 'O''Neill', 'Stari brand, izmislili neopren', 'brand_a81faafc7c208af3fb8e93c5867b7c1aa8b121d0.jpg'),
(8, 'ES', 'Fensi skate brand', 'brand_4c530529a51eb4b761a69028fd133a529ad0cda2.jpg'),
(9, 'DC Shoes', '<p>ddd</p>', 'brand_3f5dfcf5a7980398effa04c950ad20d8d69e239e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `product` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B7D34A04AD` (`product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=96 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Patike'),
(3, 'Majice'),
(4, 'Duksevi'),
(5, 'Rancevi'),
(7, 'Ostalo');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_rabat` int(11) NOT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CF73D3112469DE2` (`category_id`),
  KEY `IDX_1CF73D3144F5D008` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `product_name`, `product_description`, `product_price`, `product_rabat`, `product_size`, `imgPath`, `active`, `product_code`, `product_color`) VALUES
(34, 1, 9, 'Chase', '<ul>\r\n<li>Black / Multi / White</li>\r\n<li>Heavy Duty Suede and Nubuck Leather Upper</li>\r\n<li>Full Lace-Up for Secure Custom Fit</li>\r\n<li>Padded Tongue and Collar for Comfort and Support</li>\r\n<li>Mesh Lining</li>\r\n<li>Abrasion Resistant Sticky Rubber Outsole</li>\r\n<li>Embroidered Logo</li>\r\n</ul>', 9990, 30, '41', 'product_cecfdd559d98be24c3cf1cf676379d169f59a096.jpg', 1, '001001', 'crna'),
(35, 1, 9, 'Chase', '<ul>\r\n<li>Black / Multi / White</li>\r\n<li>Heavy Duty Suede and Nubuck Leather Upper</li>\r\n<li>Full Lace-Up for Secure Custom Fit</li>\r\n<li>Padded Tongue and Collar for Comfort and Support</li>\r\n<li>Mesh Lining</li>\r\n<li>Abrasion Resistant Sticky Rubber Outsole</li>\r\n<li>Embroidered Logo</li>\r\n</ul>', 9990, 30, '42', 'product_be703e0208bf606200ce8ee34a97ffab3041a200.jpg', 1, '001002', 'crna'),
(36, 1, 9, 'Chase', '<ul>\r\n<li>Black / Multi / White</li>\r\n<li>Heavy Duty Suede and Nubuck Leather Upper</li>\r\n<li>Full Lace-Up for Secure Custom Fit</li>\r\n<li>Padded Tongue and Collar for Comfort and Support</li>\r\n<li>Mesh Lining</li>\r\n<li>Abrasion Resistant Sticky Rubber Outsole</li>\r\n<li>Embroidered Logo</li>\r\n</ul>', 9990, 30, '43', 'product_5bdfb6986381a63afbea10ade36a0f3c7d35fd43.jpg', 1, '001003', 'crna'),
(37, 1, 9, 'Chelsea', '<ul>\r\n<li>CHELSEA WOMENS BATTLESHIP/CRAZY PINK SHOES</li>\r\n<li>SOFT CANVAS UPPER WITH A TOE CAP FOR ADDED DURABILITY.</li>\r\n<li>BREATHABLE TEXTILE-FABRIC LINING HELPS WICK AWAY MOISTURE.</li>\r\n<li>MULTI-TONE STICKY RUBBER BOTTOM WITH DC''S TRADEMARKED "PILL" PATTERN.</li>\r\n<li>VULCANIZED SOLE CONSTRUCTION FOR A TRIMMED-DOWN LOOK.</li>\r\n</ul>', 7990, 30, '37', 'product_d48fcb581ae215140388b9d51f3e43eb8910ed0b.jpg', 1, '001004', 'crna/roze'),
(38, 1, 9, 'Chelsea', '<ul>\r\n<li>CHELSEA WOMENS BATTLESHIP/CRAZY PINK SHOES</li>\r\n<li>SOFT CANVAS UPPER WITH A TOE CAP FOR ADDED DURABILITY.</li>\r\n<li>BREATHABLE TEXTILE-FABRIC LINING HELPS WICK AWAY MOISTURE.</li>\r\n<li>MULTI-TONE STICKY RUBBER BOTTOM WITH DC''S TRADEMARKED "PILL" PATTERN.</li>\r\n<li>VULCANIZED SOLE CONSTRUCTION FOR A TRIMMED-DOWN LOOK.</li>\r\n</ul>', 7990, 30, '39', 'product_1967fbf558bbe386b305a5e48083e90a57da89af.jpg', 1, '001005', 'crna/roze'),
(39, 1, 9, 'Cole Pro', '<ul>\r\n<li>The DC Kids Cole Pro are made especially for kids and are designed in collaboration with professional skateboarder Chris Cole.</li>\r\n<li>The shoe has a suede upper for durability</li>\r\n<li>Vent holes for breathability</li>\r\n<li>A padded tongue for comfort and support</li>\r\n</ul>', 6990, 30, '35', 'product_ee9008972628fce370bcdeb9e3e2f12b42b9432b.jpg', 1, '001006', 'crna/crvena'),
(40, 1, 9, 'Court Vulc', '<ul>\r\n<li>Court is in session! And by session, we mean on your feet!</li>\r\n<li>Soft and smooth leather upper.</li>\r\n<li>Padded tongue and collar for added comfort and support.</li>\r\n<li>Vent holes near tongue for a fresh, comfortable feel.</li>\r\n<li>Padded tongue and collar for comfort and support.</li>\r\n<li>Breathable textile fabric lining helps wick away moisture.</li>\r\n<li>Embroidered logo stitching at heel.</li>\r\n<li>Vulcanized construction for enhanced board feel.</li>\r\n<li>Durable rubber outsole with DC''s trademarked "pill" pattern tread.</li>\r\n</ul>', 9990, 30, '42', 'product_d629eb8b0ef48ad7af29a81e390e54f74a197454.jpg', 1, '001007', 'siva'),
(41, 1, 9, 'Court Vulc', '<ul>\r\n<li>Court is in session! And by session, we mean on your feet!</li>\r\n<li>Soft and smooth leather upper.</li>\r\n<li>Padded tongue and collar for added comfort and support.</li>\r\n<li>Vent holes near tongue for a fresh, comfortable feel.</li>\r\n<li>Padded tongue and collar for comfort and support.</li>\r\n<li>Breathable textile fabric lining helps wick away moisture.</li>\r\n<li>Embroidered logo stitching at heel.</li>\r\n<li>Vulcanized construction for enhanced board feel.</li>\r\n<li>Durable rubber outsole with DC''s trademarked "pill" pattern tread.</li>\r\n</ul>', 9990, 30, '43', 'product_055d17bbd41fbd3f23cb241842b394aa8c5fc3de.jpg', 1, '001008', 'siva'),
(42, 1, 9, 'Pure', '<p>The Pure XE kicks offer a dynamic design for dynamic skating styles paired with a wrap cup sole for ultra protection on big drops. Throw into the mix an exciting exclusive style and color for the XE''s, and you''ve got a masterpiece.</p>\r\n<div class="product-features">\r\n<ul>\r\n<li>Foam Padded Tongue And Collar For Added Comfort And Support</li>\r\n<li>Vent Holes In Upper For Breathability</li>\r\n<li>Metal Eyelets</li>\r\n<li>Performance Wrap Cup Sole, Our Exclusive Construction Technique</li>\r\n<li>DGT - Dynamic Grip Technology</li>\r\n<li>Abrasion-Resistant Sticky Rubber Outsole With DC''s Trademarked "Pill Pattern" Bottom</li>\r\n</ul>\r\n</div>', 5990, 30, '35', 'product_eb31aeab20e6be077cf7fdfc29f6fdf2d03ecfa5.jpg', 1, '001009', 'crna/siva/bela'),
(43, 1, 9, 'Pure', '<p>The Pure XE kicks offer a dynamic design for dynamic skating styles paired with a wrap cup sole for ultra protection on big drops. Throw into the mix an exciting exclusive style and color for the XE''s, and you''ve got a masterpiece.</p>\r\n<div class="product-features">\r\n<ul>\r\n<li>Foam Padded Tongue And Collar For Added Comfort And Support</li>\r\n<li>Vent Holes In Upper For Breathability</li>\r\n<li>Metal Eyelets</li>\r\n<li>Performance Wrap Cup Sole, Our Exclusive Construction Technique</li>\r\n<li>DGT - Dynamic Grip Technology</li>\r\n<li>Abrasion-Resistant Sticky Rubber Outsole With DC''s Trademarked "Pill Pattern" Bottom</li>\r\n</ul>\r\n</div>', 5990, 30, '37', 'product_f2d5c2cd01200aaa471020da9bccd1109e7f377f.jpg', 1, '001010', 'crna/siva/bela'),
(44, 1, 9, 'Rebound High', '<ul>\r\n<li>Defeat is never an option when youre rockin the DC Shoes Rebound Hi skate shoe.</li>\r\n<li>Leather upper in a high-top technical skate shoe style with a round, perforated toe.</li>\r\n<li>Colorful overlays</li>\r\n<li>Patterned fabric inlays and DC logo accents add retro-style pizzazz</li>\r\n<li>Dual medial side eyelets</li>\r\n<li>Stabilizing lacing overlays</li>\r\n<li>High rise padded collar, mesh tongue</li>\r\n<li>Textile lining and cushioning insole</li>\r\n<li>Shock absorbing midsole</li>\r\n<li>DGT grippy rubber traction outsole.</li>\r\n</ul>', 10990, 30, '38', 'product_cbb809d9ebf678f3d7d2e8474f32e0f9511a8808.jpg', 1, '001011', 'srebrna/ljubicasta'),
(45, 1, 9, 'Rebound High', '<ul>\r\n<li>Defeat is never an option when youre rockin the DC Shoes Rebound Hi skate shoe.</li>\r\n<li>Leather upper in a high-top technical skate shoe style with a round, perforated toe.</li>\r\n<li>Colorful overlays</li>\r\n<li>Patterned fabric inlays and DC logo accents add retro-style pizzazz</li>\r\n<li>Dual medial side eyelets</li>\r\n<li>Stabilizing lacing overlays</li>\r\n<li>High rise padded collar, mesh tongue</li>\r\n<li>Textile lining and cushioning insole</li>\r\n<li>Shock absorbing midsole</li>\r\n<li>DGT grippy rubber traction outsole.</li>\r\n</ul>', 10990, 30, '39', 'product_243cb046ae608dab99a0aabf2ce7eb7d917417d6.jpg', 1, '001012', 'srebrna/ljubicasta'),
(46, 1, 8, 'Tonik', '<ul>\r\n<li>SUPER SUEDE</li>\r\n<li>Heavy-duty suede upper</li>\r\n<li>Textile upper</li>\r\n<li>Vent holes</li>\r\n<li>Vulcanized construction</li>\r\n<li>DC''s drop in cushion system</li>\r\n<li>Abrasion-resistant sticky rubber outsole with DC''s trademarked "Pill" pattern&nbsp;</li>\r\n</ul>', 8490, 30, '43', 'product_6dfd1f5b532b870b43909972ae2db1a6ddfe45f0.jpg', 1, '001013', 'siva'),
(47, 1, 9, 'Tonik', '<ul>\r\n<li>SUPER SUEDE</li>\r\n<li>Heavy-duty suede upper</li>\r\n<li>Textile upper</li>\r\n<li>Vent holes</li>\r\n<li>Vulcanized construction</li>\r\n<li>DC''s drop in cushion system</li>\r\n<li>Abrasion-resistant sticky rubber outsole with DC''s trademarked "Pill" pattern&nbsp;</li>\r\n</ul>', 8490, 30, '45', 'product_56a07537a7427acd8c02c8ab2f6f8f11ac51a266.jpg', 1, '001014', 'siva'),
(48, 1, 9, 'Tonik', '<ul>\r\n<li>SUPER SUEDE</li>\r\n<li>Heavy-duty suede upper</li>\r\n<li>Textile upper</li>\r\n<li>Vent holes</li>\r\n<li>Vulcanized construction</li>\r\n<li>DC''s drop in cushion system</li>\r\n<li>Abrasion-resistant sticky rubber outsole with DC''s trademarked "Pill" pattern&nbsp;</li>\r\n</ul>', 8490, 30, '42', 'product_bfb7c272dfe58d1a15c034fd5fb48f3c8bd6e214.jpg', 1, '001015', 'crna'),
(49, 1, 9, 'Tonik', '<ul>\r\n<li>SUPER SUEDE</li>\r\n<li>Heavy-duty suede upper</li>\r\n<li>Textile upper</li>\r\n<li>Vent holes</li>\r\n<li>Vulcanized construction</li>\r\n<li>DC''s drop in cushion system</li>\r\n<li>Abrasion-resistant sticky rubber outsole with DC''s trademarked "Pill" pattern&nbsp;</li>\r\n</ul>', 8490, 30, '44', 'product_187e9e0a2fa3c2ef4aabb57fb4a4ae3f90dcab38.jpg', 1, '001016', 'crna'),
(50, 1, 9, 'Union', '<ul>\r\n<li>Super Suede</li>\r\n<li>Soft cushiony sole</li>\r\n<li>Sticky outsole</li>\r\n</ul>', 9990, 30, '44', 'product_72f3f2f1a9e466b10d9d145e8273c0ad6c289853.jpg', 1, '001017', 'crna/siva/zelena'),
(51, 1, 3, 'Jinx', '<ul>\r\n<li>Thin padded tongue and collar.</li>\r\n<li>EVA footbed.</li>\r\n<li>Vulcanized construction.</li>\r\n<li>400 NBS natural gum rubber outsole.</li>\r\n</ul>', 8490, 30, '42', 'product_2115040e97a746f84f844325481ec5a654a1779d.jpg', 1, '001018', 'crna/crvena'),
(52, 1, 3, 'Jinx', '<ul>\r\n<li>Thin padded tongue and collar.</li>\r\n<li>EVA footbed.</li>\r\n<li>Vulcanized construction.</li>\r\n<li>400 NBS natural gum rubber outsole.</li>\r\n</ul>', 8490, 30, '41', 'product_64c282de0ffbfa29fef8d29f9a60fac00c7d6c99.jpg', 1, '001019', 'crna/ljubicasta'),
(53, 1, 8, 'La Brea', '<p>Stylish, understated upper with a flexible and grippy cupsole.<br /><br /></p>\r\n<ul>\r\n<li>Thin padded tongue and collar for comfort</li>\r\n<li>Triple-stitched asymmetrical toe cap</li>\r\n<li>Waxed laces</li>\r\n<li>STI Foam Lite level 2 footbed with heel support</li>\r\n<li>System G2 heel cushioning gel insert</li>\r\n<li>400 NBS rubber outsole</li>\r\n</ul>', 8890, 30, '42', 'product_85cf6219a1db72d81ee5c30c1ac3d4e589bcf835.jpg', 1, '001020', 'crna'),
(54, 1, 8, 'La Brea', '<p>Stylish, understated upper with a flexible and grippy cupsole.<br /><br /></p>\r\n<ul>\r\n<li>Thin padded tongue and collar for comfort</li>\r\n<li>Triple-stitched asymmetrical toe cap</li>\r\n<li>Waxed laces</li>\r\n<li>STI Foam Lite level 2 footbed with heel support</li>\r\n<li>System G2 heel cushioning gel insert</li>\r\n<li>400 NBS rubber outsole</li>\r\n</ul>', 8890, 30, '43', 'product_de2c6d610e5e388c8dd29285bf81a4c03fd7ca99.jpg', 1, '001021', 'crna'),
(55, 1, 8, 'La Brea', '<p>The La Brea is a new low-profile vulcanized shoe from eS Footwear. The La Brea has great silhouette built for skateboarding.</p>\r\n<p>The vulcanized sole helps with board feel and grip, while the STI Foam Lite Level 2 footbed gives you excellent heel protection. Pick up the La Brea from eS. Dark Grey Color</p>\r\n<ul>\r\n<li>Suede or leather upper material</li>\r\n<li>Thin padded tongue and collar for comfort</li>\r\n<li>STI Foam Lite&trade; level 2 footbed with heel support</li>\r\n<li>System G2&trade; heel cushioning gel insert</li>\r\n</ul>', 8190, 30, '41', 'product_e50641257643812c89c5a213561e5ae500b94033.jpg', 1, '001022', 'siva'),
(56, 1, 8, 'La Brea', '<ul>\r\n<li>Fresh skating sneaker with robust leg</li>\r\n<li>Consolidated Ollie area</li>\r\n<li>Triple sutured toe-cap and consolidated heel</li>\r\n<li>Due to the soft rubber sole and the robust</li>\r\n<li>Light construction</li>\r\n<li>This shoe offers a great padding and an incredible board feeling</li>\r\n</ul>', 9290, 30, '44', 'product_558a536209b166d4d72b0a6835e7cddfb7ab9cfb.jpg', 1, '001023', 'braon'),
(57, 1, 8, 'La Brea', '<ul>\r\n<li>Fresh skating sneaker with robust leg</li>\r\n<li>Consolidated Ollie area</li>\r\n<li>Triple sutured toe-cap and consolidated heel</li>\r\n<li>Due to the soft rubber sole and the robust</li>\r\n<li>Light construction</li>\r\n<li>This shoe offers a great padding and an incredible board feeling</li>\r\n</ul>', 9290, 30, '45', 'product_a47cb5b7b3800ff52089ccd7fae6589dabaf3ef0.jpg', 1, '001024', 'braon'),
(58, 1, 8, 'Vancouver', '<ul class="features">\r\n<li>Thin deconstructed upper</li>\r\n<li>Thin padded tongue</li>\r\n<li>STI DTTF Pro 2 insole with New STI Double Down Gel heel insert for added comfort</li>\r\n<li>STI DTTF double wrap vulcanized construction</li>\r\n</ul>', 9490, 30, '44', 'product_d28a918d076b9d1a99200975ed9fa5135092fee9.jpg', 1, '001025', 'braon'),
(59, 1, 8, 'Vancouver', '<ul class="features">\r\n<li>Thin deconstructed upper</li>\r\n<li>Thin padded tongue</li>\r\n<li>STI DTTF Pro 2 insole with New STI Double Down Gel heel insert for added comfort</li>\r\n<li>STI DTTF double wrap vulcanized construction</li>\r\n</ul>', 9490, 30, '45', 'product_8cdbaffe1788ed8f8b6f8fffcbaa177e7c89cf50.jpg', 1, '001026', 'braon'),
(60, 1, 1, 'Charter', '<ul>\r\n<li>You''ll be flyin'' high with the oh-so-choice Charter from etnies&trade;!</li>\r\n<li>Uppers of synthetic leather and action leather.</li>\r\n<li>Oversized etnies details on the side, tongue, and heel.</li>\r\n<li>Padded tongue and collar.</li>\r\n<li>Breathable textile-mesh lining.</li>\r\n<li>STI Foam&trade; Lite level 1 footbed helps provide superior comfort with a supportive heel cup and midfoot arch support.</li>\r\n</ul>', 10290, 30, '39', 'product_4dd52f7af00e86f8163e53fd697190835dfd961e.jpg', 1, '001027', 'crna/siva'),
(61, 1, 1, 'Charter', '<ul>\r\n<li>You''ll be flyin'' high with the oh-so-choice Charter from etnies&trade;!</li>\r\n<li>Uppers of synthetic leather and action leather.</li>\r\n<li>Oversized etnies details on the side, tongue, and heel.</li>\r\n<li>Padded tongue and collar.</li>\r\n<li>Breathable textile-mesh lining.</li>\r\n<li>STI Foam&trade; Lite level 1 footbed helps provide superior comfort with a supportive heel cup and midfoot arch support.</li>\r\n</ul>', 10290, 30, '45', 'product_e998b9694157404ef0a59c674a13ca0cdc01052b.jpg', 1, '001028', 'crna/siva'),
(62, 1, 1, 'Charter', '<ul>\r\n<li>You''ll be flyin'' high with the oh-so-choice Charter from etnies&trade;!</li>\r\n<li>Uppers of synthetic leather and action leather.</li>\r\n<li>Oversized etnies details on the side, tongue, and heel.</li>\r\n<li>Padded tongue and collar.</li>\r\n<li>Breathable textile-mesh lining.</li>\r\n<li>STI Foam&trade; Lite level 1 footbed helps provide superior comfort with a supportive heel cup and midfoot arch support.</li>\r\n</ul>', 10290, 30, '46', 'product_b564e33ad001aaf2eed6e5d44ea26fb2fc800801.jpg', 1, '001029', 'crna/plava'),
(63, 1, 1, 'Fader', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>STI Foam Level 1 cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>400 NBS rubber outsole.</li>\r\n</ul>', 8390, 30, '39', 'product_ec7cf1dbee1045a6c19f917ba4257782e81986e3.jpg', 1, '001030', 'crna/roze'),
(64, 1, 1, 'Fader', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>STI Foam Level 1 cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>400 NBS rubber outsole.</li>\r\n</ul>', 8390, 30, '41', 'product_42ed3e916cc8d8b12ad0bddfdfe1f08a476c7e39.jpg', 1, '001031', 'crna/roze'),
(65, 1, 1, 'Fader', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>STI Foam Level 1 cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>400 NBS rubber outsole.</li>\r\n</ul>', 8990, 30, '40', 'product_1d3c259f5e0243a5330f3a6ac778fc4d4701609d.jpg', 1, '001032', 'crna/plava'),
(66, 1, 1, 'Number Mid', '<ul>\r\n<li>Padded tongue and mid-top collar.</li>\r\n<li>Removable strap for stability.</li>\r\n<li>Lower hidden lace loops.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>Internal dual-density EVA midsole.</li>\r\n<li>STI Foam Lite level 1 footbed.</li>\r\n</ul>', 10890, 30, '41', 'product_89da42bb9903fc7ac3a36dcb22e731df3f5cf9b5.jpg', 1, '001033', 'crna/crvena'),
(67, 1, 1, 'Number Mid', '<ul>\r\n<li>Padded tongue and mid-top collar.</li>\r\n<li>Removable strap for stability.</li>\r\n<li>Lower hidden lace loops.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>Internal dual-density EVA midsole.</li>\r\n<li>STI Foam Lite level 1 footbed.</li>\r\n</ul>', 10890, 30, '43', 'product_37fe1b640a6d5fabff35373e216b98564eb38895.jpg', 1, '001034', 'crna/crvena'),
(68, 1, 1, 'Number Mid', '<ul>\r\n<li>Padded tongue and mid-top collar.</li>\r\n<li>Removable strap for stability.</li>\r\n<li>Lower hidden lace loops.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>Internal dual-density EVA midsole.</li>\r\n<li>STI Foam Lite level 1 footbed.</li>\r\n</ul>', 10890, 30, '46', 'product_7b030f2f546c29a96ed4149815bcdc4a91231833.jpg', 1, '001035', 'crna/crvena'),
(69, 1, 1, 'Piston', '<ul>\r\n<li>upper: leather, synthetic</li>\r\n<li>inner lining: textile</li>\r\n<li>synthetic sole</li>\r\n<li>padded tongue and collar</li>\r\n<li>reinforced heel</li>\r\n<li>ventilation holes</li>\r\n<li>cushioned insole</li>\r\n<li>STI-Foam footbed</li>\r\n<li>embroidered logo on side</li>\r\n<li>logo print on tongue and heel</li>\r\n<li>highest quality</li>\r\n</ul>', 10290, 30, '41', 'product_eff89b6be696e3c28b2e60bdd810c24f528cd71a.jpg', 1, '001036', 'crna/crvena'),
(70, 1, 1, 'Piston', '<ul>\r\n<li>upper: leather, synthetic</li>\r\n<li>inner lining: textile</li>\r\n<li>synthetic sole</li>\r\n<li>padded tongue and collar</li>\r\n<li>reinforced heel</li>\r\n<li>ventilation holes</li>\r\n<li>cushioned insole</li>\r\n<li>STI-Foam footbed</li>\r\n<li>embroidered logo on side</li>\r\n<li>logo print on tongue and heel</li>\r\n<li>highest quality</li>\r\n</ul>', 10290, 30, '44', 'product_a87fa3b8e3bab0be69065fcd8e1d356e7af33569.jpg', 1, '001037', 'crna/crvena'),
(71, 1, 1, 'Piston', '<ul>\r\n<li>upper: leather, synthetic</li>\r\n<li>inner lining: textile</li>\r\n<li>synthetic sole</li>\r\n<li>padded tongue and collar</li>\r\n<li>reinforced heel</li>\r\n<li>ventilation holes</li>\r\n<li>cushioned insole</li>\r\n<li>STI-Foam footbed</li>\r\n<li>embroidered logo on side</li>\r\n<li>logo print on tongue and heel</li>\r\n<li>highest quality</li>\r\n</ul>', 10290, 30, '45', 'product_c9879cf651c209252918d547343e5dc4aa48cc51.jpg', 1, '001038', 'crna/crvena'),
(72, 1, 1, 'Piston', '<ul>\r\n<li>upper: leather, synthetic</li>\r\n<li>inner lining: textile</li>\r\n<li>synthetic sole</li>\r\n<li>padded tongue and collar</li>\r\n<li>reinforced heel</li>\r\n<li>ventilation holes</li>\r\n<li>cushioned insole</li>\r\n<li>STI-Foam footbed</li>\r\n<li>embroidered logo on side</li>\r\n<li>logo print on tongue and heel</li>\r\n<li>highest quality</li>\r\n</ul>', 10290, 30, '45', 'product_d69fa30fc5f00b33f9a2d269ee7cd7e6e640344e.jpg', 1, '001039', 'crna/zelena'),
(73, 1, 1, 'RVM', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>EVA cushioning footbed.</li>\r\n<li>Internal polyurethane midsole.</li>\r\n<li>Vulcanized construction.</li>\r\n</ul>', 9690, 30, '38', 'product_cd8745fcfd9b66c1c793527d1647ab5d8852458d.jpg', 1, '001040', 'siva/roze'),
(74, 1, 1, 'RVM', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>EVA cushioning footbed.</li>\r\n<li>Internal polyurethane midsole.</li>\r\n<li>Vulcanized construction.</li>\r\n</ul>', 9690, 30, '40', 'product_8ece817c8a6bc6cbdfbee1d34c437e0a0898a8d0.jpg', 1, '001041', 'siva'),
(75, 1, 1, 'RVM', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>Lower hidden lace loops.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>Vulcanized construction.</li>\r\n<li>STI Foam Lite level 2 footbed.</li>\r\n</ul>', 10890, 30, '43', 'product_9265f97cbf40db6b1aabd6af66ab520e86be1074.jpg', 1, '001042', 'crvena'),
(76, 1, 1, 'RVM', '<ul>\r\n<li>Padded tongue and collar.</li>\r\n<li>Lower hidden lace loops.</li>\r\n<li>Triple-stitched toe cap.</li>\r\n<li>Vulcanized construction.</li>\r\n<li>STI Foam Lite level 2 footbed.</li>\r\n</ul>', 10890, 30, '44', 'product_94a22329b5a04bdef9127ab13c04dcb4de0c993c.jpg', 1, '001043', 'crvena'),
(77, 1, 1, 'Uptown', '<ul>\r\n<li>Classic etnies Rap styling.</li>\r\n<li>Padded tongue and collar.</li>\r\n<li>Foam cushioning footbed.</li>\r\n<li>Exposed EVA midsole.</li>\r\n<li>Double-cup rubber outsole.</li>\r\n</ul>', 9990, 30, '40', 'product_b225ac7944618319673aae34ec348f8908f9a1fd.jpg', 1, '001044', 'crna/siva/roze'),
(78, 1, 1, 'Woozy', '<ul>\r\n<li>Thin padded tongue and collar.</li>\r\n<li>Metal etnies logo lace keeper.</li>\r\n<li>Fold-down double collar shows off material and color pop details.</li>\r\n<li>Single stitch toe cap.</li>\r\n<li>Comfortable EVA cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>Thin cupsole construction.</li>\r\n</ul>', 9690, 30, '40', 'product_5c7346c756cf977a394fd0a2537f701953fa3371.jpg', 1, '001045', 'ljubicaste'),
(79, 1, 1, 'Woozy', '<ul>\r\n<li>Thin padded tongue and collar.</li>\r\n<li>Metal etnies logo lace keeper.</li>\r\n<li>Fold-down double collar shows off material and color pop details.</li>\r\n<li>Single stitch toe cap.</li>\r\n<li>Comfortable EVA cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>Thin cupsole construction.</li>\r\n</ul>', 9690, 30, '41', 'product_ce025c6c3e95523175b93cf2f22c821ab93106be.jpg', 1, '001046', 'ljubicaste'),
(80, 1, 1, 'Woozy', '<ul>\r\n<li>Thin padded tongue and collar.</li>\r\n<li>Metal etnies logo lace keeper.</li>\r\n<li>Fold-down double collar shows off material and color pop details.</li>\r\n<li>Single stitch toe cap.</li>\r\n<li>Comfortable EVA cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>Thin cupsole construction.</li>\r\n</ul>', 9690, 30, '38', 'product_8d107a17174287179ff71a13a0c5a70fa5f7ee76.jpg', 1, '001047', 'crna'),
(81, 1, 1, 'Woozy', '<ul>\r\n<li>Thin padded tongue and collar.</li>\r\n<li>Metal etnies logo lace keeper.</li>\r\n<li>Fold-down double collar shows off material and color pop details.</li>\r\n<li>Single stitch toe cap.</li>\r\n<li>Comfortable EVA cushioning footbed.</li>\r\n<li>Internal EVA midsole.</li>\r\n<li>Thin cupsole construction.</li>\r\n</ul>', 9690, 30, '38', 'product_3c51213ae240d35eebd64a86bacd2a614e34e7d5.jpg', 1, '001048', 'crna'),
(82, 1, 2, 'Bomber', '<ul>\r\n<li>Genuine heavy-duty suede upper&nbsp;</li>\r\n<li>Lightly foam-padded tongue and collar for comfort and support&nbsp;</li>\r\n<li>Vulcanized sole construction&nbsp;</li>\r\n<li>Eva insole to absorb impact and provide cushioning&nbsp;</li>\r\n<li>Highly abrasion-resistant outsole for wear and durability&nbsp;</li>\r\n</ul>', 8190, 30, '38', 'product_c04897cd636d4603a1da64db78892938c8d828c9.jpg', 1, '001049', 'plava'),
(83, 1, 2, 'Bomber', '<ul>\r\n<li>Genuine heavy-duty suede upper&nbsp;</li>\r\n<li>Lightly foam-padded tongue and collar for comfort and support&nbsp;</li>\r\n<li>Vulcanized sole construction&nbsp;</li>\r\n<li>Eva insole to absorb impact and provide cushioning&nbsp;</li>\r\n<li>Highly abrasion-resistant outsole for wear and durability&nbsp;</li>\r\n</ul>', 8190, 30, '44', 'product_4d9819adc549d51918f1ef3bd3af68b95b5cc4ab.jpg', 1, '001050', 'plava'),
(84, 1, 2, 'Chief Mid', '<ul>\r\n<li>Genuine heavy duty suede / cotton twill upper&nbsp;</li>\r\n<li>Asymmetric stabilizer for medial upper support&nbsp;</li>\r\n<li>Traditional foam padded tongue and collar for comfort and support&nbsp;</li>\r\n<li>Vulcanized sole construction&nbsp;</li>\r\n<li>EVA insole to absorb impact and provide cushioning&nbsp;</li>\r\n<li>Highly abrasion resistant outsole for wear and durability</li>\r\n</ul>', 9790, 30, '42', 'product_d472554d8172dff04b5fef70cae3aea31a05185c.jpg', 1, '001051', 'crna/ljubicasta'),
(85, 1, 2, 'Chief Mid', '<ul>\r\n<li>Genuine heavy duty suede / cotton twill upper&nbsp;</li>\r\n<li>Asymmetric stabilizer for medial upper support&nbsp;</li>\r\n<li>Traditional foam padded tongue and collar for comfort and support&nbsp;</li>\r\n<li>Vulcanized sole construction&nbsp;</li>\r\n<li>EVA insole to absorb impact and provide cushioning&nbsp;</li>\r\n<li>Highly abrasion resistant outsole for wear and durability</li>\r\n</ul>', 9790, 30, '44', 'product_333180a6cc016b83cf215104794c1c0ea47d041b.jpg', 1, '001052', 'crna/ljubicasta'),
(86, 1, 2, 'Heritage II', '<p>* Genuine heavy-duty suede upper<br />* Asymmetric stabilizer for medial upper support<br />* Abrasion-resistant molded rubber toe piece for protection<br />* Light foam-padded tongue and collar for comfort and support<br />* Soft EVA insole with full length latex layer for impact cushioning<br />* Lightweight EVA midsole for additional comfort and impact cushioning<br />* Highly abrasion-resistant outsole for wear and durability</p>', 8690, 30, '40', 'product_2525eb0b0cfac43fce602665ba0e76d84ecde12a.jpg', 1, '01053', 'crna/ljubicasta'),
(87, 1, 2, 'Hi Volt', '<ul>\r\n<li>Vulcanized Sole Construction</li>\r\n<li>Durable Suede Upper</li>\r\n<li>Padded Tongue and Collar</li>\r\n<li>Mid Top Shoe</li>\r\n</ul>', 9990, 30, '40', 'product_696d9a4c8cb3ffaf66371c42fda6c12b66c66998.jpg', 1, '001054', 'crna'),
(88, 1, 2, 'Hi Volt', '<ul>\r\n<li>Vulcanized Sole Construction</li>\r\n<li>Durable Suede Upper</li>\r\n<li>Padded Tongue and Collar</li>\r\n<li>Mid Top Shoe</li>\r\n</ul>', 9990, 30, '41', 'product_5f0257d597bdc3fd4066e0a95fc5f68e8f3ee779.jpg', 1, '001055', 'crna'),
(89, 1, 2, 'Hi Volt', '<ul>\r\n<li>Vulcanized Sole Construction</li>\r\n<li>Durable Suede Upper</li>\r\n<li>Padded Tongue and Collar</li>\r\n<li>Mid Top Shoe</li>\r\n</ul>', 9990, 30, '42', 'product_cafe7173db1924a6cc7f3984c9bad7b3c5174fe9.jpg', 1, '001056', 'crna'),
(90, 1, 2, 'Revolver Vlc', '<ul>\r\n<li>genuine heavy-duty suede or action leather upper</li>\r\n<li>select models feature synthetic nubuck</li>\r\n<li>asymmetric stabilizer for medial upper support</li>\r\n<li>traditional foam-padded tongue and</li>\r\n<li>collar for comfort and support</li>\r\n<li>vulcanized sole construction</li>\r\n<li>soft EVA insole with full lenght latex layer</li>\r\n<li>highly abrasion-resistant outsole</li>\r\n<li>or wear and durability</li>\r\n<li>2 pair of white laces</li>\r\n</ul>', 9290, 30, '40', 'product_c26fce0099aa14ef2dc18dffdffa78b8099b671f.jpg', 1, '001057', 'crna/crvena'),
(91, 1, 2, 'Revolver Vlc', '<ul>\r\n<li>genuine heavy-duty suede or action leather upper</li>\r\n<li>select models feature synthetic nubuck</li>\r\n<li>asymmetric stabilizer for medial upper support</li>\r\n<li>traditional foam-padded tongue and</li>\r\n<li>collar for comfort and support</li>\r\n<li>vulcanized sole construction</li>\r\n<li>soft EVA insole with full lenght latex layer</li>\r\n<li>highly abrasion-resistant outsole</li>\r\n<li>or wear and durability</li>\r\n<li>2 pair of white laces</li>\r\n</ul>', 9290, 30, '44', 'product_548a60b18b063e1576328ddb8964457ee8562d7e.jpg', 1, '001058', 'crna/crvena'),
(92, 1, 2, 'Revolver Vlc', '<ul>\r\n<li>genuine heavy-duty suede or action leather upper</li>\r\n<li>select models feature synthetic nubuck</li>\r\n<li>asymmetric stabilizer for medial upper support</li>\r\n<li>traditional foam-padded tongue and</li>\r\n<li>collar for comfort and support</li>\r\n<li>vulcanized sole construction</li>\r\n<li>soft EVA insole with full lenght latex layer</li>\r\n<li>highly abrasion-resistant outsole</li>\r\n<li>or wear and durability</li>\r\n<li>2 pair of white laces</li>\r\n</ul>', 9290, 30, '43', 'product_5513fd96caec8cca0228e751d2530387c29fcab6.jpg', 1, '001059', 'crna/bela'),
(93, 1, 2, 'Ripper', '<ul>\r\n<li>Heavy Duty Suede Upper</li>\r\n<li>Vulcanized Sole Construction</li>\r\n<li>Highly Abrasion Resistant Outsole</li>\r\n<li>Chris Cole Pro Shoe</li>\r\n</ul>', 8990, 30, '44.5', 'product_3ad4b30dad9d3ebba08411ea9331006827ea9e76.jpg', 1, '001060', 'crna/bela'),
(94, 1, 2, 'Ripper', '<ul>\r\n<li>Heavy Duty Suede Upper</li>\r\n<li>Vulcanized Sole Construction</li>\r\n<li>Highly Abrasion Resistant Outsole</li>\r\n<li>Chris Cole Pro Shoe</li>\r\n</ul>', 8990, 30, '44.5', 'product_2788a7f2d7689d87952fe60c4d60142d96896fa4.jpg', 1, '001061', 'oker'),
(95, 1, 2, 'Tguns Mid', '<ul>\r\n<li>upper: leather [shammy]&nbsp;lining: textile material&nbsp;</li>\r\n<li>synthetic sole&nbsp;</li>\r\n<li>doubly embroidered noses&nbsp;</li>\r\n<li>vulcanized sole&nbsp;</li>\r\n<li>soft, comfortable insole&nbsp;</li>\r\n<li>tongue centering straps&nbsp;</li>\r\n<li>sponged tongue and collar</li>\r\n</ul>', 9190, 30, '40', 'product_cc432b10c9d1ca02d340c331bf6978fbaaae4919.jpg', 1, '001062', 'siva'),
(96, 1, 2, 'Tguns Mid', '<ul>\r\n<li>upper: leather [shammy]&nbsp;lining: textile material&nbsp;</li>\r\n<li>synthetic sole&nbsp;</li>\r\n<li>doubly embroidered noses&nbsp;</li>\r\n<li>vulcanized sole&nbsp;</li>\r\n<li>soft, comfortable insole&nbsp;</li>\r\n<li>tongue centering straps&nbsp;</li>\r\n<li>sponged tongue and collar</li>\r\n</ul>', 9190, 30, '44', 'product_2853c9af1b5e020ce375c4641cda491403238d3b.jpg', 1, '001063', 'siva'),
(98, 7, 7, 'Novcanik', '<p>O`neill muski novcanik sa dodatkom za kartice.&nbsp;<br />Dimenzije 12x9.5cm. Ima deo za novac u metalu, odeljke za licna dokumenta, odeljak za kartice koji se vadi.</p>', 3190, 30, '-', 'product_ee0ec4e3c3480761246ca15c44e2d06d56f1172e.jpg', 1, '002001', 'crna/bela'),
(99, 7, 5, 'Kais', '<p>Roxy kais.</p>', 2890, 30, '-', 'product_ea849d5654b53ab5252da1334356c3f91001f70f.jpg', 1, '002002', 'saarena'),
(100, 7, 5, 'Kais', '<p>Roxy kais.</p>', 2890, 30, '-', 'product_a88058922d62078ce3c6beb49ab335583d17d0d7.jpg', 1, '002003', 'crna'),
(101, 7, 5, 'Novcanik', '<p>Roxy novcanik zenski. Dimenzije 12 x 20cm.</p>', 3690, 30, '-', 'product_1a4843f1fa5445fae7a91b5a300c39acd17f6ca5.jpg', 1, '002004', 'crna'),
(102, 7, 3, 'Kais', '<p>Muski kais Emerica. Na poledjini cepa ima otvarac za pivo.</p>', 2290, 30, '-', 'product_089b72c64c8ba2879c9750070d3d9a2347fcd72f.jpg', 1, '002005', 'crna/braon');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE IF NOT EXISTS `shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `shipping_number` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `address`, `date`, `shipping_number`, `phone`, `zip`, `city`) VALUES
(29, 'Ivan Maksimovic', 'Sremska 7', '2013-10-19 11:37:40', 6, '0607384097', '36000', 'Kraljevo'),
(30, 'Danica Gilic', 'Sremska 7', '2013-10-19 11:47:03', 2013, '0607384097', '36000', 'Kraljevo'),
(32, 'Ivan Maksimovic', 'Cara Lazara 30/4', '2013-10-19 11:49:15', 2013, '0607384097', '36000', 'Kraljevo'),
(33, 'Danica Gilic', 'Sremska 7', '2013-10-19 11:52:52', 2013, '0607384097', '36000', 'Kraljevo'),
(34, 'Danica Gilic', 'Cara Lazara 30/4', '2013-10-19 11:54:29', 10, '0607384097', '36000', 'Kraljevo'),
(35, 'Ivan Maksimovic', 'Sremska 7', '2013-10-19 11:56:04', 10, '0607384097', '36000', 'Kraljevo'),
(36, 'Danica Gilic', 'Cara Lazara 30/4', '2013-10-19 11:57:09', 10, '0607384097', '36000', 'Kraljevo'),
(37, 'Danica Gilic', 'Sremska 7', '2013-10-19 12:01:15', 2013, '0607384097', '36000', 'Kraljevo'),
(38, 'Ivan Maksimovic', 'Sremska 7', '2013-10-19 12:02:50', 20135, '0607384097', '36000', 'Kraljevo');

-- --------------------------------------------------------

--
-- Table structure for table `ShippingDetail`
--

CREATE TABLE IF NOT EXISTS `ShippingDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8069335B4584665A` (`product_id`),
  KEY `IDX_8069335B4887F3F8` (`shipping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `ShippingDetail`
--

INSERT INTO `ShippingDetail` (`id`, `shipping_id`, `product_id`, `price`, `qty`) VALUES
(42, 29, 58, 9490, 1),
(43, 30, 47, 8490, 2),
(44, 30, 73, 9690, 1),
(46, 32, 43, 5990, 1),
(47, 33, 102, 2290, 1),
(48, 34, 63, 8390, 1),
(49, 35, 75, 10890, 1),
(50, 36, 39, 6990, 1),
(51, 37, 82, 8190, 1),
(52, 38, 44, 10990, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE IF NOT EXISTS `shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4C61303292FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_4C613032A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shop_user`
--

INSERT INTO `shop_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `ime`, `prezime`) VALUES
(1, 'ivan', 'ivan', 'ivan@ivan.com', 'ivan@ivan.com', 1, 'ncfywl36tg08gowgkow4owgkss4go8c', '/jJbP7xiqMIseZg2umc1eDPs5wk4w6vPL5ThSktI+0rQ71eaePy28aXNGhUFY40I3rwBngLL5+eTKSKCkTdtOQ==', '2013-10-11 22:52:39', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'ivan', 'maksimovic'),
(2, 'kupac', 'kupac', 'kupac@kupac.com', 'kupac@kupac.com', 1, '3i7urrrhwgqo48o4gg4gssc4coswwkw', '79JMWbj+NFnSkPS7btl58LaQpDJK1nDU07W9yPvXjDkkIMBrFG2bJQhYi8IljH40+jJLLMDEwyFNwZA1cfqyXw==', '2013-08-11 00:22:13', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Danica', 'Gilic');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_BA388B7D34A04AD` FOREIGN KEY (`product`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_1CF73D3112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_1CF73D3144F5D008` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Constraints for table `ShippingDetail`
--
ALTER TABLE `ShippingDetail`
  ADD CONSTRAINT `FK_8069335B4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_8069335B4887F3F8` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
