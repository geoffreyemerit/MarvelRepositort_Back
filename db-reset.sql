-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2020 at 03:12 PM
-- Server version: 10.3.22-MariaDB-1ubuntu1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marvel_u`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `heroes` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `identity` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `team` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hero`
--

INSERT INTO `heroes` (`id`, `lastname`, `firstname`, `identity`, `picture`, `origin`, `description`, `team`) VALUES
(1, 'Danvers', 'Carol', 'Captain Marvel', 'https://zupimages.net/up/22/31/54ha.jpg', 'Earth. Near death, Carol Danvers was transformed into a powerful warrior for the Kree.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(2, '', 'Thanos', 'Thanos', 'https://zupimages.net/up/22/31/ozts.jpg', 'A native of the planet Titan, that was destroyed from overpopulation.Firmly believing that the universe at large was in the same danger as Titan, Thanos grew to power as a force bringing death and destruction.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(3, 'Parker', 'Peter', 'Spiderman', 'https://zupimages.net/up/22/31/6yqh.jpg', 'With amazing spider-like abilities, teenage science whiz Peter Parker fights crime and dreams of becoming an Avenger as Spider-Man.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(4, 'The cat', 'Goose', 'Goose', 'https://zupimages.net/up/22/31/4a7n.jpg', 'The friendliest and furriest resident of Project Pegasus, Goose is the affectionate tabby cat that joins Carol Danvers and Nick Fury on their adventure.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(5, 'Stark', 'Tony', 'Iron Man', 'https://zupimages.net/up/22/31/7a94.jpg', 'Inventor Tony Stark applies his genius for high-tech solutions to problems as Iron Man, the armored Avenger.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(6, 'Rogers', 'Steve', 'Captain America', 'https://zupimages.net/up/22/31/w9qm.jpg', 'Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(7, 'Romanoff', 'Natasha', 'Black Widow', 'https://zupimages.net/up/22/31/hld1.jpg', 'At a young age, Natasha Romanoff was indoctrinated by the Red Room, a Russian training program that took young girls and turned them into lethal undercover agents.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(8, 'Banner', 'Bruce', 'Hulk', 'https://zupimages.net/up/22/31/c7wx.jpg', 'Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(9, 'Odinson', 'Thor', 'Thor', 'https://zupimages.net/up/22/31/ihjr.jpg', 'Thor Odinson wields the power of the ancient Asgardians to fight evil throughout the Nine Realms and beyond', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(10, 'Grey', 'Jean', 'Phoenix', 'https://zupimages.net/up/22/31/ieck.jpg', 'Jean Grey was 10 years old when her mutant telepathic powers first manifested after experiencing the emotions of a dying friend.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 3),
(11, 'Howlett', 'James / Logan', 'Wolwerine', 'https://zupimages.net/up/22/31/xi8c.jpg', 'A mutant with an unstoppable healing power, adamantium metal claws and no-nonsense attitude makes the man called Logan, one of the most ferocious heroes in the universe.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 3),
(12, '', 'Wong', 'Wong', 'https://zupimages.net/up/22/31/yuw9.jpg', 'Wong is a Master of the Mystic Arts who protects the New York Sanctum alongside Doctor Strange. Until recently, he was the librarian at Kamar-Taj in Kathmandu, Nepal, where he took up the post after Kaecilius killed the previous keeper of the books.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(13, 'Raccoon', 'Rocket', 'Rocket', 'https://zupimages.net/up/22/31/0p2h.jpg', 'Ain’t no thing like Rocket, ‘cept Rocket. He lives for the simple things, including collecting valuable bounty alongside his friend and partner, Groot. Quick to train a weapon on anyone who offends him, he’s far more formidable than he appears.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 2),
(14, 'Quill', 'Peter', 'Star-Lord', 'https://zupimages.net/up/22/31/00nh.jpg', 'Would-be thief Peter Quill journeys through space as Star-Lord, the leader of the Guardians of the Galaxy.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 2),
(15, '', 'Mantis', 'Mantis', 'https://zupimages.net/up/22/31/afsu.jpg', 'Isolated from other lifeforms from an early age by Ego, Mantis does not understand the intricacies of social engagement; but she is learning upon recruitment into the Guardians of the Galaxy.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 2),
(16, '', 'Gamora', 'Gamora', 'https://zupimages.net/up/22/31/2ktv.jpg', 'Raised by Thanos to be a living weapon, Gamora seeks redemption as a member of the Guardians of the Galaxy, putting her extraordinary fighting abilities to good use.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 2),
(17, 'Strange', 'Stephen', 'Doctor Strange', 'https://zupimages.net/up/22/31/ha66.jpg', 'Formerly a renowned surgeon, Doctor Stephen Strange now serves as the Sorcerer Supreme—Earth’s foremost protector against magical and mystical threats.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1),
(20, '', 'T’Challa', 'Black Panther', 'https://zupimages.net/up/22/31/nq19.jpg', 'As the king of the African nation of Wakanda, T’Challa protects his people as the latest in a legacy line of Black Panther warriors.', 'Omnis distinctio consequatur magni doloribus molestias autem. Perferendis ipsam aut ullam omnis qui repellat. Tempore pariatur explicabo quod. Numquam cupiditate incidunt vel provident et tenetur sequi ipsum. Non delectus eius iure repudiandae. Amet exercitationem et modi in aspernatur enim eos.Ipsa pariatur quia modi. Quo sit voluptas dicta sunt cum qui aut explicabo. Ullam eius omnis repudiandae nobis facere. Ea dolorem temporibus impedit ut repellat.Necessitatibus quam laborum sed soluta officia quisquam quibusdam. Et aliquid inventore qui odit asperiores. Voluptatem laboriosam quae voluptate. Enim officiis id ea voluptatibus ut facere sed aperiam. Occaecati voluptate aut expedita dignissimos nulla quae voluptas. Sit quos nulla earum.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hero_power`
--

CREATE TABLE `hero_powers` (
  `id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hero_power`
--

INSERT INTO `hero_powers` (`id`, `power_id`, `hero_id`) VALUES
(1, 5, 1),
(2, 3, 1),
(3, 2, 1),
(4, 4, 1),
(5, 1, 2),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 9, 4),
(10, 10, 4),
(11, 11, 5),
(12, 12, 5),
(13, 13, 6),
(14, 17, 6),
(15, 18, 6),
(16, 19, 6),
(17, 13, 7),
(18, 16, 7),
(19, 6, 7),
(20, 14, 7),
(21, 5, 8),
(22, 20, 8),
(23, 21, 8),
(24, 22, 8),
(25, 23, 8),
(26, 24, 9),
(27, 25, 9),
(28, 26, 9),
(29, 27, 9),
(30, 13, 20),
(31, 28, 10),
(32, 29, 10),
(33, 7, 11),
(34, 14, 11),
(35, 23, 11),
(36, 30, 12),
(37, 31, 12),
(38, 32, 12),
(39, 33, 13),
(40, 13, 12),
(41, 6, 13),
(42, 34, 14),
(43, 35, 14),
(44, 13, 14),
(45, 33, 14),
(46, 36, 15),
(47, 37, 15),
(48, 38, 15),
(49, 13, 16),
(50, 6, 16),
(51, 1, 16),
(52, 18, 16),
(53, 30, 17),
(54, 31, 17),
(55, 32, 17),
(56, 39, 17);

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `powers` (
  `id` int(11) NOT NULL,
  `power` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power`
--

INSERT INTO `powers` (`id`, `power`) VALUES
(1, 'ENHANCED STRENGTH'),
(2, 'ENERGY BLASTS'),
(3, 'FLIGHT IN SPACE'),
(4, 'BINARY POWERS'),
(5, 'SUPERHUMAN STRENGTH'),
(6, 'AGILITY'),
(7, 'AWARENESS'),
(8, 'WEB SHOOTERS'),
(9, 'CUTENESS'),
(10, 'FLERKENESS'),
(11, 'RICH'),
(12, 'INTELLIGENT'),
(13, 'MASTER FIGHTER'),
(14, 'STRENGTH'),
(16, 'MASTER HACKER'),
(17, 'SPEED'),
(18, 'STAMINA'),
(19, 'ACROBAT'),
(20, 'LONG DISTANCE JUMPING'),
(21, 'HULK SMASH'),
(22, 'DURABILITY'),
(23, 'REGENERATION'),
(24, 'SUMMONING MJOLNIR'),
(25, 'FLIGHT'),
(26, 'GOD OF THUNDER'),
(27, 'THE BIFROST'),
(28, 'TELEPATHY'),
(29, 'TELEKINESY'),
(30, 'MASTER OF SORCERY'),
(31, 'ELDRITCH MAGIC'),
(32, 'SLING RING'),
(33, 'PILOT'),
(34, 'HALF CELESTIAL'),
(35, 'SKILLED THIEF'),
(36, 'POWERFUL EMPATH'),
(37, 'SLEEP INDUCTION'),
(38, 'EMOTION MANIPULATION'),
(39, 'CLOAK OF LEVITATION');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `teams` (`id`, `name`) VALUES
(1, 'Avengers'),
(2, 'Guardians of the Galaxy'),
(3, 'X-Men');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_power`
--
ALTER TABLE `hero_power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `power`
--
ALTER TABLE `power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hero_power`
--
ALTER TABLE `hero_power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `power`
--
ALTER TABLE `power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
