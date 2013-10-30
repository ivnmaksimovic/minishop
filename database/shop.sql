-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2013 at 10:54 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_description`, `imgPath`) VALUES
(1, 'Etnies', '<p><strong>Etnies</strong>&nbsp;is a footwear brand based in&nbsp;<a title="Lake Forest, California" href="http://en.wikipedia.org/wiki/Lake_Forest,_California">Lake Forest, California</a>, United States (US), and is owned by&nbsp;<a title="Sole Technology" href="http://en.wikipedia.org/wiki/Sole_Technology">Sole Technology, Inc.</a><sup id="cite_ref-Our_1-0" class="reference"><a href="http://en.wikipedia.org/wiki/Etnies#cite_note-Our-1">[1]</a></sup>&nbsp;As of 2013, the company sponsors professional skateboarders and releases signature shoe models.</p>\r\n<p>The company was launched in 1986 and following the end of his professional skateboarding career, current owner, Pierre Andr&eacute; S&eacute;nizergues, commenced design work at etnies shortly after the company''s formation. Etnies was an emerging European brand at the time that S&eacute;nizergues joined the company and he was responsible for designing the "Senix", "Lo-Cut", "Low-Top Rap", "Intercity" and "Scam" shoe models. S&eacute;nizergues subsequently introduced the brand to the US and proceeded to build Sole Technology, with the addition of the Emerica, &eacute;S (on indefinite hiatus as of 2012), and ThirtyTwo (snowboarding brand created in 1995) brands</p>', 'brand_5923cd1f4de3280a418ce9f763d20aa8c2842fe8.jpg'),
(2, 'Fallen', '<p><strong>Fallen Footwear</strong>&nbsp;is a skateboarding footwear brand started by professional skateboarder Jamie Thomas.&nbsp;</p>\r\n<p>In 2003, it was announced that Fallen Footwear would be manufactured and distributed by&nbsp;<a title="DC Shoes" href="http://en.wikipedia.org/wiki/DC_Shoes">DC Shoes</a>&nbsp;under license from Thomas.<sup id="cite_ref-1" class="reference"><a href="http://en.wikipedia.org/wiki/Fallen_Footwear#cite_note-1">[1]</a></sup>&nbsp;The agreement was canceled in 2005 after DC was acquired by&nbsp;<a title="Quiksilver" href="http://en.wikipedia.org/wiki/Quiksilver">Quiksilver</a>. It was an amicable separation, and DC President Ken Block said that Fallen was "recognized as the top new emerging footwear brand in the skateboard industry."The shoes are sold and distributed through Thomas''&nbsp;<a title="Black Box Distribution" href="http://en.wikipedia.org/wiki/Black_Box_Distribution">Black Box Distribution</a>.</p>', 'brand_2d65a25aff8525a12fc2735664ef81f8c713441e.jpg'),
(3, 'Emerica', '<p>Emerica was launched in 1996,&nbsp;sponsors a team of skateboarders, and has produced the following videos:&nbsp;<em>Yellow</em>&nbsp;(1997),&nbsp;<em>This Is Skateboarding</em>&nbsp;(2003),&nbsp;<em>Stay Gold</em>&nbsp;(2010), and&nbsp;<em>MADE: Chapter One</em>&nbsp;(2013).&nbsp;The 2013 video,&nbsp;<em>MADE: Chapter One</em>, was offered to consumers at a price of their choosing, with a minimum price of US$1.00 established.<sup id="cite_ref-12" class="reference"><a href="http://en.wikipedia.org/wiki/Sole_Technology#cite_note-12"><br /></a></sup></p>\r\n<p>In July 2013, the brand released its "Workwear" line with the&nbsp;<a title="Andrew Reynolds (skateboarder)" href="http://en.wikipedia.org/wiki/Andrew_Reynolds_(skateboarder)">Andrew Reynolds</a>&nbsp;"signature workwear denim capsule."&nbsp;Reynolds explained in a promotional video for the product:&nbsp;I''d say I''ve been with Emerica since ... 12, 15 years, something like that. It''s never really gone, like, "Oh, now we''re doing this! Now we''re trying to chase that fad. Now we''re doing that." It''s just stayed true to skateboarding. It''s just simple.</p>', 'brand_449ee7445fb9f4b102b152fa799fc0351eab5c58.jpg'),
(4, 'Dakine', '<p><strong>DaKine</strong>&nbsp;is an American outdoor clothing company specializing in sportswear and sports equipment for&nbsp;<a title="Extreme sport" href="http://en.wikipedia.org/wiki/Extreme_sport">alternative sports</a>. Founded in&nbsp;<a title="Hawaii" href="http://en.wikipedia.org/wiki/Hawaii">Hawaii</a>, the name comes from the&nbsp;<a title="Hawaiian Pidgin" href="http://en.wikipedia.org/wiki/Hawaiian_Pidgin">Hawaiian Pidgin</a>&nbsp;word "<a title="Da kine" href="http://en.wikipedia.org/wiki/Da_kine">da kine</a>" (derived from "the kind"). Now based in<a title="Oregon" href="http://en.wikipedia.org/wiki/Oregon">Oregon</a>, United States (U.S.) the company also&nbsp;<a title="Sponsor (commercial)" href="http://en.wikipedia.org/wiki/Sponsor_(commercial)">sponsors</a>&nbsp;team riders from the lifestyle and sporting fields of skiing,&nbsp;biking,&nbsp;windsurfing,&nbsp;kiting,&nbsp;snowboarding,&nbsp;surfing,&nbsp;and skateboarding.<sup id="cite_ref-7" class="reference"><a href="http://en.wikipedia.org/wiki/DaKine#cite_note-7"><br /></a></sup></p>\r\n<p>Dakine was founded in 1979 in Haiku,&nbsp;<a class="mw-redirect" title="Maui, Hawaii" href="http://en.wikipedia.org/wiki/Maui,_Hawaii">Maui, Hawaii</a>. In August 2009, Dakine was acquired by&nbsp;<a class="mw-redirect" title="Billabong International Limited" href="http://en.wikipedia.org/wiki/Billabong_International_Limited">Billabong International Limited</a>&nbsp;for about&nbsp;<a title="United States dollar" href="http://en.wikipedia.org/wiki/United_States_dollar">US$</a>100 million.&nbsp;The company moved into a new 25,000-square-foot (2,300&nbsp;m<sup>2</sup>) headquarters along the&nbsp;<a title="Columbia River" href="http://en.wikipedia.org/wiki/Columbia_River">Columbia River</a>&nbsp;in Hood River, Oregon, U.S. in June 2013.&nbsp;Also in 2013, Billabong sold Dakine for $70 million to Altamont Capital Partners.</p>', 'brand_b16ad2ede8865955edbe1c88db9e204556daed01.jpg'),
(5, 'Roxy', '<p>When Quiksilver decided to start a women''s line in 1990, it was a gutsy move. The surf market has always been a fickle one. And female surfers, despite their achievements in and out of the water, hadn''t drummed up nearly the notoriety nor the community that guys had long enjoyed.</p>\r\n<p>But great ideas always take some guts. And the company saw the untapped women''s surf market as a huge opportunity. Turns out they were right.</p>\r\n<p>Like all things Quiksilver, Roxy was born in the water; initially a swimwear line, it debuted in late summer 1990 to immediate success. By the next year, a Roxy sportswear line was introduced, and that too prospered, with sales of over $1 million. 1992 saw continued expansion of the brand with a new denim line and key snowwear pieces. The fact that Roxy was a women''s line offered by an authentic surf brand made it intriguing for both retailers and girls alike. It was the first of its kind on the market, and soon after, the other surf brands followed.</p>\r\n<p>By 1993, Roxy was on a serious roll. The ever-popular Roxy logo was born, a heart-shaped crest adapted from the recognizable Quiksilver logo. The brand''s popularity was growing, as was its staff. And then one afternoon in Hawaii, as legend has it, the Roxy crew was sitting on a beach watching the surf when they came up with the idea of the women''s board short. Offering fit and flexibility while still managing to be feminine, the women''s boardshort was an innovation that forever changed the women''s surf market. It was also the perfect example of what the Roxy brand had originally set out to be, in the words of Quiksilver''s 1990 Annual Report: "Fun, Bold, Athletic, Daring and Classy". The boardshort became a huge trend. Roxy, and women''s surfing along with it, was suddenly the next big thing.</p>\r\n<p>1994 marks another major milestone for Roxy: Lisa Andersen, then the reigning ASP Female World Champion, became the first member of the Roxy team. Lisa went on to win three more world titles, and along with them, crossover mass-market fame. She is considered by many to be the most influential surfer in the history of women''s surfing, and her contributions to the Roxy brand and the team continue to play a key role in Roxy''s success. Under her guidance, the Boardrider''s Team has grown into the most respected and accomplished pro team in women''s surfing. Current team members include: Megan Abubo, Chelsea Georgeson, Veronica Kay, Kassia Meador, Kula Barbieto, ''tween surfing phenom Carissa Moore, and reigning world champ Sofia Mulanovich.</p>\r\n<p>A Roxy-branded professional event was a natural progression from team sponsorship, and thus the first annual Quiksilver/Roxy Women''s Pro Surfing event was born. It took place in winter 1995 on Sunset Beach, Oahu''s North Shore. Ten years later, the Roxy Pro Hawaii remains one of the most prestigious and exciting ASP World Championship surf events of the year.</p>\r\n<p>The success of this event led to other Roxy competitions, including: the Roxy Pro Fiji, the Roxy Pro Gold Coast (Australia), and the Roxy Jam UK, all ASP World Championship Tour events; the Roxy Pro Women''s Surf Festival (Australia), one of the biggest World Qualifying Series events on the tour; and a series of amateur surf contests for young surfers the world over. With such substantial event sponsorship and an ever-expanding team, Roxy is proud to be the largest corporate sponsor of women''s surfing worldwide.</p>\r\n<p>As Roxy''s popularity has grown so has its product line and its audience. Accessories and eyewear joined the mix in 1995; footwear, watches, and Roxy Girl, a line for girls aged 7-16, emerged the following year. Roxy enjoyed its New York Fashion week debut at The Girl''s Rule Show in 1996, the same year the brand was nominated for The "California Rising Star Award" for design innovation and excellence. A snow line including outerwear and accessories was added in 1997, along with Teenie Wahine, Roxy''s children''s line. 1999 was big, with jewelry, bags, backpacks, travel accessories, skate gear, and Roxy Room, a line of bedding, lamps, and posters. By the end of the ''90''s, Roxy had become the brand for girls everywhere, enjoying mass-market appeal without losing its core audience.</p>\r\n<p>The new millennium has brought an exciting and eclectic evolution of Roxy, with a full line of snowboards introduced in 2003, produced in partnership with industry innovator Mervin Manufacturing; Luna Bay, a Roxy Girl Series, seven young adult fiction novels also released in 2003; a new toddlers'' line in stores Spring of 2005; a soon-to-be-debuted fragrance line; and the imminent arrival of Roxy Ski, a line of skis and boots produced in partnership with Rossignol''s Dynastar brand.</p>\r\n<p>As Roxy''s snow product line has expanded, so have its sponsorship efforts. The Roxy Chicken Jams, a series of all-girls pro snowboarding events, debuted in 2004 in Innsbruck, Austria and Park City, Utah. Roxy''s pro snow team is bigger and bigger too, with recent world-class additions Torah Bright, Alexis Waite and Amber Stackhouse. And with some Olympic hopefuls in the mix, 2006 could be the year that Roxy brings home its first medal.</p>\r\n<p>Roxy has long been in the media spotlight. After garnering editorial merit from major publications like Lucky, Teen Vogue and In Style in addition to most of the U.S. and international surf and snow publications, it was only a matter of time before Roxy hit prime time. "Surf Girls", a collaboration of Roxy and MTV Networks, debuted on MTV in 2003 featuring Roxy''s team manager Danielle Beck as host and Roxy team rider Heidi Drazich as a cast member. The series was a hit, and helped to further popularize women''s surfing and Roxy''s part in the sport. The series also gave Roxy two new team riders: Kula Barbieto and Aimee Vogelgesang.</p>\r\n<p>Strong retail presence is key to a strong brand, and Roxy retail stores were the perfect opportunity to showcase the Roxy lifestyle. The first freestanding Roxy store was opened in Hawaii in 1997, and another store followed in 2000 in Southern California''s South Coast Plaza. The Roxy retail chain now features stores all over the world, offering a taste of the Roxy surf lifestyle to girls everywhere.</p>\r\n<p>Roxy is now a global lifestyle brand, offering products for every aspect of the active girl''s life. From handbag to Henley, wetsuit to tide watch, the key ingredient of our products is that inimitable Roxy spirit. "Daring, confident, naturally beautiful, fun, alive: Roxy".</p>', 'brand_d512ab816a524d8b60fce3085c66ab2b1652dfec.jpg'),
(6, 'Rope', '<p>Rope was officially founded in 1997 in a poor and isolated Belgrade. Dejan Simić and his friend started as a business project whose main customers were t-shirt hungry friends, with recognisable style and humor Rope managed to conquer complete Blegrade&acute;s skate scene. At one time, it even got its physical shape in form of &ldquo;Starchild&rdquo; skate shop. Unfortunately, that venture didn&acute;t last long, all inventory was sold out below price and the store was sold for no money.</p>\r\n<p>In the next years, Rope slowly but consistantly grew. Companies day to day operations moved from kids living room and very soon to the garage. Already a major part of skateboarders outfit, Rope began to show up on Serbian and Bosnian ski centers. Even some random people on tv started to wear Rope t-shirts.</p>\r\n<p>And then in the year of 2003, Vuka&scaron;in Čupić enteres the company and brings new energy. Thanks to his enthusiasm and strong connections with the world wakeboard scene, Rope Clothing, beside t-shirts and hoodies, starts with the production of wakeboard equipment &ndash; rush guards, wakeboards, some liquid that wakeboarders put on thir feet, even winter socks that you can wear during the summer because they don&acute;t stink if you dont wash them.</p>\r\n<p>With growth, Rope starts to give back to its roots sponsoring skaters, snowboarders and wakeboarders from Serbia, Croatia, Slovenia and Bulgaria. Today, Rope Snowboard team is the strongest team in ex-Yugoslavia and Rope Wakeboard team is regularly winning medals on world competitions. Beside individual support, Rope is associated with organisation and sponsorship of most competitions in this region.</p>\r\n<p>Alon manufacturing and sponsorint everything and everybody, year 2008 will be remembered as the year when Rope started distribution in European Union and produced the wakeboard movie with world&acute;s best wakeboarders, directed by Christian Gruner &ndash; the IMPACT.</p>\r\n<p>Today Rope is the largest wakeboard company ever in this part of the world.</p>', 'brand_8f0c232f665d8f96784805e47a61c7f8028eeaf7.jpg'),
(7, 'O''Neill', '<p><strong>O''Neill&reg;</strong>&nbsp;has been around for over half a century. Constantly raising the bar, O''Neill morphed from a small surf shop selling surfboards and custom made wetsuits to dominating the world''s surf industry. O''Neill continues to produce quality footwear,<a class="zph" href="http://www.zappos.com/bags">bags</a>, apparel, wetsuits, and<a class="zph" href="http://www.zappos.com/accessories">accessories</a>&nbsp;with the surf rider and beach enthusiast in mind.<br /><br />O''Neill has continued to expand their business by integrating beach culture and surf lifestyle. Signature footwear and&nbsp;<a class="zph" href="http://www.zappos.com/d/sandals">sandals</a>, to&nbsp;<a class="zph" href="http://www.zappos.com/d/shirts">shirts</a>,&nbsp;<a class="zph" href="http://www.zappos.com/hoodies-sweatshirts">hoodies</a>,&nbsp;<a class="zph" href="http://www.zappos.com/d/pants">pants</a>,<a class="zph" href="http://www.zappos.com/jeans">jeans</a>,&nbsp;<a class="zph" href="http://www.zappos.com/bags">bags</a>, you name it, for both men, women, and kids, continue to prove that O''Neill is on top. Backed by various professional surfers, watermen, and other athletes, O''Neill will continue to break tradition with technical features and ground-breaking designs through their footwear,&nbsp;<a class="zph" href="http://www.zappos.com/d/sandals">sandals</a>, apparel,&nbsp;<a class="zph" href="http://www.zappos.com/bags">bags</a>,<a class="zph" href="http://www.zappos.com/accessories">accessories</a>, and especially their wetsuits, rash guards, and&nbsp;<a class="zph" href="http://www.zappos.com/boardshorts">boardshorts</a>.<br /><br />O''Neill continues to mix up their entire apparel, footwear,&nbsp;<a class="zph" href="http://www.zappos.com/bags">bags</a>,&nbsp;<a class="zph" href="http://www.zappos.com/accessories">accessories</a>, wetsuits, rash guards, and&nbsp;<a class="zph" href="http://www.zappos.com/boardshorts">boardshorts</a>&nbsp;with style, music and the environment. With team rider feedback from Cory Lopez, Rochelle Ballard, Trent&nbsp;<a class="zph" href="http://www.zappos.com/munro">Munro</a>, Melanie Bartels and others, it''s no wonder why surfers and beach enthusiasts look to O''Neill for all of their needs. This fusion and dynamic forces influences the vision of all signature O''Neill products.</p>', 'brand_0c2d57573b9f732d5954ab1b65b33a2c79cc6444.jpg'),
(8, 'ES', '<p>&eacute;S Footwear officially launches to fill the need for a new type of skate shoe, a brand that pushes the limits of advanced footwear design and caters to the demands of the core, technical skateboarder.</p>\r\n<p>&eacute;S head Don Brown starts to work on building a team, as future members Eric Koston and Tom Penny rack up some serious magazine and video coverage. Although Koston continues to blaze a path into the limelight, Penny--at the height of his powers--notoriously disappears into the haze of the French countryside for a few years, which only serves to strengthen his legendary status.</p>', 'brand_f04ca94a47036666bdf859718172918f63387f16.jpg'),
(9, 'DC', '<p>Founded by Ken Block and Damon Way in 1993, DC quickly grew to become a leader in performance skateboarding shoes and a renowned action sports brand. Today DC stands as a global brand whose product line has expanded to include men&rsquo;s, women&rsquo;s and kids&rsquo; skateboarding and lifestyle shoes, apparel, snowboards, snowboard boots, outerwear, and accessories.</p>\r\n<p>As one of the cornerstones of its marketing strategy, DC has built a world-class team of professional skateboarding, snowboarding, surfing, BMX,motocross and rally athletes that exemplify and enhance DC&rsquo;s brand, develop its signature products, and support its promotional efforts. DC is a subsidiary of Quiksilver, Inc</p>', 'brand_272d89d85d0fc54e236a5436a523f6389d20772b.jpg'),
(10, 'GoPro', '<p>GoPro is the world''s leading activity image capture company.&nbsp;GoPro produces arguably the most versatile cameras in the world, the famous HD HERO&reg; line of wearable and gear-mountable cameras and accessories. GoPro&rsquo;s products are sold through leading specialty retailers in more than 50 countries.</p>\r\n<p>We dream. We have passionate ideas about what&rsquo;s possible in this world. Our passions lead us to create experiences and realities that expand our world and inspire those around us.</p>\r\n<p>GoPro helps people capture and share their lives&rsquo; most meaningful experiences with others&mdash;to celebrate them together. Like how a day on the mountain with friends is more meaningful than one spent alone, the sharing of our collective experiences makes our lives more fun.</p>\r\n<p>The world&rsquo;s most versatile cameras are what we make.</p>\r\n<p>Enabling you to share your life through incredible photos and video is what we do.</p>\r\n<p>This is your life...GoPro.</p>\r\n<p>&nbsp;</p>', 'brand_39e7ed4b34a375dd7a670f79bec2c859085642a6.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=58 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `session_id`, `quantity`, `product`) VALUES
(11, 'j7um6usc5b3ea4du147bhskip3', 3, 75),
(12, 'j7um6usc5b3ea4du147bhskip3', 3, 42),
(13, 'j7um6usc5b3ea4du147bhskip3', 2, 78),
(15, 'j7um6usc5b3ea4du147bhskip3', 2, 88),
(16, '1f77m8tbv2gg8osgart10cmgm3', 1, 34),
(17, 'qd27l6v4skbg4e07d8fp3iefc4', 4, 93),
(19, '5c64de9a359f48aaf03308b8acab4134', 1, 126),
(56, 'btul7bq0d6pjjicon4dt19qcb1', 2, 113),
(57, 'btul7bq0d6pjjicon4dt19qcb1', 1, 44);

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
  `active` tinyint(1) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CF73D3112469DE2` (`category_id`),
  KEY `IDX_1CF73D3144F5D008` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=128 ;

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
(86, 1, 2, 'Heritage II', '<p>* Genuine heavy-duty suede upper<br />* Asymmetric stabilizer for medial upper support<br />* Abrasion-resistant molded rubber toe piece for protection<br />* Light foam-padded tongue and collar for comfort and support<br />* Soft EVA insole with full length latex layer for impact cushioning<br />* Lightweight EVA midsole for additional comfort and impact cushioning<br />* Highly abrasion-resistant outsole for wear and durability</p>', 8690, 30, '40', 'product_9c79a328f5f53577245be49b30a9a261250c801d.jpg', 1, '001053', 'crna/ljubicasta'),
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
(102, 7, 3, 'Kais', '<p>Muski kais Emerica. Na poledjini cepa ima otvarac za pivo.</p>', 2290, 30, '-', 'product_089b72c64c8ba2879c9750070d3d9a2347fcd72f.jpg', 1, '002005', 'crna/braon'),
(106, 4, 6, 'Rope duks', '<p>Muski rope duks.</p>', 2750, 0, 'L', 'product_c13552048a0119545c7d6dcadfb5069d25f52fd9.jpg', 1, '003002', 'zelena'),
(107, 4, 6, 'Rope duks', '<p>Muski rope duks.</p>', 2750, 0, 'M', 'product_8aa128124c5cdb8ef0eeccf9184a3ac43f795588.jpg', 1, '003001', 'bela'),
(108, 3, 6, 'Rope majca', '<p>Rope muska majca. Sirina ramena 45cm duzina 65cm.</p>', 1390, 0, 'M', 'product_7b30a928ec251eb88c79bd0a4f78cdcb604d6962.jpg', 1, '004001', 'plava'),
(109, 3, 6, 'Rope majca', '<p>Rope zenska majica. Sirina ramena 38cm, duzina 63cm.</p>', 1390, 0, 'M', 'product_1a13a22995fddcf6d65b844abd23800a6a5a2bd2.jpg', 1, '004002', 'plava'),
(110, 3, 6, 'Rope majca', '<p>Rope zenska majica. Sirina ramena 38cm, duzina 63cm.</p>', 1390, 0, 'M', 'product_f6072482663140abe6ed929de41ae2683e402e43.jpg', 1, '004003', 'plava'),
(111, 3, 6, 'Rope majca', '<p>Rope zenska majica. Sirina ramena 40cm, duzina 65cm.</p>', 1390, 0, 'L', 'product_9c8e7d772de47e943f88311e9d666dc5769f885c.jpg', 1, '004004', 'plava'),
(112, 3, 6, 'Rope majca', '<p>Rope zenska majica. Sirina ramena 45cm, duzina 70cm.</p>', 1390, 0, 'XL', 'product_cadf829667483e1330197256236fe422f69ed1e7.jpg', 1, '004005', 'ljubicasta'),
(113, 3, 6, 'Rope majca', '<p>Rope zenska majica. Sirina ramena 38cm, duzina 63cm.</p>', 1390, 0, 'M', 'product_8ac29ddd2507d16d64e09b34c9bdb8d4dbe5da9a.jpg', 1, '004006', 'ljubicasta'),
(114, 3, 6, 'Rope majca', '<p>Rope zenska majica. Sirina ramena 40cm, duzina 65cm.</p>', 1390, 0, 'l', 'product_8225bae655a36c0d35f20b4e1758ea8d52e9d0ea.jpg', 1, '004007', 'crvena'),
(115, 3, 6, 'Rope majca', '<p>Rope muska majica. Sirina ramena 42cm, duzina 67cm.</p>', 1390, 0, 'S', 'product_2a1395661efdbd218d92961750f384d63ae8d86c.jpg', 1, '004008', 'crvena'),
(116, 3, 6, 'Rope majca', '<p>Rope muska majica. Sirina ramena 40cm, duzina 65cm.</p>', 1390, 0, 'S', 'product_15219fe5b137985f877beaefb951ef7722c6fce6.jpg', 1, '004009', 'crna'),
(117, 3, 6, 'Rope majca', '<p>Rope muska majica dugih rukava. Sirina ramena 45cm, duzina 67cm.</p>', 1790, 0, 'S', 'product_00841a9d4b7b9475ebf670219092cc44698d2492.jpg', 1, '004010', 'ljubicasta'),
(118, 3, 6, 'Rope majca', '<p>Rope muska majica. Sirina ramena 45cm, duzina 67cm.</p>', 1390, 0, 'M', 'product_387e2fe997c0bb13764f3d7d8668906a0cdb2e03.jpg', 1, '004011', 'crna'),
(119, 7, 6, 'Rope sorc', '<p>Muski Rope sorts. Obim pojasa 80cm duzina nogavica 57cm.</p>', 2000, 0, 'XS', 'product_a8eca3553764412dc440d57d9be0fd67a8f3acf6.jpg', 1, '002006', 'saarena'),
(120, 7, 4, 'Dakine pernica', '<p>Dakine torbica, dimenzija 23cm x 18cm x 9cm. Moze da bude i kao neseser ili fotrola za skolu.&nbsp;</p>', 890, 0, '23x18x9cm', 'product_2324dc7a2778b394ea81d964be21863f2fdaeaf0.jpg', 1, '002007', 'crna'),
(121, 5, 4, 'Dakine ranac', '<p>Dimenzije su 45x30x19cm, 26l.&nbsp;</p>', 4690, 20, '0', 'product_1940beeec0f43056859faab6dee169af70d012fb.jpg', 1, '005001', 'siva'),
(122, 5, 4, 'Dakine ranac', '<ul>\r\n<li>Ima pregradu za laptop</li>\r\n<li>zaseban dzep za nocare</li>\r\n<li>lep neseser koji ide uz njega</li>\r\n<li>Dimenzije 46x32x15cm, 23l.</li>\r\n</ul>', 4890, 20, '0', 'product_e48318c05d69a564395de4e1a6e0e8ea3277dd19.jpg', 1, '005002', 'saarena'),
(123, 5, 9, 'DC torba', '<p>Dimenzije 32cm x 44cm x 14cm.</p>', 6190, 20, '0', 'product_4894f6e260acf11c49ad6482955ef1bb4eb5e80f.jpg', 1, '005003', 'saarena'),
(124, 7, 6, 'Rope boxerice', '<p>Rope boxerice.</p>', 800, 0, '0', 'product_f227f558e38381a3a12998e4b5de52695f7116a6.jpg', 1, '002009', 'bela'),
(125, 7, 6, 'Rope boxerice', '<p>Rope boxerice.</p>', 800, 0, '0', 'product_0938f06400d91e6da89996f106649acf5c2738d4.jpg', 1, '002010', 'zuta'),
(126, 7, 10, 'Nosac za HD Hero za montazu na grudima', '<div class="row-fluid">Fully adjustable to fit all sizes, the Chesty makes it easy to capture immersive video and photos from, well&hellip; your chest. It''s perfect for skiing, mountain biking, motocross, paddle sports or any activity where you want to get a lower-than-the-helmet view of the action. You''ll capture more of your arms, knees, poles and skis while skiing&mdash;and more of your arms and handlebars while biking or riding your motorcycle. The Chesty delivers a more immersive view than filming from your helmet.<br />\r\n<ul class="large-top-margin">\r\n<li class="small-top-margin">Provides an ultra-immersive perspective</li>\r\n<li class="small-top-margin">Perfect for skiing, cycling, motocross or paddle sports</li>\r\n<li class="small-top-margin">Fully adjustable to fit all sizes</li>\r\n</ul>\r\n</div>', 4490, 20, '0', 'product_a217b1ed394098061d49f05a1b1b737c81d90b96.jpg', 1, '002011', 'crna'),
(127, 7, 10, 'Nosac za HD Hero za montazu na Bicikle i Motocikle', '<div class="row-fluid">\r\n<div class="span12 tablet-col12 mobile-col12">Attach your GoPro to handlebars, seatposts, ski poles, kitesurfing control bars or virtually any 0.43" - 0.7" (11mm &ndash;18mm) diameter tube. You can also clamp this mount to chainstays, small-diameter roll bars and bolt heads, or secure it to a length of pipe to create a handheld boom. The included 3-Way Pivot Arm makes aiming easy, so you can achieve the perfect angle for every shot.<br />\r\n<ul class="gray-font large-top-margin">\r\n<li class="small-top-margin"></li>\r\n<li class="small-top-margin">Fits 0.43" - 0.7" (11mm &ndash;18mm) diameter tubes with additional adaptor (included)</li>\r\n<li class="small-top-margin">Ideal for bicycle seatposts, handlebars, ski poles and more</li>\r\n<li class="small-top-margin">Can be used to create a handheld boom</li>\r\n<li class="small-top-margin">3-Way Pivot Arm allows for easy aiming</li>\r\n</ul>\r\n</div>\r\n</div>', 2790, 20, '0', 'product_7f31286d5b18dace0cd6efc6c337566300997538.jpg', 1, '002012', 'crna');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

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
(38, 'Ivan Maksimovic', 'Sremska 7', '2013-10-19 12:02:50', 20135, '0607384097', '36000', 'Kraljevo'),
(41, 'Danica Gilic', 'Sremska 7', '2013-10-20 20:25:51', 20135, '0607384097', '36000', 'Kraljevo'),
(43, 'Danica Gilic', 'Sremska 7', '2013-10-20 20:26:57', 20135, '0607384097', '36000', 'Kraljevo'),
(48, 'Danica Gilic', 'Sremska 7', '2013-10-20 20:50:25', 20135, '0607384097', '36000', 'Kraljevo'),
(49, 'Natalija Dursun', 'Cara Lazara 30/4', '2013-10-20 20:51:35', 20135, '0607384097', '36000', 'Kraljevo'),
(50, 'Ivan Maksimovic', 'Sremska 7', '2013-10-23 11:12:41', 20135, '0607384097', '36000', 'Kraljevo'),
(51, 'Milan Dugalic', 'Jarcujak bb', '2013-10-26 18:23:29', 20135, '02565656565', '36000', 'Kraljevo'),
(52, 'Ivan Maksimovic', 'Sremska 7', '2013-10-30 10:53:29', 20135, '0607384097', '36000', 'Kraljevo');

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
  KEY `IDX_8069335B4887F3F8` (`shipping_id`),
  KEY `IDX_8069335B4584665A` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=72 ;

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
(50, 36, 39, 6990, 1),
(51, 37, 82, 8190, 1),
(52, 38, 44, 10990, 1),
(59, 43, 75, 10890, 1),
(60, 43, 65, 8990, 1),
(65, 48, 99, 2890, 1),
(66, 49, 75, 10890, 1),
(67, 50, 34, 9990, 1),
(68, 51, 35, 9990, 1),
(69, 51, 37, 7990, 1),
(70, 52, 113, 1390, 2),
(71, 52, 44, 10990, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `shop_user`
--

INSERT INTO `shop_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `ime`, `prezime`) VALUES
(1, 'ivan', 'ivan', 'poslatiivanu@yahoo.com', 'poslatiivanu@yahoo.com', 1, 'ncfywl36tg08gowgkow4owgkss4go8c', '/jJbP7xiqMIseZg2umc1eDPs5wk4w6vPL5ThSktI+0rQ71eaePy28aXNGhUFY40I3rwBngLL5+eTKSKCkTdtOQ==', '2013-10-29 23:01:26', 0, 0, NULL, 'tstFff19ioTlvpuKCbV8bp_78cFObYBZIH9m1MMOsoc', '2013-10-24 14:24:57', 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'ivan', 'maksimovic'),
(2, 'kupac', 'kupac', 'kupac@kupac.com', 'kupac@kupac.com', 1, '3i7urrrhwgqo48o4gg4gssc4coswwkw', '79JMWbj+NFnSkPS7btl58LaQpDJK1nDU07W9yPvXjDkkIMBrFG2bJQhYi8IljH40+jJLLMDEwyFNwZA1cfqyXw==', '2013-08-11 00:22:13', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Danica', 'Gilic'),
(3, 'danica', 'danica', 'daca@daca.com', 'daca@daca.com', 1, '7pi09a5n7f4s8gk0koo80k8s0048kcc', 'wGYL6f0PMT3ZMms+I5VDXmt5iU3ta9y+A1Teh7alSP6oBJJu/LfmY6bu0XyV8o+ecHxkY5qrHrKzp6AQFEVVgg==', '2013-10-23 01:26:48', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Danica', 'Gilic'),
(4, 'pero', 'pero', 'pero@pero.com', 'pero@pero.com', 1, '64yljui4y1s0cckkg404s4kg04o044o', 'xNUjBpSwPIaQMdT5+S4bb9dI3kLjhU3GaZecNiZG3CqnRwGhh9psY4zQAkI1wZ0zHfLPG0dn9cRMur1YNyv5MA==', '2013-10-24 14:25:55', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'pero', 'pero');

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
