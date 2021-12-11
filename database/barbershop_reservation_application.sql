-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2021 at 12:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barbershop_reservation_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) DEFAULT NULL,
  `client_email` varchar(200) DEFAULT NULL,
  `client_phone` varchar(200) DEFAULT NULL,
  `client_password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_name`, `client_email`, `client_phone`, `client_password`) VALUES
('56e1c4eaa37b546339732c7040da14a5decb942083', 'Devlan Inc', 'hello@devlan.com', '+254737229776', 'a69681bcf334ae130217fea4505fd3c994f5683f'),
('7e00e08ad95b4c402925eb10d47efd9f0fbb610199', 'Augustine Kaloki', 'augustinemutua5@gmail.com', '+2540796258617', 'a69681bcf334ae130217fea4505fd3c994f5683f'),
('8b76fcee80bc034ecc104c907860077698dc8b7389', 'John Doe', 'sb-wfva18128688@personal.example.com', '+25479087654', 'a69681bcf334ae130217fea4505fd3c994f5683f');

-- --------------------------------------------------------

--
-- Table structure for table `client_reservations`
--

CREATE TABLE `client_reservations` (
  `client_reservation_id` varchar(200) NOT NULL,
  `client_reservation_client_id` varchar(200) NOT NULL,
  `client_reservation_service_id` varchar(200) NOT NULL,
  `client_reservation_service_staff_id` varchar(200) NOT NULL,
  `client_reservation_payment_status` varchar(200) NOT NULL,
  `client_reservation_date_reserved` varchar(200) NOT NULL,
  `client_reservation_status` varchar(200) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_reservations`
--

INSERT INTO `client_reservations` (`client_reservation_id`, `client_reservation_client_id`, `client_reservation_service_id`, `client_reservation_service_staff_id`, `client_reservation_payment_status`, `client_reservation_date_reserved`, `client_reservation_status`) VALUES
('2afa980b801f39f1871b03819d054097b84982082c', '56e1c4eaa37b546339732c7040da14a5decb942083', '864185efa88cbcc3b07898a4559dec03899e1c7997', '91b3f9f95bbfe7ff0ea5fe38e55e6dd786b63568c6', 'Paid', '2021-10-20', 'Approved'),
('58e2b0b30190c36826263607b9f01bfc7c6c891439', '7e00e08ad95b4c402925eb10d47efd9f0fbb610199', '864185efa88cbcc3b07898a4559dec03899e1c7997', '91b3f9f95bbfe7ff0ea5fe38e55e6dd786b63568c6', 'Paid', '2021-10-22', 'Approved'),
('9de193822a47ad7c1b78fdc4946c533a6d80b713a4', '56e1c4eaa37b546339732c7040da14a5decb942083', '864185efa88cbcc3b07898a4559dec03899e1c7997', '2621f3342873b53c4eea37672aa12935b2a80dd7cd', 'Paid', '2021-10-28', 'Approved'),
('c9adb015e9fae4fd1ad8a93da4b485125552a35b05', '56e1c4eaa37b546339732c7040da14a5decb942083', '864185efa88cbcc3b07898a4559dec03899e1c7997', '2621f3342873b53c4eea37672aa12935b2a80dd7cd', 'Paid', '2021-10-21', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(200) NOT NULL,
  `notification_client_id` varchar(200) DEFAULT NULL,
  `notification_details` longtext DEFAULT NULL,
  `notification_created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_client_id`, `notification_details`, `notification_created_at`) VALUES
(6, '56e1c4eaa37b546339732c7040da14a5decb942083', 'Your Reservation has been  approved, hope you will enjoy your booked service.', '2021-10-20 08:42:39.864428'),
(7, '56e1c4eaa37b546339732c7040da14a5decb942083', 'Your reservation payment was successfull, hope you enjoy our services', '2021-10-20 08:42:48.421413'),
(8, '7e00e08ad95b4c402925eb10d47efd9f0fbb610199', 'Your Reservation On Date 2021-10-22, has been submitted successfully, we will notify you on approval', '2021-10-21 10:17:06.661871'),
(9, '7e00e08ad95b4c402925eb10d47efd9f0fbb610199', 'Your Reservation has been  approved, hope you will enjoy your booked service.', '2021-10-21 10:20:37.744911');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` varchar(200) NOT NULL,
  `payment_client_id` varchar(200) NOT NULL,
  `payment_confirmation_code` varchar(200) DEFAULT NULL,
  `payment_client_reservation_id` varchar(200) DEFAULT NULL,
  `payment_date_posted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_amount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_client_id`, `payment_confirmation_code`, `payment_client_reservation_id`, `payment_date_posted`, `payment_amount`) VALUES
