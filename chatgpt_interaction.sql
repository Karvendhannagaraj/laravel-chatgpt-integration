-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2024 at 08:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatgpt_interaction`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','completed','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `message`, `response`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is React.js?', 'React.js is a JavaScript library for building user interfaces.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(2, 'What is Docker?', 'Docker is a platform for developing, shipping, and running applications inside containers.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(3, 'What is Node.js?', 'Node.js is a JavaScript runtime built on Chrome\'s V8 engine for server-side scripting.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(4, 'What is the difference between Python and JavaScript?', 'Python is often used for web development, automation, and data science, while JavaScript is primarily used for web development and front-end scripting.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(5, 'What is a RESTful API?', 'A RESTful API is an architectural style for providing standards between computer systems on the web using HTTP methods like GET, POST, PUT, DELETE.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(6, 'What is HTML?', 'HTML stands for Hypertext Markup Language, used to create web pages.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(7, 'What is CSS?', 'CSS stands for Cascading Style Sheets, used to style the HTML elements on a web page.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(8, 'What is Laravel?', 'Laravel is a PHP framework for web artisans that helps build web applications with elegant syntax.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(9, 'What is the use of a virtual machine?', 'A virtual machine allows a computer to run multiple operating systems on a single physical machine, providing isolation and resource management.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(10, 'What is SQL?', 'SQL stands for Structured Query Language, used to manage and manipulate relational databases.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(11, 'What is MongoDB?', 'MongoDB is a NoSQL database that stores data in a flexible, JSON-like format called BSON.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(12, 'What is an API?', 'An API (Application Programming Interface) allows two software applications to communicate with each other.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(13, 'What is a class in OOP?', 'A class in Object-Oriented Programming is a blueprint for creating objects that share common properties and methods.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(14, 'What is Python used for?', 'Python is used for web development, data science, artificial intelligence, automation, and more.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(15, 'What is a framework?', 'A framework is a pre-built collection of code that provides a foundation for developing software applications more efficiently.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(16, 'What is a container in Docker?', 'A Docker container is a lightweight, portable, and self-sufficient unit that can run any application and its dependencies.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(17, 'What is Kubernetes?', 'Kubernetes is an open-source platform for automating the deployment, scaling, and management of containerized applications.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(18, 'What is version control?', 'Version control is the management of changes to software code over time, allowing collaboration and tracking of modifications.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(19, 'What is Git?', 'Git is a distributed version control system for tracking changes in source code during software development.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(20, 'What is React Native?', 'React Native is a framework for building mobile applications using JavaScript and React.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(21, 'What is a microservice?', 'A microservice is an architectural style that structures an application as a collection of loosely coupled services.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(22, 'What is WebAssembly?', 'WebAssembly is a binary instruction format for a stack-based virtual machine that allows web browsers to run code at near-native speed.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(23, 'What is TypeScript?', 'TypeScript is a superset of JavaScript that adds static types and other features to the language.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(24, 'What is Angular?', 'Angular is a platform and framework for building single-page client applications using HTML and TypeScript.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(25, 'What is Vue.js?', 'Vue.js is a progressive JavaScript framework for building user interfaces and single-page applications.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(26, 'What is the difference between SQL and NoSQL?', 'SQL databases are relational, while NoSQL databases are non-relational and often designed to scale horizontally.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(27, 'What is the difference between front-end and back-end?', 'Front-end refers to the user interface and experience, while back-end refers to the server-side, database, and application logic.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(28, 'What is REST?', 'REST (Representational State Transfer) is an architectural style for designing networked applications.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(29, 'What is JSON?', 'JSON stands for JavaScript Object Notation and is a lightweight data interchange format that is easy for humans to read and write.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(30, 'What is jQuery?', 'jQuery is a fast, small, and feature-rich JavaScript library that simplifies HTML document traversal, event handling, and animations.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(31, 'What is Cloud Computing?', 'Cloud computing is the delivery of computing services like storage, databases, networking, and software over the internet.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(32, 'What is JavaScript?', 'JavaScript is a programming language used to create dynamic and interactive effects on web pages.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(33, 'What is C++ used for?', 'C++ is used for developing high-performance applications, including video games, operating systems, and complex simulations.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(34, 'What is an object in OOP?', 'An object is an instance of a class that contains both data and methods to operate on that data.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(35, 'What is PHP?', 'PHP is a server-side scripting language primarily used for web development and creating dynamic web pages.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(36, 'What is the difference between GET and POST methods in HTTP?', 'GET is used to request data from a server, while POST is used to send data to a server for processing.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(37, 'What is a stack?', 'A stack is a data structure that follows the Last In, First Out (LIFO) principle.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(38, 'What is a queue?', 'A queue is a data structure that follows the First In, First Out (FIFO) principle.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(39, 'What is a constructor in OOP?', 'A constructor is a special method used to initialize objects when they are created from a class.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(40, 'What is polymorphism in OOP?', 'Polymorphism is the ability to present the same interface for different data types in OOP.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(41, 'What is encapsulation in OOP?', 'Encapsulation is the concept of bundling data and the methods that operate on that data into a single unit or class.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(42, 'What is inheritance in OOP?', 'Inheritance is the mechanism by which one class can inherit properties and methods from another class.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(43, 'What is a database index?', 'A database index is a data structure that improves the speed of data retrieval operations on a database table.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(44, 'What is NoSQL?', 'NoSQL refers to non-relational databases designed to handle large volumes of structured and unstructured data.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(45, 'What is OAuth?', 'OAuth is an open standard for access delegation commonly used for token-based authentication.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(46, 'What is DevOps?', 'DevOps is a set of practices that combines software development (Dev) and IT operations (Ops) to shorten the development lifecycle.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(47, 'What is an HTTP request?', 'An HTTP request is a message sent by a client to a server to request data or perform an action over the web.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(48, 'What is an HTTP response?', 'An HTTP response is a message sent by the server back to the client, usually containing the requested data or status of the request.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(49, 'What is GitHub?', 'GitHub is a web-based platform for version control using Git that facilitates collaborative software development.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18'),
(50, 'What is a load balancer?', 'A load balancer is a device or software that distributes incoming network traffic across multiple servers.', '', '2024-12-30 07:02:18', '2024-12-30 07:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_29_173032_create_conversations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_status_index` (`status`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
