-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 08 2019 г., 00:05
-- Версия сервера: 8.0.13
-- Версия PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `slotegrator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item` char(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `item`) VALUES
(1, 'Power Bank 10000'),
(2, 'SSD Drive 256 Gb'),
(3, 'USB Flash storage 16 Gb'),
(4, 'Brand keys flashlight'),
(5, 'Brand T-shirt'),
(6, 'Double theatre pass'),
(7, 'Trip to Lissabon'),
(8, 'Trip to the space by Virgin Galactic'),
(9, 'Sports equipment for 100$'),
(10, 'Netflix subscription for 1 year');

-- --------------------------------------------------------

--
-- Структура таблицы `prizes`
--

CREATE TABLE `prizes` (
  `id` int(11) NOT NULL,
  `user` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `prize` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` char(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `prizes`
--

INSERT INTO `prizes` (`id`, `user`, `prize`, `type`) VALUES
(1, 'root@root.ru', '10', 'money'),
(2, 'root@root.ru', '908', 'bonus'),
(3, 'root@root.ru', '248', 'bonus'),
(4, 'root@root.ru', '733', 'bonus'),
(5, 'root@root.ru', '17', 'money'),
(6, 'root@root.ru', 'Netflix subscription for 1 year', 'item'),
(7, 'root@root.ru', '941', 'bonus'),
(8, 'root@root.ru', 'Brand T-shirt', 'item'),
(9, 'root@root.ru', '929', 'bonus'),
(10, 'root@root.ru', '21', 'money'),
(11, 'root@root.ru', 'Brand keys flashlight', 'item'),
(12, 'root@root.ru', '79', 'money'),
(13, 'root@root.ru', 'Double theatre pass', 'item'),
(14, 'root@root.ru', '880', 'bonus'),
(15, 'root@root.ru', '812', 'bonus'),
(16, 'root@root.ru', '931', 'bonus'),
(17, 'root@root.ru', '24', 'money'),
(18, 'root@root.ru', 'Power Bank 10000', 'item'),
(19, 'root@root.ru', '44', 'money'),
(20, 'root@root.ru', '596', 'bonus'),
(21, 'root@root.ru', '591', 'bonus'),
(22, 'root@root.ru', '340', 'money'),
(23, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(24, 'root@root.ru', '977', 'bonus'),
(25, 'root@root.ru', '466', 'money'),
(26, 'root@root.ru', 'Power Bank 10000', 'item'),
(27, 'root@root.ru', '123', 'bonus'),
(28, 'root@root.ru', '18', 'money'),
(29, 'root@root.ru', 'Netflix subscription for 1 year', 'item'),
(30, 'root@root.ru', '976', 'bonus'),
(31, 'root@root.ru', '78', 'money'),
(32, 'root@root.ru', 'Double theatre pass', 'item'),
(33, 'root@root.ru', '687', 'bonus'),
(34, 'root@root.ru', '29', 'money'),
(35, 'root@root.ru', 'Brand T-shirt', 'item'),
(36, 'root@root.ru', '587', 'bonus'),
(37, 'root@root.ru', '17', 'money'),
(38, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(39, 'root@root.ru', '305', 'bonus'),
(40, 'root@root.ru', '229', 'bonus'),
(41, 'root@root.ru', '953', 'bonus'),
(42, 'root@root.ru', '566', 'bonus'),
(43, 'root@root.ru', '324', 'bonus'),
(44, 'root@root.ru', '62', 'money'),
(45, 'root@root.ru', '45', 'money'),
(46, 'root@root.ru', 'Trip to the space by Virgin Galactic', 'item'),
(47, 'root@root.ru', '354', 'bonus'),
(48, 'root@root.ru', '66', 'money'),
(49, 'root@root.ru', '51', 'money'),
(50, 'root@root.ru', '56', 'money'),
(51, 'root@root.ru', 'USB Flash storage 16 Gb', 'item'),
(52, 'root@root.ru', '72', 'money'),
(53, 'root@root.ru', 'Brand keys flashlight', 'item'),
(54, 'root@root.ru', '822', 'bonus'),
(55, 'root@root.ru', '57', 'money'),
(56, 'root@root.ru', '15', 'money'),
(57, 'root@root.ru', '99', 'money'),
(58, 'root@root.ru', '88', 'money'),
(59, 'root@root.ru', '368', 'bonus'),
(60, 'root@root.ru', '13', 'money'),
(61, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(62, 'root@root.ru', 'Power Bank 10000', 'item'),
(63, 'root@root.ru', '92', 'money'),
(64, 'root@root.ru', '14', 'money'),
(65, 'root@root.ru', '79', 'money'),
(66, 'root@root.ru', '362', 'bonus'),
(67, 'root@root.ru', '567', 'bonus'),
(68, 'root@root.ru', '57', 'money'),
(69, 'root@root.ru', '73', 'money'),
(70, 'root@root.ru', '41', 'money'),
(71, 'root@root.ru', 'Trip to Lissabon', 'item'),
(72, 'root@root.ru', '77', 'money'),
(73, 'root@root.ru', '888', 'bonus'),
(74, 'root@root.ru', '603', 'bonus'),
(75, 'root@root.ru', '807', 'bonus'),
(76, 'root@root.ru', 'Trip to Lissabon', 'item'),
(77, 'root@root.ru', '146', 'bonus'),
(78, 'root@root.ru', '518', 'bonus'),
(79, 'root@root.ru', '93', 'money'),
(80, 'root@root.ru', '73', 'money'),
(81, 'root@root.ru', '774', 'bonus'),
(82, 'root@root.ru', '39', 'money'),
(83, 'root@root.ru', '66', 'money'),
(84, 'root@root.ru', 'Trip to Lissabon', 'item'),
(85, 'root@root.ru', 'Brand keys flashlight', 'item'),
(86, 'root@root.ru', '668', 'bonus'),
(87, 'root@root.ru', '657', 'bonus'),
(88, 'root@root.ru', '231', 'bonus'),
(89, 'root@root.ru', '756', 'bonus'),
(90, 'root@root.ru', 'USB Flash storage 16 Gb', 'item'),
(91, 'root@root.ru', '11', 'money'),
(92, 'root@root.ru', 'USB Flash storage 16 Gb', 'item'),
(93, 'root@root.ru', '56', 'money'),
(94, 'root@root.ru', 'Double theatre pass', 'item'),
(95, 'root@root.ru', '94', 'money'),
(96, 'root@root.ru', 'USB Flash storage 16 Gb', 'item'),
(97, 'root@root.ru', '926', 'bonus'),
(98, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(99, 'root@root.ru', '32', 'money'),
(100, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(101, 'root@root.ru', '71', 'money'),
(102, 'root@root.ru', '16', 'money'),
(103, 'root@root.ru', '337', 'bonus'),
(104, 'root@root.ru', 'Power Bank 10000', 'item'),
(105, 'root@root.ru', 'USB Flash storage 16 Gb', 'item'),
(106, 'root@root.ru', '59', 'money'),
(107, 'root@root.ru', 'Trip to the space by Virgin Galactic', 'item'),
(108, 'root@root.ru', 'Sports equipment for 100$', 'item'),
(109, 'root@root.ru', '28', 'money'),
(110, 'root@root.ru', 'Brand keys flashlight', 'item'),
(111, 'root@root.ru', 'Trip to the space by Virgin Galactic', 'item'),
(112, 'root@root.ru', '972', 'bonus'),
(113, 'root@root.ru', '91', 'money'),
(114, 'root@root.ru', '359', 'bonus'),
(115, 'root@root.ru', '164', 'bonus'),
(116, 'root@root.ru', 'Double theatre pass', 'item'),
(117, 'root@root.ru', '58', 'money'),
(118, 'root@root.ru', '15', 'money'),
(119, 'root@root.ru', '41', 'money'),
(120, 'root@root.ru', '33', 'money'),
(121, 'root@root.ru', 'Netflix subscription for 1 year', 'item'),
(122, 'root@root.ru', '20', 'money'),
(123, 'root@root.ru', 'Power Bank 10000', 'item'),
(124, 'root@root.ru', '72', 'money'),
(125, 'root@root.ru', 'Trip to Lissabon', 'item'),
(126, 'root@root.ru', 'Trip to the space by Virgin Galactic', 'item'),
(127, 'root@root.ru', 'Trip to Lissabon', 'item'),
(128, 'root@root.ru', '39', 'money'),
(129, 'root@root.ru', '628', 'bonus'),
(130, 'root@root.ru', '86', 'money'),
(131, 'root@root.ru', '58', 'money'),
(132, 'root@root.ru', 'Brand T-shirt', 'item'),
(133, 'root@root.ru', '70', 'money'),
(134, 'root@root.ru', '80', 'money'),
(135, 'root@root.ru', '61', 'money'),
(136, 'root@root.ru', '226', 'bonus'),
(137, 'root@root.ru', 'Trip to Lissabon', 'item'),
(138, 'root@root.ru', '624', 'bonus'),
(139, 'root@root.ru', 'Netflix subscription for 1 year', 'item'),
(140, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(141, 'root@root.ru', 'USB Flash storage 16 Gb', 'item'),
(142, 'root@root.ru', '97', 'money'),
(143, 'root@root.ru', '390', 'bonus'),
(144, 'root@root.ru', '917', 'bonus'),
(145, 'root@root.ru', 'SSD Drive 256 Gb', 'item'),
(146, 'root@root.ru', 'Netflix subscription for 1 year', 'item'),
(147, 'root@root.ru', 'Double theatre pass', 'item'),
(148, 'root@root.ru', 'Netflix subscription for 1 year', 'item'),
(149, 'root@root.ru', '853', 'bonus'),
(150, 'root@root.ru', '90', 'money'),
(151, 'root@root.ru', 'Brand keys flashlight', 'item'),
(152, 'root@root.ru', '864', 'bonus'),
(153, 'root@root.ru', '44', 'money'),
(154, 'root@root.ru', 'Brand keys flashlight', 'item'),
(155, 'root@root.ru', '56', 'money'),
(156, 'test@test.ru', '307', 'bonus'),
(157, 'test@test.ru', '75', 'money'),
(158, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(159, 'test@test.ru', '499', 'bonus'),
(160, 'test@test.ru', '54', 'money'),
(161, 'test@test.ru', '30', 'money'),
(162, 'test@test.ru', '60', 'money'),
(163, 'test@test.ru', '51', 'money'),
(164, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(165, 'test@test.ru', '96', 'money'),
(166, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(167, 'test@test.ru', '11', 'money'),
(168, 'test@test.ru', '872', 'bonus'),
(169, 'test@test.ru', 'Double theatre pass', 'item'),
(170, 'test@test.ru', 'USB Flash storage 16 Gb', 'item'),
(171, 'test@test.ru', '44', 'money'),
(172, 'test@test.ru', 'Brand keys flashlight', 'item'),
(173, 'test@test.ru', '523', 'bonus'),
(174, 'test@test.ru', '581', 'bonus'),
(175, 'test@test.ru', '73', 'money'),
(176, 'test@test.ru', 'USB Flash storage 16 Gb', 'item'),
(177, 'test@test.ru', '50', 'money'),
(178, 'test@test.ru', '99', 'money'),
(179, 'test@test.ru', '92', 'money'),
(180, 'test@test.ru', 'SSD Drive 256 Gb', 'item'),
(181, 'test@test.ru', '94', 'money'),
(182, 'test@test.ru', '265', 'bonus'),
(183, 'test@test.ru', '873', 'bonus'),
(184, 'test@test.ru', '84', 'money'),
(185, 'test@test.ru', 'SSD Drive 256 Gb', 'item'),
(186, 'test@test.ru', '83', 'money'),
(187, 'test@test.ru', 'Brand T-shirt', 'item'),
(188, 'test@test.ru', '71', 'money'),
(189, 'test@test.ru', '92', 'money'),
(190, 'test@test.ru', '38', 'money'),
(191, 'test@test.ru', 'Power Bank 10000', 'item'),
(192, 'test@test.ru', '60', 'money'),
(193, 'test@test.ru', 'Double theatre pass', 'item'),
(194, 'test@test.ru', '505', 'bonus'),
(195, 'test@test.ru', 'Brand keys flashlight', 'item'),
(196, 'test@test.ru', '530', 'bonus'),
(197, 'test@test.ru', 'Trip to Lissabon', 'item'),
(198, 'test@test.ru', '943', 'bonus'),
(199, 'test@test.ru', 'Power Bank 10000', 'item'),
(200, 'test@test.ru', 'Brand keys flashlight', 'item'),
(201, 'test@test.ru', '387', 'bonus'),
(202, 'test@test.ru', '78', 'money'),
(203, 'test@test.ru', '989', 'bonus'),
(204, 'test@test.ru', '384', 'bonus'),
(205, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(206, 'test@test.ru', 'Power Bank 10000', 'item'),
(207, 'test@test.ru', '252', 'bonus'),
(208, 'test@test.ru', 'Trip to Lissabon', 'item'),
(209, 'test@test.ru', '603', 'bonus'),
(210, 'test@test.ru', '35', 'money'),
(211, 'test@test.ru', '13', 'money'),
(212, 'test@test.ru', '77', 'money'),
(213, 'test@test.ru', '44', 'money'),
(214, 'test@test.ru', 'Double theatre pass', 'item'),
(215, 'test@test.ru', '40', 'money'),
(216, 'test@test.ru', '182', 'bonus'),
(217, 'test@test.ru', '114', 'bonus'),
(218, 'test@test.ru', '901', 'bonus'),
(219, 'test@test.ru', '95', 'money'),
(220, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(221, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(222, 'test@test.ru', '13', 'money'),
(223, 'test@test.ru', 'Brand T-shirt', 'item'),
(224, 'test@test.ru', '165', 'bonus'),
(225, 'test@test.ru', 'USB Flash storage 16 Gb', 'item'),
(226, 'test@test.ru', '12', 'money'),
(227, 'test@test.ru', '76', 'money'),
(228, 'test@test.ru', '89', 'money'),
(229, 'test@test.ru', '747', 'bonus'),
(230, 'test@test.ru', '91', 'money'),
(231, 'test@test.ru', '290', 'bonus'),
(232, 'test@test.ru', '432', 'bonus'),
(233, 'test@test.ru', '472', 'bonus'),
(234, 'test@test.ru', '487', 'bonus'),
(235, 'test@test.ru', '996', 'bonus'),
(236, 'test@test.ru', '30', 'money'),
(237, 'test@test.ru', 'Trip to Lissabon', 'item'),
(238, 'test@test.ru', '638', 'bonus'),
(239, 'test@test.ru', '540', 'bonus'),
(240, 'test@test.ru', '332', 'bonus'),
(241, 'test@test.ru', '609', 'bonus'),
(242, 'test@test.ru', '87', 'money'),
(243, 'test@test.ru', 'Double theatre pass', 'item'),
(244, 'test@test.ru', '82', 'money'),
(245, 'test@test.ru', 'USB Flash storage 16 Gb', 'item'),
(246, 'test@test.ru', '902', 'bonus'),
(247, 'test@test.ru', '621', 'bonus'),
(248, 'test@test.ru', '589', 'bonus'),
(249, 'test@test.ru', '226', 'bonus'),
(250, 'test@test.ru', '650', 'bonus'),
(251, 'test@test.ru', '569', 'bonus'),
(252, 'test@test.ru', '276', 'bonus'),
(253, 'test@test.ru', '272', 'bonus'),
(254, 'test@test.ru', '156', 'bonus'),
(255, 'test@test.ru', 'Brand T-shirt', 'item'),
(256, 'test@test.ru', '18', 'money'),
(257, 'test@test.ru', '88', 'money'),
(258, 'test@test.ru', '60', 'money'),
(259, 'test@test.ru', 'Sports equipment for 100$', 'item'),
(260, 'test@test.ru', '140', 'bonus'),
(261, 'test@test.ru', 'Double theatre pass', 'item'),
(262, 'test@test.ru', '51', 'money'),
(263, 'test@test.ru', '28', 'money'),
(264, 'test@test.ru', '746', 'bonus'),
(265, 'test@test.ru', '10', 'money'),
(266, 'test@test.ru', 'SSD Drive 256 Gb', 'item'),
(267, 'test@test.ru', '709', 'bonus'),
(268, 'test@test.ru', 'Netflix subscription for 1 year', 'item'),
(269, 'test@test.ru', '51', 'money'),
(270, 'test@test.ru', 'Trip to Lissabon', 'item'),
(271, 'test@test.ru', '84', 'money'),
(272, 'test@test.ru', 'Brand keys flashlight', 'item'),
(273, 'test@test.ru', '41', 'money'),
(274, 'test@test.ru', 'Trip to the space by Virgin Galactic', 'item'),
(275, 'test@test.ru', '617', 'bonus'),
(276, 'test@test.ru', '977', 'bonus'),
(277, 'test@test.ru', '19', 'money'),
(278, 'test@test.ru', 'Trip to the space by Virgin Galactic', 'item'),
(279, 'test@test.ru', 'USB Flash storage 16 Gb', 'item'),
(280, 'test@test.ru', '483', 'bonus'),
(281, 'test@test.ru', 'Brand keys flashlight', 'item'),
(282, 'test@test.ru', '923', 'bonus'),
(283, 'test@test.ru', '569', 'bonus'),
(284, 'test@test.ru', '423', 'bonus'),
(285, 'test@test.ru', '936', 'bonus'),
(286, 'test@test.ru', '303', 'bonus'),
(287, 'a@a.ru', '944', 'bonus'),
(288, 'a@a.ru', 'SSD Drive 256 Gb', 'item'),
(289, 'a@a.ru', '714', 'bonus'),
(290, 'a@a.ru', 'Trip to Lissabon', 'item'),
(291, 'a@a.ru', 'USB Flash storage 16 Gb', 'item'),
(292, 'a@a.ru', '65', 'money'),
(293, 'a@a.ru', '74', 'money'),
(294, 'a@a.ru', '13', 'money'),
(295, 'a@a.ru', '65', 'money'),
(296, 'a@a.ru', '532', 'bonus'),
(297, 'a@a.ru', '184', 'bonus'),
(298, 'a@a.ru', '830', 'bonus'),
(299, 'a@a.ru', '93', 'money'),
(300, 'a@a.ru', '100', 'money'),
(301, 'a@a.ru', '37', 'money'),
(302, 'a@a.ru', '37', 'money'),
(303, 'a@a.ru', '19', 'money'),
(304, 'a@a.ru', '258', 'bonus'),
(305, 'a@a.ru', '66', 'money'),
(306, 'a@a.ru', '546', 'bonus'),
(307, 'a@a.ru', '81', 'money'),
(308, 'a@a.ru', '873', 'bonus'),
(309, 'a@a.ru', '24', 'money'),
(310, 'a@a.ru', 'Double theatre pass', 'item'),
(311, 'a@a.ru', 'Power Bank 10000', 'item'),
(312, 'a@a.ru', 'Netflix subscription for 1 year', 'item'),
(313, 'a@a.ru', '732', 'bonus'),
(314, 'a@a.ru', '30', 'money'),
(315, 'a@a.ru', '463', 'bonus'),
(316, 'a@a.ru', '75', 'money'),
(317, 'z@z.z', 'Brand keys flashlight', 'item'),
(318, 'z@z.z', '387', 'bonus'),
(319, 'z@z.z', '23', 'money'),
(320, 'z@z.z', 'Power Bank 10000', 'item'),
(321, 'z@z.z', '187', 'bonus'),
(322, 'z@z.z', '38', 'money'),
(323, 'z@z.z', '604', 'bonus'),
(324, 'z@z.z', '645', 'bonus'),
(325, 'z@z.z', '29', 'money'),
(326, 'z@z.z', 'USB Flash storage 16 Gb', 'item'),
(327, 'z@z.z', 'Trip to Lissabon', 'item'),
(328, 'z@z.z', '868', 'bonus'),
(329, 'z@z.z', 'Brand T-shirt', 'item'),
(330, 'z@z.z', '84', 'money'),
(331, 'z@z.z', '69', 'money'),
(332, 'z@z.z', '337', 'bonus'),
(333, 'z@z.z', '230', 'bonus'),
(334, 'z@z.z', '38', 'money'),
(335, 'z@z.z', '84', 'money'),
(336, 'z@z.z', '10', 'money'),
(337, 'z@z.z', '93', 'money'),
(338, 'z@z.z', '667', 'bonus'),
(339, 'z@z.z', '84', 'money'),
(340, 'z@z.z', '55', 'money'),
(341, 'z@z.z', '59', 'money'),
(342, 'z@z.z', 'Brand keys flashlight', 'item'),
(343, 'z@z.z', '408', 'bonus'),
(344, 'z@z.z', '758', 'bonus'),
(345, 'z@z.z', '26', 'money'),
(346, 'z@z.z', '60', 'money'),
(347, 'z@z.z', '686', 'bonus'),
(348, 'z@z.z', 'INSERT INTO prizes(user, prize, type) VALUES (:user, :prize, :type)', 'money'),
(349, 'z@z.z', '-2000', 'bonus'),
(350, 'z@z.z', 'INSERT INTO prizes(user, prize, type) VALUES (:user, :prize, :type)', 'money'),
(351, 'z@z.z', '-1500', 'bonus'),
(352, 'z@z.z', 'INSERT INTO prizes(user, prize, type) VALUES (:user, :prize, :type)', 'money'),
(353, 'z@z.z', '-2000', 'bonus'),
(354, 'z@z.z', '111', 'bonus'),
(355, 'z@z.z', '155', 'bonus'),
(356, 'z@z.z', '867', 'bonus'),
(357, 'z@z.z', '847', 'bonus'),
(358, 'z@z.z', '270', 'bonus'),
(359, 'z@z.z', '859', 'bonus'),
(360, 'z@z.z', '105', 'bonus'),
(361, 'z@z.z', '856', 'bonus'),
(362, 'z@z.z', '773', 'bonus'),
(363, 'z@z.z', '5', 'money'),
(364, 'z@z.z', '-5000', 'bonus'),
(365, 'z@z.z', '659', 'bonus'),
(366, 'z@z.z', '973', 'bonus'),
(367, 'z@z.z', '1.7', 'money'),
(368, 'z@z.z', '-1700', 'bonus'),
(369, 'admin@admin.ru', '427', 'bonus'),
(370, 'admin@admin.ru', '27', 'money'),
(371, 'admin@admin.ru', '598', 'bonus'),
(372, 'admin@admin.ru', '508', 'bonus'),
(373, 'admin@admin.ru', '48', 'money'),
(374, 'admin@admin.ru', 'Brand T-shirt', 'item'),
(375, 'admin@admin.ru', '96', 'money'),
(376, 'admin@admin.ru', '221', 'bonus'),
(377, 'admin@admin.ru', 'Netflix subscription for 1 year', 'item'),
(378, 'admin@admin.ru', '807', 'bonus'),
(379, 'admin@admin.ru', 'Power Bank 10000', 'item'),
(380, 'admin@admin.ru', '542', 'bonus'),
(381, 'admin@admin.ru', '82', 'money'),
(382, 'admin@admin.ru', 'Trip to Lissabon', 'item'),
(383, 'admin@admin.ru', '3', 'money'),
(384, 'admin@admin.ru', '-3000', 'bonus'),
(385, 'admin@admin.ru', 'Brand T-shirt', 'item'),
(386, 'admin@admin.ru', '1', 'money'),
(387, 'admin@admin.ru', '-1000', 'bonus'),
(388, 'admin@admin.ru', 'Sports equipment for 100$', 'item'),
(389, 'admin@admin.ru', '543', 'bonus'),
(390, 'admin@admin.ru', '608', 'bonus'),
(391, 'admin@admin.ru', '866', 'bonus'),
(392, 'admin@admin.ru', '1.5', 'money'),
(393, 'admin@admin.ru', '-1500', 'bonus'),
(394, 'admin@admin.ru', '128', 'bonus'),
(395, 'admin@admin.ru', '532', 'bonus'),
(396, 'admin@admin.ru', '752', 'bonus'),
(397, 'admin@admin.ru', '683', 'bonus'),
(398, 'admin@admin.ru', '1.7', 'money'),
(399, 'admin@admin.ru', '-1700', 'bonus'),
(400, 'admin@admin.ru', '170', 'bonus'),
(401, 'admin@admin.ru', '789', 'bonus'),
(402, 'admin@admin.ru', '789', 'bonus'),
(403, 'admin@admin.ru', '1', 'money'),
(404, 'admin@admin.ru', '-1000', 'bonus'),
(405, 'z@z.z', '746', 'bonus'),
(406, 'z@z.z', '884', 'bonus'),
(407, 'z@z.z', '1', 'money'),
(408, 'z@z.z', '-1000', 'bonus'),
(409, 'z@z.z', '619', 'bonus'),
(410, 'z@z.z', '1.3', 'money'),
(411, 'z@z.z', '-1300', 'bonus'),
(412, 'z@z.z', '70000', 'bonus'),
(413, 'z@z.z', '70000', 'money'),
(414, 'z@z.z', '7000', 'bonus'),
(415, 'z@z.z', '-7000', 'money'),
(416, 'z@z.z', '10000', 'bonus'),
(417, 'z@z.z', '-10000', 'money'),
(418, 'z@z.z', '10000', 'bonus'),
(419, 'z@z.z', '-100', 'money'),
(420, 'z@z.z', '10000', 'bonus'),
(421, 'z@z.z', '-100', 'money'),
(422, 'z@z.z', '10000', 'bonus'),
(423, 'z@z.z', '-100', 'money'),
(424, 'z@z.z', '10000', 'bonus'),
(425, 'z@z.z', '-100', 'money'),
(426, 'z@z.z', '10000', 'bonus'),
(427, 'z@z.z', '-100', 'money'),
(428, 'z@z.z', '100', 'bonus'),
(429, 'z@z.z', '-1', 'money'),
(430, 'z@z.z', '795', 'bonus'),
(431, 'z@z.z', '999', 'bonus'),
(432, 'z@z.z', '290', 'bonus'),
(433, 'test3@test.ru', '73', 'money'),
(434, 'test3@test.ru', '603', 'bonus'),
(435, 'test3@test.ru', '100', 'bonus'),
(436, 'test3@test.ru', '-1', 'money'),
(437, 'test3@test.ru', '716', 'bonus'),
(438, 'test3@test.ru', '413', 'bonus'),
(439, 'test3@test.ru', '213', 'bonus'),
(440, 'test3@test.ru', 'Brand keys flashlight', 'item'),
(441, 'test3@test.ru', '647', 'bonus'),
(442, 'test3@test.ru', 'Brand keys flashlight', 'item'),
(443, 'test3@test.ru', '64', 'money'),
(444, 'test3@test.ru', 'Trip to the space by Virgin Galactic', 'item'),
(445, 'test3@test.ru', 'USB Flash storage 16 Gb', 'item'),
(446, 'test3@test.ru', 'Trip to Lissabon', 'item');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`) VALUES
(1, 'asd', 'asd', 'asldk@kalsd.ru', ''),
(2, 'asd', 'asdte', 'root@root.ru', '63a9f0ea7bb98050796b649e85481845'),
(3, 'Anton', 'Mengsk', 'test@test', '098f6bcd4621d373cade4e832627b4f6'),
(4, 'tony', 'mengsk', 'root@toos', 'e06e1e95909b07e5e0609af64b631bc1'),
(5, '', '', 'asdsdsad@asd', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'asd', 'asdf', 'root@wae', '21232f297a57a5a743894a0e4a801fc3'),
(7, 'ASD', '', 'ROOT@ASD', '21232f297a57a5a743894a0e4a801fc3'),
(8, 'Tony', 'Marcony', 'test@test.ru', '098f6bcd4621d373cade4e832627b4f6'),
(9, 'a', 'a', 'a@a.ru', '0cc175b9c0f1b6a831c399e269772661'),
(10, 'z', 'z', 'z@z.z', 'fbade9e36a3f36d3d676c1b808451dd7'),
(11, 'Tony', 'Loony', 'admin@admin.ru', '21232f297a57a5a743894a0e4a801fc3'),
(12, 'Baza', 'Bing', 'test3@test.ru', '098f6bcd4621d373cade4e832627b4f6');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `prizes`
--
ALTER TABLE `prizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
