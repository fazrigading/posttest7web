-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 03:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fazrigading`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `desc` text NOT NULL,
  `category` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `desc`, `category`) VALUES
(1, 'DualSense Wireless Controller', 1269000, 10, 'Haptic feedback - Feel physically responsive feedback to your in-game actions with dual actuators which replace traditional rumble motors. In your hands, these dynamic vibrations can simulate the feeling of everything from environments to the recoil of different weapons.\nAdaptive triggers - Experience varying levels of force and tension as you interact with your in-game gear and environments. From pulling back an increasingly tight bowstring to hitting the brakes on a speeding car, feel physically connected to your on-screen actions.\nBuilt-in microphone and headset jack - Chat with friends online using the built-in microphone or by connecting a headset to the 3.5mm jack. Easily switch voice capture on and off at a moment’s notice with the dedicated mute button. Internet and account for PlayStation Network required.\nDualSense Controller PS5 and PC compatible. Not compatible with PS4.\nPS Remote Play requires Remote Play App connected to Wi-Fi, PS4 or PS5 console with the latest system software and compatible game. A PS4 or PS5 console with a wired connection via a LAN cable is recommended. Version 4.0 of the Remote Play App on iOS and iPadOS or version 4.1 on macOS is required for games to be playable with the controller over Bluetooth.\nDevices with macOS 11.3, iOS 14.5, iPadOS 14.5 or tvOS 14.5 or later supported.\nCable not included. To connect or charge the controller use the USB cable supplied with the PS5 console. Controllers sold separately.', 'Accessories'),
(2, 'PlayStation PULSE 3D Wireless Headset – Midnight Black', 1699000, 5, 'Built for a new generation: Fine-tuned for 3D Audio on PS5 consoles; Enjoy comfortable gaming with refined earpads and headband strap. Available when feature is supported by game\r\nChat with friends through the hidden noise-cancelling microphones; Quickly adjust audio and chat settings with easy-access controls. Internet and account for PlayStation Network required\r\nTake your adventures further: Enjoy up to 12 hours wireless play with the built-in rechargeable battery; Easily connect to your PS5 or PS4 console using the wireless adaptor\r\nPulse 3D Wireless Headset PS5, PS4 and PC compatible.', 'Accessories'),
(3, 'PlayStation PULSE 3D Wireless Headset - White', 1729000, 5, 'Built for a new generation - Fine-tuned for 3D Audio on PS5 consoles. Enjoy comfortable gaming with refined earpads and headband strap. Play in style with a sleek design that complements the PS5 console. Available when feature is supported by game.\r\nDesigned for gamers - Chat with friends through the hidden noise-cancelling microphones. Quickly adjust audio and chat settings with easy-access controls. Internet and account for PlayStation Network required.\r\nTake your adventures further - Enjoy up to 12 hours wireless play with the built-in rechargeable battery. Easily connect to your PS5 or PS4 console using the wireless adaptor. Connect to PS VR and mobile devices with the included audio cable. Built-in headset controls not supported on PS VR and mobile devices.\r\nPulse 3D Wireless Headset PS5, PS4 and PC compatible.', 'Accessories'),
(4, 'Marvel\'s Spider-Man: Miles Morales - Playstation 5', 729000, 8, 'Miles morales discovers explosive powers that set him apart from his mentor, peter parker. Master his unique, bio-electric venom Blast attacks and covert camouflage power alongside spectacular web-slinging acrobatics, gadgets and skills.\r\nA war for control of Marvel\'s new York has broken out between a devious Energy Corporation and a high-tech criminal army. With his new home at the heart of the battle, miles must learn the cost of becoming a hero.\r\nTraverse the snowy streets of his new, vibrant and bustling Neighborhood as miles searches for a sense of belonging. When the lines blur between his personal and crime-fighting lives, he discovers who he can trust, and what it feels like to truly be home.', 'Games'),
(5, 'Marvel\'s Spider-Man: Miles Morales Ultimate Edition - PlayStation 5', 1029000, 8, 'Miles morales discovers explosive powers that set him apart from his mentor, peter parker. Master his unique, bio-electric venom Blast attacks and covert camouflage power alongside spectacular web-slinging acrobatics, gadgets and skills.\r\nA war for control of Marvel\'s new York has broken out between a devious Energy Corporation and a high-tech criminal army. With his new home at the heart of the battle, miles must learn the cost of becoming a hero.\r\nTraverse the snowy streets of his new, vibrant and bustling Neighborhood as miles searches for a sense of belonging. When the lines blur between his personal and crime-fighting lives, he discovers who he can trust, and what it feels like to truly be home.', 'Games'),
(6, 'Demon\'s Souls - PlayStation 5', 1029000, 6, 'Discover where the journey began - Experience the original brutal challenge, completely remade from the ground up. All presented in stunning visual quality with enhanced performance, this is the world of Boletaria as you have never seen it before.\r\nBecome the Slayer of Demons - Venture to the northern kingdom of Boletaria – a once prosperous land of knights, now beset with unspeakable creatures and ravenous demons. Meet strange characters, unhinged and twisted by the world around them, and unravel the unsettling story of Demon’s Souls.\r\nFace the world’s greatest warriors in ferocious PVP combat - With online invasions adding to the danger of your quest. Or play cooperatively by summoning allies to aid in your fight against the demons. Active PS Plus subscription required for online multiplayer.', 'Games'),
(7, 'Sackboy: A Big Adventure - PlayStation 5', 879000, 10, 'Explore here, there and everywhere as you utilise Sackboy\'s cool, diverse move set to face a huge variety of thrilling challenges, fierce enemies and startling surprises\r\nTake on side splitting challenges in local and online* party play. Parties can play through the whole game including unmissable co op only levels.\r\nTempest 3D AudioTech Hear Craftworld come life all around you\r\nHaptic Feedback Running across wool like flooring or platforms will use haptics to simulate the change in material under Sackboy\r\nFast Loading Experience fast loading between and into levels, including in multiplayer* sessions with the PS5 console\'s ultra high speed SSD.Pre order to get a copy of the digital comic, The Gathering Storm, in which you will discover the mysterious past of Scarlet, Sackboy\'s mentor and Craftworld\'s last remaining Knitted Knight.', 'Games'),
(8, 'Sony Dualshock 4 Wireless Controller for PlayStation 4 - Glacier White', 1029000, 4, 'The feel, shape, and sensitivity of the dual analog sticks and trigger buttons have been improved to provide a greater sense of control, No matter what you play\r\nThe dualshock 4 wireless Controller features a built-in speaker and stereo headset jack, putting several new audio options in the player\'s hands\r\nThe dualshock 4 wireless Controller can be easily recharged by plugging it into your PlayStation 4 system, even when in rest mode, or with any standard charger using a USB cable.', 'Accessories'),
(9, 'PlayStation 5 Console - Disc Edition', 9999000, 8, 'Model Number CFI-1215A01X\r\nStunning Games - Marvel at incredible graphics and experience new PS5 features.\r\nBreathtaking Immersion - Discover a deeper gaming experience with support for haptic feedback, adaptive triggers, and 3D Audio technology.\r\nLightning Speed - Harness the power of a custom CPU, GPU, and SSD with Integrated I/O that rewrite the rules of what a PlayStation console can do.', 'Console'),
(10, 'PlayStation 5 Console - Digital Edition', 8799000, 8, 'Model Number CFI-1215B01X\r\nStunning Games - Marvel at incredible graphics and experience new PS5 features.\r\nBreathtaking Immersion - Discover a deeper gaming experience with support for haptic feedback, adaptive triggers, and 3D Audio technology.\r\nLightning Speed - Harness the power of a custom CPU, GPU, and SSD with Integrated I/O that rewrite the rules of what a PlayStation console can do.', 'Console');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `photo`) VALUES
(2, 'fazrigading', '$2y$10$FIZ4k6hCtJwzygLjlhUeceRrLJyUtJfliTedcDWityolVtYpUcPMK', 'fazrigading@gmail.com', '10-29-2022 01-36-37 am.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