('28c69b9b5b6bd43fe4dcbbf240c49a2e505ca06c1a', '56e1c4eaa37b546339732c7040da14a5decb942083', 'LEXY8VSNOQ', 'c9adb015e9fae4fd1ad8a93da4b485125552a35b05', '2021-10-20 07:54:37', '100'),
('2966df2b90b1650cfb67017fb0da227e38d4351587', '56e1c4eaa37b546339732c7040da14a5decb942083', 'DP61RW7AXF', '2afa980b801f39f1871b03819d054097b84982082c', '2021-10-20 08:19:44', '100'),
('df4829574c784cf1de518bb36bd723a0aaed197de3', '56e1c4eaa37b546339732c7040da14a5decb942083', 'R4NSAF8CYZ', '9de193822a47ad7c1b78fdc4946c533a6d80b713a4', '2021-10-20 08:42:48', '100'),
('f6d694b849f120f7ed5cf20bfe9e4ff0c7c2a7167c', '7e00e08ad95b4c402925eb10d47efd9f0fbb610199', 'B64KGAWZRY', '58e2b0b30190c36826263607b9f01bfc7c6c891439', '2021-10-21 10:18:39', '100');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` varchar(200) NOT NULL,
  `service_name` varchar(200) DEFAULT NULL,
  `service_details` longtext DEFAULT NULL,
  `service_rate` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_details`, `service_rate`) VALUES
('864185efa88cbcc3b07898a4559dec03899e1c7997', 'Haircuts', 'When you want a short and simple look, you can get an excellent cut and shave the next time you sit in the barber’s chair. Boys, too, can enjoy crew cuts, side parts, tapered cuts, and fades. Most barbers are knowledgeable about the popular styles for men and boys, giving you a clean haircut you will be proud to wear. ', '100');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(200) NOT NULL,
  `staff_name` varchar(200) DEFAULT NULL,
  `staff_email` varchar(200) DEFAULT NULL,
  `staff_password` varchar(200) DEFAULT NULL,
  `staff_rank` varchar(200) DEFAULT NULL,
  `staff_phone` varchar(200) DEFAULT NULL,
  `staff_profile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_email`, `staff_password`, `staff_rank`, `staff_phone`, `staff_profile`) VALUES
('2621f3342873b53c4eea37672aa12935b2a80dd7cd', 'staff_1', 'admin@babershop.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'admin', '0798765432', NULL),
('91b3f9f95bbfe7ff0ea5fe38e55e6dd786b63568c6', 'Barber 001', 'barber001@gmail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'staff', '+25479908556', 'Staff1634195798.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `sys_id` int(200) NOT NULL,
  `sys_name` longtext DEFAULT NULL,
  `sys_tagline` longtext DEFAULT NULL,
  `sys_contacts` longtext DEFAULT NULL,
  `sys_email` longtext DEFAULT NULL,
  `sys_address` longtext DEFAULT NULL,
  `sys_about` longtext DEFAULT NULL,
  `sandbox_url` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`sys_id`, `sys_name`, `sys_tagline`, `sys_contacts`, `sys_email`, `sys_address`, `sys_about`, `sandbox_url`) VALUES
(1, 'Barbershop', 'Let your hair do the talking.', '+25479009312', 'augustinemutua5@gmail.com', '90126 Localhost', '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.sandbox.paypal.com/cgi-bin/webscr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_reservations`
--
ALTER TABLE `client_reservations`
  ADD PRIMARY KEY (`client_reservation_id`),
  ADD KEY `Client` (`client_reservation_client_id`),
  ADD KEY `Staff` (`client_reservation_service_staff_id`),
  ADD KEY `Service` (`client_reservation_service_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `reservation` (`payment_client_reservation_id`),
  ADD KEY `client_id` (`payment_client_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`sys_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `sys_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_reservations`
--
ALTER TABLE `client_reservations`
  ADD CONSTRAINT `Client` FOREIGN KEY (`client_reservation_client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Service` FOREIGN KEY (`client_reservation_service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Staff` FOREIGN KEY (`client_reservation_service_staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `client_id` FOREIGN KEY (`payment_client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation` FOREIGN KEY (`payment_client_reservation_id`) REFERENCES `client_reservations` (`client_reservation_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
