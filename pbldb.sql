-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2022 lúc 10:43 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pbldb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `audioName` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `audio`
--

INSERT INTO `audio` (`id`, `url`, `audioName`, `date`) VALUES
(1, 'https://res.cloudinary.com/http-sv-dut-udn-vn/video/upload/v1651061497/samples/audio/kaggle/working/audio_27-04-2022-12:11:25.wav.wav', 'audio_27-04-2022-12:11:25.wav.wav', '27-04-2022-12:11:25'),
(2, 'http://res.cloudinary.com/http-sv-dut-udn-vn/video/upload/v1651155615/samples/audio/pbl/audio_28-04-2022-21-19-50.wav.wav', 'audio_28-04-2022-21-19-50.wav', '28-04-2022-21-19-50'),
(3, 'http://res.cloudinary.com/http-sv-dut-udn-vn/video/upload/v1651159661/samples/audio/pbl/audio_28-04-2022-22-27-14.wav.wav', 'audio_28-04-2022-22-27-14.wav', '28-04-2022-22-27-14'),
(4, 'http://res.cloudinary.com/http-sv-dut-udn-vn/video/upload/v1651159831/samples/audio/pbl/audio_28-04-2022-22-30-06.wav.wav', 'audio_28-04-2022-22-30-06.wav', '28-04-2022-22-30-06'),
(5, 'http://res.cloudinary.com/http-sv-dut-udn-vn/video/upload/v1651160011/samples/audio/pbl/audio_28-04-2022-22-32-59.wav.wav', 'audio_28-04-2022-22-32-59.wav', '28-04-2022-22-32-59'),
(6, 'http://res.cloudinary.com/http-sv-dut-udn-vn/video/upload/v1651160044/samples/audio/pbl/audio_28-04-2022-22-33-44.wav.wav', 'audio_28-04-2022-22-33-44.wav', '28-04-2022-22-33-44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
