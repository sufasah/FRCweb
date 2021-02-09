-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Şub 2021, 18:18:16
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `frcweb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilet`
--

CREATE TABLE `bilet` (
  `id` int(10) UNSIGNED NOT NULL,
  `etkinlik_id` int(10) UNSIGNED NOT NULL,
  `fiyat` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `bolum` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kategori` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `bilet`
--

INSERT INTO `bilet` (`id`, `etkinlik_id`, `fiyat`, `bolum`, `kategori`) VALUES
(1, 1, '10', 'A-Blok', 'Elmas'),
(2, 1, '10', 'A-Blok', 'Elmas'),
(3, 1, '10', 'A-Blok', 'Elmas'),
(20, 1, '10', 'B-Blok', 'Elmas'),
(25, 1, '10', 'B-Blok', 'Elmas'),
(26, 1, '104', 'A-Blok', 'Elmas'),
(27, 1, '104', 'A-Blok', 'Elmas'),
(28, 1, '104', 'A-Blok', 'Elmas'),
(29, 1, '104', 'B-Blok', 'Elmas'),
(30, 1, '104', 'B-Blok', 'Elmas'),
(31, 1, '10', 'A-Blok', 'Gumus'),
(32, 1, '10', 'A-Blok', 'Gumus'),
(33, 1, '10', 'A-Blok', 'Gumus'),
(34, 1, '10', 'B-Blok', 'Gumus'),
(35, 1, '10', 'B-Blok', 'Gumus'),
(36, 1, '104', 'A-Blok', 'Gumus'),
(37, 1, '104', 'A-Blok', 'Gumus'),
(38, 1, '104', 'A-Blok', 'Gumus'),
(39, 1, '104', 'B-Blok', 'Gumus'),
(40, 1, '104', 'B-Blok', 'Gumus'),
(45, 2, '10', 'A-Blok', 'Gumus'),
(46, 3, '10', 'A-Blok', 'Gumus'),
(47, 4, '10', 'A-Blok', 'Gumus'),
(48, 5, '10', 'B-Blok', 'Gumus'),
(49, 5, '10', 'B-Blok', 'Gumus'),
(4294967295, 4294967295, '99999999999999999.99', 'VayBeKardesimSenNeYapmissinBolumuffOharaOharaOhara', 'ElmasUstuElmasyyyyyy');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlik`
--

CREATE TABLE `etkinlik` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `altbaslik` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `icerik` varchar(5000) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `yil` varchar(5) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ay` varchar(4) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `gun` varchar(4) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `saat` varchar(4) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dakika` varchar(4) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `img` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `il` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ilce` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `konum` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `duzenimg` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `altbilgi1` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `altbilgi2` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` bigint(20) DEFAULT 0,
  `kategori` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `etkinlik`
--

INSERT INTO `etkinlik` (`id`, `baslik`, `altbaslik`, `icerik`, `yil`, `ay`, `gun`, `saat`, `dakika`, `img`, `il`, `ilce`, `konum`, `duzenimg`, `altbilgi1`, `altbilgi2`, `hit`, `kategori`) VALUES
(1, 'Event', 'Altbaslik budur..', 'Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik ', '2021', '05', '05', '23', '59', '/img/event.jpg', 'Afyonkarahisar', 'Merkez', 'AfyonPark Önü Bilmemne Heykelinin Sağının Solu', '/img/duzen-default.jpg', 'Altbilgimiz Budur Aksini İdda Eden Bodur', 'Altbilgimiz Budur Aksini İdda Eden Bodur2', 0, 'Tiyatro'),
(2, 'Event2', 'Altbaslik Budur..', 'Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik 2', '2020', '11', '05', '12', '00', '/img/event2.jpg', 'Kahramanmaraş', 'Onikişubat', 'Madalya Kavşağı Kemalettin Caddesi Menemen sokak', '/img/duzen-default.jpg', 'Altbilgi1', 'Altbilgi2', 0, 'Müzik'),
(3, 'Event3', 'Altbaslik Budurr ...', 'Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik 3', '2020', '06', '05', '23', '59', '/img/event3.jpg', 'Tokat', 'Merkez', 'Stadın Yanı', '/img/duzen-default.jpg', 'alt1', 'alt2', 0, 'Aile'),
(4, 'Event4', 'Altbaslik Budur ..', 'Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik Bu Da uzuuuunca İçerik4', '2020', '05', '12', '00', '00', '/img/event4.jpg', 'Hatay', 'Merkez', 'Hatay dürümcüsünün kenarı', '/img/duzen-default.jpg', 'alt1', 'alt2', 0, 'Spor'),
(5, 'Event5Event5Event5Event5Event5Event5Event5Event555', 'IKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYU', 'BESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRASDFG', '9999', '12', '31', '23', '59', '/img/login-bg.jpg', 'BOYLEBIRILVARMIBILMIYORUMAMAAABOYLEBIRILVARMIBILMIYORUMAMAAA', 'BOYLEBIRILCEVARMIBILMIYORUMAMABOYLEBIRILCEVARMIBILMIYORUMAMA', 'IKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYU', '/img/duzen-default.jpg', 'IKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYU', 'IKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYU', 0, 'OTUZKARAKTEROTUZKARAKTEROTUZKA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `genel`
--

CREATE TABLE `genel` (
  `bilgi` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `deger` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `genel`
--

INSERT INTO `genel` (`bilgi`, `deger`) VALUES
('email', 'iletisim@frc.web'),
('facebook', 'https://www.facebook.com'),
('instagram', 'https://www.instagram.com'),
('telefon', '0544 987 76 47'),
('twitter', 'https://www.twitter.com'),
('youtube', 'https://www.youtube.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `il`
--

CREATE TABLE `il` (
  `kod` int(11) NOT NULL,
  `ad` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `il`
--

INSERT INTO `il` (`kod`, `ad`) VALUES
(1, 'Adana'),
(2, 'Adıyaman'),
(3, 'Afyonkarahisar'),
(4, 'Ağrı'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(8, 'Artvin'),
(9, 'Aydın'),
(10, 'Balıkesir'),
(11, 'Bilecik'),
(12, 'Bingöl'),
(13, 'Bitlis'),
(14, 'Bolu'),
(15, 'Burdur'),
(16, 'Bursa'),
(17, 'Çanakkale'),
(18, 'Çankırı'),
(19, 'Çorum'),
(20, 'Denizli'),
(21, 'Diyarbakır'),
(22, 'Edirne'),
(23, 'Elazığ'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eskişehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(29, 'Gümüşhane'),
(30, 'Hakkari'),
(31, 'Hatay'),
(32, 'Isparta'),
(33, 'Mersin'),
(34, 'İstanbul'),
(35, 'İzmir'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(39, 'Kırklareli'),
(40, 'Kırşehir'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'Kütahya'),
(44, 'Malatya'),
(45, 'Manisa'),
(46, 'Kahramanmaraş'),
(47, 'Mardin'),
(48, 'Muğla'),
(49, 'Muş'),
(50, 'Nevşehir'),
(51, 'Niğde'),
(52, 'Ordu'),
(53, 'Rize'),
(54, 'Sakarya'),
(55, 'Samsun'),
(56, 'Siirt'),
(57, 'Sinop'),
(58, 'Sivas'),
(59, 'Tekirdağ'),
(60, 'Tokat'),
(61, 'Trabzon'),
(62, 'Tunceli'),
(63, 'Şanlıurfa'),
(64, 'Uşak'),
(65, 'Van'),
(66, 'Yozgat'),
(67, 'Zonguldak'),
(68, 'Aksaray'),
(69, 'Bayburt'),
(70, 'Karaman'),
(71, 'Kırıkkale'),
(72, 'Batman'),
(73, 'Şırnak'),
(74, 'Bartın'),
(75, 'Ardahan'),
(76, 'Iğdır'),
(77, 'Yalova'),
(78, 'Karabük'),
(79, 'Kilis'),
(80, 'Osmaniye'),
(81, 'Düzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

CREATE TABLE `ilce` (
  `kod` int(11) NOT NULL,
  `ilkod` int(11) NOT NULL,
  `ad` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`kod`, `ilkod`, `ad`) VALUES
(1101, 37, 'Abana'),
(1102, 20, 'Acıpayam'),
(1103, 34, 'Adalar'),
(1104, 1, 'Seyhan'),
(1105, 2, 'Adıyaman Merkez'),
(1106, 13, 'Adilcevaz'),
(1107, 46, 'Afşin'),
(1108, 3, 'Merkez'),
(1109, 15, 'Ağlasun'),
(1110, 23, 'Ağın'),
(1111, 4, 'Ağrı Merkez'),
(1112, 13, 'Ahlat'),
(1113, 61, 'Akçaabat'),
(1114, 44, 'Akçadağ'),
(1115, 63, 'Akçakale'),
(1116, 81, 'Akçakoca'),
(1117, 66, 'Akdağmadeni'),
(1118, 45, 'Akhisar'),
(1119, 52, 'Akkuş'),
(1120, 68, 'Aksaray Merkez'),
(1121, 7, 'Akseki'),
(1122, 42, 'Akşehir'),
(1123, 54, 'Akyazı'),
(1124, 19, 'Alaca'),
(1125, 55, 'Alaçam'),
(1126, 7, 'Alanya'),
(1127, 45, 'Alaşehir'),
(1128, 35, 'Aliağa'),
(1129, 60, 'Almus'),
(1130, 6, 'Altındağ'),
(1131, 31, 'Altınözü'),
(1132, 43, 'Altıntaş'),
(1133, 28, 'Alucra'),
(1134, 5, 'Amasya Merkez'),
(1135, 33, 'Anamur'),
(1136, 46, 'Andırın'),
(1138, 7, 'Antalya Merkez'),
(1139, 27, 'Araban'),
(1140, 37, 'Araç'),
(1141, 61, 'Araklı'),
(1142, 76, 'Aralık'),
(1143, 44, 'Arapgir'),
(1144, 75, 'Ardahan Merkez'),
(1145, 8, 'Ardanuç'),
(1146, 53, 'Ardeşen'),
(1147, 8, 'Arhavi'),
(1148, 44, 'Arguvan'),
(1149, 36, 'Arpaçay'),
(1150, 61, 'Arsin'),
(1151, 60, 'Artova'),
(1152, 8, 'Artvin Merkez'),
(1153, 25, 'Aşkale'),
(1154, 32, 'Atabey'),
(1155, 50, 'Avanos'),
(1156, 57, 'Ayancık'),
(1157, 6, 'Ayaş'),
(1158, 52, 'Aybastı'),
(1159, 9, 'Aydın Merkez'),
(1160, 17, 'Ayvacık / Çanakkale'),
(1161, 10, 'Ayvalık'),
(1162, 37, 'Azdavay'),
(1163, 39, 'Babaeski'),
(1164, 55, 'Bafra'),
(1165, 80, 'Bahçe'),
(1166, 34, 'Bakırköy'),
(1167, 6, 'Bala'),
(1168, 10, 'Balıkesir Merkez'),
(1169, 10, 'Balya'),
(1170, 64, 'Banaz'),
(1171, 10, 'Bandırma'),
(1172, 74, 'Bartın Merkez'),
(1173, 23, 'Baskil'),
(1174, 72, 'Batman Merkez'),
(1175, 65, 'Başkale'),
(1176, 69, 'Bayburt Merkez'),
(1177, 19, 'Bayat / Çorum'),
(1178, 35, 'Bayındır'),
(1179, 56, 'Baykan'),
(1180, 17, 'Bayramiç'),
(1181, 35, 'Bergama'),
(1182, 2, 'Besni'),
(1183, 34, 'Beşiktaş'),
(1184, 72, 'Beşiri'),
(1185, 34, 'Beykoz'),
(1186, 34, 'Beyoğlu'),
(1187, 6, 'Beypazarı'),
(1188, 42, 'Beyşehir'),
(1189, 73, 'Beytüşşebap'),
(1190, 17, 'Biga'),
(1191, 10, 'Bigadiç'),
(1192, 11, 'Bilecik Merkez'),
(1193, 12, 'Bingöl Merkez'),
(1194, 63, 'Birecik'),
(1195, 21, 'Bismil'),
(1196, 13, 'Bitlis Merkez'),
(1197, 48, 'Bodrum'),
(1198, 66, 'Boğazlıyan'),
(1199, 14, 'Bolu Merkez'),
(1200, 3, 'Bolvadin'),
(1201, 51, 'Bor'),
(1202, 8, 'Borçka'),
(1203, 35, 'Bornova'),
(1204, 57, 'Boyabat'),
(1205, 17, 'Bozcaada'),
(1206, 9, 'Bozdoğan'),
(1207, 42, 'Bozkır'),
(1208, 37, 'Bozkurt / Kastamonu'),
(1209, 63, 'Bozova'),
(1210, 11, 'Bozüyük'),
(1211, 15, 'Bucak'),
(1212, 28, 'Bulancak'),
(1213, 49, 'Bulanık'),
(1214, 20, 'Buldan'),
(1215, 15, 'Burdur Merkez'),
(1216, 10, 'Burhaniye'),
(1218, 38, 'Bünyan'),
(1219, 1, 'Ceyhan'),
(1220, 63, 'Ceylanpınar'),
(1221, 37, 'Cide'),
(1222, 42, 'Cihanbeyli'),
(1223, 73, 'Cizre'),
(1224, 20, 'Çal'),
(1225, 51, 'Çamardı'),
(1226, 20, 'Çameli'),
(1227, 6, 'Çamlıdere'),
(1228, 53, 'Çamlıhemşin'),
(1229, 17, 'Çan'),
(1230, 17, 'Çanakkale Merkez'),
(1231, 6, 'Çankaya'),
(1232, 18, 'Çankırı Merkez'),
(1233, 20, 'Çardak'),
(1234, 55, 'Çarşamba'),
(1235, 25, 'Çat'),
(1236, 65, 'Çatak'),
(1237, 34, 'Çatalca'),
(1238, 37, 'Çatalzeytin'),
(1239, 3, 'Çay'),
(1240, 67, 'Çaycuma'),
(1241, 53, 'Çayeli'),
(1242, 66, 'Çayıralan'),
(1243, 24, 'Çayırlı'),
(1244, 61, 'Çaykara'),
(1245, 66, 'Çekerek'),
(1246, 2, 'Çelikhan'),
(1247, 62, 'Çemişgezek'),
(1248, 18, 'Çerkeş'),
(1249, 21, 'Çermik'),
(1250, 59, 'Çerkezköy'),
(1251, 35, 'Çeşme'),
(1252, 75, 'Çıldır'),
(1253, 21, 'Çınar'),
(1254, 40, 'Çiçekdağı'),
(1255, 26, 'Çifteler'),
(1256, 9, 'Çine'),
(1257, 20, 'Çivril'),
(1258, 59, 'Çorlu'),
(1259, 19, 'Çorum Merkez'),
(1260, 6, 'Çubuk'),
(1261, 30, 'Çukurca'),
(1262, 42, 'Çumra'),
(1263, 21, 'Çüngüş'),
(1264, 37, 'Daday'),
(1265, 44, 'Darende'),
(1266, 48, 'Datça'),
(1267, 3, 'Dazkırı'),
(1268, 71, 'Delice'),
(1269, 45, 'Demirci'),
(1270, 39, 'Demirköy'),
(1271, 20, 'Denizli Merkez'),
(1272, 28, 'Dereli'),
(1273, 47, 'Derik'),
(1274, 50, 'Derinkuyu'),
(1275, 38, 'Develi'),
(1276, 67, 'Devrek'),
(1277, 37, 'Devrekani'),
(1278, 21, 'Dicle'),
(1279, 36, 'Digor'),
(1280, 35, 'Dikili'),
(1281, 3, 'Dinar'),
(1282, 58, 'Divriği'),
(1283, 4, 'Diyadin'),
(1284, 21, 'Diyarbakır Merkez'),
(1285, 42, 'Doğanhisar'),
(1286, 44, 'Doğanşehir'),
(1287, 4, 'Doğubayazıt'),
(1288, 43, 'Domaniç'),
(1289, 31, 'Dörtyol'),
(1290, 57, 'Durağan'),
(1291, 10, 'Dursunbey'),
(1292, 81, 'Düzce Merkez'),
(1293, 17, 'Eceabat'),
(1294, 10, 'Edremit / Balıkesir'),
(1295, 22, 'Edirne Merkez'),
(1296, 78, 'Eflani'),
(1297, 32, 'Eğirdir'),
(1298, 23, 'Elazığ Merkez'),
(1299, 46, 'Elbistan'),
(1300, 18, 'Eldivan'),
(1301, 4, 'Eleşkirt'),
(1302, 6, 'Elmadağ'),
(1303, 7, 'Elmalı'),
(1304, 43, 'Emet'),
(1305, 34, 'Eminönü'),
(1306, 3, 'Emirdağ'),
(1307, 22, 'Enez'),
(1308, 60, 'Erbaa'),
(1309, 65, 'Erciş'),
(1310, 10, 'Erdek'),
(1311, 33, 'Erdemli'),
(1312, 42, 'Ereğli / Konya'),
(1313, 67, 'Ereğli / Zonguldak'),
(1314, 57, 'Erfelek'),
(1315, 21, 'Ergani'),
(1316, 70, 'Ermenek'),
(1317, 56, 'Eruh'),
(1318, 24, 'Erzincan Merkez'),
(1319, 25, 'Erzurum Merkez'),
(1320, 28, 'Espiye'),
(1321, 78, 'Eskipazar'),
(1322, 26, 'Eskişehir Merkez'),
(1323, 64, 'Eşme'),
(1324, 28, 'Eynesil'),
(1325, 34, 'Eyüp'),
(1326, 17, 'Ezine'),
(1327, 34, 'Fatih'),
(1328, 52, 'Fatsa'),
(1329, 1, 'Feke'),
(1330, 38, 'Felahiye'),
(1331, 48, 'Fethiye'),
(1332, 53, 'Fındıklı'),
(1333, 7, 'Finike'),
(1334, 35, 'Foça'),
(1336, 34, 'Gaziosmanpaşa'),
(1337, 7, 'Gazipaşa'),
(1338, 41, 'Gebze'),
(1339, 43, 'Gediz'),
(1340, 17, 'Gelibolu'),
(1341, 32, 'Gelendost'),
(1342, 58, 'Gemerek'),
(1343, 16, 'Gemlik'),
(1344, 12, 'Genç'),
(1345, 72, 'Gercüş'),
(1346, 14, 'Gerede'),
(1347, 2, 'Gerger'),
(1348, 9, 'Germencik'),
(1349, 57, 'Gerze'),
(1350, 65, 'Gevaş'),
(1351, 54, 'Geyve'),
(1352, 28, 'Giresun Merkez'),
(1353, 46, 'Göksun'),
(1354, 2, 'Gölbaşı / Adıyaman'),
(1355, 41, 'Gölcük'),
(1356, 75, 'Göle'),
(1357, 15, 'Gölhisar'),
(1358, 52, 'Gölköy'),
(1359, 11, 'Gölpazarı'),
(1360, 10, 'Gönen / Balıkesir'),
(1361, 28, 'Görele'),
(1362, 45, 'Gördes'),
(1363, 5, 'Göynücek'),
(1364, 14, 'Göynük'),
(1365, 6, 'Güdül'),
(1366, 33, 'Gülnar'),
(1367, 50, 'Gülşehir'),
(1368, 5, 'Gümüşhacıköy'),
(1369, 29, 'Gümüşhane Merkez'),
(1370, 7, 'Gündoğmuş'),
(1371, 20, 'Güney'),
(1372, 65, 'Gürpınar'),
(1373, 58, 'Gürün'),
(1374, 50, 'Hacıbektaş'),
(1375, 42, 'Hadim'),
(1376, 58, 'Hafik'),
(1377, 30, 'Hakkari Merkez'),
(1378, 63, 'Halfeti'),
(1379, 4, 'Hamur'),
(1380, 75, 'Hanak'),
(1381, 21, 'Hani'),
(1382, 31, 'Hassa'),
(1383, 31, 'Hatay Merkez'),
(1384, 10, 'Havran'),
(1385, 22, 'Havsa'),
(1386, 55, 'Havza'),
(1387, 6, 'Haymana'),
(1388, 59, 'Hayrabolu'),
(1389, 21, 'Hazro'),
(1390, 44, 'Hekimhan'),
(1391, 54, 'Hendek'),
(1392, 25, 'Hınıs'),
(1393, 63, 'Hilvan'),
(1394, 13, 'Hizan'),
(1395, 8, 'Hopa'),
(1396, 25, 'Horasan'),
(1397, 62, 'Hozat'),
(1398, 76, 'Iğdır Merkez'),
(1399, 18, 'Ilgaz'),
(1400, 42, 'Ilgın'),
(1401, 32, 'Isparta Merkez'),
(1402, 33, 'Mersin Merkez'),
(1403, 73, 'İdil'),
(1404, 3, 'İhsaniye'),
(1405, 53, 'İkizdere'),
(1406, 24, 'İliç'),
(1407, 58, 'İmranlı'),
(1408, 17, 'Gökçeada'),
(1409, 38, 'İncesu'),
(1410, 37, 'İnebolu'),
(1411, 16, 'İnegöl'),
(1412, 22, 'İpsala'),
(1413, 31, 'İskenderun'),
(1414, 19, 'İskilip'),
(1415, 27, 'İslahiye'),
(1416, 25, 'İspir'),
(1418, 10, 'İvrindi'),
(1420, 16, 'İznik'),
(1421, 34, 'Kadıköy'),
(1422, 42, 'Kadınhanı'),
(1423, 80, 'Kadirli'),
(1424, 36, 'Kağızman'),
(1425, 2, 'Kahta'),
(1426, 20, 'Kale / Denizli'),
(1427, 6, 'Kalecik'),
(1428, 53, 'Kalkandere'),
(1429, 40, 'Kaman'),
(1430, 41, 'Kandıra'),
(1431, 58, 'Kangal'),
(1432, 35, 'Karaburun'),
(1433, 78, 'Karabük Merkez'),
(1434, 16, 'Karacabey'),
(1435, 9, 'Karacasu'),
(1436, 64, 'Karahallı'),
(1437, 1, 'Karaisalı'),
(1438, 23, 'Karakoçan'),
(1439, 70, 'Karaman Merkez'),
(1440, 41, 'Karamürsel'),
(1441, 42, 'Karapınar'),
(1442, 54, 'Karasu'),
(1443, 1, 'Karataş'),
(1444, 25, 'Karayazı'),
(1445, 19, 'Kargı'),
(1446, 12, 'Karlıova'),
(1447, 36, 'Kars Merkez'),
(1448, 35, 'Karşıyaka'),
(1449, 34, 'Kartal'),
(1450, 37, 'Kastamonu Merkez'),
(1451, 7, 'Kaş'),
(1452, 55, 'Kavak'),
(1453, 54, 'Kaynarca'),
(1455, 23, 'Keban'),
(1456, 32, 'Keçiborlu'),
(1457, 16, 'Keles'),
(1458, 29, 'Kelkit'),
(1459, 24, 'Kemah'),
(1460, 24, 'Kemaliye'),
(1461, 35, 'Kemalpaşa / İzmir'),
(1462, 10, 'Kepsut'),
(1463, 71, 'Keskin'),
(1464, 22, 'Keşan'),
(1465, 28, 'Keşap'),
(1466, 14, 'Kıbrıscık'),
(1467, 35, 'Kınık'),
(1468, 31, 'Kırıkhan'),
(1469, 71, 'Kırıkkale Merkez'),
(1470, 45, 'Kırkağaç'),
(1471, 39, 'Kırklareli Merkez'),
(1472, 40, 'Kırşehir Merkez'),
(1473, 6, 'Kızılcahamam'),
(1474, 47, 'Kızıltepe'),
(1475, 12, 'Kiğı'),
(1476, 79, 'Kilis Merkez'),
(1477, 35, 'Kiraz'),
(1478, 41, 'Kocaeli Merkez'),
(1479, 9, 'Koçarlı'),
(1480, 39, 'Kofçaz'),
(1482, 52, 'Korgan'),
(1483, 7, 'Korkuteli'),
(1484, 58, 'Koyulhisar'),
(1485, 50, 'Kozaklı'),
(1486, 1, 'Kozan'),
(1487, 72, 'Kozluk'),
(1488, 48, 'Köyceğiz'),
(1489, 45, 'Kula'),
(1490, 21, 'Kulp'),
(1491, 42, 'Kulu'),
(1492, 7, 'Kumluca'),
(1493, 52, 'Kumru'),
(1494, 18, 'Kurşunlu'),
(1495, 56, 'Kurtalan'),
(1496, 74, 'Kurucaşile'),
(1497, 9, 'Kuşadası'),
(1498, 9, 'Kuyucak'),
(1499, 37, 'Küre'),
(1500, 43, 'Kütahya Merkez'),
(1501, 55, 'Ladik'),
(1502, 22, 'Lalapaşa'),
(1503, 17, 'Lapseki'),
(1504, 21, 'Lice'),
(1505, 39, 'Lüleburgaz'),
(1506, 23, 'Maden'),
(1507, 61, 'Maçka'),
(1508, 26, 'Mahmudiye'),
(1509, 44, 'Malatya Merkez'),
(1510, 49, 'Malazgirt'),
(1511, 59, 'Malkara'),
(1512, 7, 'Manavgat'),
(1513, 45, 'Manisa Merkez'),
(1514, 10, 'Manyas'),
(1515, 46, 'Kahramanmaraş Merkez'),
(1516, 47, 'Mardin Merkez'),
(1517, 48, 'Marmaris'),
(1518, 62, 'Mazgirt'),
(1519, 47, 'Mazıdağı'),
(1520, 19, 'Mecitözü'),
(1521, 35, 'Menemen'),
(1522, 14, 'Mengen'),
(1523, 22, 'Meriç'),
(1524, 5, 'Merzifon'),
(1525, 52, 'Mesudiye'),
(1526, 47, 'Midyat'),
(1527, 26, 'Mihalıççık'),
(1528, 48, 'Milas'),
(1529, 40, 'Mucur'),
(1530, 16, 'Mudanya'),
(1531, 14, 'Mudurnu'),
(1532, 48, 'Muğla Merkez'),
(1533, 65, 'Muradiye'),
(1534, 49, 'Muş Merkez'),
(1535, 16, 'Mustafakemalpaşa'),
(1536, 33, 'Mut'),
(1537, 13, 'Mutki'),
(1538, 59, 'Muratlı'),
(1539, 6, 'Nallıhan'),
(1540, 25, 'Narman'),
(1541, 62, 'Nazımiye'),
(1542, 9, 'Nazilli'),
(1543, 50, 'Nevşehir Merkez'),
(1544, 51, 'Niğde Merkez'),
(1545, 60, 'Niksar'),
(1546, 27, 'Nizip'),
(1547, 47, 'Nusaybin'),
(1548, 61, 'Of'),
(1549, 27, 'Oğuzeli'),
(1550, 25, 'Oltu'),
(1551, 25, 'Olur'),
(1552, 52, 'Ordu Merkez'),
(1553, 16, 'Orhaneli'),
(1554, 16, 'Orhangazi'),
(1555, 18, 'Orta'),
(1556, 19, 'Ortaköy / Çorum'),
(1557, 68, 'Ortaköy / Aksaray'),
(1558, 19, 'Osmancık'),
(1559, 11, 'Osmaneli'),
(1560, 80, 'Osmaniye Merkez'),
(1561, 78, 'Ovacık / Karabük'),
(1562, 62, 'Ovacık / Tunceli'),
(1563, 35, 'Ödemiş'),
(1564, 47, 'Ömerli'),
(1565, 65, 'Özalp'),
(1566, 23, 'Palu'),
(1567, 25, 'Pasinler'),
(1568, 4, 'Patnos'),
(1569, 53, 'Pazar / Rize'),
(1570, 46, 'Pazarcık'),
(1571, 11, 'Pazaryeri'),
(1572, 39, 'Pehlivanköy'),
(1573, 52, 'Perşembe'),
(1574, 62, 'Pertek'),
(1575, 56, 'Pervari'),
(1576, 38, 'Pınarbaşı / Kayseri'),
(1577, 39, 'Pınarhisar'),
(1578, 6, 'Polatlı'),
(1579, 75, 'Posof'),
(1580, 1, 'Pozantı'),
(1581, 62, 'Pülümür'),
(1582, 44, 'Pütürge'),
(1583, 24, 'Refahiye'),
(1584, 60, 'Reşadiye'),
(1585, 31, 'Reyhanlı'),
(1586, 53, 'Rize Merkez'),
(1587, 78, 'Safranbolu'),
(1588, 1, 'Saimbeyli'),
(1589, 54, 'Sakarya Merkez'),
(1590, 45, 'Salihli'),
(1591, 31, 'Samandağ'),
(1592, 2, 'Samsat'),
(1593, 55, 'Samsun Merkez'),
(1594, 3, 'Sandıklı'),
(1595, 54, 'Sapanca'),
(1596, 59, 'Saray / Tekirdağ'),
(1597, 20, 'Sarayköy'),
(1598, 42, 'Sarayönü'),
(1599, 26, 'Sarıcakaya'),
(1600, 45, 'Sarıgöl'),
(1601, 36, 'Sarıkamış'),
(1602, 66, 'Sarıkaya'),
(1603, 38, 'Sarıoğlan'),
(1604, 34, 'Sarıyer'),
(1605, 38, 'Sarız'),
(1606, 45, 'Saruhanlı'),
(1607, 72, 'Sason'),
(1608, 10, 'Savaştepe'),
(1609, 47, 'Savur'),
(1610, 14, 'Seben'),
(1611, 35, 'Seferihisar'),
(1612, 35, 'Selçuk'),
(1613, 45, 'Selendi'),
(1614, 36, 'Selim'),
(1615, 32, 'Senirkent'),
(1616, 7, 'Serik'),
(1617, 42, 'Seydişehir'),
(1618, 26, 'Seyitgazi'),
(1619, 10, 'Sındırgı'),
(1620, 56, 'Siirt Merkez'),
(1621, 33, 'Silifke'),
(1622, 34, 'Silivri'),
(1623, 73, 'Silopi'),
(1624, 21, 'Silvan'),
(1625, 43, 'Simav'),
(1626, 3, 'Sinanpaşa'),
(1627, 57, 'Sinop Merkez'),
(1628, 58, 'Sivas Merkez'),
(1629, 64, 'Sivaslı'),
(1630, 63, 'Siverek'),
(1631, 23, 'Sivrice'),
(1632, 26, 'Sivrihisar'),
(1633, 12, 'Solhan'),
(1634, 45, 'Soma'),
(1635, 66, 'Sorgun'),
(1636, 11, 'Söğüt'),
(1637, 9, 'Söke'),
(1638, 71, 'Sulakyurt'),
(1639, 3, 'Sultandağı'),
(1640, 9, 'Sultanhisar'),
(1641, 5, 'Suluova'),
(1642, 19, 'Sungurlu'),
(1643, 63, 'Suruç'),
(1644, 10, 'Susurluk'),
(1645, 36, 'Susuz'),
(1646, 58, 'Suşehri'),
(1647, 61, 'Sürmene'),
(1648, 32, 'Sütçüler'),
(1649, 18, 'Şabanözü'),
(1650, 58, 'Şarkışla'),
(1651, 32, 'Şarkikaraağaç'),
(1652, 59, 'Şarköy'),
(1653, 8, 'Şavşat'),
(1654, 28, 'Şebinkarahisar'),
(1655, 66, 'Şefaatli'),
(1656, 30, 'Şemdinli'),
(1657, 25, 'Şenkaya'),
(1658, 6, 'Şereflikoçhisar'),
(1659, 34, 'Şile'),
(1660, 29, 'Şiran'),
(1661, 73, 'Şırnak Merkez'),
(1662, 56, 'Şirvan'),
(1663, 34, 'Şişli'),
(1664, 3, 'Şuhut'),
(1665, 33, 'Tarsus'),
(1666, 37, 'Taşköprü'),
(1667, 4, 'Taşlıçay'),
(1668, 5, 'Taşova'),
(1669, 13, 'Tatvan'),
(1670, 20, 'Tavas'),
(1671, 43, 'Tavşanlı'),
(1672, 15, 'Tefenni'),
(1673, 59, 'Tekirdağ Merkez'),
(1674, 25, 'Tekman'),
(1675, 24, 'Tercan'),
(1676, 55, 'Terme'),
(1677, 35, 'Tire'),
(1678, 28, 'Tirebolu'),
(1679, 60, 'Tokat Merkez'),
(1680, 38, 'Tomarza'),
(1681, 61, 'Tonya'),
(1682, 35, 'Torbalı'),
(1683, 25, 'Tortum'),
(1684, 29, 'Torul'),
(1685, 37, 'Tosya'),
(1686, 61, 'Trabzon Merkez'),
(1687, 1, 'Tufanbeyli'),
(1688, 62, 'Tunceli Merkez'),
(1689, 45, 'Turgutlu'),
(1690, 60, 'Turhal'),
(1691, 4, 'Tutak'),
(1692, 76, 'Tuzluca'),
(1693, 57, 'Türkeli'),
(1694, 46, 'Türkoğlu'),
(1695, 48, 'Ula'),
(1696, 52, 'Ulubey / Ordu'),
(1697, 64, 'Ulubey / Uşak'),
(1698, 73, 'Uludere'),
(1699, 32, 'Uluborlu'),
(1700, 51, 'Ulukışla'),
(1701, 74, 'Ulus'),
(1702, 63, 'Şanlıurfa Merkez'),
(1703, 35, 'Urla'),
(1704, 64, 'Uşak Merkez'),
(1705, 22, 'Uzunköprü'),
(1706, 52, 'Ünye'),
(1707, 50, 'Ürgüp'),
(1708, 34, 'Üsküdar'),
(1709, 61, 'Vakfıkebir'),
(1710, 65, 'Van Merkez'),
(1711, 49, 'Varto'),
(1712, 55, 'Vezirköprü'),
(1713, 63, 'Viranşehir'),
(1714, 39, 'Vize'),
(1715, 38, 'Yahyalı'),
(1716, 77, 'Yalova Merkez'),
(1717, 32, 'Yalvaç'),
(1718, 18, 'Yapraklı'),
(1719, 48, 'Yatağan'),
(1720, 27, 'Yavuzeli'),
(1721, 31, 'Yayladağı'),
(1722, 17, 'Yenice / Çanakkale'),
(1723, 6, 'Yenimahalle'),
(1724, 9, 'Yenipazar / Aydın'),
(1725, 16, 'Yenişehir / Bursa'),
(1726, 66, 'Yerköy'),
(1727, 38, 'Yeşilhisar'),
(1728, 15, 'Yeşilova'),
(1729, 44, 'Yeşilyurt / Malatya'),
(1730, 81, 'Yığılca'),
(1731, 58, 'Yıldızeli'),
(1732, 61, 'Yomra'),
(1733, 66, 'Yozgat Merkez'),
(1734, 1, 'Yumurtalık'),
(1735, 42, 'Yunak'),
(1736, 8, 'Yusufeli'),
(1737, 30, 'Yüksekova'),
(1738, 58, 'Zara'),
(1739, 34, 'Zeytinburnu'),
(1740, 60, 'Zile'),
(1741, 67, 'Zonguldak Merkez'),
(1742, 48, 'Dalaman'),
(1743, 80, 'Düziçi'),
(1744, 6, 'Gölbaşı / Ankara'),
(1745, 6, 'Keçiören'),
(1746, 6, 'Mamak'),
(1747, 6, 'Sincan'),
(1748, 1, 'Yüreğir'),
(1749, 50, 'Acıgöl'),
(1750, 12, 'Adaklı'),
(1751, 45, 'Ahmetli'),
(1752, 38, 'Akkışla'),
(1753, 42, 'Akören'),
(1754, 40, 'Akpınar'),
(1755, 32, 'Aksu / Isparta'),
(1756, 36, 'Akyaka'),
(1757, 1, 'Aladağ'),
(1758, 67, 'Alaplı'),
(1759, 26, 'Alpu'),
(1760, 42, 'Altınekin'),
(1761, 74, 'Amasra'),
(1762, 23, 'Arıcak'),
(1763, 55, 'Asarcık'),
(1764, 43, 'Aslanapa'),
(1765, 18, 'Atkaracalar'),
(1766, 33, 'Aydıncık / Mersin'),
(1767, 69, 'Aydıntepe'),
(1768, 70, 'Ayrancı'),
(1769, 20, 'Babadağ'),
(1770, 65, 'Bahçesaray'),
(1771, 3, 'Başmakçı'),
(1772, 44, 'Battalgazi'),
(1773, 3, 'Bayat'),
(1774, 20, 'Bekilli'),
(1775, 61, 'Beşikdüzü'),
(1776, 35, 'Beydağ'),
(1777, 26, 'Beylikova'),
(1778, 19, 'Boğazkale'),
(1779, 33, 'Bozyazı'),
(1780, 35, 'Buca'),
(1781, 9, 'Buharkent'),
(1782, 34, 'Büyükçekmece'),
(1783, 16, 'Büyükorhan'),
(1784, 81, 'Cumayeri'),
(1785, 46, 'Çağlayancerit'),
(1786, 65, 'Çaldıran'),
(1787, 47, 'Dargeçit'),
(1788, 69, 'Demirözü'),
(1789, 42, 'Derebucak'),
(1790, 43, 'Dumlupınar'),
(1791, 21, 'Eğil'),
(1792, 31, 'Erzin'),
(1793, 45, 'Gölmarmara'),
(1794, 81, 'Gölyaka'),
(1795, 52, 'Gülyalı'),
(1796, 53, 'Güneysu'),
(1797, 52, 'Gürgentepe'),
(1798, 13, 'Güroymak'),
(1799, 16, 'Harmancık'),
(1800, 63, 'Harran'),
(1801, 49, 'Hasköy'),
(1802, 43, 'Hisarcık'),
(1803, 20, 'Honaz'),
(1804, 42, 'Hüyük'),
(1805, 37, 'İhsangazi'),
(1806, 1, 'İmamoğlu'),
(1807, 9, 'İncirliova'),
(1808, 26, 'İnönü'),
(1809, 3, 'İscehisar'),
(1810, 34, 'Kağıthane'),
(1811, 7, 'Demre'),
(1812, 25, 'Karaçoban'),
(1813, 15, 'Karamanlı'),
(1814, 42, 'Karatay'),
(1815, 6, 'Kazan'),
(1816, 15, 'Kemer / Burdur'),
(1817, 18, 'Kızılırmak'),
(1818, 54, 'Kocaali'),
(1819, 35, 'Konak'),
(1820, 23, 'Kovancılar'),
(1821, 41, 'Körfez'),
(1822, 29, 'Köse'),
(1823, 34, 'Küçükçekmece'),
(1824, 10, 'Marmara'),
(1825, 59, 'Marmaraereğlisi'),
(1826, 35, 'Menderes'),
(1827, 42, 'Meram'),
(1828, 8, 'Murgul'),
(1829, 16, 'Nilüfer'),
(1830, 55, '19 Mayıs'),
(1831, 48, 'Ortaca'),
(1832, 16, 'Osmangazi'),
(1833, 54, 'Pamukova'),
(1834, 60, 'Pazar / Tokat'),
(1835, 34, 'Pendik'),
(1836, 37, 'Pınarbaşı / Kastamon'),
(1837, 28, 'Piraziz'),
(1838, 55, 'Salıpazarı'),
(1839, 42, 'Selçuklu'),
(1840, 20, 'Serinhisar'),
(1841, 27, 'Şahinbey'),
(1842, 61, 'Şalpazarı'),
(1843, 43, 'Şaphane'),
(1844, 27, 'Şehitkamil'),
(1845, 37, 'Şenpazar'),
(1846, 38, 'Talas'),
(1847, 54, 'Taraklı'),
(1848, 42, 'Taşkent'),
(1849, 55, 'Tekkeköy'),
(1850, 19, 'Uğurludağ'),
(1851, 25, 'Uzundere'),
(1852, 34, 'Ümraniye'),
(1853, 24, 'Üzümlü'),
(1854, 28, 'Yağlıdere'),
(1855, 12, 'Yayladere'),
(1856, 78, 'Yenice / Karabük'),
(1857, 11, 'Yenipazar / Bilecik'),
(1858, 60, 'Yeşilyurt / Tokat'),
(1859, 16, 'Yıldırım'),
(1860, 68, 'Ağaçören'),
(1861, 68, 'Güzelyurt'),
(1862, 70, 'Kazımkarabekir'),
(1863, 38, 'Kocasinan'),
(1864, 38, 'Melikgazi'),
(1865, 25, 'Pazaryolu'),
(1866, 68, 'Sarıyahşi'),
(1867, 37, 'Ağlı'),
(1868, 42, 'Ahırlı'),
(1869, 40, 'Akçakent'),
(1870, 58, 'Akıncılar'),
(1871, 20, 'Pamukkale'),
(1872, 6, 'Akyurt'),
(1873, 23, 'Alacakaya'),
(1874, 15, 'Altınyayla / Burdur'),
(1875, 58, 'Altınyayla / Sivas'),
(1876, 51, 'Altunhisar'),
(1877, 66, 'Aydıncık / Yozgat'),
(1878, 56, 'Tillo'),
(1879, 55, 'Ayvacık / Samsun'),
(1880, 71, 'Bahşili'),
(1881, 20, 'Baklan'),
(1882, 71, 'Balışeyh'),
(1883, 60, 'Başçiftlik'),
(1884, 70, 'Başyayla'),
(1885, 18, 'Bayramören'),
(1886, 34, 'Bayrampaşa'),
(1887, 31, 'Belen'),
(1888, 20, 'Beyağaç'),
(1889, 20, 'Bozkurt / Denizli'),
(1890, 40, 'Boztepe'),
(1891, 52, 'Çamaş'),
(1892, 33, 'Çamlıyayla'),
(1893, 28, 'Çamoluk'),
(1894, 28, 'Çanakçı'),
(1895, 66, 'Çandır'),
(1896, 61, 'Çarşıbaşı'),
(1897, 52, 'Çatalpınar'),
(1898, 43, 'Çavdarhisar'),
(1899, 15, 'Çavdır'),
(1900, 52, 'Çaybaşı'),
(1901, 71, 'Çelebi'),
(1902, 42, 'Çeltik'),
(1903, 15, 'Çeltikçi'),
(1904, 51, 'Çiftlik'),
(1905, 81, 'Çilimli'),
(1906, 3, 'Çobanlar'),
(1907, 42, 'Derbent'),
(1908, 53, 'Derepazarı'),
(1909, 61, 'Dernekpazarı'),
(1910, 57, 'Dikmen'),
(1911, 19, 'Dodurga'),
(1912, 28, 'Doğankent'),
(1913, 58, 'Doğanşar'),
(1914, 44, 'Doğanyol'),
(1915, 37, 'Doğanyurt'),
(1916, 14, 'Dörtdivan'),
(1917, 61, 'Düzköy'),
(1918, 65, 'Edremit / Van'),
(1919, 46, 'Ekinözü'),
(1920, 42, 'Emirgazi'),
(1921, 68, 'Eskil'),
(1922, 6, 'Etimesgut'),
(1923, 3, 'Evciler'),
(1924, 6, 'Evren'),
(1925, 54, 'Ferizli'),
(1926, 67, 'Gökçebey'),
(1927, 58, 'Gölova'),
(1928, 10, 'Gömeç'),
(1929, 32, 'Gönen / Isparta'),
(1930, 28, 'Güce'),
(1931, 73, 'Güçlükonak'),
(1932, 68, 'Gülağaç'),
(1933, 42, 'Güneysınır'),
(1934, 26, 'Günyüzü'),
(1935, 16, 'Gürsu'),
(1936, 38, 'Hacılar'),
(1937, 42, 'Halkapınar'),
(1938, 5, 'Hamamözü'),
(1939, 26, 'Han'),
(1940, 37, 'Hanönü'),
(1941, 72, 'Hasankeyf'),
(1942, 61, 'Hayrat'),
(1943, 53, 'Hemşin'),
(1944, 3, 'Hocalar'),
(1945, 25, 'Aziziye'),
(1946, 7, 'İbradı'),
(1947, 52, 'İkizce'),
(1948, 11, 'İnhisar'),
(1949, 53, 'İyidere'),
(1950, 52, 'Kabadüz'),
(1951, 52, 'Kabataş'),
(1952, 66, 'Kadışehri'),
(1953, 44, 'Kale / Malatya'),
(1954, 71, 'Karakeçili'),
(1955, 54, 'Karapürçek'),
(1956, 27, 'Karkamış'),
(1957, 9, 'Karpuzlu'),
(1958, 48, 'Kavaklıdere'),
(1959, 7, 'Kemer / Antalya'),
(1960, 16, 'Kestel'),
(1961, 3, 'Kızılören'),
(1962, 21, 'Kocaköy'),
(1963, 18, 'Korgun'),
(1964, 49, 'Korkut'),
(1965, 45, 'Köprübaşı / Manisa'),
(1966, 61, 'Köprübaşı / Trabzon'),
(1967, 25, 'Köprüköy'),
(1968, 9, 'Köşk'),
(1969, 44, 'Kuluncak'),
(1970, 31, 'Kumlu'),
(1971, 29, 'Kürtün'),
(1972, 19, 'Laçin'),
(1973, 26, 'Mihalgazi'),
(1974, 27, 'Nurdağı'),
(1975, 46, 'Nurhak'),
(1976, 19, 'Oğuzlar'),
(1977, 24, 'Otlukbeli'),
(1978, 38, 'Özvatan'),
(1979, 43, 'Pazarlar'),
(1980, 65, 'Saray / Van'),
(1981, 57, 'Saraydüzü'),
(1982, 66, 'Saraykent'),
(1983, 70, 'Sarıveliler'),
(1984, 37, 'Seydiler'),
(1985, 2, 'Sincik'),
(1986, 54, 'Söğütlü'),
(1987, 60, 'Sulusaray'),
(1988, 22, 'Süloğlu'),
(1989, 2, 'Tut'),
(1990, 42, 'Tuzlukçu'),
(1991, 58, 'Ulaş'),
(1992, 71, 'Yahşihan'),
(1993, 55, 'Yakakent'),
(1994, 42, 'Yalıhüyük'),
(1995, 44, 'Yazıhan'),
(1996, 12, 'Yedisu'),
(1997, 14, 'Yeniçağa'),
(1998, 66, 'Yenifakılı'),
(2000, 9, 'Didim'),
(2001, 32, 'Yenişarbademli'),
(2002, 47, 'Yeşilli'),
(2003, 34, 'Avcılar'),
(2004, 34, 'Bağcılar'),
(2005, 34, 'Bahçelievler'),
(2006, 35, 'Balçova'),
(2007, 35, 'Çiğli'),
(2008, 75, 'Damal'),
(2009, 35, 'Gaziemir'),
(2010, 34, 'Güngören'),
(2011, 76, 'Karakoyunlu'),
(2012, 34, 'Maltepe'),
(2013, 35, 'Narlıdere'),
(2014, 34, 'Sultanbeyli'),
(2015, 34, 'Tuzla'),
(2016, 34, 'Esenler'),
(2017, 81, 'Gümüşova'),
(2018, 35, 'Güzelbahçe'),
(2019, 77, 'Altınova'),
(2020, 77, 'Armutlu'),
(2021, 77, 'Çınarcık'),
(2022, 77, 'Çiftlikköy'),
(2023, 79, 'Elbeyli'),
(2024, 79, 'Musabeyli'),
(2025, 79, 'Polateli'),
(2026, 77, 'Termal'),
(2027, 80, 'Hasanbeyli'),
(2028, 80, 'Sumbas'),
(2029, 80, 'Toprakkale'),
(2030, 41, 'Derince'),
(2031, 81, 'Kaynaşlı'),
(2032, 1, 'Sarıçam'),
(2033, 1, 'Çukurova'),
(2034, 6, 'Pursaklar'),
(2035, 7, 'Aksu / Antalya'),
(2036, 7, 'Döşemealtı'),
(2037, 7, 'Kepez'),
(2038, 7, 'Konyaaltı'),
(2039, 7, 'Muratpaşa'),
(2040, 21, 'Bağlar'),
(2041, 21, 'Kayapınar'),
(2042, 21, 'Sur'),
(2043, 21, 'Yenişehir / Diyarbak'),
(2044, 25, 'Palandöken'),
(2045, 25, 'Yakutiye'),
(2046, 26, 'Odunpazarı'),
(2047, 26, 'Tepebaşı'),
(2048, 34, 'Arnavutköy'),
(2049, 34, 'Ataşehir'),
(2050, 34, 'Başakşehir'),
(2051, 34, 'Beylikdüzü'),
(2052, 34, 'Çekmeköy'),
(2053, 34, 'Esenyurt'),
(2054, 34, 'Sancaktepe'),
(2055, 34, 'Sultangazi'),
(2056, 35, 'Bayraklı'),
(2057, 35, 'Karabağlar'),
(2058, 41, 'Başiskele'),
(2059, 41, 'Çayırova'),
(2060, 41, 'Darıca'),
(2061, 41, 'Dilovası'),
(2062, 41, 'İzmit'),
(2063, 41, 'Kartepe'),
(2064, 33, 'Akdeniz'),
(2065, 33, 'Mezitli'),
(2066, 33, 'Toroslar'),
(2067, 33, 'Yenişehir / Mersin'),
(2068, 54, 'Adapazarı'),
(2069, 54, 'Arifiye'),
(2070, 54, 'Erenler'),
(2071, 54, 'Serdivan'),
(2072, 55, 'Atakum'),
(2073, 55, 'Canik'),
(2074, 55, 'İlkadım'),
(2076, 9, 'Efeler'),
(2077, 10, 'Altıeylül'),
(2078, 10, 'Karesi'),
(2079, 20, 'Merkezefendi'),
(2080, 31, 'Antakya'),
(2081, 31, 'Arsuz'),
(2082, 31, 'Defne'),
(2083, 31, 'Payas'),
(2084, 46, 'Dulkadiroğlu'),
(2085, 46, 'Onikişubat'),
(2086, 45, 'Şehzadeler'),
(2087, 45, 'Yunusemre'),
(2088, 47, 'Artuklu'),
(2089, 48, 'Menteşe'),
(2090, 48, 'Seydikemer'),
(2091, 63, 'Eyyübiye'),
(2092, 63, 'Haliliye'),
(2093, 63, 'Karaköprü'),
(2094, 59, 'Ergene'),
(2095, 59, 'Kapaklı'),
(2096, 59, 'Süleymanpaşa'),
(2097, 61, 'Ortahisar'),
(2098, 65, 'İpekyolu'),
(2099, 65, 'Tuşba'),
(2100, 67, 'Kilimli'),
(2101, 67, 'Kozlu'),
(2103, 52, 'Altınordu'),
(2105, 8, 'Kemalpaşa / Artvin'),
(2106, 68, 'Sultanhanı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `icerik` varchar(800) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `baslik`, `email`, `telefon`, `icerik`) VALUES
(13, 'ORTDVORTDVORTDVORTDVORTDVORTDVORTDVORTDVORTDVORTDVORTDVORTDV', 'aaaaabbbbbcccccdddddeeeeeaaaaabbbbbcccccdddddeeeeeaaaaabbbbbcccccdddddeeeee@oookkklllooodwkkklll.com', '99999999999', 'SEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZSEK?ZYÜZZZ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ad` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyad` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `cinsiyet` tinyint(1) DEFAULT NULL,
  `dyil` varchar(4) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `day` varchar(2) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dgun` varchar(2) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `email`, `sifre`, `ad`, `soyad`, `cinsiyet`, `dyil`, `day`, `dgun`, `telefon`) VALUES
(5, 'aaaaabbbbbcccccdddddeeeeeaaaaabbbbbcccccdddddeeeeeaaaaabbbbbcccccdddddeeeee@oookkklllooodwkkklll.com', '123456789123456789123456789123', 'Kemalettin Hüsamettin Kahraman', 'Uzunbayirdasavasanlarintorunuu', 1, '9999', '12', '12', '99999999999'),
(6, 'epos@ta.com', '123123', 'qwe', 'deq', 0, '1111', '1', '1', '12312312312');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicili_satis`
--

CREATE TABLE `kullanicili_satis` (
  `id` int(11) NOT NULL,
  `bilet_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fad` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fsoyad` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fadres1` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fadres2` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fil` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `filce` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fposta` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ftelefon` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanicili_satis`
--

INSERT INTO `kullanicili_satis` (`id`, `bilet_id`, `email`, `fad`, `fsoyad`, `fadres1`, `fadres2`, `fil`, `filce`, `fposta`, `ftelefon`) VALUES
(5, 48, 'epos@ta.com', 'wqe', 'qwe', 'wqe', 'wqe', 'qwe', 'qwe', '123213', '12312312312'),
(6, 49, 'epos@ta.com', 'wqe', 'qwe', 'wqe', 'wqe', 'qwe', 'qwe', '123213', '12312312312');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicisiz_satis`
--

CREATE TABLE `kullanicisiz_satis` (
  `id` int(10) UNSIGNED NOT NULL,
  `bilet_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ad` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fad` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fsoyad` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fadres1` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fadres2` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fil` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `filce` varchar(60) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `fposta` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ftelefon` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kupon`
--

CREATE TABLE `kupon` (
  `kod` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reklam`
--

CREATE TABLE `reklam` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `imglink` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `reklam`
--

INSERT INTO `reklam` (`id`, `link`, `imglink`) VALUES
(1, 'http://bilgisayar.muhendislik.istanbulc.edu.tr', '/img/reklam.jpg'),
(4294967295, 'IKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZ.com', '/img/event3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

CREATE TABLE `sss` (
  `id` int(10) UNSIGNED NOT NULL,
  `yardim_id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `icerik` varchar(5000) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`id`, `yardim_id`, `baslik`, `icerik`) VALUES
(1, 1, 'Deneme', 'qwdqwd'),
(2, 1, 'tete', 'cece'),
(4294967295, 1, 'IKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYUZKARAKTERRIKIYU', 'BESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRRRRRRRRRRRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRBESBINKARAKTERRASDFG');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yardim`
--

CREATE TABLE `yardim` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `icon` varchar(300) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yardim`
--

INSERT INTO `yardim` (`id`, `baslik`, `icon`) VALUES
(1, 'YUZKARAKTERYUZKARAKTERYUZKARAKTERYUZKARAKTERYUZKARAKTERYUZKARAKTERYUZKARAKTERYUZKARAKTERYUZKARAKTERW', 'fa-theater-masks');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bilet`
--
ALTER TABLE `bilet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `etkinlik`
--
ALTER TABLE `etkinlik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `genel`
--
ALTER TABLE `genel`
  ADD PRIMARY KEY (`bilgi`);

--
-- Tablo için indeksler `il`
--
ALTER TABLE `il`
  ADD PRIMARY KEY (`kod`);

--
-- Tablo için indeksler `ilce`
--
ALTER TABLE `ilce`
  ADD PRIMARY KEY (`kod`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicili_satis`
--
ALTER TABLE `kullanicili_satis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicisiz_satis`
--
ALTER TABLE `kullanicisiz_satis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kupon`
--
ALTER TABLE `kupon`
  ADD PRIMARY KEY (`kod`);

--
-- Tablo için indeksler `reklam`
--
ALTER TABLE `reklam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yardim`
--
ALTER TABLE `yardim`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bilet`
--
ALTER TABLE `bilet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4294967296;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlik`
--
ALTER TABLE `etkinlik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2333;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicili_satis`
--
ALTER TABLE `kullanicili_satis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicisiz_satis`
--
ALTER TABLE `kullanicisiz_satis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `reklam`
--
ALTER TABLE `reklam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4294967296;

--
-- Tablo için AUTO_INCREMENT değeri `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4294967296;

--
-- Tablo için AUTO_INCREMENT değeri `yardim`
--
ALTER TABLE `yardim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
