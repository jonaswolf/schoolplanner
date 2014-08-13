-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 14. Aug 2014 um 00:36
-- Server Version: 5.5.37
-- PHP-Version: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `schoolplanner`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `room`
--

INSERT INTO `room` (`id`, `room`) VALUES
(1, 'W231'),
(2, 'W13'),
(3, 'W234'),
(4, 'O241');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `subject`
--

INSERT INTO `subject` (`id`, `subject`) VALUES
(1, 'Mathematik'),
(2, 'Deutsch'),
(3, 'Englisch'),
(4, 'Französisch'),
(5, 'Naturwissenschaften'),
(6, 'Hauswirtschaft');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short` varchar(4) NOT NULL,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `hours` int(2) NOT NULL,
  `hours_max` int(2) NOT NULL,
  `hours_extra` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `teacher`
--

INSERT INTO `teacher` (`id`, `short`, `last_name`, `first_name`, `hours`, `hours_max`, `hours_extra`) VALUES
(1, 'CZOK', 'Czock', 'Anelise', 30, 40, 0),
(2, 'SHWE', 'Schwerte', 'Peggy', 35, 40, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teacher_subject`
--

CREATE TABLE IF NOT EXISTS `teacher_subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `teacher_subject`
--

INSERT INTO `teacher_subject` (`id`, `teacher_id`, `subject_id`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 2, 1),
(4, 2, 5),
(5, 1, 7),
(6, 2, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  `lesson` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `timetable`
--

INSERT INTO `timetable` (`id`, `day`, `lesson`, `subject_id`, `teacher_id`, `room_id`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 1),
(3, 1, 3, 6, 1, 2),
(4, 1, 5, 6, 1, 3),
(5, 2, 2, 1, 1, 1),
(6, 2, 5, 1, 1, 1),
(7, 3, 1, 1, 1, 1),
(8, 3, 2, 1, 1, 1),
(9, 4, 3, 1, 1, 1),
(10, 4, 4, 1, 1, 1),
(11, 5, 1, 1, 1, 1),
(12, 5, 2, 1, 1, 1),
(13, 5, 3, 1, 1, 1),
(14, 5, 4, 1, 1, 1),
(15, 5, 5, 1, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
