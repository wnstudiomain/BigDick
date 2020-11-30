-- phpMyAdmin SQL Dump
-- version 4.2.12deb2~netangels2
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 29 2020 г., 18:20
-- Версия сервера: 10.2.9-MariaDB-10.2.9+maria~jessie-log
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u69218_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `b_user`
--

CREATE TABLE IF NOT EXISTS `b_user` (
`ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user`
--

INSERT INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`) VALUES
(1, '2019-08-29 19:42:04', 'admin', 'BTvl2ETueeaecc89089a58f6c9421bb52b33fe60', 'mBk77D6Ocffef90018cdf68935aee763eac8b481', 'Y', '', '', 'test@alltrd.ru', '2019-03-25 17:20:38', '2018-05-25 15:29:39', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 15:29:39', NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, '76070740bf1999502889e571e6fc1499', NULL),
(3, '2019-12-09 09:44:48', 'ddi@restoranica.ru', 'oA2!_9Zr95f85fcc5e68667ddd9c7e252f84da4d', '06RJ3Tw5a70248dafec324595ee188f51460277d', 'Y', 'Дмитрий', 'Денищиц', 'ddi@restoranica.ru', '2020-11-29 18:00:09', '2018-06-15 15:16:41', 's1', '', '', '', '', NULL, NULL, '+7 (912) 678-81-45', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', '', NULL, '', NULL, NULL, '2019-12-09 14:44:48', 'Ильич', NULL, 0, '2020-08-18 10:32:46', '', NULL, NULL, 'Дмитрий', '59e7faa80048bfd9e98cda25af384f13', ''),
(7, '2019-08-29 19:38:44', 'exultant@mail.ru', 'zQ]8O7a,4ed071fcbb5304fc68fd6c614a1f1b45', 'C9LrCi3U8949bc6a2d5a9779faee1e1728a98725', 'Y', 'Наталья', 'Денищиц', 'exultant@mail.ru', '2019-08-30 09:55:03', '2019-08-28 21:17:46', 's1', '', '', '', '', NULL, NULL, '+7 (963) 036-73-03', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', '', NULL, '', NULL, NULL, '2019-08-30 00:38:44', 'Валерьевна', '', 0, '2019-08-30 02:01:21', '', NULL, NULL, '', '859164eaa2066cc89698f8dbc6882221', 'ru'),
(8, '2019-08-30 05:18:56', 'redpikachu.ru@gmail.com', 'UOp2AcJj0bf3cc11b13f477385785761f603cb64', '3LB1biJQf828689386eecf8aea58ebadeb496b00', 'Y', 'Сергей', 'Наимудрейший', 'redpikachu.ru@gmail.com', '2019-08-30 01:31:40', '2019-08-30 01:31:40', 's1', '', '', '', '', NULL, NULL, '89266351138', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', '', NULL, '', NULL, NULL, '2019-08-30 10:18:56', '', '', 0, '2019-08-30 01:31:43', '', NULL, NULL, '', NULL, 'ru'),
(9, '2020-05-21 19:18:02', 'support', '$b8Dt#9X49b1f0c4ae9d5663884cec8fd3ffbd0c', 'GTrFwNow05cad34068ac3c9a279d27faf7a675d4', 'Y', '', 'support', 'support@aspro.ru', '2020-08-03 12:30:04', '2019-09-25 10:59:36', 's1', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, '', '', NULL, '', NULL, NULL, '2020-05-22 00:18:02', '', NULL, 3, '2020-08-03 12:30:50', '', NULL, NULL, '', '9254f2b53de3ec2275b9ab3ecf0a952c', ''),
(11, '2020-04-19 09:19:57', 'anonymous_wbCkiZ3ch@example.com', 'fZO318WP855e9874f4e8a3548ffc3ee12f2156dc', 'bEDUJmICc8f772ca92d0674ac0ba393831d5de0f', 'N', 'пользователь', 'Анонимный', 'anonymous_wbCkiZ3ch@example.com', NULL, '2020-04-19 14:19:57', 's1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saleanonymous', '2020-04-19 14:19:57', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2020-11-29 13:13:49', 'jennyone59@gmail.com', 'qHCCuAxw139ddca623e6a71b3bc11e58cb6c6fa1', 'ybhHqxGk34791982d269fd3da855b8a0a374cf74', 'Y', 'Nikolay', 'Khanis', 'jennyone59@gmail.com', '2020-11-29 18:15:09', '2020-09-22 14:16:51', 's1', '', '', '', '', NULL, NULL, '+7 (962) 377-33-13', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, '', '', NULL, '', NULL, NULL, '2020-11-29 18:13:49', '', NULL, 0, NULL, '', NULL, NULL, '', '67ca461aac1654e0c399cf37b7bd161f', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `b_user`
--
ALTER TABLE `b_user`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`), ADD KEY `ix_b_user_email` (`EMAIL`), ADD KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`), ADD KEY `IX_B_USER_XML_ID` (`XML_ID`), ADD KEY `ix_user_last_login` (`LAST_LOGIN`), ADD KEY `ix_user_date_register` (`DATE_REGISTER`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `b_user`
--
ALTER TABLE `b_user`
MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
