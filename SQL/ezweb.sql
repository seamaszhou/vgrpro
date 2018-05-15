-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2018 at 02:00 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `ID` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `create_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Name` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `image`, `Price`, `Description`, `Name`, `Date`) VALUES
(1, 'pictures/switch/1.png', 60, '', 'Ikaruga', '0000-00-00'),
(2, 'pictures/switch/2.png', 0, '', '', '0000-00-00'),
(3, 'pictures/switch/3.png', 0, '', '', '0000-00-00'),
(4, 'pictures/switch/4.png', 0, '', '', '0000-00-00'),
(5, 'pictures/switch/5.png', 0, '', '', '0000-00-00'),
(6, 'pictures/ps4/1.png', 0, '', '', '0000-00-00'),
(7, 'pictures/ps4/2.png', 0, '', '', '0000-00-00'),
(8, 'pictures/ps4/3.png', 0, '', '', '0000-00-00'),
(9, 'pictures/ps4/4.png', 0, '', '', '0000-00-00'),
(10, 'pictures/ps4/5.png', 0, '', '', '0000-00-00'),
(11, 'pictures/ps4/6.png', 0, '', '', '0000-00-00'),
(12, 'pictures/ps4/7.png', 0, '', '', '0000-00-00'),
(13, 'pictures/ps4/8.png', 0, '', '', '0000-00-00'),
(14, 'pictures/xbox/1.png', 0, '', '', '0000-00-00'),
(15, 'pictures/xbox/2.png', 0, '', '', '0000-00-00'),
(16, 'pictures/xbox/3.png', 0, '', '', '0000-00-00'),
(17, 'pictures/xbox/4.png', 0, '', '', '0000-00-00'),
(18, 'pictures/xbox/5.png', 0, '', '', '0000-00-00'),
(19, 'pictures/xbox/6.png', 0, '', '', '0000-00-00'),
(20, 'pictures/xbox/7.png', 0, '', '', '0000-00-00'),
(21, 'pictures/xbox/8.png', 0, '', '', '0000-00-00'),
(22, 'pictures/pc/1.png', 0, '', '', '0000-00-00'),
(23, 'pictures/pc/2.png', 0, '', '', '0000-00-00'),
(24, 'pictures/pc/3.png', 0, '', '', '0000-00-00'),
(25, 'pictures/pc/4.png', 0, '', '', '0000-00-00'),
(26, 'pictures/pc/5.png', 0, '', '', '0000-00-00'),
(27, 'pictures/pc/6.png', 0, '', '', '0000-00-00'),
(28, 'pictures/pc/7.png', 0, '', '', '0000-00-00'),
(29, 'pictures/pc/8.png', 0, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `story` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL,
  `NewsTitle` varchar(500) NOT NULL,
  `NewsDesc` varchar(5000) NOT NULL,
  `Summary` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NewsID`, `NewsTitle`, `NewsDesc`, `Summary`, `image`) VALUES
(1, 'Destiny 2: Warmind Final Review - \"2 Steps Forward, 2 Steps Back\"', 'Second multiplayer DLC, and among its four maps and a Zombies expansion, there are more winners than losers. Its new content ranges from an excellent new standard multiplayer map and Zombies Easter egg challenge all the way down to some maps prone to miserably unbalanced spawn camping and a dogfight without enough room to spread your wings, which makes this an inconsistent but overall worthwhile expansion.\r\n\r\nOf the three new core multiplayer maps, Egypt stands out as the best and one I am always hoping for to pop up in the rotation. For all its narrow corridors through ancient ruins, Egypt still has plenty of space on the two outer lanes for long-ranged shootouts. I rarely played a game where engagements were limited to one part of the map, and I enjoyed seeing how every person made their own playstyle work here. In one game I was up against an incredible sniper who used the many pillars and entryways as cover while picking off my team. In that same game I encountered a person who was able to successfully run through most of the map with the shovel. Regardless of loadout, Egypt offers a great playground for hide and seek with plenty of options for tactical flanking and escapes thanks to its abundance of cover. Meanwhile, Call of Duty: WW2 didn\'t really need another small map, but that\'s what we get with V2. It offers plenty of flanking options that contribute to even more chaotic firefights around and in the tower in the center of the map, so it is at least an interesting map to fight on. The tower has several entrances and open areas above and below it where you can toss grenades or snipe in or out of the tower, making this map a lot less favorable to snipers, but very friendly to explosives. The main downside is that if your team gets exceptionally stomped, V2 ends up becoming a special kind of hell. Like Valkyrie from The Resistance DLC, this small map has few spawn points, and that means spawn camping is a problem. The 1.13 update that added unlimited sprinting certainly contributes to that awful cycle. I\'ve only joined one Domination match where I felt trapped in my spawn so far, but it was a frustrating problem my team couldn\'t solve. The third map, Dunkirk, is the worst of the bunch. It\'s a long, narrow map with an open beach on one side and a line of buildings on the other. It\'s okay for Domination and less interesting for Kill Confirmed or Team Deathmatch, but the limited spawn points make this an awful map for Hardpoint. More often than not, one team spawns right next to the capture point, making the match a foregone conclusion. That\'s worked to my team\'s advantage several times, and it\'s still not fun. Smart explosives paired with a coordinated team charge can help even the odds, but not enough to make it feel balanced. Tipping the scales further from fairness, Dunkirk also suffers from opportunities for spawn killing. ', '', 'pictures/news/1.jpg\r\n'),
(2, 'PlayStation Is Bringing Its \'Big Four\' Games to E3 2018', 'Rockstar has announced a new special edition of GTA 5, seemingly aimed at bringing in new players - but don\'t expect anything new for existing players.Grand Theft Auto V: Premium Online Edition will be available on Steam, Xbox One and PS4, and comprises the full GTA V package (including the single player game and a fully-updated GTA Online) and a Criminal Enterprise Starter Pack bonus.This pack seems to be aimed at bringing new players into the series as the Starter Pack gives GTA Online players weapons, properties, and vehicles as well $1,000,000 of in-game currency - a total of $10,000,000 of in-game item value. The Premium Online Edition costs $79.99 USD  / $99.95 AUD for a physical Xbox One or PS4 version or $84.99 USD / $110.34 AUD on Steam. While bundles including the game and Criminal Enterprise pack have existed for some time, it appears that, on console at least, the Premium Online version is intended to replace the core version of the game by offering more for your money. If this edition does mark your first entry into GTA 5 make sure to check out our wiki guide with weekly updates and cheats and secrets for GTA Online. GTA 5 holds to the mantle of making more money than any film, book, or game according to an analyst and, as it turns out, is a favourite amongst some celebrities.', '', 'pictures/news/2.png'),
(3, 'IS FORTNITE\'S AVENGERS MODE ACTUALLY FUN? - FORTNITE SHOW EP. 2 (FEAT. TRUEVANGUARD)', 'Santa Monica Studio has released a patch for God of War that gives players the option to increase the game\'s text size.\r\n\"We just released a new patch that focuses on text for map, goals, codex and the resources tab of the UI menus,\" the studio said in response to a fan on Twitter who noted it\'s difficult to read the on-screen text when playing on the couch.\r\nPlayers who wish to increase the text size can do so using the newly added slider found in the \"Accessibility\" menu.\r\nThat said, it appears the slider doesn\'t entirely fix the problem. A number of users, particularly those who don\'t have a 4K display and are sitting relatively far away from the screen, have found the slider doesn\'t resolve the issue. As noted by Kotaku, turning up the slider magnifies the text rather than actually increasing the font size.\r\nSanta Monica Studio intends to \"continuing to investigate more improvements\" for the game, and has plans to release a photo mode sometime in the future.Head over to IGN\'s God of War wiki guide as you make your way through Kratos\' latest journey. For our thoughts on why the game is \"nothing short of a masterpiece,\" read our glowing review and then watch creative director Cory Barlog\'s touching reaction to all the review scores.\r\n', '', 'pictures/news/3.png'),
(4, 'Spider-Man: Homecoming Sequel Takes Place Around The World', 'While a portion of Marvel Studios\' sequel to Spider-Man: Homecoming will take place in New York, that won\'t be the film\'s only setting.In an interview with io9, Marvel Studios president Kevin Feige confirmed the movie will take place around the globe. Feige said one of the reasons they\'re shooting the sequel in London rather than Atlanta (like they did for the first movie) is because it\'s set in other areas of the world.\"We shoot a lot of films in London but there\'s another reason we\'re shooting in London which is, yes, Spidey, of course, will spend some time in New York, but he\'ll spend some time in other parts of the globe,\" he explained.While Feige remained tight-lipped on plot details, he did discuss the impact Infinity War and Avengers 4 will have on the film, which will serve as the start of the MCU\'s Phase 4. \"The way Civil War and the fact that he went to Leipzig Airport and then has to go back to school, informed Homecoming, the two Avengers films that precede [the sequel] will greatly inform, probably even more so, the next movie,\" he said. The sequel to Spider-Man Homecoming will be released in theaters on July 5, 2019 and will reportedly feature a different supporting Marvel hero than Iron Man. ', '', ''),
(5, 'FINAL FANTASY 7 REMAKE AIMS TO \'SURPASS THE ORIGINAL\'', 'Square Enix aims to create \"a title that surpasses the original\" Final Fantasy VII with its upcoming remake for PS4. According to a job listing (via Gematsu) for a Battle Planner and Level Planner to join the project, the game will be a \"new creation not limited to a simple remake.\" The listing also reiterates that FFVII Remake is being developed internally at Square Enix. CyberConnect2 was previously working with Square on the project. Last month, Square Enix posted a job listing for Final Fantasy VII Remake seeking level planners to \"increase its quality another step higher.\" Game director Tetsuya Nomura posted a recruitment letter last May, saying the team was \"urgently\" seeking additional talent to join the development team. Final Fantasy VII Remake was originally planned to be released in multiple parts. Whether or not that is still part of Square Enix\'s plan remains to be seen. While we patiently wait to hear more from Square about the long-awaited remake, check out this pair of stunning screenshots and gorgeous FFVII Remake art that were revealed last year.', '', ''),
(6, 'DARWIN PROJECT BATTLE ROYALE GOES FREE-TO-PLAY ON PC', 'Scavengers Studio\'s battle royale game, Darwin Project, is going free-to-play on Steam beginning today, April 20. Darwin Project was released on Steam Early Access and Xbox One Game Preview in early March for $15 USD. However, according to Scavengers Studio, there weren\'t enough players in certain regions to fill the servers. \"We want the game to reach as many players as possible,\" the studio said, \"so we decided to release Darwin Project for free sooner than we anticipated.\" The pricing change is currently reflected on Steam, though the Xbox One version is still listed at $15 USD. When asked whether or not the console version will be going free-to-play as well, Scavengers Studio told IGN, \"We\'ll have more to share about Darwin Project on Xbox One soon.\" If you\'ve already purchased Darwin Project, a handful of in-game items will be added to your inventory on April 24. The studio is also introducing cosmetic items that same day. While these items will be available to purchase with real-world money, \"the vast majority\" of which will be attainable through progression. The developer emphasized any items it sells will be \"purely aesthetic and 100% optional.\" For more, check out IGN\'s Darwin Project preview from PAX East 2017, which said it \"takes a survival core of something like Rust or Don\'t Starve, adds in asymmetrical competitive multiplayer, mixes it with the themes of the fiction of Battle Royale and Hunger Games, and then tosses all of it on its head with the introduction of ostensibly a Dungeon Master, as well as audience participation.\"', '', ''),
(7, 'HEARTHSTONE DIRECTOR BEN BRODE LEAVING BLIZZARD TO START NEW COMPANY', 'Ben Brode, game director for Blizzard\'s wildly popular card game, Hearthstone, is leaving the company to start one of his own. Brode made the announcement in a post on the Blizzard forums, where he told fans \"after 15 years at Blizzard and almost 10 years working on Hearthstone, I have made the incredibly difficult decision to embark on a new journey\" before continuing, \"man, that was a hard sentence to type.\" Brode says he is leaving the massive game developer to help start a new company. \"We\'ll probably make games\" Brode says, \"but we haven\'t figured anything else out, yet,\" he said, noting he\'s \"looking forward to designing, programming, and actually creating things again.\" Brode got his start at Blizzard as a Night Crew Game Tester when he was 20 years old. In 2008 he joined Blizzard\'s \"Team 5\" and began working on Hearthstone. He expressed his gratitude to Blizzard for taking a chance on him, to the Hearthstone team for striving to make the game the best it can be, and to the fans who have supported the game. \"Thank you for making being a part of Hearthstone so much fun for me,\" Brode ended, \"I\'ve loved every minute.\" For more on Hearthstone, check out details on the revamp to the game\'s Arena Draft, as well as a \"What If\" talk at GDC which imagined a world without the Big Game Hunter nerf. Hearthstone\'s Witchwood expansion recently launched. With Baku the Mooneater running amok, check out a developer discussion about even and odd cards to learn about some of the expansion\'s new mechanics.', '', ''),
(8, 'PUZZLE FIGHTER CLOSING AS CAPCOM FOCUSES ON DEAD RISING DEVELOPMENT', 'Capcom\'s mobile title, Puzzle Fighter, is soon to be no more, with the game leaving the iOS and Android stores on July 1. \"As the studio is dedicating its focus to our flagship Dead Rising franchise, we have decided to sunset Puzzle Fighter,\" reads the Capcom Unity blog post. It confirmed the servers will shut down on July 31, giving players a full month to continue playing the game after it leaves the store. The Chibi-style fighter featuring popular characters from Capcom\'s various franchises launched in November last year, so it\'s been fairly short-lived. Capom will be gifting 10,000 in-game gem currency to all players today as well as making all upcoming characters and stages free for everyone. Regina and Dr. Wily can be downloaded today, while Ada Wong and the new stages, Darminor and Uroboros Laboratory, will be available on Monday, April 23. Fans can also stream the soundtrack for free via SoundCloud. In-App purchases will be disabled on April 23, but players will keep any in-game currency they\'ve already purchased and can use it to upgrade their characters. And to make the remaining time with the game a little bit sweeter, the Classic Mode special limited event will run from now until the servers close at the end of July. \"We appreciate the fans who have supported Puzzle Fighter until this point. We thank you for playing the game and hope to ensure your remaining time with Puzzle Fighter is an enjoyable one,\" said Capcom senior community manager, Jeffery Simpson. Back in February, Capcom Vancouver had a restructure resulting in a number of layoffs. It had an unannounced project cancelled while the scope of the next Dead Rising title was cut, although the news that it\'s decided to forego Puzzle Fighter for Dead Rising could mean that it might not be quite as cut back as we thought.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `code` varchar(16) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`code`, `description`) VALUES
('news', 'The Top News Stories From Around the World'),
('sport', 'Sports Latest - All The Winners and Losers'),
('weather', 'Up To The Minute Weather Reports and Forecasts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, '123', '123', '2018-05-01 00:38:12'),
(2, 0, ' this game awesome', 'seamas', '2018-05-01 00:38:24'),
(3, 2, 'what ever', '123', '2018-05-01 00:38:34'),
(4, 0, '123', '123', '2018-05-01 06:50:15'),
(5, 0, '123', '123', '2018-05-01 06:51:28'),
(6, 0, '12', '123', '2018-05-01 06:51:52'),
(7, 0, '123', '123', '2018-05-01 06:52:27'),
(8, 0, 'ww1', 's', '2018-05-01 06:52:33'),
(9, 0, '123', '123', '2018-05-01 06:54:05'),
(10, 9, '123', '1231', '2018-05-01 06:54:08'),
(11, 0, '\r\n\r\n', 'nnnn', '2018-05-01 07:31:38'),
(12, 8, '222', '23', '2018-05-12 01:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `username` varchar(16) NOT NULL,
  `password` char(40) NOT NULL,
  `full_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`username`, `password`, `full_name`) VALUES
('bill', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'William Billings'),
('bob', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Robert Bobbins');

-- --------------------------------------------------------

--
-- Table structure for table `writer_permissions`
--

CREATE TABLE `writer_permissions` (
  `writer` varchar(16) NOT NULL,
  `page` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `writer_permissions`
--

INSERT INTO `writer_permissions` (`writer`, `page`) VALUES
('bill', 'news'),
('bill', 'weather'),
('bob', 'news'),
('bob', 'sport');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`story`,`keyword`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `writer_permissions`
--
ALTER TABLE `writer_permissions`
  ADD PRIMARY KEY (`writer`,`page`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NewsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
