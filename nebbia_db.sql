-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: shareddb-v.hosting.stackcp.net
-- Generation Time: Jan 30, 2022 at 01:08 PM
-- Server version: 10.4.22-MariaDB-log
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nebbia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanky`
--

CREATE TABLE `clanky` (
  `id` int(11) NOT NULL,
  `id_autora` int(11) NOT NULL,
  `nadpis` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  `obsah` text COLLATE utf8_slovak_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `obrazok` varchar(100) COLLATE utf8_slovak_ci DEFAULT NULL,
  `aktivny` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `clanky`
--

INSERT INTO `clanky` (`id`, `id_autora`, `nadpis`, `obsah`, `timestamp`, `obrazok`, `aktivny`) VALUES
(1, 1, '', '', '2022-01-28 20:02:15', NULL, b'0'),
(2, 1, '', 'fsdfsfds', '2022-01-28 20:02:15', NULL, b'0'),
(3, 1, '', 'obsah1', '2022-01-28 20:02:15', NULL, b'0'),
(4, 1, '', 'ddd', '2022-01-28 20:02:15', NULL, b'0'),
(5, 1, 'qqq', 'www', '2022-01-28 20:02:15', NULL, b'0'),
(6, 1, 'Prvy testovaci clanok', 'Vyskusame, ci nam to bude fungovat bez makcenov', '2022-01-28 20:02:15', NULL, b'1'),
(7, 1, 'Druhý testovací článok', 'Tentokrát vyskúšam aj diakritiku', '2022-01-28 20:02:15', NULL, b'0'),
(8, 1, 'tretÃ­ test', 'ÄÅ¡Ã¡Ã½ÄÅ¡Ã½Ã¡ dokÄÅ¡', '2022-01-28 20:02:15', NULL, b'0'),
(9, 1, 'ÄŒo ukrÃ½va marÅ¥anskÃ½ Ä¾adovec? ZvlÃ¡Å¡tny signÃ¡l mÃ¡ prekvapivÃ½ pÃ´vod', 'Objav stabilne existujÃºcej tekutej vody na Marse by znamenal senzÃ¡ciu. Dramaticky by zvÃ½Å¡il nÃ¡dej, Å¾e na Äervenej planÃ©te dodnes preÅ¾Ã­va Å¾ivot.\n\nPred niekoÄ¾kÃ½mi rokmi sa v odbornÃ½ch kruhoch objavili hlasy, podÄ¾a ktorÃ½ch sa voda na Marse skutoÄne udrÅ¾ala, a to pod polÃ¡rnymi Ä¾adovcami v podobe kÃ¡ps alebo dokonca jazier. VÃ½skum z roku 2018 dokonca tvrdil, Å¾e moÅ¾no zachytil dÃ´kazy o existencii takÃ©hoto jazera.', '2022-01-28 20:02:15', NULL, b'1'),
(10, 1, 'Nenoste si do ÄŒÃ­ny vlastnÃº elektroniku, varuje NBÃš slovenskÃ½ch Å¡portovcov', 'NÃ¡rodnÃ½ bezpeÄnostnÃ½ Ãºrad odporÃºÄa slovenskÃ½m Å¡portovcom, aby si na olympiÃ¡du do ÄŒÃ­ny nenosili vlastnÃº elektroniku a radÅ¡ej pouÅ¾ili doÄasnÃº elektroniku a doÄasnÃ© SIM karty. VyplÃ½va to zo sprÃ¡vy, ktorÃ½ vypracoval NBÃš. JednotlivÃ© rady pritom Ãºrad doruÄil aj SlovenskÃ©mu olympijskÃ©mu a Å¡portovÃ©mu vÃ½boru (SOÅ V).\n\nâ€žZo zÃ¡verov slovenskÃ½ch tajnÃ½ch sluÅ¾ieb dlhodobo vyplÃ½va, Å¾e ÄŒÃ­na vyuÅ¾Ã­va rÃ´zne formy pÃ´sobenia na krajiny EurÃ³pskej Ãºnie, aby Å¡Ã­rila svoj vplyv na vÅ¡etkÃ½ch Ãºrovniach spoloÄenskÃ©ho Å¾ivota. Na to mÃ´Å¾u slÃºÅ¾iÅ¥ aj rÃ´zne informÃ¡cie, ktorÃ© sa dajÃº pouÅ¾iÅ¥ na kompromitÃ¡ciu alebo vydieranie verejne ÄinnÃ½ch osÃ´b,â€œ odÃ´vodÅˆuje svoje varovanie NBÃš.', '2022-01-28 20:02:15', NULL, b'1'),
(11, 1, 'test aaa', 'test text', '2022-01-28 20:02:15', NULL, b'0'),
(12, 1, 'test', 'text test', '2022-01-28 20:02:15', NULL, b'0'),
(13, 1, 'Test', '432kjklda ', '2022-01-28 20:02:15', NULL, b'0'),
(14, 1, 'tetrete', 'fsdfsfs', '2022-01-28 20:02:15', NULL, b'0'),
(15, 1, 'test adsda', 'dsdsadafsa45334', '2022-01-28 20:02:15', NULL, b'0'),
(16, 1, 'Getaaa', 'dadas5454', '2022-01-28 20:02:15', NULL, b'0'),
(17, 1, 'ÄŒÃ­na', 'ÄŒÃ­na, Slovensko, ÄŒesko', '2022-01-28 20:02:15', NULL, b'0'),
(18, 1, 'ÄŒeskÃ­ vedci si patentovali nehorÄ¾avÃº batÃ©riu z lacnÃ½ch materiÃ¡lov', '\nAkumulÃ¡tor s vodnÃ½m elektrolytom mÃ¡ zinkovÃº katÃ³du a grafitovÃº anÃ³du, podÄ¾a doterajÅ¡Ã­ch testov by mal zvlÃ¡dnuÅ¥ asi 500 nabÃ­jacÃ­ch cyklov.\n\nV ostatnÃ½ch rokoch sa objavilo viacero sÄ¾ubnÃ½ch batÃ©riÃ­, ktorÃ© by mohli nahradiÅ¥ dnes najpouÅ¾Ã­vanejÅ¡ie Li-ion ÄlÃ¡nky. Do zoznamu sa teraz pridÃ¡va rieÅ¡enie odbornÃ­kov z Akademie vÄ›d ÄŒR. TÃ­ si svoje dielo dali patentovaÅ¥, o Äom informoval web ÄŒT.\n\nÄŒeskÃ­ vedci vyvinuli novÃ½ typ akumulÃ¡tora s vodnÃ½m elektrolytom. Jeho vÃ½hodou je nehorÄ¾avosÅ¥, ale tieÅ¾ lepÅ¡ia odolnosÅ¥ voÄi nÃ­zkym teplotÃ¡m. ProblÃ©mom tÃ½chto batÃ©riÃ­ bÃ½va nÃ­zka kapacita a napÃ¤tie, tieto problÃ©my vÅ¡ak JiÅ™Ã­ ÄŒervenka so svojÃ­m tÃ­mom vyrieÅ¡il soÄ¾ou chloristanu zinoÄnatÃ©ho pridanou do roztoku.', '2022-01-28 20:02:15', NULL, b'1'),
(19, 1, 'DigitÃ¡lny Covid preukaz bude od 1. februÃ¡ra platiÅ¥ devÃ¤Å¥ mesiacov', 'DigitÃ¡lny Covid preukaz EurÃ³pskej Ãºnie bude od 1. februÃ¡ra platiÅ¥ devÃ¤Å¥ mesiacov. Obmedzenie bude platiÅ¥ pri cestovanÃ­ a aj v rÃ¡mci slovenskÃ½ch pravidiel.\n\nPodanÃ­m posilÅˆujÃºcej tretej dÃ¡vky vakcÃ­ny sa platnosÅ¥ automaticky predÄºÅ¾i na ÄalÅ¡ie obdobie. JednotnÃ© pravidlÃ¡ nastavila EurÃ³pska komisia. TASR o tom informovala hovorkyÅˆa Ministerstva zdravotnÃ­ctva (MZ) SR Zuzana EliÃ¡Å¡ovÃ¡.', '2022-01-28 20:02:15', NULL, b'1'),
(20, 1, 'UPC zvÃ½Å¡i cenu internetu pre ÄasÅ¥ klientov. O jedno aÅ¾ dve eurÃ¡ mesaÄne', 'â€žZhruba 15-tisÃ­c zÃ¡kaznÃ­kov spoloÄnosti UPC, ktorÃ­ vyuÅ¾Ã­vajÃº sluÅ¾by UPC internetu, dostane v tÃ½chto dÅˆoch list alebo email s informÃ¡ciou o tom, Å¾e sa im k 1. marca upravuje cena. V zÃ¡vislosti od toho, akÃº konkrÃ©tnu kampaÅˆ doteraz vyuÅ¾Ã­vali, cena bude pre prevaÅ¾nÃº ÄasÅ¥ zÃ¡kaznÃ­kov upravenÃ¡ v rozmedzÃ­ od 1 do 2 eur, v niektorÃ½ch prÃ­padoch to vÅ¡ak mÃ´Å¾e byÅ¥ o nieÄo menej, respektÃ­ve o nieÄo viac,â€œ vysvetÄ¾uje pre Å½ivÃ©.sk hovorca UPC Jaroslav KolÃ¡r.', '2022-01-28 20:02:15', NULL, b'1'),
(21, 1, 'dsdsd', 'dsdsds', '2022-01-28 20:02:15', NULL, b'0'),
(22, 1, 'asasa', 'sasasa', '2022-01-28 20:02:15', NULL, b'0'),
(23, 1, 'assasa', 'dsfsfs', '2022-01-28 20:02:15', NULL, b'0'),
(24, 1, 'rwrwrw', 'rwrwrw', '2022-01-28 20:02:15', NULL, b'0'),
(25, 1, 'Test ÄlÃ¡nku s UPC', 'Tento ÄlÃ¡nok je o firme UPC.', '2022-01-28 20:02:15', NULL, b'1'),
(26, 1, 'ÄŽalÅ¡Ã­ ÄlÃ¡nok o UPC', 'Aj tento ÄlÃ¡nok je o UPC a je testovacÃ­.', '2022-01-28 20:02:15', NULL, b'0'),
(27, 1, 'ÄŽalÅ¡Ã­ ÄlÃ¡nok o UPC', 'dadada', '2022-01-28 20:02:15', NULL, b'0'),
(28, 1, 'Test ÄlÃ¡nku s UPC', 'ddsadad', '2022-01-28 20:02:15', NULL, b'0'),
(29, 1, 'ÄŽalÅ¡Ã­ ÄlÃ¡nok o UPC', 'rerre', '2022-01-28 20:02:15', NULL, b'0'),
(30, 1, 'Test ÄlÃ¡nku s UPC', 'trÄtÄ', '2022-01-28 20:02:15', NULL, b'0'),
(31, 1, 'ÄŽalÅ¡Ã­ ÄlÃ¡nok o UPC', 'Aj tento ÄlÃ¡nok je o UPC', '2022-01-28 20:02:15', NULL, b'1'),
(32, 1, 'Matrix Ressurections je oddnes v kinÃ¡ch. ÄŒo pre nÃ¡s tÃ¡to sÃ©ria znamenÃ¡?', 'SlovÃ¡ci sa koneÄne doÄkali pokraÄovania kultovej trilÃ³gie Matrix. UÅ¾ dnes zavÃ­ta na naÅ¡e plÃ¡tna Matrix Resurrections. Hoci celosvetovÃ¡ premiÃ©ra filmu bola 22. decembra 2021, slovenskÃ© kinÃ¡ boli od 25. novembra 2021 aÅ¾ do odvolania zatvorenÃ©. Svoje brÃ¡ny otvorili len pred nedÃ¡vnom a fanÃºÅ¡ikovia sa koneÄne doÄkali premiÃ©r z pohodlia vystuÅ¾enÃ½ch sedadiel.\n\nAj v redakciÃ¡ch Å½ivÃ©.sk a HernÃ¡ZÃ³na.sk je niekoÄ¾ko priaznivcov kultovej sÃ©rie Matrix. Preto sme sa vÃ¡m rozhodli priniesÅ¥ naÅ¡e pohÄ¾ady na Åˆu, vyjadriÅ¥ svoje oÄakÃ¡vania od Å¡tvorky a vo vÅ¡eobecnosti krÃ¡tko vyrozprÃ¡vaÅ¥, Äo pre nÃ¡s pÃ´vodnÃ© tri filmy znamenajÃº.', '2022-01-28 20:05:12', NULL, b'1'),
(33, 1, 'Test vloÅ¾enia obrÃ¡zku', 'ÄlÃ¡nok s obrÃ¡zkom', '2022-01-29 08:42:52', NULL, b'0'),
(34, 1, 'dadada', 'dsffd', '2022-01-29 08:49:23', NULL, b'0'),
(35, 1, 'dadada', 'dsffd', '2022-01-29 08:53:22', NULL, b'0'),
(36, 1, 'dadada', 'dsffd', '2022-01-29 08:56:56', NULL, b'0'),
(37, 1, 'fhfh', 'fdsgfh', '2022-01-29 08:59:28', NULL, b'0'),
(38, 1, 'bvbf', 'tredfdfd', '2022-01-29 09:00:30', NULL, b'0'),
(39, 1, 'bgfn', ' v b bb ', '2022-01-29 09:00:48', NULL, b'0'),
(40, 1, 'fdfd', 'fdfd', '2022-01-29 09:01:22', NULL, b'0'),
(41, 1, 'dsds', 'dsdsds', '2022-01-29 10:23:17', NULL, b'0'),
(42, 1, 'tesr', 'teadad', '2022-01-29 10:26:10', NULL, b'0'),
(43, 1, 'fdfd', 'test', '2022-01-29 10:27:09', NULL, b'0'),
(44, 1, 'ret', 'tet', '2022-01-29 10:28:15', 'obrazokName', b'0'),
(45, 1, 'tre', 'tree', '2022-01-29 10:29:25', 'telekom_skauti.png', b'0'),
(46, 1, 'Test obrÃ¡zku', 'V tomto ÄlÃ¡nku by mal byÅ¥ obrÃ¡zok skautov', '2022-01-29 10:32:53', 'telekom_skauti.png', b'1'),
(47, 2, 'EurÃ³pska Ãºnia chystÃ¡ mnoÅ¾stvo veÄ¾kÃ½ch tovÃ¡rnÃ­ na batÃ©rie, vzniknÃºÅ¥ majÃº aj na Slovensku', 'V otÃ¡zke osobnÃ½ch Ã¡ut stavila EurÃ³pska Ãºnia vÅ¡etko na jednu kartu, Äo v decembri definitÃ­vne potvrdilo zverejnenie upravenej vodÃ­kovej stratÃ©gie. BudÃºcnosÅ¥ou majÃº byÅ¥ elektromobily. KÄ¾ÃºÄovÃ½m komponentom sÃº v nich batÃ©rie, v ktorÃ½ch produkcii starÃ½ kontinent vÃ½razne zaostÃ¡va za Ãziou. V roku 2020 vyrobil podÄ¾a Ãºdajov webu Statista iba 6 % svetovÃ©ho objemu.\r\n\r\nÃšnia to vÅ¡ak chce zmeniÅ¥. Pripravuje vÃ½stavbu viacerÃ½ch zÃ¡vodov na akumulÃ¡torovÃ© ÄlÃ¡nky a prvÃ½ z nich uÅ¾ spustil skÃºÅ¡obnÃº prevÃ¡dzku. MnohÃ© ÄalÅ¡ie sÃº vo vÃ½stavbe Äi fÃ¡ze projektovania. EÃš okrem toho chystÃ¡ upravenÃº batÃ©riovÃº legislatÃ­vu, ktorÃ¡ rieÅ¡i vÃ½robu, recyklÃ¡ciu i zdroje. Na komplexnÃ½ eurÃ³psky plÃ¡n nedÃ¡vno upozornil portÃ¡l Euractiv.', '2022-01-29 13:25:44', 'obr1.jpg', b'1'),
(48, 0, 'PrelomovÃ¡ dohoda operÃ¡torov: MobilnÃ© siete na Slovensku sa zlepÅ¡ia, vÄaka zÃ¡mene frekvenciÃ­', 'Å tyria konkurenÄnÃ­ slovenskÃ­ operÃ¡tori dospeli k vÃ½znamnej dohode, ktorÃ¡ mÃ´Å¾e vÃ½razne ovplyvniÅ¥ kvalitu mobilnÃ½ch sietÃ­ u nÃ¡s. Dohodli sa na scelenÃ­ (refarmingu) frekvenciÃ­ v pÃ¡sme 1800 MHz, ktorÃ© je aktuÃ¡lne veÄ¾mi â€žrozbitÃ©â€œ â€“ jednotlivÃ© bloky frekvenciÃ­ nie sÃº pohromade, ale rÃ´zne prestriedanÃ©, Äo operÃ¡torom vÃ½razne komplikuje budovanie sluÅ¾ieb.\r\n\r\nTento problÃ©m sprevÃ¡dza operÃ¡torov uÅ¾ roky, vznikal postupne â€“ po pridelenÃ­ jednotlivÃ½ch frekvenciÃ­ v tomto pÃ¡sme. O tom, Å¾e operÃ¡tori majÃº o scelenie pÃ¡sma zÃ¡ujem, sme pÃ­sali uÅ¾ pred rokom.', '2022-01-29 14:44:02', 'obr2.jpg', b'1'),
(49, 0, 'test', 'test foto', '2022-01-30 12:02:40', 'searchbtn2.png', b'0'),
(50, 0, 'test', 'test foto', '2022-01-30 12:03:09', 'searchbtn2.png', b'0'),
(51, 0, 'test', 'test', '2022-01-30 12:07:55', 'searchbtn2.png', b'0'),
(52, 0, 'test', 'test', '2022-01-30 12:09:08', 'searchbtn2.png', b'0'),
(53, 0, 'test', 'saadada', '2022-01-30 12:11:01', 'searchbtn2.png', b'0'),
(54, 0, 'test', 'test', '2022-01-30 12:14:55', 'searchbtn2.png', b'0'),
(55, 0, 'huhuhu', 'gyuguyfgug', '2022-01-30 12:28:57', 'searchbtn2.png', b'0'),
(56, 0, 'aaa', 'bbb', '2022-01-30 12:41:12', 'searchbtn220220130124107.png', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `komentare`
--

CREATE TABLE `komentare` (
  `id` int(11) NOT NULL,
  `id_uzivatela` int(11) NOT NULL,
  `id_clanku` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `text` text COLLATE utf8_slovak_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `komentare`
--

INSERT INTO `komentare` (`id`, `id_uzivatela`, `id_clanku`, `timestamp`, `text`) VALUES
(1, 1, 9, '2022-01-29 14:04:11', 'Test komentÃ¡r'),
(2, 2, 9, '2022-01-29 14:15:28', 'Tento ÄlÃ¡nok sa mi pÃ¡Äi.'),
(3, 0, 0, '2022-01-29 14:18:21', ''),
(4, 1, 9, '2022-01-29 14:18:30', 'Aj mne.'),
(5, 0, 0, '2022-01-29 14:18:42', ''),
(6, 1, 9, '2022-01-29 14:20:04', 'NapÃ­Å¡em eÅ¡te nieÄo'),
(7, 0, 0, '2022-01-29 14:20:14', ''),
(8, 1, 10, '2022-01-29 14:36:47', 'test'),
(9, 2, 10, '2022-01-29 14:38:53', 'Super ÄlÃ¡nok'),
(10, 1, 10, '2022-01-29 14:39:03', 'Aj mne sa pÃ¡Äi.'),
(11, 1, 10, '2022-01-29 14:39:16', 'Test.'),
(12, 1, 10, '2022-01-29 14:39:27', 'Test2.'),
(13, 1, 48, '2022-01-29 14:44:20', 'Super, to sa teÅ¡Ã­m.'),
(14, 1, 48, '2022-01-29 14:44:31', 'Super, to sa teÅ¡Ã­m.'),
(15, 2, 48, '2022-01-29 14:44:50', 'Je to super.'),
(16, 4, 19, '2022-01-29 14:46:06', 'PreÄo iba 9 mesiacov?'),
(17, 1, 19, '2022-01-29 14:46:28', 'Test.'),
(18, 4, 25, '2022-01-29 14:47:25', 'test'),
(19, 1, 31, '2022-01-29 14:47:53', 'Test.'),
(20, 3, 48, '2022-01-29 19:53:47', 'VÃ½borne.');

-- --------------------------------------------------------

--
-- Table structure for table `tagy`
--

CREATE TABLE `tagy` (
  `id` int(11) NOT NULL,
  `id_clanku` int(11) NOT NULL,
  `text` varchar(100) COLLATE utf8_slovak_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `tagy`
--

INSERT INTO `tagy` (`id`, `id_clanku`, `text`) VALUES
(2, 9, 'Mars'),
(6, 17, 'ÄŒÃ­na'),
(7, 17, 'Slovensko'),
(8, 17, 'ÄŒesko'),
(9, 18, 'ÄŒesko'),
(10, 18, 'vedci'),
(11, 18, 'batÃ©ria'),
(12, 19, 'covid'),
(13, 19, 'covid preukaz'),
(14, 20, 'UPC'),
(16, 20, 'internet'),
(21, 25, 'firma'),
(22, 25, 'UPC'),
(23, 31, 'firma'),
(24, 31, 'UPC'),
(25, 32, 'Matrix'),
(26, 32, 'kino'),
(60, 46, 'skauti'),
(61, 47, 'batÃ©rie'),
(62, 47, 'EurÃ³pska Ãºnia'),
(63, 47, 'Slovensko'),
(64, 48, 'operÃ¡tori'),
(65, 48, 'frekvencie'),
(66, 48, 'dohoda'),
(67, 49, ''),
(68, 50, ''),
(69, 51, ''),
(70, 52, ''),
(71, 53, ''),
(72, 54, ''),
(73, 55, ''),
(74, 56, '');

-- --------------------------------------------------------

--
-- Table structure for table `uzivatelia`
--

CREATE TABLE `uzivatelia` (
  `id` int(11) NOT NULL,
  `meno` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  `informacie` text COLLATE utf8_slovak_ci NOT NULL,
  `fotka` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  `typ` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `uzivatelia`
--

INSERT INTO `uzivatelia` (`id`, `meno`, `informacie`, `fotka`, `typ`) VALUES
(1, 'Martin Kokavec', 'Martin Kokavec je Å¡Ã©fredaktor tohto portÃ¡lu', 'MartinKokavec.png', 2),
(2, 'Patrik Lenko', 'Patrik Lenko je HR & Office Manager', 'patrik.jpg', 2),
(3, 'JoÅ¾o', 'Jožo sa celý deň iba nudí.', '', 1),
(4, 'Fero', 'Fero je programátor.', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanky`
--
ALTER TABLE `clanky`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentare`
--
ALTER TABLE `komentare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagy`
--
ALTER TABLE `tagy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzivatelia`
--
ALTER TABLE `uzivatelia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanky`
--
ALTER TABLE `clanky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `komentare`
--
ALTER TABLE `komentare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tagy`
--
ALTER TABLE `tagy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `uzivatelia`
--
ALTER TABLE `uzivatelia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
