-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 03:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linkedcast`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Auto & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'How To & Style'),
(13, 'Education'),
(14, 'Science & Technology '),
(15, 'Nonprofits & Activism ');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'ethereal', 23, 0, 'Ahhhh', '2020-06-12 17:01:32'),
(2, 'ethereal', 23, 0, 'adwawdawd', '2020-06-12 17:10:39'),
(3, 'ethereal', 23, 1, 'bbbbbb', '2020-06-12 17:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(7, 'ethereal', 0, 23),
(8, 'ethereal', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(1, 'ethereal', 'dk6969');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoid`, `filePath`, `selected`) VALUES
(13, 23, 'uploads/videos/thumbnails/23-5edcb88ad5969.jpg', 1),
(14, 23, 'uploads/videos/thumbnails/23-5edcb88b6bca3.jpg', 0),
(15, 23, 'uploads/videos/thumbnails/23-5edcb88c6bce8.jpg', 0),
(16, 26, 'uploads/videos/thumbnails/26-5ee366da94154.jpg', 1),
(17, 26, 'uploads/videos/thumbnails/26-5ee366db58d00.jpg', 0),
(18, 26, 'uploads/videos/thumbnails/26-5ee366dc32764.jpg', 0),
(19, 27, 'uploads/videos/thumbnails/27-5ee368cfda307.jpg', 1),
(20, 27, 'uploads/videos/thumbnails/27-5ee368d076343.jpg', 0),
(21, 27, 'uploads/videos/thumbnails/27-5ee368d104af7.jpg', 0),
(22, 28, 'uploads/videos/thumbnails/28-5ee36935d1d40.jpg', 1),
(23, 28, 'uploads/videos/thumbnails/28-5ee36936457d9.jpg', 0),
(24, 28, 'uploads/videos/thumbnails/28-5ee36936d87b2.jpg', 0),
(25, 29, 'uploads/videos/thumbnails/29-5ee3697296a7b.jpg', 1),
(26, 29, 'uploads/videos/thumbnails/29-5ee36973486fa.jpg', 0),
(27, 29, 'uploads/videos/thumbnails/29-5ee3697469f03.jpg', 0),
(28, 30, 'uploads/videos/thumbnails/30-5ee369cc4550e.jpg', 1),
(29, 30, 'uploads/videos/thumbnails/30-5ee369ccc9750.jpg', 0),
(30, 30, 'uploads/videos/thumbnails/30-5ee369cda362b.jpg', 0),
(31, 31, 'uploads/videos/thumbnails/31-5ee36a23d1872.jpg', 1),
(32, 31, 'uploads/videos/thumbnails/31-5ee36a2465a9a.jpg', 0),
(33, 31, 'uploads/videos/thumbnails/31-5ee36a25208e9.jpg', 0),
(34, 32, 'uploads/videos/thumbnails/32-5ee36b2758fd9.jpg', 1),
(35, 32, 'uploads/videos/thumbnails/32-5ee36b2819e96.jpg', 0),
(36, 32, 'uploads/videos/thumbnails/32-5ee36b292e41b.jpg', 0),
(37, 33, 'uploads/videos/thumbnails/33-5ee36b68ba85a.jpg', 1),
(38, 33, 'uploads/videos/thumbnails/33-5ee36b692e20f.jpg', 0),
(39, 33, 'uploads/videos/thumbnails/33-5ee36b69c1184.jpg', 0),
(40, 34, 'uploads/videos/thumbnails/34-5ee36b931dcfd.jpg', 1),
(41, 34, 'uploads/videos/thumbnails/34-5ee36b93c8b04.jpg', 0),
(42, 34, 'uploads/videos/thumbnails/34-5ee36b9493cff.jpg', 0),
(43, 35, 'uploads/videos/thumbnails/35-5ee36bc7dcc12.jpg', 1),
(44, 35, 'uploads/videos/thumbnails/35-5ee36bc88f3df.jpg', 0),
(45, 35, 'uploads/videos/thumbnails/35-5ee36bc99fab7.jpg', 0),
(46, 36, 'uploads/videos/thumbnails/36-5ee36bf0e0b67.jpg', 1),
(47, 36, 'uploads/videos/thumbnails/36-5ee36bf162831.jpg', 0),
(48, 36, 'uploads/videos/thumbnails/36-5ee36bf2136d7.jpg', 0),
(49, 37, 'uploads/videos/thumbnails/37-5ee6201b14a3a.jpg', 1),
(50, 37, 'uploads/videos/thumbnails/37-5ee6201ba1472.jpg', 0),
(51, 37, 'uploads/videos/thumbnails/37-5ee6201c86d35.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Sakib', 'Ahmed', 'ethereal', 'sakib@diu.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2020-06-07 01:18:04', 'assets/images/profilePictures/default.png'),
(2, 'Donky', 'Kong69', 'dk6969', 'dk69@diu.com', 'b0412597dcea813655574dc54a5b74967cf85317f0332a2591be7953a016f8de56200eb37d5ba593b1e4aa27cea5ca27100f94dccd5b04bae5cadd4454dba67d', '2020-06-07 01:23:36', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(23, 'ethereal', 'Coral', 'Coral Coral Coral Coral', 1, 'uploads/videos/5edcb8785932c.mp4', 0, '2020-06-07 15:50:48', 95, '00:10'),
(27, 'ethereal', 'Horse', 'Horse Horse Horse', 1, 'uploads/videos/5ee368c291daa.mp4', 4, '2020-06-12 17:36:34', 2, '00:05'),
(28, 'ethereal', 'Metro Exodus', 'Metro ExodusMetro ExodusMetro ExodusMetro ExodusMetro ExodusMetro ExodusMetro Exodus', 1, 'uploads/videos/5ee369272c6d2.mp4', 7, '2020-06-12 17:38:15', 5, '00:09'),
(29, 'ethereal', 'Sea', 'SeaSeaSeaSeaSeaSeaSeaSea', 1, 'uploads/videos/5ee369622c605.mp4', 6, '2020-06-12 17:39:14', 3, '00:10'),
(30, 'ethereal', 'Parachute', 'ParachuteParachuteParachuteParachuteParachute', 1, 'uploads/videos/5ee369aff1a7d.mp4', 6, '2020-06-12 17:40:31', 2, '00:10'),
(31, 'ethereal', 'Lithium', 'LithiumLithiumLithiumLithiumLithium', 1, 'uploads/videos/5ee36a0dec359.mp4', 14, '2020-06-12 17:42:05', 3, '00:09'),
(32, 'ethereal', 'Jump', 'JumpJumpJumpJump', 1, 'uploads/videos/5ee36b0fdc920.mp4', 6, '2020-06-12 17:46:23', 3, '00:10'),
(33, 'ethereal', 'Chemistry ', 'Chemistry Chemistry Chemistry Chemistry Chemistry ', 1, 'uploads/videos/5ee36b5c7ccdb.mp4', 14, '2020-06-12 17:47:40', 4, '00:05'),
(34, 'ethereal', 'Drift ', 'Drift Drift Drift Drift Drift Drift Drift Drift ', 1, 'uploads/videos/5ee36b82ed43c.mp4', 2, '2020-06-12 17:48:18', 4, '00:09'),
(35, 'ethereal', 'Crazy Jump ', 'Crazy Jump Crazy Jump Crazy Jump Crazy Jump Crazy Jump Crazy Jump Crazy Jump ', 1, 'uploads/videos/5ee36bb5aa4b6.mp4', 6, '2020-06-12 17:49:09', 2, '00:05'),
(36, 'ethereal', 'Bike ', 'Bike Bike Bike Bike Bike Bike Bike Bike ', 1, 'uploads/videos/5ee36be368a75.mp4', 6, '2020-06-12 17:49:55', 1, '00:05'),
(37, 'dk6969', 'Football', 'FootballFootballFootballFootballFootballFootball', 1, 'uploads/videos/5ee62009476bc.mp4', 5, '2020-06-14 19:03:05', 0, '00:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
