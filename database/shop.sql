-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2013 at 06:51 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

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
(8, 'ES', 'Fensi skate brand', 'brand_4c530529a51eb4b761a69028fd133a529ad0cda2.jpg');

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
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CF73D3112469DE2` (`category_id`),
  KEY `IDX_1CF73D3144F5D008` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `product_name`, `product_description`, `product_price`, `product_rabat`, `product_size`, `img_path`) VALUES
(3, 1, 1, 'Cinch', 'mnogo dobre bla bla', 7990, 30, '42', 'product_88909c68dc9394c72ed0b2e98e9f40f4a02d10c2.jpg'),
(4, 1, 2, 'Heritage', 'mnogo dobre bla bla', 10290, 0, '45', 'product_5d5ebc61e02f9051497fedb3d5fff055320fc5cc.jpg'),
(5, 1, 3, 'Jinx', 'mnogo dobre bla bla', 6990, 20, '42.5', 'product_4e13db680ce31891cf6c6859030d89de1e42c394.jpg'),
(6, 4, 6, 'Heyho', 'Duks sa kapuljacom', 3890, 30, 'XXL', 'product_dc0ad756596c2c4c845436d9136b9a6db8bbc04c.jpg'),
(7, 4, 6, 'Trikolor', 'Duks sa kapuljacom', 4290, 30, 'L', 'product_287c1c2897f55558d194928f42cc08663347a4ba.jpg'),
(8, 5, 4, 'Ranac', 'sa pregradom za laptop', 5990, 30, '20l', 'product_079556284f24d7b0a72c4a09d6940a7267740c35.jpg'),
(9, 7, 5, 'Kais', 'sadf', 1990, 30, 'metar', 'product_b036182029c86a5783a5a55db4b91f46fb9f7c78.jpg'),
(10, 3, 6, 'Zenska majica', 'Sa velikim izrezom', 1390, 0, 'M', 'product_667db91f5b9b7b5126fdbbd3f98d01650db4ef7d.jpg'),
(11, 7, 7, 'Novcanik Crni', 'Dobar crni kozni novcanik sa uloskom za karticu', 3190, 40, 'podeblji', 'product_c31f64580a842c8aa355aa48375056a452e83cb1.jpg'),
(17, 1, 1, 'Heritage', 'mnogo dobre bla bla', 4000, 30, '42', 'product_ffbda293d7990309aac510fc4bda00894c064386.jpg'),
(18, 5, 5, 'Mision', 'sa pregradom za laptop', 4500, 10, '25l', 'product_e7a893d4c54bb477b8b6a30d16d8ed300fd5039e.jpg'),
(19, 5, 4, 'Ranac', 'mnogo dobre bla bla', 3000, 50, '20l', 'product_dc527797626ac8441b654bb496273fd1d2ab0ced.jpg'),
(20, 3, 2, 'Fader', 'poluduboke za svako vreme...', 200, 0, '38.5', 'product_33e3263437705e8703077e2d758d7fc12dfb9b11.jpg'),
(21, 1, 1, 'Hi Volt', 'kozne braon patike', 2000, 30, '42', 'product_d10b533df109f61b4cb63b64d78b3a912884b6bc.jpg'),
(22, 1, 8, 'La Brea', 'kozne braon patike', 5000, 50, '42', 'product_1f37c0842f0ed79647d9f62ff7925ee113793594.jpg'),
(23, 4, 6, 'Hoodie', 'Duks sa kapuljacom', 4290, 30, 'L', 'product_63a37b82ebfbc61ae2d03aa4aa75f9b4c8712753.jpg'),
(24, 1, 1, 'Piston', '<p>Features:</p>\r\n<ul>\r\n<li>Mens lace-up shoe</li>\r\n<li>Action nubuck / Synthetic nubuck upper</li>\r\n<li>New 300 NBS double cup rubber outsole with exposed EVA midsole</li>\r\n<li>STI Foam Lite level 1 footbed</li>\r\n<li>Padded tongue and collar - Trademark Arrow logo</li>\r\n</ul>\r\n<p><a href="http://etnies.com/" target="_blank">Etnies.com</a></p>', 10290, 30, '45 (29cm)', 'product_1067e8e84a2682d392b2c8d6ac5c20644f70dbb0.jpg'),
(25, 1, 2, 'Bomber II', 'This page shows how to make different kinds of bulleted lists.\r\n\r\nYou have the following bullet options:\r\ndisc\r\n\r\ncircle\r\n\r\nsquare\r\n\r\nLook at these examples to see the detailed syntax', 9000, 35, '44.5 (29cm)', 'product_a63a34f58bdda1e1f4e5f2ea433411e5c59d689c.jpg'),
(26, 1, 3, 'La Brea', 'lsdjf:\n- fsdaf\n- lsadjf\n- lskdf\n\nivan fsdkj ksfd kasdjf j sadkfj lsjdf sakdjf js dfk.\n\n1. lsdkfdgj\n2. lskjgk\n3. lskjg', 8000, 20, '42', 'product_4403b651625b4480fc680df2ddd1a2969390904d.jpg'),
(29, 1, 2, 'La Brea', '<ul>\r\n<li>slakdjf</li>\r\n<li>alsddfjk</li>\r\n<li>sslkfjd</li>\r\n</ul>\r\n<p>sjfdklskdjfjksfd</p>\r\n<ol>\r\n<li><span style="font-size: 11px;">sladfkjlksjf</span></li>\r\n<li><span style="font-size: 11px;">slkdjf</span></li>\r\n<li><span style="font-size: 11px;">lsdjkf</span></li>\r\n</ol>\r\n<p style="text-align: right;">slakdjfslkjfd sdkj fk jsfkl j</p>', 5555, 55, '20l', 'product_ada1db81e23b3f3a66f4441764ce369abe1dd8e7.jpg');

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
(1, 'ivan', 'ivan', 'ivan@ivan.com', 'ivan@ivan.com', 1, 'ncfywl36tg08gowgkow4owgkss4go8c', '/jJbP7xiqMIseZg2umc1eDPs5wk4w6vPL5ThSktI+0rQ71eaePy28aXNGhUFY40I3rwBngLL5+eTKSKCkTdtOQ==', '2013-09-01 20:53:48', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'ivan', 'maksimovic'),
(2, 'kupac', 'kupac', 'kupac@kupac.com', 'kupac@kupac.com', 1, '3i7urrrhwgqo48o4gg4gssc4coswwkw', '79JMWbj+NFnSkPS7btl58LaQpDJK1nDU07W9yPvXjDkkIMBrFG2bJQhYi8IljH40+jJLLMDEwyFNwZA1cfqyXw==', '2013-08-11 00:22:13', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Danica', 'Gilic');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_1CF73D3112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_1CF73D3144F5D008` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
