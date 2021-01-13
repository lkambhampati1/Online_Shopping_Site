-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2019 at 05:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--
CREATE DATABASE IF NOT EXISTS `db_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_project`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `prodid` varchar(12) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `prodid`, `userid`) VALUES
(1, 'B01M35CWVI', 103),
(1, 'B06XVNS9YX', 104);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `logo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `logo`) VALUES
(1, 'Mobiles', 'mobile.jp2'),
(2, 'Laptops', 'laptop.jpg'),
(3, 'TV\'s', 'tv.jpg'),
(4, 'Women\'s wear', 'women.jpg'),
(5, 'Men\'s wear', 'mens.png'),
(6, 'Kid\'s wear', 'kids.png'),
(7, 'Furniture', 'furniture.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit` (
  `credit_id` varchar(5) NOT NULL,
  `credit_num` varchar(20) NOT NULL,
  `name_on_card` varchar(30) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(3) NOT NULL,
  `zip` varchar(15) NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`credit_id`, `credit_num`, `name_on_card`, `exp_month`, `exp_year`, `cvv`, `addr`, `city`, `state`, `zip`, `phone`) VALUES
('c100', '2245 3190 7263 4061', 'Lars Jessica', 6, 2022, 890, '7330 Green Dale', ' Perry Addition', ' MD', ' 21602-3661', ' (301) 395-5803'),
('c68', '2256 1276 0187 0189', 'Mercedes Fleur', 4, 2022, 233, '7436 Iron Thicket', ' Eno', ' NE', ' 68922-8304', ' (308) 458-7524'),
('c90', '2362 1333 3991 9810', 'Blossom Quail', 10, 2026, 162, '1767 Cinder Barn Key', ' Picketts Creek', ' WY', ' 83064-4331', ' (307) 082-4917'),
('c56', '2402 3715 9845 8508', 'Jayme Martha', 6, 2023, 930, '8046 Clear Round', ' Printer', ' VA', ' 22552-6575', ' (276) 738-2635'),
('c49', '2424 4488 9833 8798', 'McKenzie Martena', 6, 2026, 405, '8561 Tawny Butterfly Alley', ' Blanton', ' UT', ' 84851-5839', ' (385) 601-4478'),
('c46', '2437 6799 8685 9148', 'Brianna MacKensie', 6, 2025, 666, '2274 Jagged Embers Trail', ' Little Falls', ' NH', ' 03776-3453', ' (603) 493-4915'),
('c21', '2451 8888 3514 8972', 'Courtney Nita', 1, 2023, 810, '9681 Dusty Village', ' Cienega', ' NV', ' 89690-9080', ' (775) 389-0459'),
('c74', '2472 2169 6398 7356', 'Wesley Kerry', 8, 2028, 107, '3893 Honey Forest Towers', ' Runa', ' TN', ' 38245-4533', ' (931) 721-0041'),
('c24', '2477 5516 1520 8511', 'Duncan Bryar', 10, 2028, 493, '790 Grand Timber Trace', ' Dawson', ' SC', ' 29264-8419', ' (864) 012-8827'),
('c3', '2485 4190 8559 3509', 'Mollie Calista', 1, 2026, 102, '368 Stony Hill', ' Winnett', ' GA', ' 39902-4267', ' (912) 476-9484'),
('c9', '2532 8217 1442 7814', 'Dorothy Kathleen', 10, 2024, 302, '5398 High Gate Place', ' Maywood', ' SD', ' 57066-4329', ' (605) 819-9399'),
('c6', '2667 0378 1196 0550', 'Dai Basia', 9, 2028, 721, '3564 Clear Carrefour', ' Blackwell', ' MI', ' 48931-4157', ' (616) 198-0774'),
('c60', '3045 9057 0670 9566', 'Slade Olivia', 3, 2022, 570, '4232 Little Gate Knoll', ' Pinnacles', ' AZ', ' 85709-4819', ' (520) 494-0187'),
('c47', '3052 4216 1720 1412', 'Caleb Linda', 10, 2025, 906, '6353 Broad Front', ' Mannington Mills', ' NC', ' 27649-9264', ' (910) 609-8974'),
('c96', '3098 3298 2025 4258', 'Elijah Lenore', 12, 2026, 694, '7930 Pleasant Townline', ' Mossy Grove', ' TX', ' 78075-0798', ' (512) 657-3317'),
('c23', '3405 101095 15061', 'Barrett Mia', 10, 2028, 2662, '23 Lost Prairie Key', ' Swanwick', ' OR', ' 97663-1093', ' (971) 794-4158'),
('c80', '3412 433073 16046', 'Keaton Inez', 5, 2026, 9324, '244 Red Island Farms', ' Knights Corner', ' WY', ' 82006-0594', ' (307) 142-7398'),
('c10', '3496 324683 66687', 'Faith Lisandra', 4, 2026, 3026, '5138 Emerald Beacon Glade', ' Thornton', ' OK', ' 73538-1845', ' (580) 109-4178'),
('c41', '3529 8586 4017 7314', 'Kitra Orli', 2, 2026, 279, '2091 Honey Grounds', ' Riverton', ' VA', ' 23714-7472', ' (703) 056-4823'),
('c11', '3549 6620 6599 1985', 'Sybil MacKensie', 4, 2022, 923, '3743 Merry Barn Wynd', ' Ixonia', ' GA', ' 39930-1805', ' (229) 936-4702'),
('c94', '3561 5554 6391 5585', 'Cecilia Nadine', 1, 2022, 126, '8433 Shady Path', ' Perrytown', ' MN', ' 56265-0576', ' (651) 313-1264'),
('c83', '3563 7777 2338 5700', 'Gannon Priscilla', 4, 2023, 752, '7147 Amber Zephyr Isle', ' Palm Grove', ' NY', ' 13910-0113', ' (631) 307-5241'),
('c43', '3568 3731 4838 7631', 'Kevin Shelly', 4, 2027, 342, '2454 Lazy Field', ' Stockbridge', ' UT', ' 84403-0550', ' (385) 432-3201'),
('c20', '3574 5700 1263 5167', 'Abdul Anika', 2, 2026, 353, '1536 Burning Limits', ' Pastolik', ' AZ', ' 86639-0626', ' (520) 109-7065'),
('c64', '3574 6406 4478 2933', 'Amanda Giselle', 12, 2025, 273, '1919 Cotton Pioneer Village', ' Toxaway', ' UT', ' 84952-5282', ' (801) 219-5014'),
('c16', '3575 6963 8664 8780', 'Nero Adrienne', 11, 2028, 808, '9037 Fallen Ledge', ' Walnut', ' ND', ' 58221-3945', ' (701) 442-2578'),
('c33', '3578 2432 3401 0165', 'Shelley Shoshana', 9, 2021, 541, '8527 Gentle Towers', ' Marshall', ' ND', ' 58425-2789', ' (701) 712-2326'),
('c32', '3580 3183 6750 4337', 'Alyssa Robin', 8, 2028, 598, '4707 Blue Elk Cape', ' Hubbard', ' NC', ' 28963-0280', ' (704) 318-1804'),
('c17', '3581 2940 9513 2429', 'Veronica Brynne', 10, 2025, 427, '954 Bright By-pass', ' Rapids', ' IL', ' 61397-8123', ' (779) 658-5803'),
('c37', '3585 0201 8320 2048', 'Wendy Zenia', 7, 2022, 499, '1618 Hidden Falls', ' Buckhorn', ' WA', ' 98263-3737', ' (360) 861-4585'),
('c65', '3680 9687 2693 5967', 'Maia MacKensie', 10, 2026, 432, '3630 High Bluff Square', ' Croft', ' PA', ' 19467-1325', ' (484) 353-7711'),
('c53', '3690 3737 2569 0234', 'Haley Katelyn', 10, 2024, 414, '5504 Umber Elk Canyon', ' Cottage Grove', ' OR', ' 97720-7204', ' (503) 974-2824'),
('c79', '3713 599619 14331', 'Alec Octavia', 7, 2023, 9847, '9187 Cozy Rabbit Turnabout', ' Elftman', ' VA', ' 24150-3079', ' (757) 512-8942'),
('c55', '3730 825917 63799', 'Pascale Caryn', 10, 2021, 2058, '3898 Old Dale Autoroute', ' Hudson', ' IL', ' 61113-3953', ' (779) 821-4980'),
('c75', '3750 160396 46222', 'Rudyard Renee', 12, 2026, 1554, '3222 Lost Drive', ' Rogers', ' OH', ' 43089-2726', ' (614) 807-8872'),
('c95', '3753 917270 54447', 'Christine Iona', 10, 2028, 3268, '9345 Blue Pond Run', ' Lake Huron Beach', ' ND', ' 58198-6334', ' (701) 150-4545'),
('c88', '3757 297841 16130', 'Tanner Alexandra', 1, 2026, 9129, '6550 Foggy Grove', ' Newtown', ' UT', ' 84990-9824', ' (801) 434-5242'),
('c14', '3781 220799 89956', 'Oscar Cailin', 11, 2024, 1546, '3273 Cinder Rise Turnabout', ' Hubbleton', ' SD', ' 57598-4507', ' (605) 088-6832'),
('c34', '3789 343994 74133', 'Kessie Mechelle', 4, 2020, 3232, '4982 Green Log Loop', ' Rockland', ' MA', ' 01424-2382', ' (339) 714-5258'),
('c51', '3791 461747 04498', 'Gabriel Sylvia', 11, 2027, 7115, '8357 Sunny Diversion', ' Greenwood Springs', ' VA', ' 22869-3687', ' (276) 452-3242'),
('c2', '3794 330529 06886', 'Allistair Nell', 11, 2022, 4371, '9492 Crystal Maze', ' Jeffrey City', ' MS', ' 39705-7618', ' (228) 591-6690'),
('c67', '3802 7748 8248 0514', 'Porter Christen', 6, 2026, 284, '1804 Colonial Fawn Pines', ' Pinson', ' MS', ' 38697-3575', ' (769) 572-3135'),
('c62', '3846 7284 3950 4539', 'Kellie Gemma', 4, 2024, 344, '5906 Broad Highlands', ' Au Sable', ' WV', ' 25639-3279', ' (681) 981-9567'),
('c29', '3907 6111 8105 3671', 'Meghan Dahlia', 1, 2027, 414, '7834 Red Edge', ' Birch Bay', ' NH', ' 03483-8831', ' (603) 672-1623'),
('c85', '3908 0624 6845 9380', 'Tanek Azalia', 6, 2024, 817, '5157 Quaking Timber Expressway', ' The Island', ' IN', ' 46230-9272', ' (765) 055-7225'),
('c71', '4071 7627 8150 4940', 'Chadwick Sopoline', 3, 2020, 437, '9401 Velvet Mountain', ' West Point', ' IL', ' 62277-6779', ' (815) 672-1370'),
('c98', '4092 6150 7418 5808', 'Abbot Dara', 1, 2025, 464, '424 Dewy Acres', ' Rockbridge', ' GA', ' 39999-3557', ' (912) 613-0767'),
('c31', '4113 2376 0179 2314', 'Lydia Julie', 2, 2024, 748, '2707 Harvest Crossing', ' Elloree', ' TX', ' 77137-1940', ' (979) 354-4407'),
('c26', '4131 4109 6792 6093', 'Emi Dara', 3, 2022, 135, '3094 Cotton Cider Valley', ' Glen Head', ' SD', ' 57222-2376', ' (605) 023-2879'),
('c5', '4322 2203 6064 9971', 'Kyle Kyla', 4, 2024, 267, '1262 Iron Pond Vale', ' Corns Manor', ' DC', ' 20039-4966', ' (202) 836-1451'),
('c72', '4416 8005 0311 4707', 'Hoyt Bertha', 2, 2022, 999, '5272 Jagged Byway', ' London', ' HI', ' 96816-5479', ' (808) 299-0360'),
('c15', '4443 7232 9312 4792', 'Walker Cara', 2, 2028, 100, '4152 Indian Vista', ' Holland Mill', ' MO', ' 63188-6698', ' (314) 316-6212'),
('c82', '4624 2688 9389 1169', 'Elmo Shafira', 1, 2025, 922, '4805 Merry Pine Impasse', ' Charlotte Park', ' HI', ' 96786-8533', ' (808) 614-4124'),
('c18', '4674 2466 2256 8885', 'Mallory Iona', 1, 2026, 217, '6873 Rocky Canyon', ' Avoca', ' OR', ' 97672-2988', ' (458) 456-0465'),
('c57', '4764 5098 8068 3295', 'Michael Rhona', 8, 2024, 488, '2591 Dusty Embers Island', ' Kenton', ' KY', ' 41955-9454', ' (502) 016-1840'),
('c78', '4796 5165 7864 6528', 'Athena Denise', 11, 2024, 353, '1702 Fallen Meadow', ' Wauban Beach', ' VA', ' 23493-1283', ' (571) 065-8772'),
('c4', '4830 4160 5228 6842', 'Armand Jolene', 5, 2020, 414, '8931 Heather Quail Ramp', ' Alliance', ' LA', ' 70778-8974', ' (225) 961-0154'),
('c73', '4857 0907 9582 6871', 'Sean Alexis', 7, 2028, 905, '1657 Rustic Farm', ' Humboldt Hill', ' NH', ' 03846-8473', ' (603) 254-6225'),
('c13', '4865 4426 2447 0456', 'Zorita Cassidy', 4, 2021, 107, '133 Golden Pathway', ' Kennedy', ' IN', ' 47381-9295', ' (765) 661-6396'),
('c84', '4885 7343 7786 9819', 'Mannix Barbara', 8, 2025, 726, '3749 Golden Arbor', ' Paint Branch Farms', ' AK', ' 99630-1635', ' (907) 750-2464'),
('c69', '4907 2252 1923 6089', 'Phyllis Amela', 11, 2025, 651, '3452 Grand Ramp', ' Cayuga Junction', ' FL', ' 34408-7826', ' (239) 157-6922'),
('c76', '4936 5627 0787 5324', 'Hedley Daria', 2, 2020, 682, '4126 Tawny Circle', ' Ellamore', ' WV', ' 26929-2918', ' (681) 154-9759'),
('c63', '4968 3159 1513 5291', 'Xantha Naida', 12, 2023, 231, '4098 Hazy Pike', ' Grandin', ' LA', ' 70944-3373', ' (504) 920-1810'),
('c89', '5018 4938 2597 2223', 'Kitra Jamalia', 8, 2022, 437, '9206 Middle Treasure Boulevard', ' Halls Flat', ' LA', ' 70936-7964', ' (985) 771-9315'),
('c59', '5020 8958 1105 9565', 'Caryn Quemby', 4, 2026, 793, '6787 Harvest Leaf By-pass', ' Rumford', ' MA', ' 02319-5227', ' (978) 211-5744'),
('c12', '5893 2286 1227 5293', 'Tana Tashya', 7, 2021, 858, '9204 Umber Treasure Stead', ' Bergen Beach', ' UT', ' 84709-6902', ' (385) 750-2758'),
('c8', '6221 8437 7013 6508', 'Walter Georgia', 2, 2028, 940, '8723 Wishing Panda Path', ' Cottondale', ' MN', ' 56274-0103', ' (320) 196-1423'),
('c91', '6222 3264 9912 1042', 'Dorian Fiona', 3, 2028, 499, '8568 Silver Branch Circuit', ' Clover', ' NH', ' 03201-5881', ' (603) 757-8481'),
('c52', '6222 7568 8928 0687', 'Leslie Nyssa', 3, 2020, 299, '5578 Easy Cider Limits', ' Georgetown', ' NE', ' 69137-0541', ' (308) 246-8892'),
('c93', '6223 0688 1545 7531', 'Simon Sigourney', 3, 2022, 769, '5925 Round Glade', ' Prague', ' KS', ' 66049-6918', ' (316) 392-3746'),
('c30', '6223 1979 0723 8937', 'Hamish Mariko', 9, 2028, 998, '960 Quaking Pointe', ' Economy', ' AZ', ' 86216-3640', ' (602) 818-2668'),
('c40', '6224 0937 9655 3016', 'Elton Wilma', 7, 2025, 550, '7060 Pleasant Hickory Inlet', ' Stage Road Development', ' MT', ' 59308-7952', ' (406) 563-4882'),
('c44', '6224 2106 5604 8792', 'Iliana Kelsey', 9, 2022, 424, '5396 Sunny Deer Rise', ' Hamilton', ' CO', ' 81574-1649', ' (720) 056-7170'),
('c36', '6224 2662 9471 1571', 'Wallace Blair', 1, 2027, 152, '4848 Noble Forest Impasse', ' Alsen Heights', ' UT', ' 84037-9227', ' (385) 137-0063'),
('c42', '6224 5295 2786 3380', 'Iris Alice', 5, 2027, 484, '3299 Silent Goose Gardens', ' Dickinsons Corner', ' VA', ' 24199-6912', ' (757) 493-2339'),
('c58', '6224 8071 4954 3097', 'Murphy Maxine', 6, 2025, 962, '715 Indian Cape', ' Stockton', ' AK', ' 99895-9442', ' (907) 729-8870'),
('c99', '6225 6707 3953 1693', 'Abraham Dominique', 10, 2020, 223, '4976 Heather Trail', ' Atlantic', ' NH', ' 03340-5503', ' (603) 114-4871'),
('c28', '6226 2466 5473 6317', 'Maile McKenzie', 7, 2023, 209, '7061 Cozy Expressway', ' Fountain Spring', ' IA', ' 51381-4219', ' (515) 254-2782'),
('c19', '6226 3560 1734 7692', 'Grant Rama', 5, 2021, 180, '2530 Little Wagon Subdivision', ' Burr Oak', ' UT', ' 84193-6610', ' (435) 417-0591'),
('c25', '6227 2742 7012 4501', 'Aileen Wyoming', 7, 2028, 425, '7889 Amber Mount', ' Kings Manor', ' MA', ' 01698-0588', ' (774) 080-4048'),
('c48', '6228 7230 8555 9177', 'Thane Marny', 6, 2020, 887, '7062 Easy River Orchard', ' Clintonville', ' NY', ' 11287-9925', ' (716) 909-7049'),
('c81', '6236 3039 2116 7244', 'Linda Ora', 11, 2022, 196, '4637 Silent Green', ' Cherokee Meadows', ' MS', ' 39342-3407', ' (228) 588-5500'),
('c86', '6241 5287 7094 6982', 'Russell Robin', 1, 2023, 100, '7948 Misty Quay', ' Vetera', ' NM', ' 87931-3818', ' (505) 442-3442'),
('c39', '6304 3127 6087 3702', 'Kellie Lareina', 9, 2028, 967, '3779 Old Range', ' Mauvilla', ' OK', ' 74605-5263', ' (539) 199-7216'),
('c50', '6304 5824 1232 2379', 'Ivory Noel', 6, 2020, 653, '5937 Foggy Corners', ' Ravenna', ' DC', ' 20080-6295', ' (202) 866-8338'),
('c27', '6390 1682 1975 4348', 'Beverly Alea', 9, 2024, 549, '1587 Misty Brook Row', ' Indian Falls', ' NM', ' 88343-8445', ' (575) 470-8421'),
('c45', '6759 3621 2124 4077', 'Carissa Cheryl', 12, 2024, 771, '695 Sleepy Downs', ' Brent Town', ' NE', ' 68632-6456', ' (402) 883-7361'),
('c7', '6759 5415 3534 3662', 'Kelsie Nyssa', 2, 2026, 954, '8626 Velvet Heights', ' Gold Branch', ' ND', ' 58258-5510', ' (701) 293-1633'),
('c22', '6759 6307 2695 6729', 'Jorden Delilah', 8, 2027, 194, '5103 Quiet Farm', ' Caddo', ' MD', ' 21508-0874', ' (240) 168-1656'),
('c61', '6761 3373 0041 5520', 'Caldwell Cheryl', 2, 2020, 711, '8373 Noble Mews', ' Sacksonia', ' NJ', ' 08417-4550', ' (732) 864-3605'),
('c70', '6761 5770 1663 4415', 'Clark Sloane', 4, 2028, 236, '9936 Hidden Trace', ' Lenora', ' TX', ' 75945-0756', ' (713) 941-2899'),
('c97', '6763 6952 8355 7388', 'Judah Sonia', 5, 2022, 107, '9583 Sleepy Inlet', ' Cortez', ' NC', ' 27598-5298', ' (334) 571-6005'),
('c54', '8802 7387 6760 7607', 'Jolie Nola', 8, 2020, 683, '5480 Rocky Deer Crossing', ' Edgewood Hills', ' AK', ' 99718-4833', ' (907) 398-1603'),
('c1', '8817 3225 1896 7694', 'Asher Wendy', 9, 2020, 272, '8569 Silver Wood', ' Richwood', ' AK', ' 99870-1035', ' (907) 333-8676'),
('c92', '8820 3419 7400 2031', 'Chaim Emily', 5, 2026, 687, '4024 Wishing Autumn Grounds', ' Strickland Crossing', ' KS', ' 66351-7324', ' (316) 907-0599'),
('c66', '8825 8379 5928 5405', 'Benjamin Angela', 3, 2026, 580, '664 Thunder Close', ' Cabanal', ' ND', ' 58419-7432', ' (701) 785-4590'),
('c77', '8846 4962 4506 4754', 'Francis Kyra', 3, 2024, 990, '7883 Burning Sky Bay', ' Frailie', ' SC', ' 29208-0451', ' (843) 410-3720'),
('c87', '8848 2572 4500 6379', 'Taylor Sophia', 9, 2023, 502, '1668 Crystal Mountain Swale', ' Moundridge', ' MD', ' 20910-0470', ' (301) 594-8217'),
('c38', '8889 7925 0030 3871', 'Joshua Lesley', 7, 2024, 521, '5373 Dewy Dale Line', ' Colliersville', ' MS', ' 38765-3414', ' (601) 182-4320'),
('c35', '8896 2651 4453 0820', 'Lila Doris', 8, 2028, 384, '7384 Middle Private', ' Heflin', ' OH', ' 45161-0064', ' (567) 159-2340');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` varchar(15) NOT NULL,
  `prodid` varchar(12) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `prodid`, `quantity`) VALUES
('5de584e8bd144', 'B016XUCYZO', 1),
('5de584e8bd144', 'B06XD58934', 1),
('5de584e8bd144', 'B06XVNS9YX', 1),
('5de5850ff0821', 'B018FNC2TU', 1),
('5de5850ff0821', 'B01M35CWVI', 1),
('5de5850ff0821', 'B01N2Z17MS', 1),
('5de5850ff0821', 'B077583FPX', 1),
('5de5853989e55', 'B01D10RT22', 1),
('5de5853989e55', 'B06XVNS9YX', 1),
('5de594332556d', 'B018FNC2TU', 1),
('5de5ab9c66b7a', 'B074K76BTX', 1),
('5de5f0b897b2f', 'B06XVNS9YX', 1),
('5de5f0cc2f282', 'B0759YSF4W', 1),
('5de69b675a3bc', 'B01N2Z17MS', 1),
('5de6ad39117a7', 'B01CR1FQMG', 1),
('5de6ad39117a7', 'B0742HZW9B', 1),
('5de6ad56aa858', 'B018FNC2TU', 1),
('5de6ad902cecc', 'B01MU5RPQ5', 1),
('5de6ad902cecc', 'B06XVNS9YX', 1),
('5de6ad902cecc', 'B06Y14T5YW', 1),
('5de6adb326e1f', 'B018FNC2TU', 1),
('5de6adb326e1f', 'B01M35CWVI', 1),
('5de6adb326e1f', 'B01MRECHLD', 1),
('5de6c6d497445', 'B018FNC2TU', 1),
('5de6c6d497445', 'B01D10RT22', 1),
('5de6c6d497445', 'B06XD3LXXK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `prod_id` varchar(12) NOT NULL,
  `prod_cat` int(11) NOT NULL,
  `prod_title` varchar(200) DEFAULT NULL,
  `prod_price` decimal(6,2) NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_rev` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_cat`, `prod_title`, `prod_price`, `prod_desc`, `prod_rev`) VALUES
('B00KRYL71U', 4, 'Hanes Women\'s Nano T-Shirt', '15.99', '100% Cotton\nImported\nMachine Wash\nShort-sleeve classic tee featuring ribbed crew neckline\nPre-shrunk for fit\n4.5 ounce ring-spun cotton\nContemporary styling for a slimmer fit. Size up for a roomier fit.', 4),
('B016XUCYZO', 4, 'GRACE KARIN Boatneck Sleeveless Vintage Tea Dress with Belt', '27.00', '79% Cotton, 18% Polyester, 3% Elastane\nImported\nZip fly with button closure closure\nWash And Dry Inside Out With Like Colors; Liquid Detergent Is Recommended\nSlim through hip and thigh with a skinny leg\nHigh rise: Sits above waist\n5 pocket styling\nS=28 inch, M=30 inch, L=32 inch, XL=34 inch', 5),
('B018FNC2TU', 7, 'Coaster Home Furnishings Weissman Pillow Padded Motion Sofa Charcoal', '676.17', 'Set includes: One 1 motion sofa\nMaterials: Fleece and wood\nMaterial Content: 80% polyester, 20% nylon\nFabric Color: Charcoal\nAssembly Required: Yes\nDistance from back to wall to recline: 4\'\' wall hugger\nWeight limit: 825 lbs\nSeat back type: Push back', 5),
('B01CR1FQMG', 1, 'Apple iPhone 6S, GSM Unlocked, 64GB - Rose Gold (Renewed)', '172.25', 'This update to the iPhone 6 upgrades the camera to 12 megapixels, bumps up the processor power, and adds a pressure-sensitive screen with haptic feedback. Other features are similar to the 6, including its rounded metal design, NFC, fingerprint reader, Siri voice assistant, front camera\n', 4),
('B01D10RT22', 4, 'Aphratti Women\'s Long Sleeve Casual Peter Pan Collar Fit and Flare Skater Dress', '28.99', 'Machine Washable/ Hand wash cold/Don\'t bleach/ Air Dry,low iron if needed\n95% Cotton + 5% Spandex, soft, lightweight breathable and comfortable to skin. The length will look different depends on your height, the length from shoulder to bottom is : XS:34\'\' , S:34\'\' , M:35\'\' , L:36\'\' , XL:37\'\' , XXL:37\'\'. Model size: Small(US Size 4),Height:5\'8\'\', Bra:34B.\nLong sleeve, high waist, above knee length, solid black and slim fit flare dress with white collar, it is a very stylish, elegant flare mini dress and a vitality, cute cocktail skater dress. Doll collar, concealed hook and back zipper. Formal and vintage peter pan collar dress, which is a perfect wear to work dress or business dress to show your profession and taste.\nClassy design makes it easily to fit any situations as a vintage long sleeve little black dress, a casual flare flare dress with collar, a fashion collared skater dress for women or teen girls. elegant black dress, fit and flare mini dress, cotton skater dress, high quality petite cocktail dress , which easily to suit most kinds of casual or formal situation.', 5),
('B01HQS8UZA', 3, 'Element ELEFW328R 32in 720p HDTV (Renewed)', '98.88', 'Element Electronics offers state-of-the-art technology, advanced design, unwavering quality, reliability and support.\nFeatures advanced LED back-lit technology for a crystal clear picture with vibrant colors and sharp contrasts. HDMI connectivity allows you to connect your favorite digital device, including streaming devices like Roku or Fire TV.\nComes with a stand (may vary from those pictured) and a remote control. Batteries are not included.', 4),
('B01M35CWVI', 6, 'Simple Joys by Carter\'s Baby Girls\' 2-Pack Fleece Footed Sleep and Play', '15.67', 'Full-zip closures promise easier outfit changes in these footed sleep-and-play suits featuring whimsical designs.', 5),
('B01MRECHLD', 6, 'Simple Joys by Carter\'s Baby Boys\' 4-Pack Pant', '16.99', 'Four pairs of soft pants in mixed colors pull on in a jiffy thanks to covered elasticized waistbands.', 5),
('B01MU5RPQ5 ', 3, 'LG Electronics 24LJ4540-WU 24-Inch 720p LED TV (2017 Model)', '136.99', 'Smaller spaces deserve serious picture quality, too. \nThis compact TV delivers a crisp high-definition picture at 60Hz (image refreshed 60 times per second)', 4),
('B01N2Z17MS', 3, 'LG Electronics 24-LJ4540 24-Inch 720p LED TV (2017 Model)', '139.99', 'Troubleshooting Cannot control the TV with the remote control : Check if anything such as tape has been placed over the receiver. Check if there is any obstacle between the product and the remote control. Replace the batteries with new ones. No image display and no sound is produced : Check if the product is turned on. Check if the power cord is connected to a wall outlet. Check if there is a problem in the wall outlet by connecting other products. \nThe TV turns off suddenly. Check the power control settings. The power supply may be interrupted. \nCheck if the Off Time / Sleep Timer feature is activated in the TIME settings. If there is no signal while the TV is on, the TV will turn off automatically after 15 minutes of inactivity', 4),
('B06XD3LXXK', 2, 'Acer Flagship CB3-532 15.6 HD Premium Chromebook - Intel Dual-Core Celeron N3060 up to 2.48GH.z, 2GB RAM, 16GB SSD, Wireless AC, HDMI, USB 3.0, Webcam, Chrome OS (Renewed)', '119.99', 'Intel Atom x5 E8000 (1.04 GHz) Quad-Core, Burst Frequency Up To 2.40 GHz\n4 GB LPDDR3 RAM\n16 GB Flash Storage\n15.6\'\' HD (1366 x 768) Display\nComfyView\nIntel HD Graphics\nBuilt-in Front Webcam\nChrome OS\nWireless LAN - IEEE 802.11a/b/g/n/ac\n2x USB 3.0, HDMI', 4),
('B06XD58934', 6, 'Simple Joys by Carter\'s Baby and Toddler Boys\' 3-Pack Loose Fit Fleece Footed Pajamas', '24.74', 'A three-pack of colorful long-sleeve footed bodysuits featuring playful prints and ankle-to-chin zippers for easy changes.\n', 5),
('B06XVNS9YX', 5, 'YTD 100% Cotton Mens Casual V-Neck Button Slim Muscle Tops Tee Short Sleeve T-Shirts', '12.99', '100% Cotton\nButton closure\nUS Size,Material:100% Cotton.\nFashion V neck design,Newest  stylish designs and touch soft.Long sleeve  short sleeve shirts more options.\nDo not tumble dry;dry out naturally ,avoid shrinkage.\nAll buttons are just for decoration,sewn shut, not unbotton.\nBasic Cotton tee offers an athletic fit and tag-free design for no-nonsense wear,Comfortable and slim fit casual wear, neck with contrast color fashion personality.', 4),
('B06Y14T5YW', 1, 'Samsung Galaxy S8 64GB Factory Unlocked Smartphone - US Version (Midnight Black) - US Warranty - [SM-G950UZKAXAA]', '359.99', 'U.S. limited warranty. Latest Galaxy phone with Infinity Display, Duel Pixel Camera, iris scanning and Ip68 rated water and dust resistance. The phone comes with a stunning 5.8\'\' Quad HD+ Super AMOLED display (2960x1440) with 570 ppi and world\'s first 10nm processor.', 4),
('B072MFT44F', 4, 'Amazon Brand - Daily Ritual Women\'s Long-Sleeve Split-Hem Tunic', '21.00', '57% Acrylic, 38% Rayon, 5% Elastane\nImported\nMachine Wash\nWide side slits and a relaxed fit modernize this classic crewneck top\nStart every outfit with Daily Ritual\'s range of elevated basics\nModel is 5\'11 and wearing a size Small', 4),
('B072Q5J7TZ', 7, 'Zinus Shalini Upholstered Diamond Stitched Platform Bed / Mattress Foundation / Easy Assembly / Strong Wood Slat Support / Dark Grey, Twin', '250.00', 'Knitted Polyester\nClassic Styling and strong, closely spaced wood slat support\nSage grey cobblestone upholstery with Diamond stitching\nAll parts for making the bed are located in the zippered compartment on the Back of the headboard for easy assembly/ mattress sold separately\nFoam padded tape is added to the Steel frame for noise free use\nAvailable in full, Queen, and King with a worry free 5 year limited warranty; Fabric: Knitted Polyester', 5),
('B0742HZW9B', 2, 'Dell ChromeBook 11 -Intel Celeron 2955U, 4GB Ram, 16GB SSD, WebCam, HDMI, (11.6 HD Screen 1366x768) (Renewed)', '84.95', 'Specifications\nOperating System: Chrome OS\nProcessor CPU: Intel Celeron 2955U Dual-core 1.4 GHz\nScreen: 11.6\nMemory: 4 GB\nStorage: 16 GB SSD\nGraphics Card: Intel HD Graphics\nDimensions (W x D x H): 11.60 x 7.90 x 1.00\nWeight: 2.90 lbs.\nPorts: 1 x USB 3.0 port, 2 x USB 2.0 port, 1 x HDMI port, 1 x headphone/microphone jack', 4),
('B074K76BTX', 4, 'Lrady Women\'s Lace Chiffon A-line Long Maxi Dress Evening Wedding Bridesmaid Dress', '29.99', 'Zipper closure\nMaterial: Soft,Smooth,Comfortable Fabric,Feminine Lace Crochet Bodice,Breathable Chiffon Swing Skirt\nElegant See-Through Lace Design,Slim Fitting Style Half Sleeve,Round Neck,Zipper Closure,Floor-Length,Lace Chiffon Contrast,Sheer Lace with Waistband,Sexy Embroidered Appliques Crochet Lace Top bodice,Lace Patchwork Chiffon Dresses\nCan be Used as Bridesmaid Dress,Wedding Dress,Evening Dress,Prom Dress,Party Dress and Other Various Formal Occasions.All You Need to do is Dream\nOccasion:Suit for Bridesmaid,Casual,Evening Party,Garden,Wedding,Prom,Church,Homecoming,Cocktail and Other Special Occasions\nAttention: Our Size is Asia Size,not US Size.Asia Size is Usually Smaller than US Size,Please Read the Size Chart at Last Image Or Before Ordering and Please Feel Free to Contact Us If There is Anything We Can Assist', 3),
('B074Z5TWLH', 6, 'RATIVE RB-71112 Non Skid Anti Slip Crew Socks With Grips For Baby Toddlers Boys', '14.99', 'NA', 5),
('B0759YSF4W', 2, 'Samsung Chromebook 3, 11.6in, 4GB RAM, 16GB eMMC, Chromebook (XE500C13-K04US) (Renewed)', '142.00', 'The Samsung Chromebook helps you get every day things done faster and easier. The computer starts in seconds, has virus protection built-in, and runs your favorite Google apps plus thousands more.\n The Chromebook comes with leading Google products, like Search, Gmail, YouTube and Hangouts, so you can work, play, and do whatever you want, right out of the box. Chromebooks are a unique class of mobile computing devices designed for Web-based tasks. You will be able to run the Google Chrome OS, browse the Web, send and receive e-mails, and video chat with friends and family.', 4),
('B077583FPX', 1, 'Apple iPhone 8, 64GB, Space Gray - for AT&T/T-Mobile (Renewed)', '320.99', 'Renewed products work and look like new. These pre-owned products are not Apple certified but have been inspected and tested by Amazon-qualified suppliers. Box and accessories (no headphones included) may be generic. Wireless devices come with the 90-day Amazon Renewed Guarantee. Learn more Locked to the GSM network and only compatible with AT&T and T-Mobile. Will not work with Sprint, Verizon, US Cellular or Cricket.', 4),
('B078MPQB65', 4, 'Levi\'s Women\'s 721 High Rise Skinny Jeans, Take me Out, 27 (US 4) R', '39.99', '92% Cotton, 6% Polyester, 2% Elastane\nImported\nZip fly with button closure closure\nWash And Dry Inside Out With Like Colors; Liquid Detergent Is Recommended\nSlim through hip and thigh with a skinny leg\nHigh rise: Sits above waist\n5-pocket styling\nS=28\'\', M=30\'\', L=32\'\', XL=34\'\'', 5),
('B079HB518K', 1, 'Apple iPhone 7, GSM Unlocked, 32GB - Rose Gold (Renewed)', '209.21', 'This iPhone 7 is certified Refurbished. It is 100% functional and in near perfect cosmetic condition with the possibility of a few light hair marks. It will not come in its original packaging but will include a certified cable and UL approved power adapter. Headsets, SIM card and manual are not included. This iPhone 7 is fully functional with T-Mobile, AT&T and all other GSM networks. It will not work on Sprint, Verizon, boost, Virgin Mobile or any other CDMA network.', 4),
('B079TGL2BZ', 2, 'Acer Aspire E 15, 15.6 Full HD, 8th Gen Intel Core i3-8130U, 6GB RAM Memory, 1TB HDD, 8X DVD, E5-576-392H', '309.00', 'Acer Aspire E 15 E5-576-392H comes with these high level specs: 8th Generation Intel Core i3-8130U Processor 2.2GHz with Turbo Boost Technology up to 3.4GHz, Windows 10 Home, 15.6\'\' Full HD (1920 x 1080) widescreen LED-backlit display, Intel UHD Graphics 620, 6GB Dual Channel Memory, 1TB 5400RPM SATA Hard Drive, 8X DVD Double-Layer Drive RW (M-DISC enabled), Secure Digital (SD) card reader, Acer True Harmony, Two Built-in Stereo Speakers, 802.11ac Wi-Fi featuring MU-MIMO technology (Dual-Band 2.4GHz and 5GHz), \nBluetooth 4.1, HD Webcam (1280 x 720) supporting High Dynamic Range (HDR), 1 - USB 3.1 Type C Gen 1 port (up to 5 Gbps), 2 - USB 3.0 ports (one with power-off charging), 1 - USB 2.0 port, 1 - HDMI Port with HDCP support, 6-cell Li-Ion Battery (2800 mAh), Up to 13.5-hours Battery Life, 5.27 lbs. | 2.39 kg (system unit only) (NX.GRYAA.001). Processor Core - Dual-core', 4),
('B07BQVNCS6', 4, 'VFSHOW Womens Off Shoulder Bell Sleeve High Slit Formal Evening Party Maxi Dress', '52.99', 'Zipper closure\nMaterial: Garments in different colors/patterns may use different materials, please check the listing pictures.\nSize: We have changed the clothing size based on customer reviews. Therefore, the size recommendation in the customer reviews could be misleading due to our new change. Please follow the size chart in the product photos and choose the size based on your own body measurements before buying. Thank you!\nStyle: Slash Neckline, Sexy Off The Shoulder, Ruffle Bell Sleeves, Mermaid Silhouette, Maxi Length, Concealed Back Zipper makes it easy to put on and take off, Adjustable High Zipper Slit [The adjustable zipper allows you to zip or unzip the slit so you can decide how much leg you want to show.]\nOccasion: Formal, Evening, Cocktail, Guest of Wedding, Bridal, Bridesmaid, Mother of the Bride, Gala, Party, Banquet, Prom, Ball, Homecoming, Graduation, Special Occasion.\nGarment Care: Machine Wash in cold water, hang or line dry. [Do not tumble dry]', 5),
('B07CTHLX8C', 2, 'Acer Predator Helios 300 Gaming Laptop PC, 15.6FHD IPS w/ 144Hz Refresh, Intel i7-8750H, GTX 1060 6GB, 16GB DDR4, 256GB NVMe SSD, Aeroblade Metal Fans PH315-51-78NP', '952.49', 'Acer Predator Helios 300 PH315-51-78NP Gaming Laptop comes with these high level specs: 8th Generation Intel Core i7-8750H Processor 2.2GHz with Turbo Boost Technology up to 4.1GHz (9MB Smart cache), Windows 10 Home, 15.6\'\' Full HD (1920 x 1080) widescreen LED-backlit IPS display, 144Hz Refresh Rate, 300nit Brightness, 16:9 aspect ratio, 72% NTSC, NVIDIA GeForce GTX 1060 Overclockable Graphics with 6 GB of dedicated GDDR5 VRAM, 16GB DDR4 2666MHz Memory, 256GB PCIe NVMe SSD, Secure Digital (SD) card reader, Optimized Dolby Audio Premium sound enhancement, \nAcer True Harmony Plus Technology, Two Built-in Stereo Speakers, Intel Wireless-AC 9560 802.11ac Gigabit Wi-Fi which can deliver up to 1.73Gbps throughput when using 160Mhz channels (Dual-Band 2.4GHz and 5GHz), Bluetooth 5.0, HD Webcam (1280 x 720) supporting Super High Dynamic Range (SHDR), 1 - USB 3.1 (Type-C) port (Gen 1 up to 5 Gbps), 1 - USB 3.0 port (featuring power-off charging), 2 - USB 2.0 ports, 1 - HDMI 2.0 with HDCP support, 4-cell Li-Ion Battery (3220 mAh), Up to 7-hours Battery Life, 5.51 lbs. | 2.5 kg (system unit only) (NH.Q3FAA.001).', 4),
('B07F981R8M', 3, 'TCL 32S327 32-Inch 1080p Roku Smart LED TV (2018 Model)', '149.99', '32 Inch class HD Roku Smart TV. Roku TV personalized home screen. Dual band 802.11n wireless. 3 HDMI inputs, analog video input, USB port, digital and analog audio output. Digital television tuner. 1080P resolution. 60Hz CMI. \nThe power consumption is 5 watts', 4),
('B07FSFRWS4', 2, '2018 Acer 15.6 HD WLED Chromebook 15 with 3X Faster WiFi Laptop Computer, Intel Celeron Core N3060 up to 2.48GHz, 4GB RAM, 16GB eMMC, 802.11ac WiFi, Bluetooth 4.2, USB 3.0, HDMI, Chrome OS', '197.00', 'Google Chrome OS15. 6\'\' display: Acer Comfy View technology reduces reflection. Typical 1366 x 768 HD resolution. LED backlight \nIntel Celeron Processor N3060 @ 1. 60GHz (2 Core, 2M Cache, up to 2. 48 GHz)4GB system memory for basic multitasking16GB em flash memory Built-in cloud support Intel HD Graphics 400Bluetooth 4. 2 interface syncs with compatible devices2 USB 3. 0 ports maximize the latest high-speed devices: USB 3. 0 ports are backward-compatible with USB 2. 0 devices (at 2. 0 speeds). \nHDMI output expands your viewing options Built-in media reader for simple photo transfer Next-Gen Intel Wireless-AC connectivity:Connect to a Wireless-AC router for nearly 3x the speed, more capacity and wider coverage than Wireless-N. Backward-compatible with all other Wi-Fi networks and hotspots. Built-in HD webcam with microphone Built-in virus protection and Google products Additional port Headphone output.\n Note: This Chromebook does not include a built-in DVD/CD drive', 4),
('B07GB61TQR', 3, 'TCL 40S325 40 Inch 1080p Smart LED Roku TV (2019)', '199.99', 'The 3 Series Full HD TCL Roku TV puts all your entertainment favorites in one place, allowing seamless access to over 500,000 movies and TV episodes, your cable box, gaming console, \nand other devices?all from your simple, intuitive interface. The super simple remote and dual band Wi Fi make it fast and easy to access your favorite content in Full HD. Connect all your favorite devices with the three HDMI inputs. The built in TV tuner makes this the ultimate cord cutting TV as it also gives you the ability to access free, over the air HD content. Wireless Connection - 802.11 2x2 Dual Band. The power consumption is 5 watts', 4),
('B07GM2J11Q', 2, 'Lenovo Chromebook C330 2-in-1 Convertible Laptop, \n 11.6-Inch HD (1366 x 768) IPS Display, MediaTek MT8173C Processor, 4GB LPDDR3, 64 GB eMMC, Chrome OS, 81HY0000US, Blizzard White', '246.99', 'Faster, simpler, and more secure, the Lenovo Chromebook C330 brings the latest Chromebook features to you in a sleek, stylish, and durable Blizzard White convertible design. With its seamless Integration with all your Google accounts, this notebook is built for collaboration – among family, in the classroom, or at the office. Offering the latest multimedia in high-definition, \n this convertible Chromebook features a 10-point touchscreen IPS display for easy viewing in tent, tablet, stand, or laptop mode. You\'ll enjoy the latest streaming show anywhere you want to watch. Never slowing down and always up to date, The Lenovo Chromebook C330 offers the latest in digital security while delivering perfect day-to-day performance. Virus protection is built in, and your computer will update about every six weeks, when you have an internet connection. \n You\'ll get the latest operating system updates automatically, so there\'s no need to worry about keeping your software up to date. Part laptop and part tablet, This Lenovo Chromebook is perfect for a straight-forward PC to use at home, college students looking for a quick and lightweight solution for taking notes and streaming videos, or the busy on-the-go professional who needs access to all of those shared documents. \n What\'s more, you can enjoy the best Google has to offer, standard on your Chromebook, with access to a variety of Google play store apps. The Chromebook C330 delivers powerful processing with integrated graphics, em storage, and DDR3 memory – all with up to 10 hours of battery life. At only 2. 64 lbs. , It won\'t weigh you down.', 4),
('B07GNH4Y5Q', 6, 'Durio Soft Warm Knitted Baby Hats Caps Cute Cozy Chunky Winter Infant Toddler Baby Beanies for Boys Girls', '11.55', 'Head measurement: Original Size - 16.5 cm(6.5 Inch), Maximum Stretch - 25.5 cm(10 Inch), One Size fits for most 6-36 months baby\nMade of high quality materials, lightweight and comfortable. Suitable for Spring, Autumn, Winter', 4),
('B07GQJ1TQ5', 6, 'Burt\'s Bees Baby Baby Pajamas, Tee and Pant 2-Piece PJ Set, 100% Organic Cotton', '16.47', 'Burt\'s Bees Baby Pajamas - 2-Piece PJ Set - Wrap their little dreams in organic cotton with our long sleeve tee and pant pajama! Encased elastic waistband feels gentle against skin and ensures snug fit. Neatly finished with rib cuffs to keep everything in place and contain that cozy warmth. This style has our stamp of approval with a signature buzzy bee patch on the back neck and pants!', 4),
('B07JJZPZNS', 3, 'TCL 55S425 55 inch 4K Smart LED Roku TV (2019)', '299.99', 'TCL, one of the world\'s largest TV manufacturers in the world and America’s fastest growing TV brand, bring the latest in 4K technology and design. We\'ve simplified the 4K Ultra HD TV so you can instantly enjoy endless entertainment. \nWith compatibility, choose from more than 5, 000 streaming channels that feature 450, 000 movies and TV episodes plus live sports, news, music, kids and family, food, science and tech, fitness, foreign language and so much more.Features: Electronics: 4K ultra high definition, smart tv, built in ROKU streaming, streaming capability. The standby power consumption is less than 0.5 watts', 4),
('B07JQC1FQJ', 1, 'BLU Vivo XL4 6.2 HD Display Smartphone 32Gb+3Gb RAM, Black', '99.99', 'The all-new Mega display smartphone from BLU, The vivo XL4 pushes the boundaries of design with premium metal materials and state of art painting technology for an awesome look. Beautiful finishes are achieved using an advance process that allows for deep, rich color. A True-life color all screen display with notch functionality help deliver an Impeccable product. Available in Black and gold.', 4),
('B07K11WNFM', 4, 'Amazon Brand - Lark & Ro Women’s Cap Sleeve Lace Dress with Scallop Details', '59.00', '60% Cotton, 27% Nylon, 13% Rayon\nImported\nHand Wash\nThis allover floral lace dress has exquiste scallop detais at the neck, sleeve and bottom opening. The knee length dress features a seam at your natural waist helping to elongate the silhouette\nFully lined except for the sheer lace cap sleeves, and a back opening at just a touch of sophistication to this chic sheath dress\nModel is 5\'11 and wearing a size 2\nBring style and confidence to your everyday wardrobe with polished essentials and wear-to-work staples from Lark & Ro', 5),
('B07KNLVRJ2', 2, 'HP 2019 14 Laptop - Intel Core i3 - 8GB Memory - 128GB Solid State Drive - Ash Silver Keyboard Frame (14-CF0014DX)', '339.98', '2019 HP - 14\'\'\n Laptop - Intel Core i3 - 8GB memory - 128GB solid state Drive - ash silver keyboard frame. \n HP Laptop: play games or work on projects with this HP Laptop. Its Intel Core i3 processor and 8GB of DDR4 RAM keep programs running smoothly, and the 128GB M.2 solid-state drive ensures fast boot times. This HP Laptop has a front-facing true vision HD camera with integrated microphone, \n so you can easily chat with friends online. LCD, ddr4_sdram', 4),
('B07KVJ4NT1', 4, 'KORSIS Women\'s Long Sleeve Round Neck Button Side T Shirts Tunic Dress', '18.99', '60% polyester\nPull On closure\nHand Wash\nThe material is 60% polyester,35% cotton and 5% Spandex. it is soft like your favorite t-shirt, and thick enough that you don\'t need a camisole or anything underneath to hide bra.\nThis asymmetrical hem sweater tunic dress is incredibly soft and comfortable! Not too short and not too long. The wood buttons sets the dress off and makes it classy and fun. The buttons on the side are non-functioning, but attractive.( came with extra button)\nWear with some cute leggings and knee boots! A scarf or long necklace and you are ready to go! Suit for a casual fall and winter office wardrobe. Hand wash to be safe.\nUS SIZE:S(US 4-6),M(US 8-10),L(US 12-14),XL(US 16-18)XXL(20).Color:Black , Blue,Deep Green,White,Wine Red.If you have any questions, please feel free to contact us.\n100% SATISFACTION GUARANTEE: We\'ve got you covered! comfortably constructed & backed by a 30 day ‘love it or your money back guarantee\'. Either you LOVE the product or you are entitled to a full refund.', 4),
('B07M9R95QV', 6, 'Hudson Baby Unisex Baby Cozy Fleece Booties with Non Skid Bottom', '16.97', 'not available', 5),
('B07MVT8S92', 3, 'Sony X950G 55 Inch TV: 4K Ultra HD Smart LED TV with HDR and Alexa Compatibility - 2019 Model', '998.00', 'Unlock the world of ultimate colors and contrast with the X950G 4K HDR TV from Sony. Incredibly clear 4K HDR picture quality is powered by the Picture Processor X1 Ultimate, \nand content has never been brighter than with Full Array Local Dimming & Boosting. X Motion Clarity technology makes action scenes look like real life. The power consumption (operation) is 235 watts while in stand by mode the power consumption is 0.5 watts', 4),
('B07N4J7DLC', 3, 'Sony X800G 55 Inch TV: 4K Ultra HD Smart LED TV with HDR and Alexa Compatibility - 2019 Model', '498.00', 'Enjoy crisp, realistic details in your favorite entertainment with the X800G 4K HDR TV. Control your TV and smart home with your voice using Android TV and Google Assistant built in. 4K X-Reality PRO technology and Dynamic Contrast Enhancer technologies refine details and display contrast with stunning accuracy, \nmaking shows and movies come alive. The power consumption (operation) is 184 watts while in stand by mode the power consumption is 0.5 watts', 4),
('B07N4M9TL9', 3, 'Samsung QN55Q60RAFXZA Flat 55-Inch QLED 4K Q60 Series Ultra HD Smart TV with HDR and Alexa Compatibility (2019 Model)', '697.99', 'Step up to a whole new world of color with the Samsung QN55Q60RAFXZA Flat 55-Inch QLED 4K Q60 Series Ultra HD Smart TV and experience images bursting with a dazzling range of over one billion colors, each upscaled to incredible clarity thanks to our intelligent 4K processor. Powered by Quantum dots, this QLED UHD Samsung 4K TV offers 4x the resolution (3,840 x 2,160) of Full HD 1080p HDTV and over a billion shades of color, \nenabling you to discover what you\'ve been missing with the brilliant, crisp and clear picture of the Samsung TV. The Quantum Processor 4K instantly upscales content to 4K-level picture quality, even from non-native 4K sources, reducing banding, macro-blocking and artifacts often found in compressed streaming content. Adding to the level of brilliant realism, Quantum HDR 4x powered by HDR10+ delivers the lightest to darkest colors, scene by scene, for amazing picture realism rivaling OLED. For the avid gamer, \nthis QLED TV utilizes a Dynamic Black Equalizer to give you better visibility in the dark and uses detailed scene analysis to optimize image quality. Using FreeSync VRR (variable refresh rate) technology, the Samsung Q60 flat screen TV gives you the real-time lower-lag gaming speed you need to climb to the top. To help the Samsung smart TV blend in with your home décor, an ingenious Ambient Mode allows you to customize the screen with meaningful images for a perfectly natural effect, including décor patterns and lighting, info, photos and artwork that match your lifestyle. The Samsung Q60 UHD TV includes smart features such as OneRemote, Bixby voice command, on-screen universal guide, SmartThings home appliance and device control, smart speaker expandability with Alexa and Google Assistant compatibility, and more.', 4),
('B07N4N4F1N', 3, 'Sony X800G 65 Inch TV: 4K Ultra HD Smart LED TV with HDR and Alexa Compatibility - 2019 Model', '698.00', 'Enjoy crisp, realistic details in your favorite entertainment with the X800G 4K HDR TV. \nControl your TV and smart home with your voice using Android TV and Google Assistant built in. 4K X-Reality PRO technology and Dynamic Contrast Enhancer technologies refine details and display contrast with stunning accuracy, making shows and movies come alive. The power consumption (operation) is 247 watts while in stand by mode the power consumption is 0.5 watts', 4),
('B07N6S4SY1', 2, 'ASUS VivoBook L203MA Ultra-Thin Laptop, Intel Celeron N4000 Processor,\n4GB RAM, 64GB eMMC storage, 11.6 HD, USB-C, Wi-Fi 5, Windows 10,\nL203MA-DS04, One Year of Microsoft Office 365', '209.99', 'Efficient Intel Celeron N4000 Processor (4M Cache, up to 2. 6 GHz)\n11. 6 HD (1366 x 768) Display\n64GB em flash storage\n4GB LPDDR4 RAM\nOne year of Microsoft Office 365 included HD Webcam \nSlim and portable: 0. 7 thin and weighs only 2. 2 lbs (Battery included)', 4),
('B07N9KQDVG', 1, 'Moto G7 Power - Unlocked - 32 GB - Marine Blue (US Warranty) - Verizon, AT&T, T-Mobile, Sprint, Boost, Cricket, Metro', '219.00', '60-Hour battery. Power through 2.5 days with a 5000 mAh battery.', 4),
('B07NC9J2M5', 3, 'Samsung UN55RU7100FXZA Flat 55-Inch 4K UHD 7 Series Ultra HD Smart TV with HDR and Alexa Compatibility (2019 Model)', '447.99', 'See all your favorite entertainment as it was meant to be seen with the Samsung UN55RU7100FXZA Flat 55-Inch 4K UHD 7 Series Ultra HD Smart TV. Featuring a powerful 4K UHD processor, this UHD Smart TV offers 4x the resolution (3, 840 x 2, 160) of Full HD 1080p HDTV. \nThe 4K UHD processor instantly upscale content to 4K-level picture quality, even from non-native 4K sources, allowing you to enter the world of 4K with every show, season, and scene. Adding to the level of realism, the TV includes HDR (High Dynamic Range) and Proctor to reveal millions of shades of color with a vibrant, lifelike picture that HDTV can’t create. UHD Dimming dynamically fine tunes the deepness of the blacks to the brightness of the whites for a picture with sensational contrast. \nThe slim design of the Samsung RU7100 naturally fills in the contours of your space with a refined, modern aesthetic that complements your lifestyle. The Samsung 7 Series UHD TV includes smart features such as One Remote, on-screen universal guide, smart speaker expandability with Alexa and Google Assistant compatibility, and more. BLUETOOTH CAPABILITY only supports audio profiles such as Ear Buds, Headphones, and Soundbars, but does not support Human Interface Devices such as a keyboards.', 4),
('B07NHQ4CXM', 3, 'LG OLED65C9PUA Alexa Built-in C9 Series 65 4K Ultra HD Smart OLED TV (2019)', '209.99', 'Once you\'ve watched your favorites on an LG OLED TV, every other television falls short Whether it’s movies, shows, sports or gaming, \nPerfect Black and infinite contrast bring out rich color and clear detail. LGs most powerful 4K processor, Gen 2 Intelligent Processor, enhances everything you watch. Picture and sound are elevated with premium Dolby Vision and Dolby Atmos. Plus LG AI TV is the world\'s most intelligent TV with LG ThinQ AI and the voice control of the Google Assistant and Alexa built-in. Service limited to certain languages. Some features require 3rd party service subscriptions.', 5),
('B07NY3X8MG', 4, 'Levi\'s Women\'s 721 High Rise Skinny Jean', '59.50', '79% Cotton, 18% Polyester, 3% Elastane\nImported\nZip fly with button closure closure\nWash And Dry Inside Out With Like Colors; Liquid Detergent Is Recommended\nSlim through hip and thigh with a skinny leg\nHigh rise: Sits above waist\n5 pocket styling\nS=28 inch, M=30 inch, L=32 inch, XL=34 inch', 4),
('B07NYBK99P', 5, 'Amazon Essentials Men\'s Midweight Crewneck Sweater', '25.00', 'Imported\nMachine Wash\nComfortable and versatile, this sweater is perfect on its own or as a layer under a blazer or jacket\nEveryday made better: we listen to customer feedback and fine-tune every detail to ensure quality, fit, and comfort', 4),
('B07NZZLDP9', 3, 'Sony XBR-65A9G 65 Inch TV: MASTER Series BRAVIA OLED 4K Ultra HD Smart TV with HDR and Alexa Compatibility - 2019 Model', '3498.00', 'MASTER OF QUALITY: Faithfully conveys creator’s intent on screen to deliver the best picture quality\nINCREDIBLE CLARITY: X-Reality PRO upscale images to near 4K clarity while reducing on-screen noise\nHIGH DYNAMIC RANGE: Combined with IMAX Enhanced and Dolby Vision for the total cinematic experience\nPERFECT HARMONY: Immersive audio emanates from the entire OLED screen with Acoustic Surface technology\nTRILUMINOS DISPLAY: Enjoy a broader spectrum of red, green, and blue for rich, authentic imaging.\nANDROID TV: 65in flat screen OLED TV with the Google Assistant built-in; Alexa and Google Home compatible\nDIMENSIONS: OLED TV with stand - 57 x 33 x 10 1/8 inch; OLED TV without stand - 57 x 32 7/8 x 1 5/8 inch\nIN THE BOX: 65 in OLED TV with stand, remote, batteries, power cord, IR blaster, start guide, and manual', 5),
('B07P8MQHSH', 1, 'Google - Pixel 3 with 64GB Memory Cell Phone (Unlocked) - Just Black', '455.49', 'Meet the Google Pixel 3. Capture the perfect shot every time, get things done with the Google Assistant, enjoy an all-day battery, and more. A camera so good it deserves unlimited storage. Get everyone in the picture with Group Selfies—no selfie stick required. Snap portraits like a pro with Portrait Mode. Capture smiles, not blinks, for a great photo every time. And save all your favorite moments with free, unlimited photo storage. Charges fast. Lasts long. Pixel 3 comes with a battery that charges fast and wirelessly, and lasts all day. It\'s even smart enough to limit battery usage for the apps you don\'t use often to keep you going longer. Your Google Assistant. Get help from the Google Assistant: reserve a table at your favorite restaurant, buy tickets, get commute times, weather info, and more—all with a simple squeeze, or just by using your voice. Avoid unwanted calls. Screen spam, scams, and other nuisance calls. Get real-time transcription and block unwanted callers so you’ll never hear from them again. The joy of missing out. Disconnect from your phone when and where you want with Digital Wellbeing. It lets you focus on time with family and friends by setting timers on apps and turning off visual notifications. Use the wind down mode to turn the screen to gray scale and get ready for a good night\'s sleep.', 4),
('B07PFYVWMH', 4, 'Levi\'s Women\'s High Rise Skinny Jean, Sapphire Horizon, 31 (US 12) R', '17.79', '92% Cotton, 6% Polyester, 2% Elastane\nImported\nZip fly with button closure closure\nMachine Wash\nMid stretch sateen with a skinny leg and slim fit through hip and thigh, Special Size Type: standard\nHigh rise: sits above waist\nZip fly with button closure and five-pocket styling', 5),
('B07PR6K1KH', 2, '2019 HP Stream 14” FHD Laptop Computer, Intel Celeron N3060 up to 2.48GHz, 4GB RAM, 64GB SSD, 802.11ac WiFi, Bluetooth, HDMI, 1-Year Office 365, Windows 10', '234.00', 'Surf, stream, and browse your favorite apps with the nimble HP Stream 14. \nThis power-packed performer stands up to whatever your day throws at it with a durable design, speedy Intel Celeron processor, and 4GB of memory. Plus, a resilient 14-hour battery life takes you from early meetings to late-night show binges on a single charge.', 4),
('B07PV68K73', 1, 'Samsung Galaxy A50 SM-A505G 64GB 4GB RAM 25 MP 6.4 Factory Unlocked International Version- Black', '244.99', 'The Samsung galaxy A50 is a complete device that provides for a onscreen fingerprint sensor along with the 6.4-inch (16.21 centimeters) super AMOLED - infinity u cut display, FHD+ resolution (2340 x 1080), 404 ppi with 16m colours and triple camera setup - 16mp (f1.9)+ 5mp (2.2) wide angle camera + 5mp (2.2) with flash and 25mp (f2.0) front facing camera. May come with foreign charger. charger may be foreign', 4),
('B07Q51C56R', 6, 'Burt\'s Bees Baby Baby Boy\'s Unisex Pajamas, Zip-Front Non-Slip Footed Sleeper Pjs, Organic Cotton', '24.95', 'Burt\'s Bees Baby Sleepers - Snug fitting zip-up footie pajamas are made with from The Purest Layer™: 100% organic GOTS certified* cotton - breathable & great for sensitive skin. Sporty yet sweet, these footed PJs are snuggly soft and cuddle-ready. Designed with safety in mind, these sleepers feature elastic ankles to keep footies in place & non-slip \'\'bee grips\'\' for extra stability - great for little bees on the move! Diagonal zip front makes for easy diaper changes and snap tab at neck protects delicate skin.', 4),
('B07QCNWRNH', 6, 'Luvable Friends Unisex Baby Socks', '9.99', 'Luvable Friends Assorted Socks 8 Pack is ideal for everyday wear with soft fabric that is comfortable on your baby\'s little feet. Our stretchable design makes for proper fit and no fuss dressing. Available in several different designs and sized from 0-6 months!', 4),
('B07QKWTZ4B', 2, 'HP 2019 Newest Premium 15.6-inch HD Laptop, AMD A6-9225 Dual-Core 2.6 GHz, 8GB RAM, 1TB HDD, AMD Radeon R4, WiFi, HDMI, MaxxAudio, Bluetooth, Windows 10', '379.00', 'Operating System: Windows 10.\nSwitch to regular windows 10 by turning off the S mode: Press \'\'Start button\'\' bottom left of the screen; Select \'\'Settings\'\' icon above \'\'power\'\' icon;Select Update & Security and Activation, then Go to Store; Select \'\'Get\'\' option under \'\'Switch out of S mode\'\'; Hit Install.\n', 4),
('B07QV2JKGQ', 1, 'Samsung Galaxy A20 32GB A205G/DS 6.4 HD+ 4,000mAh Battery LTE Factory Unlocked GSM Smartphone (International Version, No Warranty) (Deep Blue)', '174.99', 'Enhance your viewing experience with the next-gen Super AMOLED 16.20cm HD+ Infinity-V Display.', 4),
('B07QXNQM6R', 6, 'Children Toddlers Infant and Baby Mittens - Thinsulate Winter Waterproof Gloves', '13.99', 'Children gloves, toddler gloves and baby gloves. made with thinsulate,and fleece. These kids waterproof mittens will keep your little one warm! Good for use as ski mittens, snowboarding gloves, and everyday.', 5),
('B07R18D87H', 1, 'Samsung Galaxy A20 32GB A205G/DS 6.4 HD+ 4,000mAh Battery LTE Factory Unlocked GSM Smartphone (International Version, No Warranty) (Black)', '179.98', 'Ready, Action, More.\nShoot more awesomeness with the 123° Ultra Wide lens. ', 4),
('B07R7DY911', 1, 'Google - Pixel 3a with 64GB Memory Cell Phone (Unlocked) - Just Black - G020G', '399.00', 'Get more done with Pixel 3A. It has an extraordinary camera with features like night sight, portrait mode, and HDR+. a battery that charges fast and lasts all day. All the helpfulness of the Google assistant built in. And 3 years of security and os updates included. it’s everything you love about Google – in a phone. Works with all major carriers.', 4),
('B07RF1XD36', 2, 'Acer Aspire 5 Slim Laptop, 15.6 Full HD IPS Display,\n AMD Ryzen 3 3200U, Vega 3 Graphics, 4GB DDR4, 128GB SSD, Backlit Keyboard, Windows 10 in S Mode, A515-43-R19L', '309.94', 'Acer Aspire 5 A515-43-R19L comes with these high level specs: AMD Ryzen 3 3200U Dual-Core Processor 2.6GHz with Precision Boost up to 3.5GHz (Up to 4MB L3 Cache), \n Windows 10 in S mode, 15.6\'\', Full HD (1920 x 1080) widescreen LED-backlit IPS Display, AMD Radeon Vega 3 Mobile Graphics, 4GB DDR4 Memory, 128GB PCIe NVMe SSD, \n True Harmony Technology, Two Built-in Stereo Speakers, Acer Purified.Voice Technology with Two Built-in Microphones, 802.11ac WiFi featuring 2x2 MIMO technology (Dual-Band 2.4GHz and 5GHz), 10/100/1000 Gigabit Ethernet LAN (RJ-45 port), Bluetooth 4.0, Back-lit Keyboard, HD Webcam (1280 x 720), 1 - USB 3.1 Gen 1 Port, 2 - USB 2.0 Ports, 1 - HDMI Port with HDCP support, Lithium-Ion Battery, Up to 7.5-hours Battery Life, 3.97 lbs. | 1.8 kg (system unit only) (NX.HG8AA.001)', 4),
('B07RF2123Z', 2, 'Acer Aspire 5 Slim Laptop, 15.6 Full HD IPS Display, 8th Gen Intel Core i5-8265U, 8GB DDR4, 256GB PCIe NVMe SSD, Backlit Keyboard, Fingerprint Reader, Windows 10 Home, A515-54-51DJ', '509.71', 'Acer Aspire 5 A515-54-51DJ comes with these high level specs: 8th Generation Intel Core i5-8265U Processor 1.6GHz with Turbo Boost Technology up to 3.9GHz (6MB Smart cache), \nWindows 10 Home, 15.6\'\' Full HD (1920 x 1080) widescreen LED-backlit IPS Display, Intel UHD Graphics 620, 8GB DDR4 Memory, 256GB PCIe NVMe SSD, True Harmony Technology, Two Built-in Stereo Speakers, Acer Purified.Voice Technology with Two Built-in Microphones, 802.11ac WiFi featuring 2x2 MU-MIMO technology (Dual-Band 2.4GHz and 5GHz), 10/100/1000 Gigabit Ethernet LAN (RJ-45 port),\n Bluetooth 4.2, Back-lit Keyboard, Acer Fingerprint Reader supporting Windows Hello, HD Webcam (1280 x 720), 1 - USB 3.1 (Type-C) port (Gen 1 up to 5 Gbps), 2 - USB 3.1 Gen 1 Port (one with Power-off Charging), 1 - USB 2.0 Port, 1 - HDMI Port with HDCP support, Lithium-Ion Battery, Up to 9.5-hours Battery Life, 3.97 lbs. | 1.8 kg (system unit only) (NX.HG5AA.001)', 4),
('B07RFNWW8Y', 3, 'VIZIO M-Series Quantum 55” Class (54.5” Diag.) 4K HDR Smart TV - M558-G1', '498.00', 'Experience a world of extraordinary color with the all new VIZIO M Series Quantum 55” Class (54. 5” diag. ) 4K HDR Smart TV. \nThe first in class to utilize cutting edge Quantum Dot technology, the award winning M Series Quantum delivers cinematic color intensity with up to 80 percent more color than standard 4K TVs*. Featuring VIZIO’s Smart Cast 3. 0, streaming, controlling, and sharing your favorites has never been easier. Built on a powerful Active Full Array backlight, VIZIO’s next generation Quantum Color technology produces over a billion shades of colors to create vivid images with hyper realistic details and textures in Dolby Vision HDR. Ultra Bright 600 delivers bright, detailed highlights at up to 600 nits of brightness, more accurately reproducing the nuances in every picture. And 90 local dimming zones enables deep black levels with stunning depth and contrast, resulting in picture quality that must be seen to be believed. \nVIZIO’s Smart Cast 3. 0 is the one stop smart TV solution that brings you more of the entertainment you love, thanks to Apple Airplay 2 support and Chromecast Built in. With Apple Airplay, use your iPhone, iPad or Mac to stream movies, shows, music, and photos from iTunes, Apple TV and other Airplay compatible apps to the TV. Browse favorites like Netflix and Hulu right on the TV or enjoy free & unlimited TV from over 150 channels with VIZIO Watch Free .', 4),
('B07RH8DZRM', 1, 'ZTE BLADE Z MAX Z982 (32GB, 2GB RAM) 6.0 Full HD Display, Dual Rear Camera, 4080 mAh Battery, 4G LTE GSM Unlocked Smartphone w/ US Warranty (Black)', '88.77', 'The ZTE Blade Z Max is the phone that some compare to a tablet, apty dubbed the “phablet” brings a big screen, dual camera sensors, and solid performance to users for a very reasonable price according to critics. The ZTE Z982 is an Android Smartphone with a crisp 6” screen at 1080 x 1920 pixels resolution, perfect to display your videos and photos. What’s more, this phone features an impressive 16MP & 2MP Dual Rear Cameras including LED Flash, plus an 8MP front facing camera for the perfect selfie, every time!', 4),
('B07RHMBGCF', 2, 'Lenovo 130S-11IGM 11.6HD Laptop, Intel Celeron N4000, 4GB RAM, 64GB eMMC, 1-Year Office 365, Windows 10 in S Model - Gray', '162.00', 'Complete assignments quickly with this 11.6-inch Lenovo Ideapad notebook. \nThe 64GB of flash memory boosts startup speeds, while the Intel Celeron processor and 4GB of RAM easily handle heavy-duty tasks simultaneously. This Lenovo Ideapad notebook provides an immersive entertainment experience with an 11.6-inch HD display and integrated Intel UHD graphics.', 4),
('B07RXLGRS7', 6, 'Hudson Baby Unisex Baby Bodysuit, Bottoms and Shoes', '8.99', 'Super Soft Cotton Perfect Going Out Outfit Coordinating Bodysuit, Shorts and Shoes Bodysuit has snap bottom closure Perfect for Warmer Days', 5),
('B07S8CGX9X', 2, 'New Lenovo 130S 11.6 HD Laptop, Intel Celeron (2 core) N4000 1.1GHz up to 2.6GHz, 4GB Memory, 64GB SSD, Webcam,\n Bluetooth, HDMI, USB 3.1, Windows 10, Office 365 Personal 1-Year Included', '165.00', 'The Lenovo 130S Laptop is powered by Intel Celeron N4000 processor.\n The 4GB RAM and 64GB eMMC flash memory are idea for mobile devices and applications, providing enhanced storage capabilities, streamlined data management, quick boot-up times and support for high-definition video playback. Classic 11.6\'\' display with 1366 x 768 HD resolution and energy-efficient LED backlight.', 4),
('B07SC4JSGZ', 3, 'Toshiba 55LF711U20 55-inch 4K Ultra HD Smart LED TV HDR - Fire TV Edition', '379.99', 'Toshiba 4K UHD Smart TV is a new generation of television featuring the Fire TV experience built-in and including a Voice Remote with Alexa. \nWith true-to-life 4K Ultra HD picture quality and access to all the movies and TV shows you love, Toshiba delivers a superior TV experience that gets smarter everyday. The Voice Remote with Alexa lets you do everything you\'d expect from a remote—plus, easily launch apps, search for titles, play music, switch inputs, control smart home devices, and more =using your voice.', 4),
('B07SS5HC8D', 1, 'BLU Vivo XL5-6.3 HD Display Smartphone, 64GB+ 3GB RAM- Black', '119.99', 'The BLU Vivo XL5 is designed with state of the art finish, incorporating a pattern with Gradient effect trough film. This precise texture layout with vivid color distribution results in metallic cover that is second to none. Paired with a mirror like metal finish on the middle housing that blends to give the device a super slim profile.', 4),
('B07VB5LDD1', 1, 'BLU G9 Pro -6.3” Full HD Smartphone with Triple Main Camera, 128GB+4GB RAM -Nightfall', '199.99', 'The G9 Pro makes a loud statement as how far the BLU Brand has come with its ever-gorgeous Twilight pattern design. With a premium glass Black cover that is both elegant and nice metallic middle housing, The G9 Pro is a one above the rest.', 4),
('B07W4SP2SN', 6, 'Arctix Infant/Toddler Chest High Snow Bib Overalls', '22.59', 'The 1575 Arctix Infant/Toddler Chest High Insulated Snow Bib Overalls is an outstanding value priced snow bib for the young ones. These overalls feature a 100% Polyester Dobby shell with ThermaLock W/R + W/P 3000mm Coating, offering a maximum degree of durability and protection from the elements, while allowing a full range of motion. 120 grams ThermaTech Insulation offers warmth in a lightweight, low bulk garment, keeping warm at temperatures from -20° to +35° depending on level of activity. DWR finish (Durable Water Repellent) helps repel water from fabric surface. The adjustable comfort suspenders provide the perfect fit with elasticized side gussets for maximum motion. The boot gaiters with grippers form a seamless integration with the boots to keep the warmth in, and the moisture out. These relaxed fit pants also include 600 Denier Ballistic reinforced ankle, scuff and hem guards to hold up against daily wear & tear. They are water and wind resistant, and are machine washable.', 5),
('B07W873L3R', 6, 'Luvable Friends Baby Cozy Fleece Booties with Non Skid Bottom', '10.78', 'Luvable Friends is a baby basics brand that offers mom great quality, affordable prices and stylish designs. Scooties Fleece Booties by Luvable Friends are adorable and practical. The fleece material will keep your baby\'s feet warm and comfortable. These booties wrap around your baby\'s foot and fasten in the front with a velcro closure, so they are easy to put on, and stay on! Our scooties feature non-skid soles. Available in multiple color choices in sizes up to 18 months.', 5),
('B07XDD6LVJ', 6, 'N\'Ice Caps Little Kids and Baby Easy-On Sherpa Lined Fleece Mittens - 2 Pair Pack', '16.99', 'N\'Ice Caps Little Kids and Baby Easy-On Sherpa Lined Fleece Mittens - 2 Pair Pack are the perfect mittens for your child. The mittens are lined with soft sherpa lining for added warmth and comfort. The size 6-18 months mittens do not have thumbs, while for the larger size mittens of 2-3 years and 4-6 years have thumbs. Some sizes also available in easy-on gloves.', 5),
('B07XSMFCGV', 4, 'Tahari ASL Women\'s Bar-Detailed Long Sleeve Blouse', '28.96', '100% Polyester\nImported\nButton closure\nDry Clean Only\nGolden hardware detail\nLong sleeves\nPolyester georgette', 0),
('B07XSN8XF8', 4, 'Tahari ASL Women\'s Skinny Bi-Stretch Pants', '63.00', '73% Polyester, 23% Rayon, 4% Spandex\nImported\nHook and Bar closure\nDry Clean Only\nFront zipper with hook-and-bar closure\nAngled besom pockets\nSkinny legs\nPolyester rayon ELASTANE bi-stretch with polyester lining', 0),
('B07ZZNJM7X', 4, 'Vince Camuto Women\'s Jumper', '140.32', '97% Polyester, 3% Spandex\nImported\nZipper closure\nDry Clean Only\nSleeveless, v neck, jumpsuit, rings', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prod_photos`
--

