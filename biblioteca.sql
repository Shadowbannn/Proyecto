-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2026 a las 05:54:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `anio` smallint(6) NOT NULL,
  `paginas` int(11) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT 1,
  `genero` varchar(50) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `isbn` varchar(30) DEFAULT NULL,
  `cantidad` int(11) DEFAULT 1,
  `portada` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `anio`, `paginas`, `disponible`, `genero`, `editorial`, `isbn`, `cantidad`, `portada`) VALUES
(1, 'La Divina Comedia', 'Dante Alighieri', 1320, 544, 1, 'Fantasía', NULL, NULL, 1, 'portada_6a5598a0b83479.28562987.jpg'),
(3, 'Metamorfosis', 'Franz Kafka', 1915, 120, 1, NULL, NULL, NULL, 1, 'portada_6a5412c2e19e66.91459552.jpg'),
(5, 'El Extranjero', 'Albert Camus', 1942, 124, 1, 'Filosofía', NULL, NULL, 1, 'portada_6a559928884ff3.65085973.jpg'),
(6, 'Crimen y Castigo', ' Fiódor dostoyevski', 1986, 653, 1, NULL, NULL, NULL, 1, 'portada_6a541812ac6968.58678455.jpeg'),
(8, 'Ready Player One', 'Ernest Cline', 2008, 325, 1, 'Fiction', NULL, NULL, 1, 'portada_6a55970c42f875.30665934.jpg'),
(12, 'Historia de Peñarol', 'Luciano Alvarez', 2004, 564, 1, 'VAMO PEÑAROOOL', NULL, NULL, 1, 'portada_6a5427a75ea5c3.20312278.jpg'),
(13, 'West Side story', 'Irving Shulman', 1967, 124, 1, NULL, NULL, NULL, 1, 'portada_6a542849771035.44904304.jpg'),
(15, 'Ciudades de papel', 'John Green', 2014, 271, 1, 'Young Adult Fiction', NULL, NULL, 1, 'portada_6a55973242e547.68263443.jpg'),
(16, 'Violet y Finch', 'Jennifer Niven', 2015, 400, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a55977aea0dd4.89953524.jpg'),
(18, 'Secretos en la posada vieja', 'Helen Velando', 2012, 251, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559b31e2d134.62911476.jpg'),
(23, 'El libro Troll', 'El Rubius', 2014, 192, 1, 'Troll', NULL, NULL, 1, 'portada_6a55983fa0e7e4.84550587.jpg'),
(26, 'En el bosque, bajo los cerezos en flor', 'Ango Sakaguchi', 2013, 152, 1, 'Juvenile Nonfiction', NULL, NULL, 1, 'portada_6a5588bcb86530.55429848.jpg'),
(34, 'Los habitantes del bosque', 'Thomas Hardy', 1887, 452, 1, 'Fiction', NULL, NULL, 1, 'portada_6a558be317e153.52202247.jpg'),
(42, 'Misterio en el Cabo Polonio', 'Helen Velando', 2001, 203, 1, 'Childrens', NULL, NULL, 1, 'portada_6a558ebfa12904.97068898.jpg'),
(67, 'La barraca', 'Vicente Blasco Ibáñez', 1898, 232, 1, 'Fiction', NULL, NULL, 1, 'portada_6a55963c93bac9.94423243.jpg'),
(77, 'Everything Is Tuberculosis: The History and Persistence of Our Deadliest Infection', 'John  Green', 2025, 198, 1, 'Nonfiction', NULL, NULL, 1, 'portada_6a55998c841229.69164387.jpg'),
(79, 'Chainsaw Man, Vol. 1: Dog and Chainsaw', 'Tatsuki Fujimoto', 2019, 192, 1, 'Manga', NULL, NULL, 1, 'portada_6a559b7e8befc4.34270938.jpg'),
(85, 'Garden of Words', '新海誠', 2013, 190, 1, 'Manga', NULL, NULL, 1, 'portada_6a559bbf95fbf1.90192879.jpg'),
(86, 'La desaparición de Stephanie Mailer', 'Joël Dicker', 2018, 656, 1, 'Thriller', NULL, NULL, 1, 'portada_6a559beb734af0.69365148.jpg'),
(88, 'Solo Leveling 1', '추공', 2018, 313, 1, 'Manhwa', NULL, NULL, 1, 'portada_6a559c4fb089c4.95633438.jpg'),
(91, 'Diary of a Wimpy Kid (Diary of a Wimpy Kid #1)', 'Jeff Kinney', 2007, 218, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559cba0cfb38.09379738.jpg'),
(95, 'Rodrick Rules (Diary of a Wimpy Kid #2)', 'Jeff Kinney', 2008, 228, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559cf7ae8331.18975375.jpg'),
(97, 'The Last Straw (Diary of a Wimpy Kid #3)', 'Jeff Kinney', 2009, 218, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559d28689711.23894404.jpg'),
(98, 'Dog Days (Diary of a Wimpy Kid #4)', 'Jeff Kinney', 2007, 218, 1, '', NULL, NULL, 1, 'portada_6a559d6754e717.43636481.jpg'),
(101, 'The Ugly Truth (Diary of a Wimpy Kid #5)', 'Jeff Kinney', 2010, 217, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559ee7b19987.40858342.jpg'),
(102, 'Cabin Fever (Diary of a Wimpy Kid #6)', 'Jeff Kinney', 2011, 218, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559f27509d30.78092610.jpg'),
(103, 'The Third Wheel (Diary of a Wimpy Kid #7)', 'Jeff Kinney', 2012, 224, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559f446d8cb6.18905475.jpg'),
(105, 'Hard Luck (Diary of a Wimpy Kid #8)', 'Jeff Kinney', 2013, 217, 1, 'Juvenile Fiction', NULL, NULL, 1, 'portada_6a559e274bd971.78007657.jpg'),
(106, 'Attack On Titan, Vol. 1', 'Hajime Isayama', 2010, 193, 1, '', NULL, NULL, 1, 'portada_6a55a6335f8392.03463302.jpg'),
(107, 'Detectives en el Cementerio Central', 'Helen Velando', 2002, 236, 1, 'Childrens', NULL, NULL, 1, 'portada_6a55a6a3ce6451.90999504.jpg'),
(113, 'La pareja de al lado', 'Shari Lapeña', 2016, 390, 1, 'Thriller', NULL, NULL, 1, 'portada_6a559448463074.08019943.jpg'),
(138, 'Berserk 1', 'Kentaro Miura', 1990, 224, 1, 'Manga', NULL, NULL, 1, 'portada_6a55a96306afa1.88660799.jpg'),
(139, 'Billie Eilish', 'Billie Eilish', 2021, 336, 1, 'Biografía', NULL, NULL, 1, 'portada_6a55a9ad722385.65689690.jpg'),
(140, 'My Broken Mariko', 'Waka Hirako', 2020, 194, 1, 'Manga', NULL, NULL, 1, 'portada_6a55a9130a92a5.16751180.jpg'),
(144, 'Cigarette Anthology', 'Inio Asano', 2015, 184, 1, 'Manga', NULL, NULL, 1, 'portada_6a55a83b2f92b0.86965612.jpg'),
(145, 'La chica a la orilla del mar 1-2', 'Inio Asano', 2016, 410, 1, 'Manga', NULL, NULL, 1, 'portada_6a55a879373ee1.19742164.jpg'),
(146, 'Oyasumi Punpun 1', 'INIO ASANO', 2007, 232, 1, 'Manga', NULL, NULL, 1, 'portada_6a55a80c4a6ca7.11448795.jpg'),
(147, 'El fin del mundo y antes del amanecer', 'Inio Asano', 2008, 264, 1, 'Manga', NULL, NULL, 1, 'portada_6a55a8b5870081.47531463.jpg'),
(148, 'Solanin (Solanin, #1-2)', 'Inio Asano', 2006, 432, 1, 'jap-n', NULL, NULL, 1, 'portada_6a55770f549309.40677756.jpg'),
(153, 'Another', 'Yukito Ayatsuji', 2009, 677, 1, 'Manga', NULL, NULL, 1, 'portada_6a55aa6c5f6356.30878403.jpg'),
(156, 'Scott Pilgrim\'s Precious Little Life', 'Bryan Lee O\'Malley', 2004, 168, 1, 'Comic', NULL, NULL, 1, 'portada_6a55ab120a13a4.71910694.jpg'),
(157, 'La elección final (Las tejedoras de destinos, #3)', 'Gennifer Albin', 2014, 325, 1, 'usa', NULL, NULL, 1, NULL),
(158, 'Entre dos mundos (Las tejedoras de destinos, #2)', 'Gennifer Albin', 2013, 441, 1, 'usa', NULL, NULL, 1, 'portada_6a55771dcb4563.26448178.jpg'),
(159, 'Las tejedoras de destinos (Las tejedoras de destinos, #1)', 'Gennifer Albin', 2012, 432, 1, 'usa', NULL, NULL, 1, NULL),
(163, 'Diary of a Wimpy Kid (Diary of a Wimpy Kid, #1)', 'Jeff Kinney', 2007, 226, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(164, 'Cuentos por teléfono', 'Gianni Rodari', 2012, 144, 1, 'italia', NULL, NULL, 1, NULL),
(165, 'Las ventajas de ser invisible', 'Stephen Chbosky', 1999, 264, 1, 'usa', NULL, NULL, 1, NULL),
(166, 'The Little Prince', 'Antoine de Saint-Exupéry', 1943, 96, 1, 'francia', NULL, NULL, 1, NULL),
(167, 'The Housemaid (The Housemaid, #1)', 'Freida McFadden', 2022, 329, 1, 'usa', NULL, NULL, 1, NULL),
(168, 'El tesoro de Cañada Seca', 'Julián Murguía', 1994, 159, 1, 'uruguay', NULL, NULL, 1, NULL),
(169, 'La llave emplumada', 'Germán Machado', 2012, 105, 1, 'uruguay', NULL, NULL, 1, NULL),
(170, 'Un día en Horrorlandia (Pesadillas, #1)', 'R.L. Stine', 1994, 114, 1, 'usa', NULL, NULL, 1, NULL),
(174, 'Last Stop on Market Street', 'Matt de la Peña', 2015, 32, 1, 'usa', NULL, NULL, 1, 'portada_6a55772e230404.38620695.jpg'),
(175, 'Volverás a Alaska', 'Kristin Hannah', 2018, 560, 1, 'usa', NULL, NULL, 1, NULL),
(176, 'Las aventuras de Tom Sawyer', 'Mark Twain', 0, 264, 1, 'fisico, favorites-all-time, usa', NULL, NULL, 1, 'portada_6a55773216c753.23954881.jpg'),
(178, 'El Color Púrpura', 'Alice Walker', 1982, 220, 1, 'Fiction', NULL, NULL, 1, 'portada_6a55913ec9b460.95889597.jpg'),
(179, 'La Isla de los Vientos prohibidos', 'Helen Velando', 2015, 192, 1, 'favorites-all-time, fisico, uruguay', NULL, NULL, 1, NULL),
(180, 'Caja de secretos', 'Carmen Vazquez-Vigo', 1989, 112, 1, 'Young Adult', NULL, NULL, 1, 'portada_6a5594008fd3a3.61918759.jpg'),
(181, 'La historia de Ernesto', 'Mercè Company', 1986, 70, 1, 'espana', NULL, NULL, 1, 'portada_6a557737e61623.48388681.jpg'),
(182, 'El silencio de la ciudad blanca (La ciudad blanca, #1)', 'Eva García Sáenz de Urturi', 2016, 482, 1, 'espana', NULL, NULL, 1, NULL),
(183, '1930: El viaje', 'Ana Solari', 2023, 221, 1, 'fisico, uruguay', NULL, NULL, 1, NULL),
(184, 'Hidden Pictures', 'Jason Rekulak', 2022, 372, 1, 'usa', NULL, NULL, 1, 'portada_6a55773bcbb0c6.96048769.jpg'),
(185, 'Raices', 'Alex Haley', 1976, NULL, 1, 'usa', NULL, NULL, 1, NULL),
(186, 'The Kidnapping of the President', 'Charles Bradley Templeton', 1974, 284, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(187, 'Una chica diferente (Cinnamon Girl, #1)', 'Cathy Hopkins', 2007, 171, 1, 'inglaterra', NULL, NULL, 1, 'portada_6a557741562ba0.54491718.jpg'),
(189, 'Matilda', 'Roald Dahl', 1988, 240, 1, 'inglaterra', NULL, NULL, 1, 'portada_6a5577451f7ec3.19172268.jpg'),
(190, 'The Innocent (Marshal Guarnaccia Mystery #13)', 'Magdalen Nabb', 2005, 290, 1, 'inglaterra', NULL, NULL, 1, NULL),
(191, 'El Caballero Del Terror', 'Connie Laux', 1996, NULL, 1, 'usa', NULL, NULL, 1, NULL),
(192, 'Un final de película (Spanish Edition)', 'Robyn Sisman', 2008, 348, 1, 'fisico, usa', NULL, NULL, 1, 'portada_6a55774a6f5c88.01604151.jpg'),
(193, 'Lili, Libertad/ Lili, Liberty', 'Gonzalo Maure', 2005, 112, 1, 'Fiction', NULL, NULL, 1, 'portada_6a55939c402328.06891928.jpg'),
(194, 'El crucero del Snark', 'Jack London', 1907, 278, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(195, 'Un amor en Bangkok', 'Napoleón Baccino Ponce de León', 1994, 258, 1, 'fisico, uruguay', NULL, NULL, 1, NULL),
(196, 'El paciente del doctor Parker', 'Jasper DeWitt', 2020, 169, 1, 'usa', NULL, NULL, 1, 'portada_6a55775079bbb9.85987013.jpg'),
(197, 'Un invierno en Mallorca', 'George Sand', 0, 206, 1, 'fisico, francia', NULL, NULL, 1, NULL),
(198, 'The Golden Goblet', 'Eloise Jarvis McGraw', 1961, 248, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(199, 'En la cuerda floja', 'Philippe Petit', 2003, 280, 1, 'fisico, francia', NULL, NULL, 1, NULL),
(200, 'Hashish', 'Henry de Monfreid', 1933, 285, 1, 'fisico, francia', NULL, NULL, 1, NULL),
(201, 'The Hollow Places', 'T. Kingfisher', 2020, 341, 1, 'usa', NULL, NULL, 1, NULL),
(202, 'Drácula (Edición conmemorativa)', 'Bram Stoker', 0, 496, 1, 'fisico, 1000-books, irlanda', NULL, NULL, 1, NULL),
(203, 'Canyon Passage', 'Ernest Haycox', 1945, 252, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(204, 'Los trabajos nocturnos', 'Amalia Jamilis', 1971, 111, 1, 'fisico, argentina', NULL, NULL, 1, NULL),
(205, 'And Tango Makes Three', 'Justin Richardson', 2005, 32, 1, 'usa', NULL, NULL, 1, NULL),
(210, 'La larga marcha', 'Stephen  King', 1979, 352, 1, 'usa', NULL, NULL, 1, NULL),
(211, 'Friend or Foe', 'Michael Morpurgo', 1979, 122, 1, 'fisico, inglaterra', NULL, NULL, 1, NULL),
(212, 'El faro del fin del mundo', 'Jules Verne', 1905, 172, 1, 'fisico, francia', NULL, NULL, 1, NULL),
(213, 'On the Case (From the Files of Madison Finn, #17)', 'Laura Dower', 2004, 176, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(214, 'Madame Bovary', 'Gustave Flaubert', 0, 408, 1, 'fisico, 1000-books, francia', NULL, NULL, 1, NULL),
(215, 'The Way through the Woods (Inspector Morse, #10)', 'Colin Dexter', 1992, 320, 1, 'fisico, inglaterra', NULL, NULL, 1, NULL),
(216, 'Hotel', 'Arthur Hailey', 1965, 480, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(218, 'Súper Pocha Contra la Niebla Tenebrosa (Súper Pocha, #4)', 'Helen Velando', 0, NULL, 1, 'uruguay', NULL, NULL, 1, NULL),
(219, 'Chainsaw Man, Vol. 1: Dog and Chainsaw', 'Tatsuki Fujimoto', 2019, 192, 1, 'jap-n', NULL, NULL, 1, NULL),
(221, 'Un capitán de quince años I (Un capitán de quince años, #1)', 'Jules Verne', 0, 208, 1, 'francia', NULL, NULL, 1, NULL),
(222, 'Mi insecto interesante (KF8) (Spanish Edition)', 'Mercedes Pérez Sabbi', 2014, 86, 1, 'fisico, argentina', NULL, NULL, 1, NULL),
(223, 'Coraline', 'P. Craig Russell', 2008, 186, 1, 'fisico, usa', NULL, NULL, 1, NULL),
(226, 'Demon Slayer: Kimetsu No Yaiba Volume 01 (Kimetsu no Yaiba, #1)', 'Koyoharu Gotouge', 2016, 192, 1, '', NULL, NULL, 1, NULL),
(227, 'Secretos en la Posada Vieja', 'Helen Velando', 2012, 248, 1, 'favorites-all-time, fisico, favorites', NULL, NULL, 1, NULL),
(228, 'El grito de la lechuza', 'Patricia Highsmith', 1962, 357, 1, 'favorites', NULL, NULL, 1, NULL),
(230, 'El Color Que Cayo del Cielo', 'H.P. Lovecraft', 1994, 35, 1, 'Horror', NULL, NULL, 1, 'portada_6a5594f72c9566.26092202.jpg'),
(231, 'Si te dicen que caí', 'Juan Marsé', 1973, 320, 1, 'fisico', NULL, NULL, 1, NULL),
(232, 'Ao Haru Ride Complete Magna Set Vol. 1-13 by Io Sakisaka', 'Io Sakisaka', 2012, 1300, 1, '', NULL, NULL, 1, NULL),
(237, 'Eleanor & Park', 'Rainbow Rowell', 2012, 432, 1, '', NULL, NULL, 1, 'portada_6a5577765d8dd5.71815105.jpg'),
(238, 'Uzumaki', 'Junji Ito', 1998, 653, 1, '', NULL, NULL, 1, NULL),
(239, 'My Broken Mariko', 'Waka Hirako', 2020, 194, 1, '', NULL, NULL, 1, 'portada_6a55777a4f4961.50303324.jpg'),
(241, 'El Instituto', 'Stephen  King', 2019, 624, 1, 'fisico', NULL, NULL, 1, NULL),
(246, 'Juegos de ingenio / State of Mind (Spanish Edition)', 'John Katzenbach', 1997, 544, 1, '', NULL, NULL, 1, 'portada_6a5577879bf812.69355316.jpg'),
(248, 'El círculo de mujeres de la doctora Tan', 'Lisa See', 2023, 453, 1, '', NULL, NULL, 1, 'portada_6a55778b384c11.87466864.jpg'),
(250, 'Picture Perfect', 'Jodi Picoult', 1995, 369, 1, 'fisico', NULL, NULL, 1, 'portada_6a55778e23b746.03199751.jpg'),
(251, 'El desorden que dejas', 'Carlos  Montero', 2016, 408, 1, 'fisico', NULL, NULL, 1, NULL),
(252, 'Disparen sobre el pianista', 'David Goodis', 1956, 208, 1, 'fisico', NULL, NULL, 1, 'portada_6a557790790067.33603810.jpg'),
(253, 'Purga', 'Sofi Oksanen', 2008, 381, 1, 'fisico', NULL, NULL, 1, NULL),
(256, 'El Conde de Montecristo', 'Alexandre Dumas', 0, NULL, 1, 'fisico', NULL, NULL, 1, NULL),
(265, 'El Diablo En La Botella', 'Robert Louis Stevenson', 0, NULL, 1, '', NULL, NULL, 1, NULL),
(270, 'Viaje al centro de la tierra', 'Equipo de Servilibro', 0, 192, 1, 'fisico', NULL, NULL, 1, NULL),
(272, 'El mastín de los Baskerville', 'Arthur Conan Doyle', 1902, 223, 1, 'fisico', NULL, NULL, 1, NULL),
(273, 'Todo esto te daré', 'Dolores Redondo', 2016, 626, 1, 'favorites-all-time, fisico', NULL, NULL, 1, NULL),
(274, 'El Despertar de la Serpiente', 'Claire Davis', 2006, 333, 1, 'fisico', NULL, NULL, 1, NULL),
(275, 'La esfinge', 'Robin Cook', 1979, 320, 1, 'fisico', NULL, NULL, 1, NULL),
(276, 'El poeta', 'Michael Connelly', 1996, 592, 1, 'fisico', NULL, NULL, 1, NULL),
(277, 'Las mejores historias insólitas: Antología del horror y el misterio', 'Edward Bulwer-Lytton', 1966, 556, 1, 'fisico', NULL, NULL, 1, NULL),
(289, 'Oh, the Places You\'ll Go!', 'Dr. Seuss', 1990, 44, 1, 'Childrens', NULL, NULL, 1, 'portada_6a5591091ef051.71337018.jpg'),
(345, 'El cuarto mono (4MK Thriller, #1)', 'J.D. Barker', 2017, 560, 1, '', NULL, NULL, 1, 'portada_6a5578132aa390.11084454.jpg'),
(350, 'Una casa junto al lago', 'Susan Wiggs', 2005, 384, 1, '', NULL, NULL, 1, NULL),
(351, 'El príncipe y la modista', 'Jen Wang', 2018, 276, 1, '', NULL, NULL, 1, 'portada_6a55781cc412f0.49084946.jpg'),
(352, 'Hermanos de alma', 'David Diop', 2018, 156, 1, '', NULL, NULL, 1, 'portada_6a55781e178491.25554807.jpg'),
(354, 'El día que el cielo se caiga', 'Megan Maxwell', 2016, 464, 1, '', NULL, NULL, 1, NULL),
(355, 'Violet y Finch', 'Jennifer Niven', 2015, 400, 1, '', NULL, NULL, 1, 'portada_6a5578241833f4.11350906.jpg'),
(363, 'Los motivos del lobo', 'Liliana Escliar', 2017, 255, 1, '', NULL, NULL, 1, NULL),
(365, 'La máquina de pensar en Gladys', 'Mario Levrero', 1970, 122, 1, '', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `id_socio` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_registro` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`) VALUES
(1, 'Administrador', 'admin@utu.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_socio` (`id_socio`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_socio`) REFERENCES `socios` (`id`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
