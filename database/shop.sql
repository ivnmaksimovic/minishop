-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2013 at 01:43 AM
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
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_description`, `img_path`) VALUES
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=258 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

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
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CF73D3112469DE2` (`category_id`),
  KEY `IDX_1CF73D3144F5D008` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=58 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `product_name`, `product_description`, `product_price`, `product_rabat`, `product_size`, `img_path`, `active`, `product_code`, `product_color`) VALUES
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
(57, 1, 8, 'La Brea', '<ul>\r\n<li>Fresh skating sneaker with robust leg</li>\r\n<li>Consolidated Ollie area</li>\r\n<li>Triple sutured toe-cap and consolidated heel</li>\r\n<li>Due to the soft rubber sole and the robust</li>\r\n<li>Light construction</li>\r\n<li>This shoe offers a great padding and an incredible board feeling</li>\r\n</ul>', 9290, 30, '45', 'product_a47cb5b7b3800ff52089ccd7fae6589dabaf3ef0.jpg', 1, '001024', 'braon');

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
(1, 'ivan', 'ivan', 'ivan@ivan.com', 'ivan@ivan.com', 1, 'ncfywl36tg08gowgkow4owgkss4go8c', '/jJbP7xiqMIseZg2umc1eDPs5wk4w6vPL5ThSktI+0rQ71eaePy28aXNGhUFY40I3rwBngLL5+eTKSKCkTdtOQ==', '2013-10-09 23:30:26', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'ivan', 'maksimovic'),
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