DROP TABLE IF EXISTS `prod_photos`;
CREATE TABLE `prod_photos` (
  `prod_id` varchar(12) NOT NULL,
  `prod_img` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_photos`
--

INSERT INTO `prod_photos` (`prod_id`, `prod_img`) VALUES
('B00KRYL71U', 'w12_1.jpg'),
('B00KRYL71U', 'w12_2.jpg'),
('B00KRYL71U', 'w12_3.jpg'),
('B00KRYL71U', 'w12_4.jpg'),
('B016XUCYZO', 'w2_1.jpg'),
('B016XUCYZO', 'w2_2.jpg'),
('B016XUCYZO', 'w2_3.jpg'),
('B016XUCYZO', 'w2_4.jpg'),
('B018FNC2TU', 's2_1.jpg'),
('B018FNC2TU', 's2_2.jpg'),
('B018FNC2TU', 's2_3.jpg'),
('B018FNC2TU', 's2_4.jpg'),
('B01CR1FQMG', 'c11_1.jpg'),
('B01D10RT22', 'w8_1.jpg'),
('B01D10RT22', 'w8_2.jpg'),
('B01D10RT22', 'w8_3.jpg'),
('B01D10RT22', 'w8_4.jpg'),
('B01HQS8UZA', 'T15_1.jpg'),
('B01HQS8UZA', 'T15_2.jpg'),
('B01HQS8UZA', 'T15_3.jpg'),
('B01M35CWVI', 'k8_1.png'),
('B01M35CWVI', 'k8_2.png'),
('B01MRECHLD', 'k10_1.png'),
('B01MRECHLD', 'k10_2.png'),
('B01MU5RPQ5', 'T16_1.jpg'),
('B01MU5RPQ5', 'T16_2.jpg'),
('B01MU5RPQ5', 'T16_3.jpg'),
('B01N2Z17MS', 'T12_1.jpg'),
('B01N2Z17MS', 'T12_2.jpg'),
('B01N2Z17MS', 'T12_3.jpg'),
('B06XD3LXXK', 'l11_1.jpg'),
('B06XD3LXXK', 'l11_2.jpg'),
('B06XD3LXXK', 'l11_3.jpg'),
('B06XD3LXXK', 'l11_4.jpg'),
('B06XD58934', 'k5_1.png'),
('B06XD58934', 'k5_2.png'),
('B06XVNS9YX', 'm2_1.jpg'),
('B06XVNS9YX', 'm2_2.jpg'),
('B06XVNS9YX', 'm2_3.jpg'),
('B06XVNS9YX', 'm2_4.jpg'),
('B06Y14T5YW', 'c12_1.jpg'),
('B072MFT44F', 'w11_1.jpg'),
('B072MFT44F', 'w11_2.jpg'),
('B072Q5J7TZ', 'b2_1.jpg'),
('B072Q5J7TZ', 'b2_2.jpg'),
('B072Q5J7TZ', 'b2_3.jpg'),
('B072Q5J7TZ', 'b2_4.jpg'),
('B0742HZW9B', 'l13_1.jpg'),
('B0742HZW9B', 'l13_2.jpg'),
('B0742HZW9B', 'l13_3.jpg'),
('B074K76BTX', 'w5_1.jpg'),
('B074K76BTX', 'w5_2.jpg'),
('B074K76BTX', 'w5_3.jpg'),
('B074K76BTX', 'w5_4.jpg'),
('B074Z5TWLH', 'k13_1.png'),
('B074Z5TWLH', 'k13_2.png'),
('B0759YSF4W', 'l10_1.jpg'),
('B0759YSF4W', 'l10_2.jpg'),
('B0759YSF4W', 'l10_3.jpg'),
('B077583FPX', 'c2_1.jpg'),
('B077583FPX', 'c2_2.jpg'),
('B077583FPX', 'c2_3.jpg'),
('B077583FPX', 'c2_4.jpg'),
('B078MPQB65', 'w9_1.jpg'),
('B079HB518K', 'c15_1.jpg'),
('B079TGL2BZ', 'l8_1.jpg'),
('B079TGL2BZ', 'l8_2.jpg'),
('B079TGL2BZ', 'l8_3.jpg'),
('B07BQVNCS6', 'w4_1.jpg'),
('B07BQVNCS6', 'w4_2.jpg'),
('B07BQVNCS6', 'w4_3.jpg'),
('B07BQVNCS6', 'w4_4.jpg'),
('B07CTHLX8C', 'l12_1.jpg'),
('B07CTHLX8C', 'l12_2.jpg'),
('B07CTHLX8C', 'l12_3.jpg'),
('B07CTHLX8C', 'l12_4.jpg'),
('B07F981R8M', 'T5_1.jpg'),
('B07F981R8M', 'T5_2.jpg'),
('B07F981R8M', 'T5_3.jpg'),
('B07FSFRWS4', 'l6_1.jpg'),
('B07FSFRWS4', 'l6_2.jpg'),
('B07FSFRWS4', 'l6_3.jpg'),
('B07FSFRWS4', 'l6_4.jpg'),
('B07GB61TQR', 'T6_1.jpg'),
('B07GB61TQR', 'T6_2.jpg'),
('B07GB61TQR', 'T6_3.jpg'),
('B07GM2J11Q', 'l5_1.jpg'),
('B07GM2J11Q', 'l5_2.jpg'),
('B07GM2J11Q', 'l5_3.jpg'),
('B07GM2J11Q', 'l5_4.jpg'),
('B07GNH4Y5Q', 'k12_1.png'),
('B07GNH4Y5Q', 'k12_2.png'),
('B07GQJ1TQ5', 'k11_1.png'),
('B07GQJ1TQ5', 'k11_2.png'),
('B07JJZPZNS', 'T4_1.jpg'),
('B07JJZPZNS', 'T4_2.jpg'),
('B07JJZPZNS', 'T4_3.jpg'),
('B07JQC1FQJ', 'c8_1.jpg'),
('B07K11WNFM', 'w7_1.jpg'),
('B07K11WNFM', 'w7_2.jpg'),
('B07K11WNFM', 'w7_3.jpg'),
('B07K11WNFM', 'w7_4.jpg'),
('B07KNLVRJ2', 'l3_1.jpg'),
('B07KNLVRJ2', 'l3_2.jpg'),
('B07KNLVRJ2', 'l3_3.jpg'),
('B07KNLVRJ2', 'l3_4.jpg'),
('B07KVJ4NT1', 'w3_1.jpg'),
('B07KVJ4NT1', 'w3_2.jpg'),
('B07KVJ4NT1', 'w3_3.jpg'),
('B07KVJ4NT1', 'w3_4.jpg'),
('B07M9R95QV', 'k4_1.png'),
('B07M9R95QV', 'k4_2.png'),
('B07MVT8S92', 'T13_1.jpg'),
('B07MVT8S92', 'T13_2.jpg'),
('B07MVT8S92', 'T13_3.jpg'),
('B07N4J7DLC', 'T8_1.jpg'),
('B07N4J7DLC', 'T8_2.jpg'),
('B07N4J7DLC', 'T8_3.jpg'),
('B07N4M9TL9', 'T7_1.jpg'),
('B07N4M9TL9', 'T7_2.jpg'),
('B07N4M9TL9', 'T7_3.jpg'),
('B07N4N4F1N', 'T3_1.jpg'),
('B07N4N4F1N', 'T3_2.jpg'),
('B07N4N4F1N', 'T3_3.jpg'),
('B07N6S4SY1', 'l2_1.jpg'),
('B07N6S4SY1', 'l2_2.jpg'),
('B07N6S4SY1', 'l2_3.jpg'),
('B07N6S4SY1', 'l2_4.jpg'),
('B07N9KQDVG', 'c10_1.jpg'),
('B07NC9J2M5', 'T14_1.jpg'),
('B07NC9J2M5', 'T14_2.jpg'),
('B07NC9J2M5', 'T14_3.jpg'),
('B07NHQ4CXM', 'T9_1.jpg'),
('B07NHQ4CXM', 'T9_2.jpg'),
('B07NHQ4CXM', 'T9_3.jpg'),
('B07NY3X8MG', 'w6_1.jpg'),
('B07NY3X8MG', 'w6_2.jpg'),
('B07NY3X8MG', 'w6_3.jpg'),
('B07NY3X8MG', 'w6_4.jpg'),
('B07NYBK99P', 'm3_1.jpg'),
('B07NYBK99P', 'm3_2.jpg'),
('B07NYBK99P', 'm3_3.jpg'),
('B07NZZLDP9', 't2_1.jpg'),
('B07NZZLDP9', 't2_2.jpg'),
('B07NZZLDP9', 't2_3.jpg'),
('B07NZZLDP9', 't2_4.jpg'),
('B07P8MQHSH', 'c6_1.jpg'),
('B07PFYVWMH', 'w10_1.jpg'),
('B07PR6K1KH', 'l16_1.jpg'),
('B07PR6K1KH', 'l16_2.jpg'),
('B07PR6K1KH', 'l16_3.jpg'),
('B07PV68K73', 'c7_1.jpg'),
('B07Q51C56R', 'k14_1.png'),
('B07Q51C56R', 'k14_2.png'),
('B07QCNWRNH', 'k15_1.png'),
('B07QCNWRNH', 'k15_2.png'),
('B07QKWTZ4B', 'l15_1.jpg'),
('B07QKWTZ4B', 'l15_2.jpg'),
('B07QKWTZ4B', 'l15_3.jpg'),
('B07QV2JKGQ', 'c5_1.jpg'),
('B07QXNQM6R', 'k7_1.png'),
('B07QXNQM6R', 'k7_2.png'),
('B07R18D87H', 'c9_1.jpg'),
('B07R7DY911', 'c3_1.jpg'),
('B07R7DY911', 'c3_2.jpg'),
('B07R7DY911', 'c3_3.jpg'),
('B07RF1XD36', 'l4_1.jpg'),
('B07RF1XD36', 'l4_2.jpg'),
('B07RF1XD36', 'l4_3.jpg'),
('B07RF2123Z', 'l9_1.jpg'),
('B07RF2123Z', 'l9_2.jpg'),
('B07RF2123Z', 'l9_3.jpg'),
('B07RFNWW8Y', 'T10_1.jpg'),
('B07RFNWW8Y', 'T10_2.jpg'),
('B07RFNWW8Y', 'T10_3.jpg'),
('B07RH8DZRM', 'c4_1.jpg'),
('B07RHMBGCF', 'l14_1.jpg'),
('B07RHMBGCF', 'l14_2.jpg'),
('B07RHMBGCF', 'l14_3.jpg'),
('B07RXLGRS7', 'k2_1.jpg'),
('B07RXLGRS7', 'k2_2.jpg'),
('B07RXLGRS7', 'k2_3.jpg'),
('B07RXLGRS7', 'k2_4.jpg'),
('B07S8CGX9X', 'l7_1.jpg'),
('B07S8CGX9X', 'l7_2.jpg'),
('B07S8CGX9X', 'l7_3.jpg'),
('B07SC4JSGZ', 'T11_1.jpg'),
('B07SC4JSGZ', 'T11_2.jpg'),
('B07SC4JSGZ', 'T11_3.jpg'),
('B07SS5HC8D', 'c13_1.jpg'),
('B07VB5LDD1', 'c14_1.jpg'),
('B07W4SP2SN', 'k9_1.png'),
('B07W4SP2SN', 'k9_2.png'),
('B07W873L3R', 'k3_1.png'),
('B07W873L3R', 'k3_2.jpg'),
('B07XDD6LVJ', 'k6_1.png'),
('B07XDD6LVJ', 'k6_2.png'),
('B07XSMFCGV', 'w14_1.jpg'),
('B07XSMFCGV', 'w14_2.jpg'),
('B07XSN8XF8', 'w13_1.jpg'),
('B07XSN8XF8', 'w13_2.jpg'),
('B07ZZNJM7X', 'w15_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `user_id` int(11) NOT NULL,
  `product_id` varchar(12) NOT NULL,
  `reviews` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`user_id`, `product_id`, `reviews`) VALUES
(1, 'B07NHQ4CXM', 'Burn-in is a non-issue'),
(1, 'B07RXLGRS7', 'I ordered the 12-18 month size for my son. It s very cute but the onesie definitely shrinks so I should have ordered the next size up. My son is 31 inches tall and 20 lbs 8 ounces so the onesie though it does fit I can see that he won t be able to use it for long. The shorts however will last a while longer then the onesie. The shoes fit well with some room for his feet to grow in. His feet are 5 inches long (just measured), so I d say the shoe size is about 5.5 inches long. Here s a pic so you can check out if it ll work for you.'),
(1, 'B07SS5HC8D', 'Overall it s a great budget phone with a few flaws.'),
(2, 'B07NHQ4CXM', ' cost (It is worth it to me, but more than other TVs)'),
(2, 'B07RXLGRS7', 'Absolutely adorable outfit, perfect for a summer day. Color is true navy, sailor type style with the striped shorts. Shoes dont have any grip on the bottom but I find this appropriate as I purchased this in size 6-9 months. If you were buying for one of walking age I would just caution as the shoes could be slippery for them. That being said the shoes are abdolutely the cutest piece, very stylish. We have been very happy with this purchase.'),
(2, 'B07SS5HC8D', 'Very good phone for the value. Great size. Only issue is with the camera. Not very good during video calls. Selfie, without the right lighting is crap. Night shots not good. Other than that, fast phone, can run all the applications you need. Looks pretty.'),
(3, 'B07NHQ4CXM', 'I wish i had more money to get the 77\"\"\"'),
(3, 'B07RXLGRS7', 'Bought this outfit for my son who isn t born yet. Arrived in amazing condition and both my hubby and I LOVE it! Once he can wear it I will update my review but since he isn t here yet it ll be a little. Super happy with my purchase!'),
(3, 'B07SS5HC8D', 'Good average phone, good screen face recognition not that great, I have to use the pattern to unlock 90% of the time, everything else normal.'),
(4, 'B07RFNWW8Y', 'I ended up buying this TV over the LG 8-Series Nano or Samsung 4K UHD 8-Series based on the Tom Hardware review. I am not disappointed.'),
(4, 'B07RXLGRS7', 'The fit of the onsie was a little large for our 5 week old, but the shorts are fine. in another few weeks we expect him to fill it out, shoes are a little big. I have to give 5 stars because of the quality of the product very soft and comy for baby and does not bleed or change after washing.'),
(4, 'B07VB5LDD1', 'I unfortunately cannot rate customer service. However I ve used every feature extensively and like any device now or in the future you ll have your pros and cons. This one I feel best represents the value proposition Android brings to the table. No extra apps that you can t uninstall except Opera. Integrates with play store updates for core apps for phone, contact, alarm, photos, etc... so they stay current. '),
(5, 'B07RFNWW8Y', ' You just need to make sure the model you buy ends in an 8 and not a 7 (I bought the M558-G1).'),
(5, 'B07VB5LDD1', 'TBH I can t believe the quality of this device at 200$. Reality in this price range if you want software updates... don t bank on it. Any company that is not Google struggles with this. If that s important to you you know where to go (Pixel or iPhone, period.).'),
(5, 'B07W873L3R', 'We purchased some like these last years when our little guy was 1 and loved then. Sizing for baby seems appropriate, but once you move up to toddler sizes they make no sense. He now wears a size 6 shoe and mostly 2T clothes, some 3T. '),
(6, 'B07RFNWW8Y', 'The picture is great, as advertised, and setup was fast. I only have two, very minor, complaints. First, HDMI 1 & 2 are inset and there is not enough room to fit a Roku Streaming+ Stick in either of these slots without an HDMI elbow adapter. That is pretty nitpicky since HDMI 3 & 4 do not have the same issue.'),
(6, 'B07VB5LDD1', 'I ve come away feeling like I purchased a quality phone at a fantastic price.'),
(6, 'B07W873L3R', 'I ordered the 3T size slipper and i think these are HUGE. The sole measures 7 inches from heel to toe. Is that huge for a toddler size? He is my first so i don t have any frame of reference other than his chubby feet. I m keeping them for next year but have purchased A 2T pair as well. The 2T is about 6.5 inches for the sole. Even though they still are a little big lengthwise, the elastic at the back of the ankle makes these fit surprisingly well and will fit as his foot grows.'),
(7, 'B07RFNWW8Y', ' My other issue is more obvious in that the stand consists of two tripods. Of course, pretty much every other 8-Series 55\" TV is built the same way. I prefer a pedestal given my space, so I bought the freestanding Echogear pedestal for $40 which uses the VESA mounting spots (the same ones used to wall mount). Problem solved.'),
(7, 'B07VB5LDD1', 'Works fine for now'),
(7, 'B07W873L3R', 'My son lived in these booties all winter long. Socks would not stay on his feet but these booties would! They were perfect for keeping him warm. They look really cute too. These are a much cheaper alternative to the name brand ones and I think they stay on even better. My only complaint and reason for giving these 4 instead of 5 stars is that I wish the velcro strip was longer so you could have more fasting options and get the bootie snugger.'),
(8, 'B079HB518K', 'Got here on time, great product but where I insert SIM card it s broken as in where you use the SIM card opener a piece of it is missing other than that it s a great product. Battery life could be a little better.'),
(8, 'B07SC4JSGZ', 'We bought this 50 inch TV on Prime Day. The picture is a screen shot of a video I took and not very good representation. Upon setting it up the TV had flickering lines and squares in random places on the screen.'),
(8, 'B07W873L3R', 'A size chart with measurements sure would be nice. Otherwise they seem very cozy with nice and thick fleece. Stretchy elastic at the back ankle plus the long strips of Velcro should help keep them on.'),
(9, 'B079HB518K', 'So the wifi drops me to cell service when I am in good range of our router sucking my data on my cell plan. This really sucks. It can take multiple reboots for it to reconnect.'),
(9, 'B07M9R95QV', 'I really like these! Ordered 18-24 month size for my 15 month old who wears a size 4 shoe. Fits great with a little extra wiggle room. They are so cute and very warm! I only wish they were more â€œnon-skidâ€. My toddler is a great walker but still a bit wobbly. '),
(9, 'B07SC4JSGZ', ' This occurred no matter what app was being used. I contacted Amazon, Best Buy, and Toshiba via phone to attempt to replace the TV with the same model. Amazon stated that I could only return the TV. Best Buy stated that they would replace it, but I had to go through Amazon, and Amazon refused to replace it. I went to Best Buy locally, and they stated that they could not override Amazon return policy for Prime Day electronics.'),
(10, 'B079HB518K', 'Excellent in every way but 2 things. Screen brightness and battery life. Had to keep phone near 100 brightness all the time. Phone has to be charged 2-3 times a day. Went with Moto G7 Power instead. Way better.'),
(10, 'B07M9R95QV', 'These definitely don t slip as much as socks and socks with logos on the bottom that are supposed to grip. But he still slips in them more than when he is barefoot. Perfect for if you little one is crawling still, or fairly steady walker. In between, I think they would still fall too much in these.'),
(10, 'B07SC4JSGZ', ' I contacted Toshiba to attempt to utilize the warranty, but they stated that since it was new they would not replace it and that I needed to return it to Amazon. So I had to take it apart (no biggie) and place it back inside of the box. Luckily I had the box and styrofoam inserts still.'),
(11, 'B079HB518K', 'Fingerprint reader does not work. I ve tried everything under the sun to get at working, to no avail. I already lightly dropped the phone with a good solid cover on it and the back glass cover shattered. Why would they put a glass cover on the back on this phone? Yes, I read tons of reviews before buying. I knew about the glass cover but I didn t think it would be that fragile. Pretty disappointing!'),
(11, 'B07M9R95QV', 'These are cute, but I ordered a size up based on other reviews and they were too big for my baby. Should have ordered true to size.'),
(11, 'B07SC4JSGZ', 'Then I had to lug it to a UPS store to send it back to Amazon for a refund. I will never buy electronics on Prime Day again. The great price was the reason that Amazon and Best Buy stated that the TV would not be replaced. Now I have to wait for either Labor Day sales or Black Friday sales to get a good deal on a TV locally. Thanks a lot Amazon!!!'),
(12, 'B01N2Z17MS', ' Picture quality is good, even from the sides. Sound is not bad for a small TV. I would not buy it again because of 2 things, which may or may not be important to you: 1) The coax and HDMI inputs face directly backwards and are not recessed. 2) No big deal if you use the stand, but if you wall-mount this TV the inputs are useless unless you buy L-shaped adapters.'),
(12, 'B07M9R95QV', 'Our grandson has round feet and a hard time fitting shoes and these are a great substitute for the summer in the grass or playground. Even better the grips keep him from slipping on the floors at home. We had the zutano and like that they snap but those are almost 3 times as much.'),
(12, 'B07N6S4SY1', 'I work and play mainly from a desktop, but I wanted something cheap and portable that I can use when I need a change of scenery. I was looking for three things in a laptop: 1) small footprint, 2) looooong battery life, and 3) low cost. Basically, I needed a typewriter with internet, and I didn t want to invest too much money or time into it. This machine checks all three of my boxes. It is itty bitty and very lightweight, and so far I have not been able to drain the battery in a single day of on and off use. I also purchased this during a Deal of the Day promotion for $179, which is a great price for a PC with these specs. I do not know if I would pay full price for this, which is around $230 at the time of posting. If I am going to spend that much, I might as well increase my budget slightly and get something with a few more bells and whistles, like a convertible hinge or a touch screen.'),
(13, 'B01N2Z17MS', ' it has a giant \"\"wall wart\"\" power supply instead of a regular power cord. Way too big to hide/conceal behind a wall-mount bracket.'),
(13, 'B06XD58934', 'I ll start by saying these are so soft! I have no doubt they will keep my baby warm in the colder months. I also love that the colors on the neon ones are extremely vibrant and they catch your eye!'),
(13, 'B07N6S4SY1', 'This notebook is not of a great quality. The HDMI port died after two months. I spoke to ASUS tech support, they issued RMA number and I sent the notebook to ASUS with Windows 10 Pro operating system as I upgraded it from Windows S mode. I got back my notebook after two weeks. They had to replace the motherboard. However, it came back with \"Windows 10 Home Single Language\" installed on it. They downgraded my operating system. I was extremely unhappy. I spoke to ASUS tech support and complained, they issued me another RMA number and I had to send the notebook right back to them for correct operating system. Now, I m out of my notebook for almost a month now. I m still waiting for my computer to get back. I ll post the progress when I get the notebook back the second time.'),
(14, 'B01N2Z17MS', ' 7/10/2018 - Discovered another negative in addition to all the above. The USB port will not power an external device like a Chromecast or an active antenna. Kind of annoying.'),
(14, 'B06XD58934', 'The only complaint I have is that the section for your baby s foot is very tight! It can be a pain when putting on or taking off the sleeper!'),
(14, 'B07N6S4SY1', 'I don t like to write immediate reviews on any of my Amazon purchases because first impressions can easily change with some experience, but I ve now had three weeks to use the ASUS E203MA, and I am very satisfied with this purchase. The battery life has remained good, and there iss little doubt that I can get between 9-10 hours of life with normal use and the screen brightness reduced from the highest level. Under those conditions, I ve used the computer for just about 8 hours and the battery still has about 22% left on it. The battery meter does give some screwy readings occasionally regarding the length of time the battery will continue to run; for instance, with the percentage remaining at 50%, swinging from a little over ten hours to less than three hours in a manner of a few minutes so I ve measured battery life by monitoring the cumulative amount of time I ve run it.'),
(15, 'B01N2Z17MS', ' And did I mention the wall wart power supply? It is absurdly huge for such a small tv.'),
(15, 'B06XD58934', 'I liked these a lot and wanted to love them but my 12 month old just kept pulling the velcro tab off. He wouldn t keep them on. Would recommend for smaller munchkins that don t really know to pull off their shoes yet.'),
(15, 'B07N6S4SY1', 'installed Linux Mint Cinnamon 19 on this machine, intentionally wiping Windows off the disk in the process. Turns out to be an excellent combination! With this particular Linux distro, the notebook is quite peppy and everything works.'),
(16, 'B06XD58934', 'These stay on really well and seem comfortable. Definitely run small, I ordered 12-18 month and they fit my 10 month old perfectly when other 12-18 mo things are still way too big.'),
(16, 'B07KNLVRJ2', 'Good battery life, nice size (14\" seemed a lot smaller than my 17\" Dell, but as noted in other reviews, the design of the keyboard gives me the same keyboard area as my Dell) and it is very lightweight. No complaints at all. For the money I think this is a very nice laptop'),
(16, 'B07MVT8S92', 'Let it is be clear here, we are reviewing a TV that costs well over $1,000. Yet so many people are not holding it to that standard. Wait until Black Friday. This television does a lot right, but for the money it is not worth it. The X950G has blooming that destroys dark room viewing, unless you dim your tv substantially(Which greatly darkens the image, more than normal, especiallyin cinema mode.), and while the overall picture may be pretty fantastic, it is still not beating TVs from 2017 like the X900E, which this was going to replace.'),
(17, 'B07KNLVRJ2', 'Just received today and so far I love it! Super fast. Love that the keyboard doesn’t have the number keypad. Keys are large and easy to type on. Screen is super clear.'),
(17, 'B07MVT8S92', ' What is worse, is that Sony still forces you to accept Google terms of service, before even allowing you to use the product you just paid out all this money for. I do nott know about you but I do not like to be forced into submit before, I am even able to use the product I just invested $1,299 on.'),
(17, 'B07XDD6LVJ', 'I really like these; great colors, soft fabric, keep hands warm, easy to put on... '),
(18, 'B07KNLVRJ2', 'I bought this product for my wife and she is happy with the laptop.'),
(18, 'B07MVT8S92', ' This is basically one of those TVs where, if you do not agree with Google terms, you simply are not allowed to use it...not even offline! A Disgusting practice.'),
(18, 'B07XDD6LVJ', 'The problem is, they are also easy for my almost-2-year-old to take off. The first two mornings we went on a chilly stroll, she kept them on and I was very pleased. Her hands weren t ice cold for once! Thereafter, she figured out how to pull them off and never again do they last more than a few minutes before they re on the ground. I don t consider that a flaw in the design, just that sometimes even the nicest mittens can t overcome a toddler s impulses...'),
(19, 'B07KNLVRJ2', 'I love the look, size and feel of my new HP. It is super fast with the solid state hard drive. It shipped fast and arrived un damaged. Would recommend for the price point and quality computer that you can throw in a bag and go.'),
(19, 'B07MVT8S92', ' Now when we look at the Smart features it iss pretty cool, you can say things like Google turn on TV, and Google turn off TV, and almost like magic the TV turns on and off. This is really cool. Like James Bond tech cool. That being said, the picture quality has a ways to go. Now to be fair, you can get pretty Inky black levels, when there is high contrast did elements on the screen, or when you dim the backlight DRAMATICALLY. That being said the TV has a problem with glitching out. Every time I try to watch YouTube using the internal application, it would zoom in to nearly 100% of the screen, cropping out the entirety of the picture. This makes watching TV virtually impossible.\"'),
(19, 'B07XDD6LVJ', 'Pros: Soft, adjustable fit, warm Cons: Size runs large'),
(20, 'B07NC9J2M5', ' First off, I have to say I have had several Samsung TV over the years and have been very satisfied with all of them. For me, the picture quality is among the best. So when I wanted to get a TV for an addition we just added to our house, Samsung was at the top of the list by default. I chose the UN43RU7100 for several reasons - because I did not want to be bothered with a lot of rewiring for cable and networking, I wanted a Smart TV that had dual band WiFi; in order to make searching for things a bit easier, I wanted a TV that was Bluetooth compatible; finally, when I learned that Comcast (my cable provider) had a Xfinity Stream app available for Smart TV, I was interested in a TV that could use that app, thus obviating the need for yet another cable box (and more cable clutter).'),
(20, 'B07RF1XD36', 'This laptop is great. For this price, there is nothing to complain'),
(20, 'B07XDD6LVJ', 'Pro: They fit well and keep my toddlers feet warm  Con: the bottoms are not grippy enough for kids learning to walk - my toddler is falling all over the floor in them'),
(21, 'B07NC9J2M5', ' On paper, according to Samsung website for the RU7100 series (and the 43\"\" model specifically), and Samsung customer support personnel, this TV is 2.4 and 5 GHZ capable. It is.'),
(21, 'B07QXNQM6R', 'PROS: Incredibly well constructed mittens. Just like good quality adult gloves with Thinsulate as a bonus. Seller has great customer service and follow-u. CONS: These are a little big for any kid less than 12 months, and they opening for chunky baby hands to go through is incredibly narrow. Would have been better to allowed more elasticity or room in the opening and let the cinching straps do their job.'),
(21, 'B07RF1XD36', 'This computer is so light weight and easy to carry. I love the sleek design of it as well. This would be a great computer for anyone who just needs a basic computer for the internet or spreadsheets'),
(22, 'B07NC9J2M5', 'This provides a good basis for streaming TV as well as Amazon Prime, Netflix, etc.'),
(22, 'B07QXNQM6R', 'They are not the thickest gloves but they definitely feel like they would keep my daughter s hands warm. They are very soft. Both the Velcro strap and elastic inside help keep the mitts on her little hands. They are almost perfect except for the fact that I ended up with two pink gloves for the same had.'),
(22, 'B07RF1XD36', '2 things that stuck out to me when I started using: screen and sound quality. The screen is very sharp and high contrast. Black is actually black. Very impressed. I was also surprised by the audio quality. I do not expect much from laptop speakers, especially low priced ones, but was pleasantly surprised on how clear the audio is.'),
(23, 'B07NC9J2M5', ' However, when it came to Bluetooth, only Bluetooth audio for speakers and headphones is available. I spent seveeral hours with Samsung customer service personnel, trying to explain to them that the Bluetooth Device List screen that they claimed was there absolutely was not. Finally went to a local big box store and, with a sales person, went through a 55\"\" and 65\"\" RU7100. Both displayed the same lack of any ability to connect a Bluetooth keyboard, mouse, etc. to the TV. While in and of itself, this might seem like a minor thing, no Bluetooth (except for audio) means that advertised screen mirroring from phones and tablets also does not exist.'),
(23, 'B07QXNQM6R', 'Got these for my 2 year old because we recently lost a pair of his knit mittens. I wanted something that would be easier to put on him and warmer than knit mittens, but not as stiff as snow  waterproof mittens. These fit the bill. He can play with snow here for about a half an hour in Chicago, but his hands stay warm and they are one of the few pairs we own that he doesn t fight us on wearing.'),
(23, 'B07RF1XD36', 'I use this for basic computer needs at home. What I will do with is just Office, surfing, youtube, netflix. This computer handles it really well, all very smoothly.'),
(24, 'B01HQS8UZA', 'This TV was the best purchase I have ever made on Amazon, and perhaps the best I ve ever made in general. The quality is truly respectable, and I would never guess this product was refurbished. Their refurbishing team is very talented. This TV is HUGE for the price, all while maintaining quality. It is unheard of for a television of this caliber to list at such an affordable price. I thought honestly it would have more drawbacks when I had owned it and used it heavily for a while. I am pleasantly surprised to be able to say the graphics are great, crystal clear and bright with no lagging or issues syncing the audio to the video. I never have any problems linking my comcast box, my retro gamecube gaming system, or my modern PS4 console, and was even happier to see enough ports to have all 3 of these connected at the same time.'),
(24, 'B07GM2J11Q', 'Brand new device, went from 64gb out the box and after the OS update i only have 49GB available. 3.7G are in use by preinstalled apps. So you can subtract at least 15GB from the advertised 64GB description'),
(24, 'B07QXNQM6R', 'These are great, and will grow with my newborn, so we will get a lot of use out of them. However. A longer strip of Velcro on the adjustable strap would help me cinch them tighter on a tiny wrist. Right now, I twist the strap, to shorten it.'),
(25, 'B01HQS8UZA', ' It is also very fast, always loading quickly from the power-on screen, or during shut down.'),
(25, 'B01M35CWVI', 'Nice quality, but just a warning on the sizing... our baby was born a month early (â€œearly birdâ€) at 5lbs 7oz and we panicked when we got home because she was swimming in everything.'),
(25, 'B07GM2J11Q', 'That said, if you buy the 32GB you ll be severely disappointed.'),
(26, 'B01HQS8UZA', 'It does not ever lag badly when maneuvering through smart functions either, even when accessing internet apps!'),
(26, 'B01M35CWVI', 'It s winter so I ordered these but I guess I was about 2 weeks late because she probably only put on enough weight to get to exactly 6lbs and preemie no longer fits. Unfortunately, I already washed them so I can t exchange them. '),
(26, 'B07GM2J11Q', 'I had no idea that it was even possible for the Google App Store not to be compatible with a Google Chrome Book!'),
(27, 'B01HQS8UZA', ' Honestly, if you are on a budget but want a TV that is large enough for your whole family to enjoy, while maintaining graphic and audio quality, the Element ELEFW328R 32\"\" 720p HDTV (Certified Refurbished) from the Element TV Company was honestly a HUGELY pleasant surprise. Element, you ve made a customer for life, for sure!! I look forward to purchasing my next TV for our downstairs TV through you folks!\"'),
(27, 'B01M35CWVI', 'The width of the sleeper is perfect but it is not long enough (she s only about 18-18.5 inches long). I will try for the next size up and see how it goes!'),
(27, 'B07GM2J11Q', 'Great laptop.'),
(28, 'B01M35CWVI', ' bought this in anticipation of cold weather, but they ve actually come in handy as mittens at night. My son is 2 months old, so the mittens go to his elbows, but that doesn t seem to bother him. My one other recommendation is that they make this with the hand cuff thing so newborns don t scratch themselves! Seems easy enough to add a bit of extra material.'),
(28, 'B01MU5RPQ5', 'I bought this as a cheaper alternative to a computer monitor for a couple mining rigs I set up. It only does 720p, but what it does have in it is defense is that it sips power and is only using 12VDC from a wall adapter! I was very surprised to see that. It is ultra simple, there are no frills here. But if you are looking for something for the kids bedroom or as a monitor for a non-gaming rig where you can live without 1080p, give this some serious consideration.'),
(28, 'B07FSFRWS4', ' I love this Chromebook. The price was great, the screen is nice and large, battery life lasts a long time and it is not heavy.'),
(29, 'B01MU5RPQ5', 'The actual picture at 720p, based off local digital broadcasts, was very good and beat my expectations. I found that playing around with the color mode got me something I liked better than the standard, although that was watchable. It works well with the Windows HDMI drivers for the video cards I am running, and streaming content from YouTube and the accompanying audio went without a hitch. Although the audio was nothing to write home about, which should be expected at this price point.'),
(29, 'B07FSFRWS4', 'This works great for school and fits all of my needs.'),
(29, 'B07W4SP2SN', 'These bibs are very high quality and run fairly true to size. My one issue with these (and it was present in both the toddler size and the size I ordered for my almost 6 year old) is the waist hips are very narrow. '),
(30, 'B01MU5RPQ5', 'So for my given application this TV was a great purchase for the price I paid. But if full HD is important to you, best look at another product.'),
(30, 'B07FSFRWS4', 'For 90 percent of the populous this will more than meet your demands. Extremely fast startup. More like instant. Picture quality is great. Operational speed very fast. Metal case. Automatically updates. Many apps available for it. No viruses.'),
(30, 'B07W4SP2SN', 'I can t imagine I will be able to layer clothing for either child and then pull these bibs on. The legs have a nice generous fit but the bibs taper pretty snuggly around the torso. '),
(31, 'B01MU5RPQ5', 'Update 1 May 18 - I was jacking around with the video drivers on one of the rigs and noticed it gave me the option for 1920x1080 for this TV, which was surprising as it say 720P in the description and in all the docs that came with it. So just for a lark I set the driver for 1920x1080. Voila!! The TV had no problem handling the 1080p signal. It is been running 1080p for a few weeks without a hiccup. \"If I had not already rated this 5 stars I would have jacked it up to that.\"'),
(31, 'B07FSFRWS4', 'I have had the computer for 3 months. It has been running very efficiently. What a great price!'),
(31, 'B07W4SP2SN', 'For some kids, maybe this would be ideal if they don t like having a ton of layers, but for us in the Midwest the wind is a major issue to contend with when outdoors and I worry I won t be able to layer enough to keep the kids out for more than a few minutes on a windy day. Legs had ample length (slightly long for both my kids) so may allow for growth in height if my kids don t outgrow them in width first. For reference, both my children fall right around the 50-60th percentile for height weight for their ages and wear clothing sizes that correspond to their ages.'),
(32, 'B07S8CGX9X', 'Just what I wanted in a nice light laptop package. I needed a replacement for an aging laptop and with the non-support of windows 7 come January 2020 I jumped a bit early... Great for web surfing and travel , fairly fast and decent flash memory.'),
(32, 'B07W4SP2SN', 'Soft, warm and good quality. Wish the wrist strap was longer so they could be more snug, aside from that they are great. As reference for size our son is 2.5 and they fit great!'),
(33, 'B01MRECHLD', 'Nice mid-weight cotton. Will be using for summer at daycare. The infant room is generously air conditioned so we keep a short sleeved bodysuit and cotton pants on our baby. Somehow I thought these were all striped, but they re not. '),
(33, 'B07S8CGX9X', 'The only reason I bought this product is because it said it ran on windows 10. The laptop I got runs on windows 10 in S mode. Very upset.'),
(34, 'B01MRECHLD', 'The red and blue pants have track stripes. The two gray pants are plain cotton. I have pre-washed successfully and will report back if I find that the quality is lacking. I have high hopes when buying from Carters.'),
(34, 'B07S8CGX9X', 'This is a really nice little machine. I was able to set it up and use it quickly.'),
(35, 'B01MRECHLD', 'Mittens are great. Size 2-3 a bit large for my two-year-old but will work eventually. Would like to see a more diverse color selection.'),
(35, 'B07S8CGX9X', 'One recommendation I have is to consider taking the operating system out of S mode if you want to install apps or have more control. It does give you this option but youd need to consider a security program in this case. It is extremely lightweight, fast and just a nice reliable machine.'),
(36, 'B01MRECHLD', 'Easy to put on, wish the velcro can go tighter as it is loose and falls off when he plays.'),
(36, 'B079TGL2BZ', 'The E 15 is a fast computer with plenty of ports and great battery life, but the washed out screen holds it back.'),
(37, 'B079TGL2BZ', 'I’m not the most tech savvy person on earth. My old PC was starting to become unreliable, and I knew I needed to replace it before it died. I did a bit of comparison shopping on Amazon, and decided on this Acer. It has lots of space and is fast enough for me.'),
(37, 'B07GQJ1TQ5', 'These are adorable! My 3.5 yr old (4T) is long and lean about 30ish lbs and sometimes clothes fit too short or too big however, these fit her great! Very comfortable and soft. She loves them. '),
(38, 'B079TGL2BZ', 'I do not play games on this laptop, so I don’t know anything about graphics, etc.'),
(38, 'B07GQJ1TQ5', 'My 12 mo old who is about 22.5 lbs in 18 mo fit a little snug in the arms and legs but big in the waist..still cute and she seems to love them as well.'),
(39, 'B079TGL2BZ', 'I feel I got a great laptop for the price, and it suits my simple needs.'),
(39, 'B07GQJ1TQ5', 'Its a great product, Helped my 18month old baby. I didn t give 5 start because its not tightened my baby can pull it out all the time.'),
(40, 'B07GQJ1TQ5', 'Almost completely perfect but I wish the velcro went a little tighter as these are still quite loose on my 2.5-year-old'),
(40, 'B07RF2123Z', 'I bough this Acer a few days ago to replace a Toshiba Satellite C55-C5241 that suddenly died (monitor stopped working) 3 short years after buying it.'),
(41, 'B07GNH4Y5Q', 'Love these beanies! I bought for my 9 month old and he looks super cute in them!'),
(41, 'B07RF2123Z', 'I was originally reluctant to buy an Acer as I was not very sure about the quality, was concerned about another review that mentioned the fan was very loud, and was not sure I could live with a SSD of 256 only.'),
(42, 'B07GNH4Y5Q', 'I was a bit hesitant with getting these due to sizes usually never fitting right but these are great and keeps him warm! '),
(42, 'B07RF2123Z', ' Here are my initial impressions:'),
(43, 'B07GNH4Y5Q', 'Only thing is the black and blue fit him perfectly and they re the same size except the gray is massive, a completely different size from the other two but my son will eventually grow into that one- at the moment we roll it to fit him!'),
(43, 'B07RF2123Z', 'Met all my expectations and more. The only con, and this is being nit picky, is that the fan vent is located under the laptop. If I have the laptop sitting on my lap for awhile and I start to hear the fan working hard, I try to prop up so the vent can breath.'),
(44, 'B0759YSF4W', 'Sweet little Chromebook. My husband is very happy with it.'),
(44, 'B07GNH4Y5Q', 'Nice fit and warm'),
(45, 'B074Z5TWLH', 'They are really cute socks. After I washed them they fit my grandson foot a little tighter. '),
(45, 'B0759YSF4W', 'I ve had no problems as of yet,and i do not think i will.i like this chromebook alot.its just what an old factory rat needs.'),
(46, 'B074Z5TWLH', 'They came in mail really fast. They are the right thickness for socks.'),
(46, 'B0759YSF4W', 'Going back to school and needed a cheap laptop.'),
(47, 'B074Z5TWLH', 'CUTE!'),
(47, 'B0759YSF4W', 'This is really \"barebones\" for a computer; however, it meets my needs. Loads quickly, long battery life, and responsive. When I am feeling unproductive, it plays Netflix and games well.'),
(48, 'B06XD3LXXK', 'This was a replacement for another Chromebook so the performance was as expected eg. excellent. What pleasantly surprised me , because I had not given it any thought , was that all my sites were there complete with remembered passwords.'),
(48, 'B074Z5TWLH', 'These little booties are great, but they do seem to run small. I expected my 2.5 month old to have plenty of room to grow in these, being sized 0-6 months, but she already fills them out. We purchased for winter, and that is the current season, so they will do for now. I like the idea and concept, but they are a little bulky on such tiny babies. It does answer the lost sock issue though!'),
(49, 'B06XD3LXXK', 'Chromebooks are the best buy for the buck.'),
(49, 'B07Q51C56R', 'Fit is for long, skinny babies. '),
(50, 'B06XD3LXXK', 'I’m highly impressed with this laptop! The price is unbeatable and the computer itself works flawlessly considering it is Certified Refurbished.'),
(50, 'B07Q51C56R', 'I love these PJs though because they re just so soft and the perfect weight. But, I have a short and chunky baby... Good news, the elastic at the ankle keeps the legs of the PJs in the right place - leaving just some bunched spots of fabric in the leg area. I give the sleeves a quick stretch and flip the cuffs up and the arms fit well enough too. Again, worth it for the softness and the weight, bit just know that they will probably fit most babies a bit long and tad snug.'),
(51, 'B06XD3LXXK', 'I will tell you this is a great buy.I can not believe the price and the product is great.I am so happy with my decision on this purchase.It moves very fast and adding external usb drive works fine .'),
(51, 'B07Q51C56R', 'Worked well. I wish they would make them with snaps buttons verse velcro. We bought them for Christmas and the velcro is already ripping off. I bought the 6-12 months and my son just turned 8 months (in 18 month clothes). They are now cutting into his chunky ankles. He wore them only a couple times a week. They stayed on, kept his feet warm and seemed comfortable up until then. While they were great for about 2 months, I wish they would have lasted longer before needing to be replaced.'),
(52, 'B07Q51C56R', 'bought this to avoid purchasing the more expensive Zutanos. While they are warm and fit they certainly do not stay on as well. They don t fall off as much as most other baby shoes but just not as good as Zutanos.'),
(53, 'B07QCNWRNH', 'My daughter apparently has ginormous feet (the doctors always comment on how long her feet are so I m assuming they re bigger than normal) but she s only 6 weeks old so I figure the 0-6 months should fit. Unfortunately they re still a bit too small but they re really stretchy so I m going to keep them and just make do. They do fit snugly so they shouldn t fall off, so here s hoping we get at least a few month s use out of them.'),
(54, 'B07QCNWRNH', 'I will say that these socks actually look like they re made for newborns (some brands say newborn or 0-3 months but are way bigger than these) so if you re having problems finding small enough socks these should fit your needs very well.'),
(55, 'B07QCNWRNH', 'I m glad I ordered a size up. My baby is 7 months old with pretty big feet. I ordered the 12-18 month size and it s just right and will last her thru the winter. Can t tell which shoe goes on which foot because they look like two left foot shoes, but it could go either way since they re soft booties. Pretty easy to put on too.'),
(56, 'B0742HZW9B', 'Great price... worth every penny apparently. Screej came cracked in the corner and when you turn it on the screen comes on when it feels like. Wish I looked harder. Merry Christmas to me...'),
(56, 'B07QCNWRNH', 'My only critique is that I wish the hook and loop band was wider to accommodate a narrower ankle. My babe kicks these off fairly easily right now because she s on the slender side.'),
(57, 'B0742HZW9B', 'At first I was very pleased with the computer, but after one month it started flickering on the screen. I contacted the seller who responded quickly. After a few informational email exchanges, I have not heard back from him about resolving the issue.'),
(57, 'B077583FPX', 'The camera doesn t work, neither does the flash light. This has been a problem since unpacking the item.'),
(58, 'B0742HZW9B', 'I was leery about purchasing a refurbished computer and now wish I had not.I bought this for my husband for Christmas.'),
(58, 'B077583FPX', ' Eventually, both would work after resetting and restoring my iPhone but would then stop after a few days.'),
(59, 'B0742HZW9B', 'The return window closed January 31st and it DIED February 20th! I will NEVER purchase from them again.'),
(59, 'B077583FPX', 'Leason learned with this one. I received the phone a couple weeks ago, but waited for my daughter to get home from college for Christmas before activating it. After she activated it, she was having problems sending messages, etc., so she went to the Verizon store for help. She was told the serial number for the phone is blacklisted because it has been reported lost or stolen. When we tried to re-active her old phone, her number had been blocked for fraud associated with the stolen lost phone. She and my husband were on the phone with Verizon last night for more than two hours trying to get this mess resolved. Don t do it. It s not worth it. Just get a new phone.'),
(60, 'B077583FPX', 'Package arrived on time. But the phone was not unlocked as advertised'),
(60, 'B07RHMBGCF', 'Has been working perfectly for me.'),
(61, 'B07R7DY911', 'The life of the battery is longer than my old phone - very noticeably longer. I hated spending as much money as I did, but I do love it. My carrier was able to move 90% of my applications over and I am able to check my Ring doorbell now, instead of my old phone freezing up. '),
(61, 'B07RHMBGCF', 'Good product, fast and easy to exit d ela configuration of windows 10S to win10.'),
(62, 'B07R7DY911', 'The photo quality is fabulous - quite incredible.'),
(62, 'B07RHMBGCF', ' The onscreen pointer often \"jumps\" at the very slightest amount of pressure.'),
(63, 'B07R7DY911', 'Not a bad phone for the price'),
(63, 'B07RHMBGCF', 'This is sometimes annoying when you want to click on something and it suddenly moves. Otherwise, it is an excellent computer.'),
(64, 'B07QKWTZ4B', 'Would not connect to internet about half the time, if that. Keeps getting a start menu error. Returning it.'),
(64, 'B07R7DY911', 'Great unlocked phone for most gsm services except for H2O. Has LTE compatibility issues with them. H2O customer support isn t any help either. It will work on 3G with them.'),
(65, 'B07QKWTZ4B', 'Got the item and the screen is all black. No chance to replace. Can only mail back and get a refund.'),
(65, 'B07RH8DZRM', 'My husband loved this phone so much that I thought of getting one for myself, until yesterday, when it suddenly wouldn t show the option to answer an incoming phone call on the lock screen when a call was coming in. We took it to a phone store and a phone kiosk, and they tried all the different things that we had already googled and tried, but it still won t work. We live in a  hands free  state so he can t be pressing his phone multiple times to get to where he can pull down the screen to answer his phone. If this can be fixed, I would increase the rating on this.'),
(66, 'B07QKWTZ4B', ' I wanted an inexpensice basic Laptop.'),
(66, 'B07RH8DZRM', 'Lacks in memory, but does have ability to upgrade with card. Size is great, sensitivity is on point, and price is more than reasonable. I am satisfied despite the meeting issue.'),
(67, 'B07QKWTZ4B', 'There are better out there but for a lot more money. You can not find a better laptop top at this price. It does exactly what I need it to do.\"'),
(67, 'B07RH8DZRM', 'Regalo'),
(68, 'B0742HZW9B', 'I admit I was nott expecting much as far as the Chromebook itself. I was specifically looking for a decent, stable, used/refurb older Chromebook, modestly priced unit to use for testing, debugging, and experimentation in an educational environment. It is not my primary machine, so I did not need it to be super snappy. This model is particularity geared towards the school/student market, so I figured it would be reliably sturdy. I was pleased to find that this unit was extremely clean, well functioning, and very speedy and responsive even beyond my basic needs. The only drawback of using an older refurb unit is battery performance. This one does not last very long, or hold a charge well. But I m pretty proficient with this tech, and already knew that this battery design is only optimally rated for an approximate 18 month window, after which a steady decline in battery performance should be expected. It is just part of the territory. Replacing these batteries is not very complicated. Anyone considering a refurbished model that has more than a couple of years under it should consider doing the same. This unit (true to the model line in general) has sturdy, solid feel, a responsive and snappy keyboard, a clear bright screen, and nice audio.'),
(68, 'B07RH8DZRM', 'Ordered this phone but after reading some online reviews tried to cancel it but it had already shipped. Now glad that it was too late. Nice phone, no problems at all.'),
(69, 'B0742HZW9B', ' As far as the vendor, I initially could not have been more satisfied. Not only was the price lower than I expected to have to pay for a modest refurb unit, but shipping was almost immediate, and FAST! I expected a 2-day shipment via Amazon Prime, but my delivery arrived less than 23 hours after placing the order. I do not live in an area where faster than 2-day service is typically an option, so this was an especially great surprise.'),
(69, 'B07QV2JKGQ', 'When i put in the microSD card that it came with the slot couldn t get pushed all the way, so i have to replace it with my old one (a gray sandisk card) and the slot close prefectly.'),
(70, 'B0742HZW9B', ' After less than two months of very sparse and careful use (a combined use of under 3 hours) the unit simply died, no longer booting up. After ensuring the battery was fully charged I applied the 3-key reset method (esc-refresh-pwr) and the screen flickered the \"\"Chrome OS is missing....\"\" message before pixelating into random lines and colors, quickly seizing up. Repeated attempts produced the same results.'),
(70, 'B07QV2JKGQ', 'Easy for use!'),
(71, 'B0742HZW9B', 'Great price... worth every penny apparently. Screej came cracked in the corner and when you turn it on the screen comes on when it feels like. Wish I looked harder. Merry Christmas to me..\"'),
(71, 'B07QV2JKGQ', 'The phone came very fast and work s very well.and it was not damage.'),
(72, 'B07NZZLDP9', 'The tv has excellent picture quality and was pretty easy to set up. However, we were disappointed in Amazon’s shipping and customer service. Counted on fast shipping, but the tv arrived outside of the stated delivery timeframe. It took 8 days despite the claim of free one day Prime shipping. It was 4 days after the tv shipped before it arrived. Plus, since delivery required a signature, and tracking indicated incorrectly that the package was “out for delivery “ I ended up waiting all day for the tv to arrive. Then, waited again the following day. The result of my chat with Amazon customer service was an offer of $5 for the error. My last big ticket purchase here.'),
(72, 'B07QV2JKGQ', 'Overall the phone is great. I see a one star review stating the phone doesn t work on Metro T-Mobile. I m not sure why, because that was my previous service for 8 months. I switched over to Mint only because they are cheaper.'),
(73, 'B07NZZLDP9', 'We’ve had 4K TVs since the technology first went mainstream three or four years back, including a Sony XBR85X850D, which is currently our primary television. Even without a ton of 4K content—though we do have 4K blu-rays and Apple TVs—the picture quality on an Ultra HD TV is still light years ahead of regular HD sets. Add in HDR, and the picture is just really, really hard to beat.'),
(73, 'B07P8MQHSH', 'I like this phone model. I bought this phone as a gift to my wife. Unfortunately, the phone turned out to be defective. There is a pink tint on the screen.'),
(74, 'B07NZZLDP9', 'If you are concerned about OLED panel lottery, avoid LG and go with Sony. Why Sony OLEDs are more expensive than LG OLEDs, well the main reason is that Sony Master Series OLEDs use Grade A OLED panels from LG Display so the chances of getting a set with poor uniformity/banding and tinting is way less than with LG OLEDs. My set has almost perfect white uniformity and 5% looks great after the first short compensation cycle. Not to mention that colors, motion and upscaling are great on this set!! If you are looking for the best 2019 OLED, get the Sony, period!!!'),
(74, 'B07P8MQHSH', 'Amazon does not want to properly help customers who are not in the USA. This is very sad.'),
(75, 'B07NZZLDP9', 'This TV is everything you want in a TV. Sound Quality is really good. The picture is amazing. You will need some higher end cables. That’s the only down side. But worth the money. Standard 4K can’t be compared. If you love movies need this tv. However the Netflix mode is not as good as I would have thought just darker tint. Picture standard looks better. Still worth the money\"'),
(75, 'B07P8MQHSH', 'works as descibed'),
(76, 'B07N4N4F1N', ' I normally am reluctant to buy a TV online but seeing a Sony TV at this price I thought I would give it try. ABSOLUTELY IMPRESSED!'),
(76, 'B07P8MQHSH', 'great phone for the price love the large screen display'),
(77, 'B07N4N4F1N', 'What stands out the most is the perfect colors. I watch everything from movies, news and sports so seeing people look like \"real\" people and not weird skin colors was a plus.'),
(77, 'B07PV68K73', 'I just got this phone, so it s too early to weigh in on the features, but I wanted to clarify that it does indeed work with Verizon. The phone itself came up as incompatible on first try at activation, but with a SIM chip put in, it worked just fine.'),
(78, 'B07N4N4F1N', ' I just finished watching a basketball game and I am definitely convinced I made the right decision. I received the product to replace a smaller Samsung and this one feels like garbage. I installed anyway and the screen looked like it was cracked on the inside when you turned the tv on.'),
(78, 'B07PV68K73', 'I ll update this review once I ve had it a bit longer, but so far so good. It s a beautiful phone, and really feels like a high-end model rather than a budget phone. I m very pleased with it so far and have no issues at all.'),
(79, 'B07N4N4F1N', ' Sending right back to amazon and Sony should be ashamed of themselves for charging so much for a piece of junk.'),
(79, 'B07PV68K73', 'I would have loved to give the phone 5 stars but I rated 4 it s a really nice device everything works well and battery life is awesome. The only con I have is it doesn t use wifi calling and I live in a dead zone and my cell is my life line so I cant use the device as I would like so I m currently stuck with my bug phone still !'),
(80, 'B07JJZPZNS', ' This product uses M6 threading instead of the required M4 threading for 100x100 VESA MIS part D. As a result, it incompatible with virtually every single VESA mounting system in existence. I attempted to contact TCL regarding this issue and they refused to provide any adapter to make this product compatible and claimed \"\"there are no standards.\"\"'),
(80, 'B07PV68K73', 'Good phone but is not fast'),
(81, 'B07JJZPZNS', 'TCL does not stand behind their products or care about their reputation and their support is unwilling to find solutions for you and usually does not even understand your issue.'),
(81, 'B07JQC1FQJ', 'I gave it 4 stars only because I just got the phone today. So far I am loving it. I have MetroPCS and at first thought the Sim wouldn t fit. '),
(82, 'B07JJZPZNS', 'Prior to contacting TCL, their website listed the product as M4 100x100, however if you had download the user manual it correctly identifies the 43\"\" version of the S425 series as inappropriately using M6 screws in a 100x100 layout.'),
(82, 'B07JQC1FQJ', 'Took it right to the store and they hooked everything up for me and the service is great. The specs for the price is amazing. I will update if anything changes.'),
(83, 'B07JJZPZNS', 'They have now updated their website s specification page instead of addressing the incompatibility to standards.\"'),
(83, 'B07JQC1FQJ', 'I really like this phone. Amazing value for the money. My only gripe is the video output only goes to 720p. Won t find better for the price. I highly recommend.'),
(84, 'B07F981R8M', 'I first want to say that I read through about an hour of reviews before deciding to purchase this TV. Fully understanding that sometimes you get what you pay for. I ve waited almost a week to write this review because I wanted to give myself time to fully evaluate this TV. I give it 5 stars for price and quality.'),
(84, 'B07JQC1FQJ', 'Celular lo recomiendo buena calidad de pantalla y cÃ¡mara'),
(85, 'B07F981R8M', 'having to enter your credit card for the Roku account. Also not true. At the bottom there is an option \"skip this step\" so you do not have to enter any payment information.');
INSERT INTO `review` (`user_id`, `product_id`, `reviews`) VALUES
(85, 'B07R18D87H', 'At this price point, you know you aren t getting all of the latest cutting edge features, but you also know you aren t paying the outrageous premiums that those come with these days. This is a fully featured smartphone that should satisfy the needs of most users.'),
(86, 'B07F981R8M', 'some people complained about the sound and picture quality. If you go into the settings, you can change all of those things to your liking.'),
(86, 'B07R18D87H', 'I was happy that it did NOT seem to come equipped with the full suite of Samsung bloatware. The main limitation here is the lack of a 5Ghz WiFi capability, which is kind of strange in 2019. You ll only be able to use 2.4Ghz WiFi networks.'),
(87, 'B07F981R8M', ' There is even a \"game mode\". So overall, I m extremely happy and I would reccomend this TV to anyone who is looking for a great TV at an even better price.'),
(87, 'B07R18D87H', 'Great very inexpensive alternative for people that don t need cutting edge specs .'),
(88, 'B07GB61TQR', ' The TV is excellent and weighs about 10 lbs.'),
(88, 'B07R18D87H', 'Great phone so far'),
(89, 'B07GB61TQR', ' You have to register it using a code.'),
(89, 'B07N9KQDVG', 'Writing review after 24 hours. Verizon rep put new sim card and phone and was curious why it was only getting 3G in 4G service area. '),
(90, 'B07GB61TQR', ' I tried doing so with my phone but it did not work. So I called a number on the registering app - Turns out I must have entered the website wrong and then dialed a scam number. This guy told me I needed to pay $99 to register the TV. I said not a chance bozo I ll read the manual and send it back If I have to pay anything else with the TV.'),
(90, 'B07N9KQDVG', 'Was riding bike today and phone was hanging up while streaming YouTube and then Pandora due to connectivity issues. Was never a problem with my old moto. Re-installed sim and will give it one more day then it goes back if problem continues. Update after 48 hours: changing to 4-stars. Software auto-updated and currently getting LTE.'),
(91, 'B07GB61TQR', 'I called the number in the manual and the woman said there is no cost to register the TV and that the first number must have been a scam.'),
(91, 'B07N9KQDVG', 'When the phone that s getting replaced has no screen   can t see an image.... It s hard to transfer data to the new phone. But that isn t any fault of Samsung...... Wish I knew about these phones before I bought my LG v40, the a20 is for my girlfriend...'),
(92, 'B07N4M9TL9', 'I really like this tv. It has a great picture and a nice design to it. But it has one major flaw. It will occasionally turn on by itself. This is my first Samsung tv and I m really disappointed with it. I would like to think that I just got a lemon but this is my second unit (one from Amazon and another from a different retailer).'),
(92, 'B07N9KQDVG', 'Still reviewimg phone features'),
(93, 'B01CR1FQMG', 'I ve played Refurb Roulette with several products. Sometimes it can be a headache dealing with a company when things aren t right with the device. I was excited to find out about the â€œAmazon Renewed Guaranteeâ€.'),
(93, 'B07N4M9TL9', ' It is hard to believe that I could wind up with the same tv from two different retailers and both of them have the same issue. One was manufactured'),
(94, 'B01CR1FQMG', 'I ve been very happy with how Amazon handled the few returns or complaints I ve had in the past so I figured this Amazon Renewed thing was a no-brainer.'),
(94, 'B07N4M9TL9', ' in March and the other in May. If you search the net you will see others are experiencing the same problem just not with this particular tv... YET. But give it time and you will start seeing reviews on this site and others mentioning this problem.'),
(95, 'B01CR1FQMG', 'So far, a month in, everything is working out well with this phone.'),
(95, 'B07N4M9TL9', 'As much as I like the picture and design of this tv, it iss not worth putting up with. Especially for $700. Samsung needs to do a better job of quality control.\"'),
(96, 'B01CR1FQMG', 'You pay what you get'),
(96, 'B07N4J7DLC', 'Just wanted to warn everyone that Sony is shipping 2019 Android TV with Android TV OS 7.0 from 2016 and no upgrade is available through the TV or on Sony s website.'),
(97, 'B06Y14T5YW', 'The good: I m really glad that I got this over spending more for a Verizon phone. There s less garbage on it from the carrier (and the few things that it tried to install when I inserted the SIM card were able to be uninstalled). The battery life is pretty crazy. Even without the power saver mode turned on, it lasts all day. Switch on power saver mode and it won t use hardly any power unless the screen is turned on. The curved screen doesn t cause issues with the touch screen while using it one-handed, and is positively gorgeous. People actually ask me what phone I have. The camera is super fast and takes amazing pictures.'),
(97, 'B07N4J7DLC', ' Why should I care, you ask? Imagine for a minute if your shiny new iPhone XS came with IOS 9.'),
(98, 'B06Y14T5YW', 'Overall the phone is great. It came in with Spanish text and 60% battery but it was nothing a factory reset won t fix (Should do it regardless).'),
(98, 'B07N4J7DLC', 'It means that the TV is running an old OS with an obsolete version of the user experience and missing features instead of the new one being advertised by Sony and Google. In other words, classic bait and switch.'),
(99, 'B06Y14T5YW', 'Customization is fantastic. Don t like the teardrop notch? Go to settings, display, fullscreen apps, advance and replace it with a bar. Too zoomed out? Adjust the zoom and font style. Fingerprint and face recognition is also fantastic.'),
(99, 'B07N4J7DLC', 'I am trying to decide who is more at fault here... Sony for shipping a new TV with a 3 year old OS or Google for allowing this anti-consumer behavior from their partners.'),
(100, 'B07NHQ4CXM', 'I ve been on the oled bandwagon for some time. Each year LG make it just a little bit better.'),
(100, 'B07SS5HC8D', 'I didn t notice the screen was not 1080p, which is pretty good considering how clear the screen was, didn t see any pixels. I also liked the leather design on the back. What I didn t like was that it uses Micro-USB, and the speakers and included headphones weren t great. Personal headphones work better, it s just the included headphones in the box that I didn t like and the speaker wasn t as clear as I wanted to be. Other than that, the cameras were pretty good, although a hit or miss with in low light situations. ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `fname`, `lname`) VALUES
(98, 'Abbot.Dara@gmail.com', '98#Abbot@Dara1_0', 'Abbot', 'Dara'),
(20, 'Abdul.Anika@gmail.com', '20#Abdul@Anika1_0', 'Abdul', 'Anika'),
(99, 'Abraham.Dominique@gmail.com', '99#Abraham@Dominique1_0', 'Abraham', 'Dominique'),
(25, 'Aileen.Wyoming@gmail.com', '25#Aileen@Wyoming1_0', 'Aileen', 'Wyoming'),
(79, 'Alec.Octavia@gmail.com', '79#Alec@Octavia1_0', 'Alec', 'Octavia'),
(2, 'Allistair.Nell@gmail.com', '2#Allistair@Nell1_0', 'Allistair', 'Nell'),
(32, 'Alyssa.Robin@gmail.com', '32#Alyssa@Robin1_0', 'Alyssa', 'Robin'),
(64, 'Amanda.Giselle@gmail.com', '64#Amanda@Giselle1_0', 'Amanda', 'Giselle'),
(4, 'Armand.Jolene@gmail.com', '4#Armand@Jolene1_0', 'Armand', 'Jolene'),
(78, 'Athena.Denise@gmail.com', '78#Athena@Denise1_0', 'Athena', 'Denise'),
(23, 'Barrett.Mia@gmail.com', '23#Barrett@Mia1_0', 'Barrett', 'Mia'),
(66, 'Benjamin.Angela@gmail.com', '66#Benjamin@Angela1_0', 'Benjamin', 'Angela'),
(27, 'Beverly.Alea@gmail.com', '27#Beverly@Alea1_0', 'Beverly', 'Alea'),
(90, 'Blossom.Quail@gmail.com', '90#Blossom@Quail1_0', 'abcd', 'efgh'),
(46, 'Brianna.MacKensie@gmail.com', '46#Brianna@MacKensie1_0', 'Brianna', 'MacKensie'),
(61, 'Caldwell.Cheryl@gmail.com', '61#Caldwell@Cheryl1_0', 'Caldwell', 'Cheryl'),
(47, 'Caleb.Linda@gmail.com', '47#Caleb@Linda1_0', 'Caleb', 'Linda'),
(45, 'Carissa.Cheryl@gmail.com', '45#Carissa@Cheryl1_0', 'Carissa', 'Cheryl'),
(59, 'Caryn.Quemby@gmail.com', '59#Caryn@Quemby1_0', 'Caryn', 'Quemby'),
(94, 'Cecilia.Nadine@gmail.com', '94#Cecilia@Nadine1_0', 'Cecilia', 'Nadine'),
(71, 'Chadwick.Sopoline@gmail.com', '71#Chadwick@Sopoline1_0', 'Chadwick', 'Sopoline'),
(92, 'Chaim.Emily@gmail.com', '92#Chaim@Emily1_0', 'Chaim', 'Emily'),
(95, 'Christine.Iona@gmail.com', '95#Christine@Iona1_0', 'Christine', 'Iona'),
(70, 'Clark.Sloane@gmail.com', '70#Clark@Sloane1_0', 'Clark', 'Sloane'),
(21, 'Courtney.Nita@gmail.com', '21#Courtney@Nita1_0', 'Courtney', 'Nita'),
(6, 'Dai.Basia@gmail.com', '6#Dai@Basia1_0', 'Dai', 'Basia'),
(91, 'Dorian.Fiona@gmail.com', '91#Dorian@Fiona1_0', 'Dorian', 'Fiona'),
(9, 'Dorothy.Kathleen@gmail.com', '9#Dorothy@Kathleen1_0', 'Dorothy', 'Kathleen'),
(24, 'Duncan.Bryar@gmail.com', '24#Duncan@Bryar1_0', 'Duncan', 'Bryar'),
(96, 'Elijah.Lenore@gmail.com', '96#Elijah@Lenore1_0', 'Elijah', 'Lenore'),
(82, 'Elmo.Shafira@gmail.com', '82#Elmo@Shafira1_0', 'Elmo', 'Shafira'),
(40, 'Elton.Wilma@gmail.com', '40#Elton@Wilma1_0', 'Elton', 'Wilma'),
(26, 'Emi.Dara@gmail.com', '26#Emi@Dara1_0', 'Emi', 'Dara'),
(10, 'Faith.Lisandra@gmail.com', '10#Faith@Lisandra1_0', 'Faith', 'Lisandra'),
(77, 'Francis.Kyra@gmail.com', '77#Francis@Kyra1_0', 'Francis', 'Kyra'),
(51, 'Gabriel.Sylvia@gmail.com', '51#Gabriel@Sylvia1_0', 'Gabriel', 'Sylvia'),
(83, 'Gannon.Priscilla@gmail.com', '83#Gannon@Priscilla1_0', 'Gannon', 'Priscilla'),
(19, 'Grant.Rama@gmail.com', '19#Grant@Rama1_0', 'Grant', 'Rama'),
(53, 'Haley.Katelyn@gmail.com', '53#Haley@Katelyn1_0', 'Haley', 'Katelyn'),
(30, 'Hamish.Mariko@gmail.com', '30#Hamish@Mariko1_0', 'Hamish', 'Mariko'),
(76, 'Hedley.Daria@gmail.com', '76#Hedley@Daria1_0', 'Hedley', 'Daria'),
(72, 'Hoyt.Bertha@gmail.com', '72#Hoyt@Bertha1_0', 'Hoyt', 'Bertha'),
(44, 'Iliana.Kelsey@gmail.com', '44#Iliana@Kelsey1_0', 'Iliana', 'Kelsey'),
(42, 'Iris.Alice@gmail.com', '42#Iris@Alice1_0', 'Iris', 'Alice'),
(50, 'Ivory.Noel@gmail.com', '50#Ivory@Noel1_0', 'Ivory', 'Noel'),
(56, 'Jayme.Martha@gmail.com', '56#Jayme@Martha1_0', 'Jayme', 'Martha'),
(54, 'Jolie.Nola@gmail.com', '54#Jolie@Nola1_0', 'Jolie', 'Nola'),
(22, 'Jorden.Delilah@gmail.com', '22#Jorden@Delilah1_0', 'Jorden', 'Delilah'),
(38, 'Joshua.Lesley@gmail.com', '38#Joshua@Lesley1_0', 'Joshua', 'Lesley'),
(97, 'Judah.Sonia@gmail.com', '97#Judah@Sonia1_0', 'Judah', 'Sonia'),
(80, 'Keaton.Inez@gmail.com', '80#Keaton@Inez1_0', 'Keaton', 'Inez'),
(62, 'Kellie.Gemma@gmail.com', '62#Kellie@Gemma1_0', 'Kellie', 'Gemma'),
(39, 'Kellie.Lareina@gmail.com', '39#Kellie@Lareina1_0', 'Kellie', 'Lareina'),
(7, 'Kelsie.Nyssa@gmail.com', '7#Kelsie@Nyssa1_0', 'Kelsie', 'Nyssa'),
(34, 'Kessie.Mechelle@gmail.com', '34#Kessie@Mechelle1_0', 'Kessie', 'Mechelle'),
(43, 'Kevin.Shelly@gmail.com', '43#Kevin@Shelly1_0', 'Kevin', 'Shelly'),
(89, 'Kitra.Jamalia@gmail.com', '89#Kitra@Jamalia1_0', 'Kitra', 'Jamalia'),
(41, 'Kitra.Orli@gmail.com', '41#Kitra@Orli1_0', 'Kitra', 'Orli'),
(5, 'Kyle.Kyla@gmail.com', '5#Kyle@Kyla1_0', 'Kyle', 'Kyla'),
(100, 'Lars.Jessica@gmail.com', '100#Lars@Jessica1_0', 'Lars', 'Jessica'),
(52, 'Leslie.Nyssa@gmail.com', '52#Leslie@Nyssa1_0', 'Leslie', 'Nyssa'),
(35, 'Lila.Doris@gmail.com', '35#Lila@Doris1_0', 'Lila', 'Doris'),
(81, 'Linda.Ora@gmail.com', '81#Linda@Ora1_0', 'Linda', 'Ora'),
(31, 'Lydia.Julie@gmail.com', '31#Lydia@Julie1_0', 'Lydia', 'Julie'),
(65, 'Maia.MacKensie@gmail.com', '65#Maia@MacKensie1_0', 'Maia', 'MacKensie'),
(28, 'Maile.McKenzie@gmail.com', '28#Maile@McKenzie1_0', 'Maile', 'McKenzie'),
(18, 'Mallory.Iona@gmail.com', '18#Mallory@Iona1_0', 'Mallory', 'Iona'),
(84, 'Mannix.Barbara@gmail.com', '84#Mannix@Barbara1_0', 'Mannix', 'Barbara'),
(49, 'McKenzie.Martena@gmail.com', '49#McKenzie@Martena1_0', 'McKenzie', 'Martena'),
(29, 'Meghan.Dahlia@gmail.com', '29#Meghan@Dahlia1_0', 'Meghan', 'Dahlia'),
(68, 'Mercedes.Fleur@gmail.com', '68#Mercedes@Fleur1_0', 'Mercedes', 'Fleur'),
(57, 'Michael.Rhona@gmail.com', '57#Michael@Rhona1_0', 'Michael', 'Rhona'),
(3, 'Mollie.Calista@gmail.com', '3#Mollie@Calista1_0', 'Mollie', 'Calista'),
(58, 'Murphy.Maxine@gmail.com', '58#Murphy@Maxine1_0', 'Murphy', 'Maxine'),
(16, 'Nero.Adrienne@gmail.com', '16#Nero@Adrienne1_0', 'Nero', 'Adrienne'),
(14, 'Oscar.Cailin@gmail.com', '14#Oscar@Cailin1_0', 'Oscar', 'Cailin'),
(55, 'Pascale.Caryn@gmail.com', '55#Pascale@Caryn1_0', 'Pascale', 'Caryn'),
(69, 'Phyllis.Amela@gmail.com', '69#Phyllis@Amela1_0', 'Phyllis', 'Amela'),
(67, 'Porter.Christen@gmail.com', '67#Porter@Christen1_0', 'Porter', 'Christen'),
(75, 'Rudyard.Renee@gmail.com', '75#Rudyard@Renee1_0', 'Rudyard', 'Renee'),
(86, 'Russell.Robin@gmail.com', '86#Russell@Robin1_0', 'Russell', 'Robin'),
(73, 'Sean.Alexis@gmail.com', '73#Sean@Alexis1_0', 'Sean', 'Alexis'),
(33, 'Shelley.Shoshana@gmail.com', '33#Shelley@Shoshana1_0', 'Shelley', 'Shoshana'),
(93, 'Simon.Sigourney@gmail.com', '93#Simon@Sigourney1_0', 'Simon', 'Sigourney'),
(60, 'Slade.Olivia@gmail.com', '60#Slade@Olivia1_0', 'Slade', 'Olivia'),
(101, 'sravyakl93@gmail.com', '9064@@9064', 'LAKSHMI', 'KAMBHAMPATI'),
(104, 'srikanth.puvv@gmail.com', '67867845', 'sri', 'puvv'),
(102, 'srikanth.puvvada@gmail.com', '9064@@Ami', 'srikanth', 'puvvada'),
(105, 'srinu.jalla@gmail.com', '9064@@Ami', 'srinu', 'jalla'),
(11, 'Sybil.MacKensie@gmail.com', '11#Sybil@MacKensie1_0', 'Sybil', 'MacKensie'),
(12, 'Tana.Tashya@gmail.com', '12#Tana@Tashya1_0', 'Tana', 'Tashya'),
(85, 'Tanek.Azalia@gmail.com', '85#Tanek@Azalia1_0', 'Tanek', 'Azalia'),
(88, 'Tanner.Alexandra@gmail.com', '88#Tanner@Alexandra1_0', 'Tanner', 'Alexandra'),
(87, 'Taylor.Sophia@gmail.com', '87#Taylor@Sophia1_0', 'Taylor', 'Sophia'),
(48, 'Thane.Marny@gmail.com', '48#Thane@Marny1_0', 'Thane', 'Marny'),
(17, 'Veronica.Brynne@gmail.com', '17#Veronica@Brynne1_0', 'Veronica', 'Brynne'),
(15, 'Walker.Cara@gmail.com', '15#Walker@Cara1_0', 'Walker', 'Cara'),
(36, 'Wallace.Blair@gmail.com', '36#Wallace@Blair1_0', 'Wallace', 'Blair'),
(8, 'Walter.Georgia@gmail.com', '8#Walter@Georgia1_0', 'Walter', 'Georgia'),
(37, 'Wendy.Zenia@gmail.com', '37#Wendy@Zenia1_0', 'Wendy', 'Zenia'),
(74, 'Wesley.Kerry@gmail.com', '74#Wesley@Kerry1_0', 'Wesley', 'Kerry'),
(63, 'Xantha.Naida@gmail.com', '63#Xantha@Naida1_0', 'Xantha', 'Naida'),
(103, 'xio.ki@gmail.com', 'xiopassword', 'xio', 'ki'),
(1, 'yi.li@gmail.com', '90909090', 'Yi', 'Li'),
(13, 'Zorita.Cassidy@gmail.com', '13#Zorita@Cassidy1_0', 'Zorita', 'Cassidy');

-- --------------------------------------------------------

--
-- Table structure for table `user_add`
--

DROP TABLE IF EXISTS `user_add`;
CREATE TABLE `user_add` (
  `userid` int(11) NOT NULL,
  `add_id` varchar(4) NOT NULL,
  `add1` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(3) NOT NULL,
  `zip` varchar(15) NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_add`
--

INSERT INTO `user_add` (`userid`, `add_id`, `add1`, `city`, `state`, `zip`, `phone`) VALUES
(1, '0', '9064 powers ferry rd', 'Marry', 'GA', '30067', '4044567345'),
(1, 'a4', '8931 Heather Quail Ramp', ' Alliance', ' LA', ' 70778-8974', ' (225) 961-0154'),
(2, 'a5', '1262 Iron Pond Vale', ' Corns Manor', ' DC', ' 20039-4966', ' (202) 836-1451'),
(2, 'a6', '3564 Clear Carrefour', ' Blackwell', ' MI', ' 48931-4157', ' (616) 198-0774'),
(2, 'a7', '8626 Velvet Heights', ' Gold Branch', ' ND', ' 58258-5510', ' (701) 293-1633'),
(3, 'a10', '5138 Emerald Beacon Glade', ' Thornton', ' OK', ' 73538-1845', ' (580) 109-4178'),
(3, 'a8', '8723 Wishing Panda Path', ' Cottondale', ' MN', ' 56274-0103', ' (320) 196-1423'),
(3, 'a9', '5398 High Gate Place', ' Maywood', ' SD', ' 57066-4329', ' (605) 819-9399'),
(4, 'a11', '3743 Merry Barn Wynd', ' Ixonia', ' GA', ' 39930-1805', ' (229) 936-4702'),
(4, 'a12', '9204 Umber Treasure Stead', ' Bergen Beach', ' UT', ' 84709-6902', ' (385) 750-2758'),
(5, 'a13', '133 Golden Pathway', ' Kennedy', ' IN', ' 47381-9295', ' (765) 661-6396'),
(5, 'a14', '3273 Cinder Rise Turnabout', ' Hubbleton', ' SD', ' 57598-4507', ' (605) 088-6832'),
(6, 'a15', '4152 Indian Vista', ' Holland Mill', ' MO', ' 63188-6698', ' (314) 316-6212'),
(7, 'a16', '9037 Fallen Ledge', ' Walnut', ' ND', ' 58221-3945', ' (701) 442-2578'),
(8, 'a17', '954 Bright By-pass', ' Rapids', ' IL', ' 61397-8123', ' (779) 658-5803'),
(9, 'a18', '6873 Rocky Canyon', ' Avoca', ' OR', ' 97672-2988', ' (458) 456-0465'),
(10, 'a19', '2530 Little Wagon Subdivision', ' Burr Oak', ' UT', ' 84193-6610', ' (435) 417-0591'),
(11, 'a20', '1536 Burning Limits', ' Pastolik', ' AZ', ' 86639-0626', ' (520) 109-7065'),
(12, 'a21', '9681 Dusty Village', ' Cienega', ' NV', ' 89690-9080', ' (775) 389-0459'),
(13, 'a22', '5103 Quiet Farm', ' Caddo', ' MD', ' 21508-0874', ' (240) 168-1656'),
(14, 'a23', '23 Lost Prairie Key', ' Swanwick', ' OR', ' 97663-1093', ' (971) 794-4158'),
(15, 'a24', '790 Grand Timber Trace', ' Dawson', ' SC', ' 29264-8419', ' (864) 012-8827'),
(16, 'a25', '7889 Amber Mount', ' Kings Manor', ' MA', ' 01698-0588', ' (774) 080-4048'),
(17, 'a26', '3094 Cotton Cider Valley', ' Glen Head', ' SD', ' 57222-2376', ' (605) 023-2879'),
(18, 'a27', '1587 Misty Brook Row', ' Indian Falls', ' NM', ' 88343-8445', ' (575) 470-8421'),
(19, 'a28', '7061 Cozy Expressway', ' Fountain Spring', ' IA', ' 51381-4219', ' (515) 254-2782'),
(20, 'a29', '7834 Red Edge', ' Birch Bay', ' NH', ' 03483-8831', ' (603) 672-1623'),
(21, 'a30', '960 Quaking Pointe', ' Economy', ' AZ', ' 86216-3640', ' (602) 818-2668'),
(22, 'a31', '2707 Harvest Crossing', ' Elloree', ' TX', ' 77137-1940', ' (979) 354-4407'),
(23, 'a32', '4707 Blue Elk Cape', ' Hubbard', ' NC', ' 28963-0280', ' (704) 318-1804'),
(24, 'a33', '8527 Gentle Towers', ' Marshall', ' ND', ' 58425-2789', ' (701) 712-2326'),
(25, 'a34', '4982 Green Log Loop', ' Rockland', ' MA', ' 01424-2382', ' (339) 714-5258'),
(26, 'a35', '7384 Middle Private', ' Heflin', ' OH', ' 45161-0064', ' (567) 159-2340'),
(27, 'a36', '4848 Noble Forest Impasse', ' Alsen Heights', ' UT', ' 84037-9227', ' (385) 137-0063'),
(28, 'a37', '1618 Hidden Falls', ' Buckhorn', ' WA', ' 98263-3737', ' (360) 861-4585'),
(29, 'a38', '5373 Dewy Dale Line', ' Colliersville', ' MS', ' 38765-3414', ' (601) 182-4320'),
(30, 'a39', '3779 Old Range', ' Mauvilla', ' OK', ' 74605-5263', ' (539) 199-7216'),
(31, 'a40', '7060 Pleasant Hickory Inlet', ' Stage Road Development', ' MT', ' 59308-7952', ' (406) 563-4882'),
(32, 'a41', '2091 Honey Grounds', ' Riverton', ' VA', ' 23714-7472', ' (703) 056-4823'),
(33, 'a42', '3299 Silent Goose Gardens', ' Dickinsons Corner', ' VA', ' 24199-6912', ' (757) 493-2339'),
(34, 'a43', '2454 Lazy Field', ' Stockbridge', ' UT', ' 84403-0550', ' (385) 432-3201'),
(35, 'a44', '5396 Sunny Deer Rise', ' Hamilton', ' CO', ' 81574-1649', ' (720) 056-7170'),
(36, 'a45', '695 Sleepy Downs', ' Brent Town', ' NE', ' 68632-6456', ' (402) 883-7361'),
(37, 'a46', '2274 Jagged Embers Trail', ' Little Falls', ' NH', ' 03776-3453', ' (603) 493-4915'),
(38, 'a47', '6353 Broad Front', ' Mannington Mills', ' NC', ' 27649-9264', ' (910) 609-8974'),
(39, 'a48', '7062 Easy River Orchard', ' Clintonville', ' NY', ' 11287-9925', ' (716) 909-7049'),
(40, 'a49', '8561 Tawny Butterfly Alley', ' Blanton', ' UT', ' 84851-5839', ' (385) 601-4478'),
(41, 'a50', '5937 Foggy Corners', ' Ravenna', ' DC', ' 20080-6295', ' (202) 866-8338'),
(42, 'a51', '8357 Sunny Diversion', ' Greenwood Springs', ' VA', ' 22869-3687', ' (276) 452-3242'),
(43, 'a52', '5578 Easy Cider Limits', ' Georgetown', ' NE', ' 69137-0541', ' (308) 246-8892'),
(44, 'a53', '5504 Umber Elk Canyon', ' Cottage Grove', ' OR', ' 97720-7204', ' (503) 974-2824'),
(45, 'a54', '5480 Rocky Deer Crossing', ' Edgewood Hills', ' AK', ' 99718-4833', ' (907) 398-1603'),
(46, 'a55', '3898 Old Dale Autoroute', ' Hudson', ' IL', ' 61113-3953', ' (779) 821-4980'),
(47, 'a56', '8046 Clear Round', ' Printer', ' VA', ' 22552-6575', ' (276) 738-2635'),
(48, 'a57', '2591 Dusty Embers Island', ' Kenton', ' KY', ' 41955-9454', ' (502) 016-1840'),
(49, 'a58', '715 Indian Cape', ' Stockton', ' AK', ' 99895-9442', ' (907) 729-8870'),
(50, 'a59', '6787 Harvest Leaf By-pass', ' Rumford', ' MA', ' 02319-5227', ' (978) 211-5744'),
(51, 'a60', '4232 Little Gate Knoll', ' Pinnacles', ' AZ', ' 85709-4819', ' (520) 494-0187'),
(52, 'a61', '8373 Noble Mews', ' Sacksonia', ' NJ', ' 08417-4550', ' (732) 864-3605'),
(53, 'a62', '5906 Broad Highlands', ' Au Sable', ' WV', ' 25639-3279', ' (681) 981-9567'),
(54, 'a63', '4098 Hazy Pike', ' Grandin', ' LA', ' 70944-3373', ' (504) 920-1810'),
(55, 'a64', '1919 Cotton Pioneer Village', ' Toxaway', ' UT', ' 84952-5282', ' (801) 219-5014'),
(56, 'a65', '3630 High Bluff Square', ' Croft', ' PA', ' 19467-1325', ' (484) 353-7711'),
(57, 'a66', '664 Thunder Close', ' Cabanal', ' ND', ' 58419-7432', ' (701) 785-4590'),
(58, 'a67', '1804 Colonial Fawn Pines', ' Pinson', ' MS', ' 38697-3575', ' (769) 572-3135'),
(59, 'a68', '7436 Iron Thicket', ' Eno', ' NE', ' 68922-8304', ' (308) 458-7524'),
(60, 'a69', '3452 Grand Ramp', ' Cayuga Junction', ' FL', ' 34408-7826', ' (239) 157-6922'),
(61, 'a70', '9936 Hidden Trace', ' Lenora', ' TX', ' 75945-0756', ' (713) 941-2899'),
(62, 'a71', '9401 Velvet Mountain', ' West Point', ' IL', ' 62277-6779', ' (815) 672-1370'),
(63, 'a72', '5272 Jagged Byway', ' London', ' HI', ' 96816-5479', ' (808) 299-0360'),
(64, 'a73', '1657 Rustic Farm', ' Humboldt Hill', ' NH', ' 03846-8473', ' (603) 254-6225'),
(65, 'a74', '3893 Honey Forest Towers', ' Runa', ' TN', ' 38245-4533', ' (931) 721-0041'),
(66, 'a75', '3222 Lost Drive', ' Rogers', ' OH', ' 43089-2726', ' (614) 807-8872'),
(67, 'a76', '4126 Tawny Circle', ' Ellamore', ' WV', ' 26929-2918', ' (681) 154-9759'),
(68, 'a77', '7883 Burning Sky Bay', ' Frailie', ' SC', ' 29208-0451', ' (843) 410-3720'),
(69, 'a78', '1702 Fallen Meadow', ' Wauban Beach', ' VA', ' 23493-1283', ' (571) 065-8772'),
(70, 'a79', '9187 Cozy Rabbit Turnabout', ' Elftman', ' VA', ' 24150-3079', ' (757) 512-8942'),
(71, 'a80', '244 Red Island Farms', ' Knights Corner', ' WY', ' 82006-0594', ' (307) 142-7398'),
(72, 'a81', '4637 Silent Green', ' Cherokee Meadows', ' MS', ' 39342-3407', ' (228) 588-5500'),
(73, 'a82', '4805 Merry Pine Impasse', ' Charlotte Park', ' HI', ' 96786-8533', ' (808) 614-4124'),
(74, 'a83', '7147 Amber Zephyr Isle', ' Palm Grove', ' NY', ' 13910-0113', ' (631) 307-5241'),
(75, 'a84', '3749 Golden Arbor', ' Paint Branch Farms', ' AK', ' 99630-1635', ' (907) 750-2464'),
(76, 'a85', '5157 Quaking Timber Expressway', ' The Island', ' IN', ' 46230-9272', ' (765) 055-7225'),
(77, 'a86', '7948 Misty Quay', ' Vetera', ' NM', ' 87931-3818', ' (505) 442-3442'),
(78, 'a87', '1668 Crystal Mountain Swale', ' Moundridge', ' MD', ' 20910-0470', ' (301) 594-8217'),
(79, 'a88', '6550 Foggy Grove', ' Newtown', ' UT', ' 84990-9824', ' (801) 434-5242'),
(80, 'a89', '9206 Middle Treasure Boulevard', ' Halls Flat', ' LA', ' 70936-7964', ' (985) 771-9315'),
(81, 'a90', '1767 Cinder Barn Key', ' Picketts Creek', ' WY', ' 83064-4331', ' (307) 082-4917'),
(82, 'a91', '8568 Silver Branch Circuit', ' Clover', ' NH', ' 03201-5881', ' (603) 757-8481'),
(83, 'a92', '4024 Wishing Autumn Grounds', ' Strickland Crossing', ' KS', ' 66351-7324', ' (316) 907-0599'),
(84, 'a93', '5925 Round Glade', ' Prague', ' KS', ' 66049-6918', ' (316) 392-3746'),
(85, 'a94', '8433 Shady Path', ' Perrytown', ' MN', ' 56265-0576', ' (651) 313-1264'),
(86, 'a95', '9345 Blue Pond Run', ' Lake Huron Beach', ' ND', ' 58198-6334', ' (701) 150-4545'),
(87, 'a96', '7930 Pleasant Townline', ' Mossy Grove', ' TX', ' 78075-0798', ' (512) 657-3317'),
(88, 'a97', '9583 Sleepy Inlet', ' Cortez', ' NC', ' 27598-5298', ' (334) 571-6005'),
(89, 'a98', '424 Dewy Acres', ' Rockbridge', ' GA', ' 39999-3557', ' (912) 613-0767'),
(90, 'a99', '4976 Heather Trail', ' Atlantic', ' NH', ' 03340-5503', ' (603) 114-4871'),
(91, 'a100', '7330 Green Dale', ' Perry Addition', ' MD', ' 21602-3661', ' (301) 395-5803'),
(92, 'a101', '3002 Rustic Oak Drive', ' Raeville', ' OR', ' 97740-5230', ' (458) 001-5049'),
(93, 'a102', '4486 Thunder View', ' Rambler Mobile Park', ' PA', ' 16035-2280', ' (267) 135-1359'),
(94, 'a103', '9220 Little Pony Quay', ' Bridges', ' LA', ' 70386-3919', ' (985) 493-0046'),
(95, 'a104', '1683 Pleasant Impasse', ' Omega', ' TN', ' 37841-1496', ' (423) 687-7146'),
(96, 'a105', '3065 Stony Farm', ' Southfield At Whitemarsh', ' NM', ' 87859-4598', ' (575) 097-2390'),
(97, 'a106', '9120 Clear Carrefour', ' Jeffries', ' MN', ' 56545-2125', ' (218) 848-0370'),
(98, 'a107', '98 Silent Passage', ' Burtonville', ' LA', ' 70462-3470', ' (318) 430-7490'),
(99, 'a108', '7879 Bright Knoll', ' Brinker', ' WA', ' 99399-5495', ' (360) 505-3296'),
(100, 'a109', '6567 Lazy Lake Mall ', ' Browns Crossing', ' CT', ' 06335-5590', ' (860) 633-8946'),
(101, '3bf9', '2041 POWERS FERRY', 'MARIETTA', 'GA', '30061', '4044356783'),
(101, 'a111', '8498 Blue Berry Falls', ' Green Grove', ' CO', ' 81807-1074', ' (720) 814-5060'),
(101, 'a112', '7406 Silver Pond Hollow', ' Burdett', ' MN', ' 56770-1200', ' (320) 472-6260'),
(101, 'a113', '4395 Middle Loop', ' Martinez Place', ' OR', ' 97679-0699', ' (541) 349-7813'),
(102, 'a114', '2041 Powers ferry rd', 'Marietta', 'GA', '30067-30068', '(404)434-3461'),
(102, 'a115', '1683 Pleasant Impasse', ' Omega', ' TN', ' 37841-1496', ' (423) 687-7146'),
(104, '4a8d', '2041 toresf sd', 'mariestt', 'dg', '34723', '38423443');

-- --------------------------------------------------------

--
-- Table structure for table `user_card`
--

DROP TABLE IF EXISTS `user_card`;
CREATE TABLE `user_card` (
  `userid` int(11) NOT NULL,
  `creditid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_card`
--

INSERT INTO `user_card` (`userid`, `creditid`) VALUES
(1, 'c19'),
(1, 'c20'),
(1, 'c21'),
(1, 'c47'),
(2, 'c6'),
(2, 'c7'),
(2, 'c8'),
(3, 'c31'),
(3, 'c32'),
(3, 'c33'),
(3, 'c36'),
(3, 'c40'),
(4, 'c49'),
(4, 'c50'),
(4, 'c51'),
(4, 'c57'),
(6, 'c22'),
(6, 'c60'),
(6, 'c61'),
(6, 'c62'),
(7, 'c27'),
(8, 'c17'),
(10, 'c5'),
(12, 'c63'),
(14, 'c54'),
(15, 'c58'),
(16, 'c79'),
(17, 'c29'),
(18, 'c45'),
(20, 'c77'),
(21, 'c81'),
(22, 'c18'),
(24, 'c73'),
(25, 'c66'),
(26, 'c95'),
(27, 'c67'),
(28, 'c48'),
(29, 'c53'),
(32, 'c42'),
(33, 'c30'),
(35, 'c35'),
(36, 'c87'),
(37, 'c90'),
(39, 'c24'),
(40, 'c69'),
(41, 'c98'),
(42, 'c91'),
(43, 'c52'),
(44, 'c4'),
(45, 'c13'),
(46, 'c68'),
(47, 'c78'),
(48, 'c71'),
(49, 'c43'),
(50, 'c55'),
(51, 'c72'),
(52, 'c46'),
(54, 'c96'),
(55, 'c84'),
(56, 'c88'),
(59, 'c65'),
(60, 'c85'),
(61, 'c16'),
(62, 'c93'),
(63, 'c1'),
(63, 'c2'),
(63, 'c3'),
(66, 'c89'),
(67, 'c86'),
(68, 'c25'),
(69, 'c37'),
(70, 'c100'),
(71, 'c74'),
(72, 'c94'),
(73, 'c15'),
(75, 'c28'),
(76, 'c39'),
(76, 'c59'),
(78, 'c56'),
(79, 'c97'),
(80, 'c41'),
(81, 'c14'),
(82, 'c75'),
(84, 'c82'),
(85, 'c92'),
(87, 'c76'),
(88, 'c64'),
(89, 'c26'),
(90, 'c44'),
(91, 'c83'),
(92, 'c70'),
(94, 'c99'),
(95, 'c80'),
(96, 'c23'),
(97, 'c34'),
(100, 'c38'),
(101, 'c10'),
(101, 'c11'),
(101, 'c12'),
(101, 'c9'),
(102, 'c61'),
(102, 'c79');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `order_id` varchar(15) NOT NULL,
  `userid` int(11) NOT NULL,
  `order_time` datetime DEFAULT NULL,
  `del_add` varchar(50) NOT NULL,
  `cred_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`order_id`, `userid`, `order_time`, `del_add`, `cred_id`) VALUES
('5de584e8bd144', 102, '2019-12-02 04:40:56', 'a115', 'c79'),
('5de5850ff0821', 101, '2019-12-02 04:41:35', 'a111', 'c10'),
('5de5853989e55', 101, '2019-12-02 04:42:17', 'a110', 'c10'),
('5de594332556d', 101, '2019-12-02 05:46:11', 'a113', 'c9'),
('5de5ab9c66b7a', 1, '2019-12-02 07:26:04', 'a4', 'c47'),
('5de5f0b897b2f', 1, '2019-12-03 12:20:56', 'a4', 'c47'),
('5de5f0cc2f282', 1, '2019-12-03 12:21:16', 'a4', 'c19'),
('5de69b675a3bc', 101, '2019-12-03 12:29:11', 'a111', 'c11'),
('5de6ad39117a7', 101, '2019-12-03 01:45:13', 'a111', 'c11'),
('5de6ad56aa858', 101, '2019-12-03 01:45:42', 'a113', 'c9'),
('5de6ad902cecc', 101, '2019-12-03 01:46:40', 'a113', 'c9'),
('5de6adb326e1f', 101, '2019-12-03 01:47:15', 'a113', 'c9'),
('5de6c6d497445', 102, '2019-12-03 03:34:28', 'a114', 'c61');

-- --------------------------------------------------------

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
CREATE TABLE `wish` (
  `prodid` varchar(12) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wish`
--

INSERT INTO `wish` (`prodid`, `userid`) VALUES
('B00KRYL71U', 103),
('B016XUCYZO', 101),
('B01CR1FQMG', 103),
('B01D10RT22', 101),
('B01HQS8UZA', 101),
('B01N2Z17MS', 101),
('B06XVNS9YX', 102),
('B0742HZW9B', 1),
('B0742HZW9B', 102),
('B074K76BTX', 1),
('B074K76BTX', 103),
('B077583FPX', 103),
('B078MPQB65', 103),
('B079HB518K', 103),
('B07GNH4Y5Q', 1),
('B07KVJ4NT1', 103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`,`prodid`,`userid`),
  ADD KEY `prodid` (`prodid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`credit_num`),
  ADD UNIQUE KEY `credit_id` (`credit_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`,`prodid`),
  ADD KEY `prodid` (`prodid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `prod_cat` (`prod_cat`);

--
-- Indexes for table `prod_photos`
--
ALTER TABLE `prod_photos`
  ADD PRIMARY KEY (`prod_id`,`prod_img`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user_add`
--
ALTER TABLE `user_add`
  ADD PRIMARY KEY (`userid`,`add_id`);

--
-- Indexes for table `user_card`
--
ALTER TABLE `user_card`
  ADD PRIMARY KEY (`userid`,`creditid`),
  ADD KEY `creditid` (`creditid`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`order_id`,`userid`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `wish`
--
ALTER TABLE `wish`
  ADD PRIMARY KEY (`prodid`,`userid`),
  ADD KEY `userid` (`userid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`prodid`) REFERENCES `product` (`prod_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`prodid`) REFERENCES `product` (`prod_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`orderid`) REFERENCES `user_order` (`order_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`prod_cat`) REFERENCES `category` (`cat_id`);

--
-- Constraints for table `prod_photos`
--
ALTER TABLE `prod_photos`
  ADD CONSTRAINT `prod_photos_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`prod_id`);

--
-- Constraints for table `user_add`
--
ALTER TABLE `user_add`
  ADD CONSTRAINT `user_add_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_card`
--
ALTER TABLE `user_card`
  ADD CONSTRAINT `user_card_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_card_ibfk_2` FOREIGN KEY (`creditid`) REFERENCES `credit` (`credit_id`);

--
-- Constraints for table `user_order`
--
ALTER TABLE `user_order`
  ADD CONSTRAINT `user_order_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `wish`
--
ALTER TABLE `wish`
  ADD CONSTRAINT `wish_ibfk_1` FOREIGN KEY (`prodid`) REFERENCES `product` (`prod_id`),
  ADD CONSTRAINT `wish_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
