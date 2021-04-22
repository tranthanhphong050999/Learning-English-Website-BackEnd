-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2021 lúc 07:49 AM
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
  `AC_passWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_Avatar` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`AC_Id`, `AC_userName`, `AC_fullName`, `AC_Email`, `AC_Streak`, `AC_Exp`, `AC_State`, `AC_Role`, `AC_idExpOfOneDay`, `AC_passWord`, `AC_Avatar`) VALUES
(8, 'tranthanhphong05@gmail.com', 'Trần thanh phong', 'tranthanhphong05@gmail.com', 0, 0, 0, 0, 0, 'ac0ddb993625d6a8c888df710ee3da85', 'facebook.com'),
(10, 'tranthanhphong05@gmail.com', 'Trần thanh phong', 'tranthanhphong05@gmail.com', 0, 0, 0, 0, 0, '574b511f6eb1d4acd00e369496cacc23', 'facebook.com'),
(11, 'tranthanhphong05@gmail.com', 'Trần thanh phong', 'tranthanhphong05@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(12, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(13, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(14, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(15, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(16, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(17, 'tranthanhphong10@gmail.com', 'Trần thanh phong', 'tranthanhphong10@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(18, '', '', '', 0, 0, 0, 0, 0, '060f9548e5ff6347641b240090546090', ''),
(19, 'tranthanhphong08@gmail.com', 'Trần Thanh Phong', 'tranthanhphong08@gmail.com', 0, 0, 0, 0, 0, 'e151d8b62598a2294c28c6f93d01c40c', ''),
(20, 'tranthanhphong11@gmail.com', 'Trần Thanh Phong', 'tranthanhphong11@gmail.com', 0, 0, 0, 0, 0, 'e151d8b62598a2294c28c6f93d01c40c', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalogstored`
--

CREATE TABLE `catalogstored` (
  `CS_Id` int(11) NOT NULL,
  `CS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CS_numDay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalogstored`
--

INSERT INTO `catalogstored` (`CS_Id`, `CS_Name`, `CS_numDay`) VALUES
(1, 'Hộp 1', 1),
(2, 'Hộp 2', 2),
(3, 'Hộp 3', 3),
(4, 'Hộp 4', 7),
(5, 'Hộp 5', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customdegree`
--

CREATE TABLE `customdegree` (
  `CD_Id` int(11) NOT NULL,
  `CD_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customdegree`
--

INSERT INTO `customdegree` (`CD_Id`, `CD_Name`) VALUES
(1, 'Dễ'),
(2, 'Trung bình'),
(3, 'Khó'),
(4, 'Rất khó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expofoneday`
--

CREATE TABLE `expofoneday` (
  `EOOD_Id` int(11) NOT NULL,
  `EOOD_Exp` int(11) NOT NULL,
  `EOOD_dateCreated` date NOT NULL,
  `EOOD_idAccount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `expofoneday`
--

INSERT INTO `expofoneday` (`EOOD_Id`, `EOOD_Exp`, `EOOD_dateCreated`, `EOOD_idAccount`) VALUES
(1, 100, '2021-04-12', 8),
(2, 90, '2021-04-12', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `learningnumberday`
--

CREATE TABLE `learningnumberday` (
  `LND_Id` int(11) NOT NULL,
  `LND_numberOfDay` int(11) NOT NULL,
  `LND_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `learningnumberday`
--

INSERT INTO `learningnumberday` (`LND_Id`, `LND_numberOfDay`, `LND_Name`) VALUES
(1, 2, 'Học trong vòng 2 ngày'),
(2, 3, 'Học trong vòng 3 ngày'),
(3, 5, 'Học trong vòng 5 ngày'),
(4, 7, 'Học trong vòng 7 ngày'),
(5, 9, 'Học trong vòng 9 ngày');

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
(6, 'phongt1223', '123123132132', 'O0nX4jzfR9-YajoDLyk2QClO4Ze51zrW'),
(7, 'tranthanhphong050999@gmail.com', 'U2FsdGVkX18bA303nGHSMdOiW+V3bQSWJTHy31E+FCI=', 'i_dcb8idPHSq4bFuot4Sg_FiKagC4974'),
(8, 'tranthanhphong050999@gmail.com', 'U2FsdGVkX18bA303nGHSMdOiW+V3bQSWJTHy31E+FCI=', 'i_dcb8idPHSq4bFuot4Sg_FiKagC4974'),
(9, 'tranthanhphong050999@gmail.com', 'U2FsdGVkX18bA303nGHSMdOiW+V3bQSWJTHy31E+FCI=', '7r1muRF0NtN28cfmmVZ0-J078wSTID2T'),
(10, 'tranthanhphong0509@gmail.com', 'U2FsdGVkX18TzuEw+yQg1+8VYnPV9v1cJ8Q+J8HyE7M=', '7r1muRF0NtN28cfmmVZ0-J078wSTID2T'),
(11, 'tranthanhphong05@gmail.com', 'U2FsdGVkX1+PPNFUWDz8wnCcAFyMzBilt5FUp6Ko1RI=', 'Qq73EqtVfk3hi2pb63BVm5yNcKU0cZ31'),
(12, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'kUcwrLmZRKJywnipP0bUlQPOmMI9FG_L'),
(13, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'aY9qFSix5MHzWgZkg6vbQIvLJXLDdMK3'),
(14, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'QeJRTMTD7yAMjHX3l14zK3EFsvhXcZZx'),
(15, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'QeJRTMTD7yAMjHX3l14zK3EFsvhXcZZx'),
(16, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', '76BOVKBrsPfnqR-IGDqc0cEyYg_fBT1p'),
(17, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'u0rlagZzthsK_0cy7T3Ae0BlvEjJ8HBA'),
(18, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', '6Idnl7GK87wnQy7_Py7MGTVt0CENXiEX');

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

INSERT INTO `word` (`W_Id`, `W_originalWord`, `W_translatedWord`, `W_Phrase`, `W_phraseMean`, `W_Avatar`, `W_learnTimes`, `W_dateCreated`, `W_Degree`, `W_linkPost`, `W_idWordBook`, `W_idLearningNumberDay`, `W_idCustomDegree`, `W_idState`, `W_wrongTimes`, `W_idCatalogStored`) VALUES
(6, 'Hello', '\r\nXin chào', '\"Hello, Paul,\" she said, \"I haven’t seen you for months.\"', '\"Xin chào Paul\" Cô ấy nói: \"Tôi đã gặp anh trong nhiều tháng\"', 'hello.png', 10, '2021-04-14', 1, 'https://supersimple.com/song/hello/', 3, 2, 1, 0, 0, 1),
(7, 'Good', 'Tốt', 'Let’s go on a picnic tomorrow if the weather’s good', 'Hãy đi dã ngoại vào ngày mai nếu thời tiết tốt', 'good.png', 7, '2021-04-17', 2, 'https://dictionary.cambridge.org/vi/dictionary/english/good', 2, 2, 2, 0, 0, 1),
(8, 'Stupid', 'Ngốc nghếch', 'I just made another stupid mistake.', 'Tôi vừa phạm một sai lầm ngốc nghếch', 'stupid.png', 5, '2021-04-01', 3, 'https://dictionary.cambridge.org/vi/dictionary/english/stupid', 4, 2, 1, 0, 0, 1),
(9, 'Couple', 'Cặp đôi', 'We’re having two couples over for dinner', 'Chúng tôi có hai cặp đôi đến ăn tối', 'couple.png', 10, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(10, 'Cat', 'Con mèo', 'the cat family', 'Gia đình mèo', 'Cat.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(11, 'celebrity', 'Người nổi tiếng', 'Hollywood celebrities turned up at Laguna Beach.', 'Người nổi tiếng Hollywood xuất hiện tại bãi biển laguna', 'celebrity.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(12, 'picture', 'Hình ảnh', 'It’s an old set, and the picture is a little fuzzy', 'Đó là một bộ cũ và hình ảnh hơi mờ', 'picture.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(13, 'around', 'Xung quanh', 'We drove around town for a while, looking for a place to park.', 'Chúng tôi lái xe quanh thị trấn một lúc,tìm chỗ đậu', 'around.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(15, 'left', 'bên trái', 'He injured his left eye', 'anh bị thương ở mắt trái', 'left.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(16, 'letter', 'lá thư', 'I got a letter from the bank this morning.', 'Tôi nhận được một lá thư từ ngân hàng sáng nay', 'letter', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1),
(17, 'never', 'không bao giờ', 'He was never seen again', 'anh ấy đã không bao giờ được nhìn thấy nữa', 'never.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(18, 'start', 'bắt đầu', ' When do you start your new job?', 'Khi nào bạn bắt đầu công việc mới', 'start.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(19, 'afraid', 'sợ', 'She was afraid, but never thought of quitting.', 'Cô sợ, nhưng chưa bao giờ nghĩ đến việc bỏ nghề', 'start.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(20, 'truth', 'sự thật', 'Tell the truth, now, how did the chair get broken?', 'Nói thật đi, bây giờ làm sao mà chiếc ghế bị gãy', 'truth.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(21, 'know', 'Biết', 'Do you know the answer?', 'Bạn có biết câu trả lời không?', 'know.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(22, 'drink', 'Uống', 'She drinks a glass of orange juice every morning.', 'Cô ấy uống một ly nước cam vào mỗi buổi sáng', 'drink.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(23, 'party', 'Buổi tiệc', 'Sally is having a party at her place tonight.', 'Sally sẽ có một buổi tiệc tại chỗ của cô ấy tối nay', 'party.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2),
(24, 'many', 'Nhiều', 'Many people bought tickets for the concert.', 'Nhiều người đã mua vé xem buổi biểu diễn', 'many.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 5),
(25, 'Please', 'Xin vui lòng', 'Please, David, put the knife down', 'làm ơn, David, bỏ con dao xuốn', 'Please', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 4),
(26, ' face', 'khuôn mặt', 'We climbed the north face of Mount Washington.', 'Chúng tôi leo lên mặt bắc của núi Washington', 'face', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 5),
(27, ' give', 'cho', 'We’re collecting for the Red Cross – please give what you can.', 'Chúng tôi đang quyên góp cho hội chữ thập đỏ - vui lòng cung cấp những gì bạn có thể', 'give.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3),
(28, ' hobby', 'sở thích', 'Sonya’s hobbies include traveling, sailing, and reading fiction.', 'sở thích của sonya bao gồm đi du lịch, chèo thuyền và đọc tiểu thuyết', 'hobby.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3),
(29, 'little', 'ít', 'They have very little money', 'họ có rất ít tiền', 'little.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3),
(30, 'feel', 'cảm thất', 'She said she didn’t want anyone to feel sorry for her.', 'cô ấy nói rằng cô ấy không muốn bất cứ ai cảm thấy có lỗi với mình', 'feel.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3),
(31, 'young', 'trẻ', 'Young children should not be left alone at home.', 'không nên để trẻ nhỏ ở nhà một mình', 'young.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3),
(32, 'story', 'câu chuyện', 'My daughter won’t go to bed without hearing a bedtime story.', 'con gái tôi sẽ không ngủ nếu không nghe một câu chuyện trước khi đi ngủ', 'story.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3),
(33, 'like', 'thích, giống', 'I like your new haircut.', 'tôi thích kiểu tóc mới của bạn', 'like.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3);

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
(2, 'Gia Đình', 8),
(3, 'Đời sống', 10),
(4, 'Xã hội', 8),
(5, 'Hàng ngày', 12),
(6, 'Hàng ngày', 17),
(7, 'Hàng ngày', 18),
(8, 'Hàng ngày', 19),
(9, 'Hàng ngày', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordbookstate`
--

CREATE TABLE `wordbookstate` (
  `WBS_Id` int(11) NOT NULL,
  `WBS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `WBS_Detail` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wordbookstate`
--

INSERT INTO `wordbookstate` (`WBS_Id`, `WBS_Name`, `WBS_Detail`) VALUES
(1, 'Trạng thái 1', 'Trạng thái 1'),
(2, 'Trạng thái 2', 'Trạng thái 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordstate`
--

CREATE TABLE `wordstate` (
  `WS_Id` int(11) NOT NULL,
  `WS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wordstate`
--

INSERT INTO `wordstate` (`WS_Id`, `WS_Name`) VALUES
(1, 'Ưu tiên học trước'),
(2, 'Không học nữa');

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
  MODIFY `AC_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `catalogstored`
--
ALTER TABLE `catalogstored`
  MODIFY `CS_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customdegree`
--
ALTER TABLE `customdegree`
  MODIFY `CD_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `expofoneday`
--
ALTER TABLE `expofoneday`
  MODIFY `EOOD_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `learningnumberday`
--
ALTER TABLE `learningnumberday`
  MODIFY `LND_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `session`
--
ALTER TABLE `session`
  MODIFY `S_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `word`
--
ALTER TABLE `word`
  MODIFY `W_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `wordbook`
--
ALTER TABLE `wordbook`
  MODIFY `WB_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `wordbookstate`
--
ALTER TABLE `wordbookstate`
  MODIFY `WBS_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wordstate`
--
ALTER TABLE `wordstate`
  MODIFY `WS_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
