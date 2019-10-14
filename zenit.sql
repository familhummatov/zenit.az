-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Eki 2019, 12:06:32
-- Sunucu sürümü: 10.1.39-MariaDB
-- PHP Sürümü: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `zenit`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `privilage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `privilage`) VALUES
(1, 'JafarJabbarli', '123321abcA', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` tinyint(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Otbichenler'),
(2, 'Motopila'),
(3, 'ElektrikAletleri'),
(4, 'EhtiyyatHisseleri'),
(5, 'Dermansepen'),
(6, 'Diger');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contactclients`
--

CREATE TABLE `contactclients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `contactclients`
--

INSERT INTO `contactclients` (`id`, `name`, `surname`, `email`, `phoneNumber`, `message`) VALUES
(38, 'CÉ™fÉ™r ', 'CabbarlÄ±', 'nicatt977@gmail.com', '+9945068526775', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n'),
(39, 'CÉ™fÉ™r ', 'CabbarlÄ±', 'nicatt977@gmail.com', '+9945068526775', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n'),
(40, 'CÉ™fÉ™r ', 'CabbarlÄ±', 'nicatt977@gmail.com', '+9945068526775', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n'),
(41, 'CÉ™fÉ™r ', 'CabbarlÄ±', 'nicatt977@gmail.com', '+9945068526775', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n'),
(42, 'CÉ™fÉ™r ', 'CabbarlÄ±', 'nicatt977@gmail.com', '+9945068526775', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n'),
(43, '', '', '', '+994', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `img_path` varchar(500) DEFAULT 'img/products/jilkaBarabanlar.jpeg',
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `img_path`, `product_id`) VALUES
(45, 'img/products/drel 560 zenit.jpeg', 28),
(46, 'img/products/drel 730 zenit.jpeg', 29),
(47, 'img/products/drel 650 zenit.jpeg', 53),
(48, 'img/products/motopila hunday.jpeg', 45),
(49, 'img/products/qazon gardena.jpeg', 22),
(50, 'img/products/drel 550zenit.jpeg', 36),
(51, 'img/products/motopila rezer.jpeg', 2),
(52, 'img/products/dsp Benzin 767.jpeg', 55),
(53, 'img/products/frez almaz 1900.jpeg', 27),
(55, 'img/products/laqonda 1450 zenit.jpeg', 35),
(56, 'img/products/laqonda 2600 zenit.jpeg', 59),
(57, 'img/products/mismarvuran f30 hava.jpeg', 68),
(58, 'img/products/mismarvuran tok F30.jpeg', 67),
(59, 'img/products/motopila ijevsk.jpeg', 69),
(60, 'img/products/motopila rezer.jpeg', 25),
(61, 'img/products/motopila uralmash.jpeg', 45),
(62, 'img/products/otb karpat.jpeg', 2),
(63, 'img/products/otb zenit.jpeg', 1),
(64, 'img/products/otb uralmash.jpeg', 24),
(65, 'img/products/dsp Benzin 767.jpeg', 31),
(66, 'img/products/motopila zenit.jpeg', 49),
(67, 'img/products/jilkaBarabanlar.jpeg', 70),
(68, 'img/products/frez almaz 1900.jpeg', 62),
(69, 'img/products/svarka zenit 200dp.jpeg', 64),
(70, 'img/products/svarka 250dp zenit.jpeg', 65),
(72, 'img/products/qazon viking.jpeg', 23),
(73, 'img/products/motopila uralmash.jpeg', 50),
(74, 'img/products/otb powertech.jpeg', 57),
(75, 'img/products/jilkaBarabanlar.jpeg', 63),
(76, 'img/products/jilkaBarabanlar.jpeg', 60),
(77, 'img/products/jilkaBarabanlar.jpeg', 26),
(78, 'img/products/laqonda 1450 zenit .jpeg', 59),
(79, 'img/products/motopila rezer.jpeg', 58),
(80, 'img/products/jilkaBarabanlar.jpeg', 56),
(81, 'img/products/dsp Benzin 767.jpeg', 54),
(82, 'img/products/drel 730 zenit.jpeg', 52),
(83, 'img/products/diskler.jpeg', 51),
(84, 'img/products/jilkaBarabanlar.jpeg', 69),
(85, 'img/products/motopila rezer.jpeg', 69),
(86, 'img/products/jilkaBarabanlar.jpeg', 61);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `page_settings`
--

CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL,
  `logo_path` varchar(100) NOT NULL,
  `phone_number_1` varchar(50) NOT NULL,
  `phone_number_2` varchar(50) NOT NULL,
  `social_fb` varchar(100) NOT NULL,
  `social_inst` varchar(100) NOT NULL,
  `social_ytb` varchar(100) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `page_settings`
--

INSERT INTO `page_settings` (`id`, `logo_path`, `phone_number_1`, `phone_number_2`, `social_fb`, `social_inst`, `social_ytb`, `e_mail`, `address`, `info`, `title`) VALUES
(1, 'img/download.png', '+994 50 366-92-58', '+994 50 548 38 00', 'https://www.facebook.com/', 'https://www.instagram.com/ss', 'https://www.youtube.com/', 'contact@zenit.az', 'Sədərək Ticarət Mərkəzi,<br>\r\nTəsərrüfat bazarı,<br> \r\nSıra 4, Mağaza 65-67\r\n', '\r\nZenit mağazalar şəbəkəsi elektronik alətlərin, benzinlə işləyən otbiçənlər,ağackəsənlər(motopilalar), elektriklə işləyən drel,laqonda,\r\nprefarator,\r\notbiçən,qazonbiçən,\r\nağackəsən(motopila),\r\nhava(kompressor) ilə işləyən mismarvuran, skopvuran tapançaların, boyapüsgürdən(privizator) və əl ilə işləyən (mexaniki) dərmansəpənlərin topdan və pərakəndə satışını təşkil edir.', 'Zenit Shops');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pivot_cat_subcat`
--

CREATE TABLE `pivot_cat_subcat` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(4) DEFAULT NULL,
  `subCategory_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pivot_cat_subcat`
--

INSERT INTO `pivot_cat_subcat` (`id`, `category_id`, `subCategory_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 4),
(6, 3, 5),
(7, 3, 6),
(8, 4, 4),
(9, 4, 3),
(10, 4, 8),
(11, 5, 3),
(12, 3, 7),
(13, 3, 6),
(14, 6, 4),
(15, 6, 5),
(16, 6, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pivot_img_product`
--

CREATE TABLE `pivot_img_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `info` text,
  `price` varchar(30) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL,
  `subCategory_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `info`, `price`, `category_id`, `subCategory_id`) VALUES
(1, 'Zenit ze-4300344', 'Trimmer Head Type Bump Feed\r\nLine Diameter 0.095 Inches\r\nMax Cutting Diameter 17 Inches\r\nTool-Less Line Replacement Yes\r\nNumber of Cutting Edges 2 Strings\r\nShaft Shape Straight\r\nAttachment Capable No\r\nSwivel Cutting Head No', '1256 AZN', 1, 6),
(2, 'karpat nk-5200', 'Trimmer Head Type Bump Feed\r\nLine Diameter 0.095 Inches\r\nMax Cutting Diameter 17 Inches\r\nTool-Less Line Replacement Yes\r\nNumber of Cutting Edges 2 Strings\r\nShaft Shape Straight\r\nAttachment Capable No\r\nSwivel Cutting Head No', '148 AZN', 3, 3),
(22, 'Gardena T2100', 'Engine Brand Briggs & Stratton\r\nStarting System Recoil Start\r\nCC 163 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.4 Gallons\r\nEngine Cylinders 1 Cylinder\r\nOil Filter No\r\nTorque 7.25 Lbs\r\nConsumer Engine Warranty 2 Years', '250 AZN', 1, 8),
(23, 'Viking v5300', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '560 AZN', 1, 2),
(24, 'Uralmash UM4300', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '145 AZN', 2, 3),
(25, 'Zenit ZE-5800', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '160 AZN', 2, 3),
(26, 'Royce RY23009859651491', 'With a 28-volt motor and V28 Lithium-ion battery, the 0725-21 delivers the speed (8,000 RPM) and power needed for fast grinding and cutting applications with longer run time. The overload protection and soft start features extend tool life for extreme durability, and at only 6.8 pounds, the 0725-20 provides a compact, lightweight solution without surrendering features or durability. A large spindle lock provides quick wheel replacement and a five-position tool-free guard aids in easy guard adjustment. A slide-on switch and an ergonomic side handle provide more control, and reducing user fatigue. A built-in fuel gauge indicates remaining run time to eliminate having to guess how much charge is left in the battery. Comes With Standard Equipment: V28 Li-Ion Battery Pack (48-11-2830), V18-V28 Li-Ion Charger (48-59-2901), Contractor Bag (48-55-3490), Spanner Wrench (49-96-7205), 4-/12\" X.045\"X7/8\" Type 1 Metal Cut-off Wheel (49-94-4500), 4-1/2\" X ¼\"X7/8\" Type 27 Metal Grinding Wheel (49-94-4520)', '110 AZN', 4, 4),
(27, 'Kzubr', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '117 AZN', 2, 4),
(28, 'Zenit ZD730', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '45 AZN', 3, 4),
(29, 'Makute DZ-24V', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '120 AZN', 3, 6),
(30, 'Karpat 12L Sade', 'High-Performance Motor produces 8,500 rpm\r\nCast metal gear housing\r\nSpindle lock for quick and easy wheel changes\r\n3-Position Side Handle\r\nPart of the 20V Max System', '20 AZN', 5, 7),
(31, 'Karpat ZDSP16L', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '75 AZN', 5, 6),
(32, 'Yerdesehen 43WT', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '150 AZN', 6, 3),
(33, 'Mower ', NULL, '150 AZN', 1, 2),
(34, 'Zid ZD5200', 'Chain & Bar Included Yes\r\nChain Pitch 3/8 \"\r\nChain Gauge .043 \"\r\nBar Length 10 Inches\r\nBar Oiler Automatic/Fixed\r\nTool-less Chain Tensioning Yes\r\nMax Bar Length 10 Inches\r\nMin Bar Length 10 Inches\r\nDrive Links 40\r\nLow Kickback Yes', '135 AZN', 2, 3),
(35, 'Zenit USM1450', 'Backing pad thread	 	M14\r\nTurning guard	 	√\r\nSide handle	 	√\r\nWeight	Kg	4,200\r\nR.P.M.	 	8000\r\nPower	W/hp	2000\r\nØ disc	mm	178', '45 AZN', 3, 4),
(36, 'Karpat KD530', 'With a 28-volt motor and V28 Lithium-ion battery, the 0725-21 delivers the speed (8,000 RPM) and power needed for fast grinding and cutting applications with longer run time. The overload protection and soft start features extend tool life for extreme durability, and at only 6.8 pounds, the 0725-20 provides a compact, lightweight solution without surrendering features or durability. A large spindle lock provides quick wheel replacement and a five-position tool-free guard aids in easy guard adjustment. A slide-on switch and an ergonomic side handle provide more control, and reducing user fatigue. A built-in fuel gauge indicates remaining run time to eliminate having to guess how much charge is left in the battery. Comes With Standard Equipment: V28 Li-Ion Battery Pack (48-11-2830), V18-V28 Li-Ion Charger (48-59-2901), Contractor Bag (48-55-3490), Spanner Wrench (49-96-7205), 4-/12\" X.045\"X7/8\" Type 1 Metal Cut-off Wheel (49-94-4500), 4-1/2\" X ¼\"X7/8\" Type 27 Metal Grinding Wheel (49-94-4520)', '20 AZN', 3, 4),
(42, 'Zenit ze-4300', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '156 AZN', 1, 1),
(43, 'karpat nk-5200', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '148 AZN', 1, 1),
(44, 'Zid Zk-4300', 'Engine Brand Briggs & Stratton\r\nStarting System Recoil Start\r\nCC 163 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.4 Gallons\r\nEngine Cylinders 1 Cylinder\r\nOil Filter No\r\nTorque 7.25 Lbs\r\nConsumer Engine Warranty 2 Years', '138 AZN', 1, 1),
(45, 'Euromash EU-5800', 'Engine Brand Honda GX\r\nStarting System Recoil Start\r\nCC 35.8 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.17 Gallons', '125 AZN', 2, 1),
(46, 'Gardena T2100', 'Engine Brand Briggs & Stratton\r\nStarting System Recoil Start\r\nCC 163 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.4 Gallons\r\nEngine Cylinders 1 Cylinder\r\nOil Filter No\r\nTorque 7.25 Lbs\r\nConsumer Engine Warranty 2 Years', '250 AZN', 1, 2),
(47, 'Viking v5300', 'Engine Brand Briggs & Stratton\r\nStarting System Recoil Start\r\nCC 163 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.4 Gallons\r\nEngine Cylinders 1 Cylinder\r\nOil Filter No\r\nTorque 7.25 Lbs\r\nConsumer Engine Warranty 2 Years', '560 AZN', 1, 2),
(48, 'Uralmash UM4300', 'With a 28-volt motor and V28 Lithium-ion battery, the 0725-21 delivers the speed (8,000 RPM) and power needed for fast grinding and cutting applications with longer run time. The overload protection and soft start features extend tool life for extreme durability, and at only 6.8 pounds, the 0725-20 provides a compact, lightweight solution without surrendering features or durability. A large spindle lock provides quick wheel replacement and a five-position tool-free guard aids in easy guard adjustment. A slide-on switch and an ergonomic side handle provide more control, and reducing user fatigue. A built-in fuel gauge indicates remaining run time to eliminate having to guess how much charge is left in the battery. Comes With Standard Equipment: V28 Li-Ion Battery Pack (48-11-2830), V18-V28 Li-Ion Charger (48-59-2901), Contractor Bag (48-55-3490), Spanner Wrench (49-96-7205), 4-/12\" X.045\"X7/8\" Type 1 Metal Cut-off Wheel (49-94-4500), 4-1/2\" X ¼\"X7/8\" Type 27 Metal Grinding Wheel (49-94-4520)', '145 AZN', 2, 3),
(49, 'Zenit ZE-5800', 'Chain & Bar Included Yes\r\nChain Pitch 3/8 \"\r\nChain Gauge .043 \"\r\nBar Length 10 Inches\r\nBar Oiler Automatic/Fixed\r\nTool-less Chain Tensioning Yes\r\nMax Bar Length 10 Inches\r\nMin Bar Length 10 Inches\r\nDrive Links 40\r\nLow Kickback Yes', '160 AZN', 2, 3),
(50, 'Royce RY2300', 'High-Performance Motor produces 8,500 rpm\r\nCast metal gear housing\r\nSpindle lock for quick and easy wheel changes\r\n3-Position Side Handle\r\nPart of the 20V Max System', '110 AZN', 2, 4),
(51, 'Kzubr', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '117 AZN', 2, 4),
(52, 'Zenit ZD730', 'Backing pad thread	 	M14\r\nTurning guard	 	√\r\nSide handle	 	√\r\nWeight	Kg	4,200\r\nR.P.M.	 	8000\r\nPower	W/hp	2000\r\nØ disc	mm	178', '45 AZN', 3, 4),
(53, 'Makute DZ-24V', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '120 AZN', 3, 6),
(54, 'Karpat 12L Sade', 'Tutumu : 12L', '20 AZN', 5, 7),
(55, 'Karpat ZDSP16L', '\r\nBattery type\r\nLi-Ion\r\nBattery voltage\r\n14.4 V\r\nCutting width\r\n22.3 cm\r\n', '75 AZN', 5, 6),
(56, 'Yerdesehen 43WT', 'High-Performance Motor produces 8,500 rpm\r\nCast metal gear housing\r\nSpindle lock for quick and easy wheel changes\r\n3-Position Side Handle\r\nPart of the 20V Max System', '150 AZN', 6, 3),
(57, 'Mower ', 'Engine Brand Briggs & Stratton\r\nStarting System Recoil Start\r\nCC 163 CCs\r\nEngine Cycle 4-Cycle\r\nFuel Tank Size 0.4 Gallons\r\nEngine Cylinders 1 Cylinder\r\nOil Filter No\r\nTorque 7.25 Lbs\r\nConsumer Engine Warranty 2 Years', '150 AZN', 1, 4),
(58, 'Zid ZD5200', '18V LXT Brushless 4-1/2\" / 5\" Cut-Off/Angle Grinder (XAG04Z)\r\n(2) 18V LXT Lithium-Ion 5.0Ah Battery (BL1850B)\r\n18V LXT Lithium-Ion Rapid Optimum Charger (DC18RC)\r\n5\" X 1/4\" X 7/8\" Inox Grinding Wheel, 36 Grit (A-95962)\r\n5\" Ultra Thin Cut-Off Wheel, Stainless (B-46165)\r\n5\" Cut-Off Wheel Guard (126686-3)\r\n5\" Tool-Less Wheel Guard (126687-1)\r\nSide Handle\r\nTool Bag', '135 AZN', 2, 3),
(59, 'Zenit USM1450', 'DEWALT Brushless motor: delivers up to 57% more run time over brushed\r\nNo load speed: max 9, 000 RPMs\r\nSame runtime and power in a lighter, shorter Package compared to DCB200\r\nNo memory and virtually no self-discharge for maximum productivity and less Downtime', '45 AZN', 3, 4),
(60, 'Karpat KD530', 'Part Number	0725-21\r\nItem Weight	13.5 pounds\r\nPackage Dimensions	21.5 x 10.2 x 7 inches\r\nCalifornia residents	Click here for Proposition 65 warning\r\nItem model number	0725-21\r\nSize	full size\r\nColor	Red\r\nMaterial	N/A\r\nPower Source	electric-powered\r\nVoltage	28 volts\r\nItem Package Quantity	1\r\nNumber of Handles	1\r\nHandle Material	Plastic\r\nSpecial Features	compact\r\nUsage	General Purpose\r\nIncluded Components	battery\r\nBatteries Included?	Yes\r\nBatteries Required?	Yes\r\nBattery Cell Type	Lithium Ion\r\nWarranty Description	5 Years', '20 AZN', 3, 4),
(61, ' Makute Laqonda ', '18V LXT Brushless 4-1/2\" / 5\" Cut-Off/Angle Grinder (XAG04Z)\r\n(2) 18V LXT Lithium-Ion 5.0Ah Battery (BL1850B)\r\n18V LXT Lithium-Ion Rapid Optimum Charger (DC18RC)\r\n5\" X 1/4\" X 7/8\" Inox Grinding Wheel, 36 Grit (A-95962)\r\n5\" Ultra Thin Cut-Off Wheel, Stainless (B-46165)\r\n5\" Cut-Off Wheel Guard (126686-3)\r\n5\" Tool-Less Wheel Guard (126687-1)\r\nSide Handle\r\nTool Bag', '65 AZN', 3, 4),
(62, 'Makute Frez', '18V LXT Brushless 4-1/2\" / 5\" Cut-Off/Angle Grinder (XAG04Z)\r\n(2) 18V LXT Lithium-Ion 5.0Ah Battery (BL1850B)\r\n18V LXT Lithium-Ion Rapid Optimum Charger (DC18RC)\r\n5\" X 1/4\" X 7/8\" Inox Grinding Wheel, 36 Grit (A-95962)\r\n5\" Ultra Thin Cut-Off Wheel, Stainless (B-46165)\r\n5\" Cut-Off Wheel Guard (126686-3)\r\n5\" Tool-Less Wheel Guard (126687-1)\r\nSide Handle\r\nTool Bag', '55 AZN', 3, 4),
(63, 'Makute Fen', '18V LXT Brushless 4-1/2\" / 5\" Cut-Off/Angle Grinder (XAG04Z)\r\n(2) 18V LXT Lithium-Ion 5.0Ah Battery (BL1850B)\r\n18V LXT Lithium-Ion Rapid Optimum Charger (DC18RC)\r\n5\" X 1/4\" X 7/8\" Inox Grinding Wheel, 36 Grit (A-95962)\r\n5\" Ultra Thin Cut-Off Wheel, Stainless (B-46165)\r\n5\" Cut-Off Wheel Guard (126686-3)\r\n5\" Tool-Less Wheel Guard (126687-1)\r\nSide Handle\r\nTool Bag', '20 AZN', 3, 4),
(64, 'Makute Svarka 200DP', 'The PORTER CABLE PCC761B 20v MAX Lithium Bare Cut Off/Grinder features a high-performance motor that produces 8,500 rpm for aggressive cutting, removal and finishing. The cast metal gear housing helps disapait heat during extended use and a spindle lock that allows for quick and easy wheel changes. Wheel diameter: 4-1/2\". The handle is contoured and overmolded for optimal increased comfort, along with a 3-position side handle that helps to provide control in multiple positions. A tool free guard makes guard adjustments quick and easy. This tool is part of the 20V Max System - a high performance cordless platform. (This is a bare tool item - battery sold separately).', '150 AZN', 3, 4),
(65, 'Makute Svarka 250DP', 'With a 28-volt motor and V28 Lithium-ion battery, the 0725-21 delivers the speed (8,000 RPM) and power needed for fast grinding and cutting applications with longer run time. The overload protection and soft start features extend tool life for extreme durability, and at only 6.8 pounds, the 0725-20 provides a compact, lightweight solution without surrendering features or durability. A large spindle lock provides quick wheel replacement and a five-position tool-free guard aids in easy guard adjustment. A slide-on switch and an ergonomic side handle provide more control, and reducing user fatigue. A built-in fuel gauge indicates remaining run time to eliminate having to guess how much charge is left in the battery. Comes With Standard Equipment: V28 Li-Ion Battery Pack (48-11-2830), V18-V28 Li-Ion Charger (48-59-2901), Contractor Bag (48-55-3490), Spanner Wrench (49-96-7205), 4-/12\" X.045\"X7/8\" Type 1 Metal Cut-off Wheel (49-94-4500), 4-1/2\" X ¼\"X7/8\" Type 27 Metal Grinding Wheel (49-94-4520)', '170 AZN', 3, 4),
(67, 'TOK Skopvuran 10-22 ', 'Part Number	0725-21\r\nItem Weight	13.5 pounds\r\nPackage Dimensions	21.5 x 10.2 x 7 inches\r\nCalifornia residents	Click here for Proposition 65 warning\r\nItem model number	0725-21\r\nSize	full size\r\nColor	Red\r\nMaterial	N/A\r\nPower Source	electric-powered\r\nVoltage	28 volts\r\nItem Package Quantity	1\r\nNumber of Handles	1\r\nHandle Material	Plastic\r\nSpecial Features	compact\r\nUsage	General Purpose\r\nIncluded Components	battery\r\nBatteries Included?	Yes\r\nBatteries Required?	Yes\r\nBattery Cell Type	Lithium Ion\r\nWarranty Description	5 Years', '45 AZN', 3, 5),
(68, 'TOK Mismarvuran F30', 'Part Number	0725-21\r\nItem Weight	13.5 pounds\r\nPackage Dimensions	21.5 x 10.2 x 7 inches\r\nCalifornia residents	Click here for Proposition 65 warning\r\nItem model number	0725-21\r\nSize	full size\r\nColor	Red\r\nMaterial	N/A\r\nPower Source	electric-powered\r\nVoltage	28 volts\r\nItem Package Quantity	1\r\nNumber of Handles	1\r\nHandle Material	Plastic\r\nSpecial Features	compact\r\nUsage	General Purpose\r\nIncluded Components	battery\r\nBatteries Included?	Yes\r\nBatteries Required?	Yes\r\nBattery Cell Type	Lithium Ion\r\nWarranty Description	5 Years', '35 AZN', 3, 5),
(69, 'Motopila Makute', 'Chain & Bar Included Yes\r\nChain Pitch 3/8 \"\r\nChain Gauge .043 \"\r\nBar Length 10 Inches\r\nBar Oiler Automatic/Fixed\r\nTool-less Chain Tensioning Yes\r\nMax Bar Length 10 Inches\r\nMin Bar Length 10 Inches\r\nDrive Links 40\r\nLow Kickback Yes', '95 AZN', 2, 3),
(70, 'Sep Zenit 325/38T', 'High-Performance Motor produces 8,500 rpm\r\nCast metal gear housing\r\nSpindle lock for quick and easy wheel changes\r\n3-Position Side Handle\r\nPart of the 20V Max System', '10 AZN', 4, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shop_settings`
--

CREATE TABLE `shop_settings` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(100) DEFAULT 'Zenit',
  `shop_info` text,
  `shop_address` text,
  `shop_image` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) NOT NULL DEFAULT 'contact@zenit.az',
  `shop_pn_1` varchar(20) NOT NULL DEFAULT '+994 50 366 92 58',
  `shop_pn_2` varchar(20) NOT NULL DEFAULT '+994 50 548 38 00',
  `fb` varchar(50) NOT NULL,
  `inst` varchar(50) NOT NULL,
  `diger` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `shop_settings`
--

INSERT INTO `shop_settings` (`id`, `shop_name`, `shop_info`, `shop_address`, `shop_image`, `e_mail`, `shop_pn_1`, `shop_pn_2`, `fb`, `inst`, `diger`) VALUES
(2, 'Makute', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem \r\n', NULL, 'loremipsum@zenit.az', '+1232456', '+9878546', 'lorem ipsum', 'Lorem ipsum', 'lorem ipsum'),
(3, 'Makute', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', ' Aldus PageMaker including versions of Lorem Ipsum.\r\n', NULL, 'cefer_cabbarli@mail.ru', '+3214566', '+5254556', 'fb', 'sdsds', 'ss'),
(5, 'Karpat', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', 'Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, 'cefer_cabbarli@mail.ru', '+3214566', '+5254556', 'fb', 'bf', 'ss'),
(6, 'Zenit', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of \r\n\r\n', 'Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, 'memocbbrl368@gmail.com', '+994 50 68267 75', '+994 50 548 38 00', 'contact@zenit.az', 'bfbf', 'fbfb');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sub_category`
--

CREATE TABLE `sub_category` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`) VALUES
(1, 'ChiyindenAsilan'),
(2, 'Qazonbichen'),
(3, 'Benzin'),
(4, 'Elektrik'),
(5, 'Hava'),
(6, 'Batareya'),
(7, 'Mexaniki'),
(8, 'Diger');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contactclients`
--
ALTER TABLE `contactclients`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Tablo için indeksler `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pivot_cat_subcat`
--
ALTER TABLE `pivot_cat_subcat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`category_id`),
  ADD KEY `subCat_id` (`subCategory_id`);

--
-- Tablo için indeksler `pivot_img_product`
--
ALTER TABLE `pivot_img_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prdct_id` (`product_id`),
  ADD KEY `img_id` (`img_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `subCtg_id` (`subCategory_id`);

--
-- Tablo için indeksler `shop_settings`
--
ALTER TABLE `shop_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `contactclients`
--
ALTER TABLE `contactclients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Tablo için AUTO_INCREMENT değeri `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `pivot_cat_subcat`
--
ALTER TABLE `pivot_cat_subcat`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `pivot_img_product`
--
ALTER TABLE `pivot_img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Tablo için AUTO_INCREMENT değeri `shop_settings`
--
ALTER TABLE `shop_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `imgProduct` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `pivot_cat_subcat`
--
ALTER TABLE `pivot_cat_subcat`
  ADD CONSTRAINT `pivot_cat_subcat_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pivot_cat_subcat_ibfk_2` FOREIGN KEY (`subCategory_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `pivot_img_product`
--
ALTER TABLE `pivot_img_product`
  ADD CONSTRAINT `pivot_img_product_ibfk_1` FOREIGN KEY (`img_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pivot_img_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subCategory_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
