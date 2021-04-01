-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 01, 2021 lúc 09:53 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `englishdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `AC_Id` int(11) NOT NULL,
  `AC_userName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_fullName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_Email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_Streak` int(11) NOT NULL,
  `AC_Exp` int(11) NOT NULL,
  `AC_State` int(11) NOT NULL,
  `AC_Role` int(11) NOT NULL,
  `AC_idExpOfOneDay` int(11) NOT NULL,
  `AC_passWord` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`AC_Id`, `AC_userName`, `AC_fullName`, `AC_Email`, `AC_Streak`, `AC_Exp`, `AC_State`, `AC_Role`, `AC_idExpOfOneDay`, `AC_passWord`) VALUES
(3, 'phongt1223', 'Phong lê', 'phongle11303@gmail.com', 1, 0, 2, 0, 0, '123123132132'),
(4, 'phongt', 'Phong lê', 'phongle11303@gmail.com', 1, 0, 0, 0, 0, '123123132132'),
(5, 'phongt', 'Phong lê', 'phongle11303@gmail.com', 1, 0, 0, 0, 0, '123123132132');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalogstored`
--

CREATE TABLE `catalogstored` (
  `CS_Id` int(11) NOT NULL,
  `CS_Name` int(11) NOT NULL,
  `CS_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customdegree`
--

CREATE TABLE `customdegree` (
  `CD_Id` int(11) NOT NULL,
  `CD_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expofoneday`
--

CREATE TABLE `expofoneday` (
  `EOOD_Id` int(11) NOT NULL,
  `EOOD_Exp` int(11) NOT NULL,
  `EOOD_dateCreated` int(11) NOT NULL,
  `EOOD_idAccount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `learningnumberday`
--

CREATE TABLE `learningnumberday` (
  `LND_Id` int(11) NOT NULL,
  `LND_numberOfDay` int(11) NOT NULL,
  `LND_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `S_Id` int(11) NOT NULL,
  `S_userName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_passWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_Value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `session`
--

INSERT INTO `session` (`S_Id`, `S_userName`, `S_passWord`, `S_Value`) VALUES
(1, 'phongt1223', '123123132132', 'fErlV5NNdwn-B4m5u2nibQpL0xDuhpu1'),
(2, 'phongt1223', '123123132132', 'wqQsW3CpdRE73zFLThTj3n17jSkrNth9'),
(3, 'phongt1223', '123123132132', 'hAiEZrGE7olyOavTv2GiigcSPVPxpNlb'),
(4, 'phongt1223', '123123132132', 'LGXrSq5bL5LvVo745v7qKpQpGTYWrDbs'),
(5, 'phongt1223', '123123132132', 'O0nX4jzfR9-YajoDLyk2QClO4Ze51zrW'),
(6, 'phongt1223', '123123132132', 'O0nX4jzfR9-YajoDLyk2QClO4Ze51zrW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word`
--

CREATE TABLE `word` (
  `W_Id` int(11) NOT NULL,
  `W_originalWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_translatedWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_Phrase` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_phraseMean` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_Avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_learnTimes` int(11) NOT NULL,
  `W_dateCreated` date NOT NULL,
  `W_Degree` int(11) NOT NULL,
  `W_linkPost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_idVocabularyState` int(11) NOT NULL,
  `W_idWordBook` int(11) NOT NULL,
  `W_idLearningNumberDay` int(11) NOT NULL,
  `W_idCustomDegree` int(11) NOT NULL,
  `W_idState` int(11) NOT NULL,
  `W_wrongTimes` int(11) NOT NULL DEFAULT '0',
  `W_idCatalogStored` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `word`
--

INSERT INTO `word` (`W_Id`, `W_originalWord`, `W_translatedWord`, `W_Phrase`, `W_phraseMean`, `W_Avatar`, `W_learnTimes`, `W_dateCreated`, `W_Degree`, `W_linkPost`, `W_idVocabularyState`, `W_idWordBook`, `W_idLearningNumberDay`, `W_idCustomDegree`, `W_idState`, `W_wrongTimes`, `W_idCatalogStored`) VALUES
(3, 'phong', 'phong', 'phongle', 'phongle', 'abc', 10, '0000-00-00', 1, 'a', 3, 0, 0, 0, 0, 0, 0),
(5, 'phong', 'phong', 'phongle', 'phongle', 'abc', 10, '2021-03-10', 1, 'a', 3, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordbook`
--

CREATE TABLE `wordbook` (
  `WB_Id` int(11) NOT NULL,
  `WB_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `WB_idAccount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wordbook`
--

INSERT INTO `wordbook` (`WB_Id`, `WB_Name`, `WB_idAccount`) VALUES
(2, 'no', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordbookstate`
--

CREATE TABLE `wordbookstate` (
  `WBS_Id` int(11) NOT NULL,
  `WBS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `WBS_Detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordstate`
--

CREATE TABLE `wordstate` (
  `WS_Id` int(11) NOT NULL,
  `WS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AC_Id`);

--
-- Chỉ mục cho bảng `catalogstored`
--
ALTER TABLE `catalogstored`
  ADD PRIMARY KEY (`CS_Id`);

--
-- Chỉ mục cho bảng `customdegree`
--
ALTER TABLE `customdegree`
  ADD PRIMARY KEY (`CD_Id`);

--
-- Chỉ mục cho bảng `expofoneday`
--
ALTER TABLE `expofoneday`
  ADD PRIMARY KEY (`EOOD_Id`);

--
-- Chỉ mục cho bảng `learningnumberday`
--
ALTER TABLE `learningnumberday`
  ADD PRIMARY KEY (`LND_Id`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`S_Id`);

--
-- Chỉ mục cho bảng `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`W_Id`);

--
-- Chỉ mục cho bảng `wordbook`
--
ALTER TABLE `wordbook`
  ADD PRIMARY KEY (`WB_Id`);

--
-- Chỉ mục cho bảng `wordbookstate`
--
ALTER TABLE `wordbookstate`
  ADD PRIMARY KEY (`WBS_Id`);

--
-- Chỉ mục cho bảng `wordstate`
--
ALTER TABLE `wordstate`
  ADD PRIMARY KEY (`WS_Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `AC_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `catalogstored`
--
ALTER TABLE `catalogstored`
  MODIFY `CS_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customdegree`
--
ALTER TABLE `customdegree`
  MODIFY `CD_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `expofoneday`
--
ALTER TABLE `expofoneday`
  MODIFY `EOOD_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `learningnumberday`
--
ALTER TABLE `learningnumberday`
  MODIFY `LND_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `session`
--
ALTER TABLE `session`
  MODIFY `S_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `word`
--
ALTER TABLE `word`
  MODIFY `W_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wordbook`
--
ALTER TABLE `wordbook`
  MODIFY `WB_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wordbookstate`
--
ALTER TABLE `wordbookstate`
  MODIFY `WBS_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wordstate`
--
ALTER TABLE `wordstate`
  MODIFY `WS_Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
