-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `secondhand_bookweb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account_manage`
--

CREATE TABLE `account_manage` (
  `A_Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `A_Password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `A_StuID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `A_BirthDate` date DEFAULT NULL,
  `A_Major` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Nickname` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `A_CreditPoint` int(2) NOT NULL DEFAULT '5',
  `A_TradeCount` int(10) NOT NULL DEFAULT '0',
  `A_ViolationCount` int(10) NOT NULL DEFAULT '0',
  `A_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `account_manage`
--

INSERT INTO `account_manage` (`A_Email`, `A_Password`, `A_StuID`, `A_BirthDate`, `A_Major`, `A_Nickname`, `A_CreditPoint`, `A_TradeCount`, `A_ViolationCount`, `A_image`) VALUES
('linglingling7777777@gmail.com', '1234', '111', '2023-01-12', '企業管理學系', 'User', 5, 0, 0, ''),
('cherry911219@gmail.com', '1111', '410402226', '2002-12-19', '資訊管理學系', '奇怪的知識增加了了了', 5, 0, 0, '—Pngtree—hand-painted ink animal - penguin_4069434.png'),
('shioubi0216@gmail.com', '123inok', '410402407', '2023-01-19', '經濟學系、所', 'User', 5, 0, 0, 'profile_preset.jpg'),
('wsx2244667@gmail.com', '12345678', '410402408', '2023-05-09', '音樂學系', 'User', 5, 0, 0, 'profile_preset.jpg'),
('linglingling7777777@gmail.com', 'test1', 'test1', '2001-01-11', '音樂學系', 'User', 5, 0, 0, 'profile_preset.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `book_information`
--

CREATE TABLE `book_information` (
  `B_BookID` int(10) NOT NULL,
  `B_BookName` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `B_ISBN` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `B_Author` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `B_BookVersion` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `B_BookMajor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `B_LessonName` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `B_BookPic` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `B_BookStatus` int(4) NOT NULL,
  `B_UsedStatus` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `B_UsedByTeacher` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_Extra_Info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_Price` int(5) NOT NULL,
  `B_SalerID` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `B_SaleStatus` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '賣家已上架'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `book_information`
--

INSERT INTO `book_information` (`B_BookID`, `B_BookName`, `B_ISBN`, `B_Author`, `B_BookVersion`, `B_BookMajor`, `B_LessonName`, `B_BookPic`, `B_BookStatus`, `B_UsedStatus`, `B_UsedByTeacher`, `B_Extra_Info`, `B_Price`, `B_SalerID`, `B_SaleStatus`) VALUES
(1, '1', '111', '111', '110', '資管', 'wfee', 'qefrqfefeff', 1, '寫出來了 超級感動\r\n                        ', '11114', '~說明文字~\r\n                        ', 1500, '410402407', '賣家已確認'),
(2, '221', '222', 'author', '22', 'adv', 'wfee', 'qefrqfefeff', 1, '~說明文字~\r\n    advadva                    ', 'efqf', '~說明文字~\r\n          advadv              ', 1000, '410402226', '賣家已確認'),
(3, '333', '3333333', 'author56', '33', '企管', 'akkkk', 'wWWWWWwww', 1, '~說明文字~', '', '~說明文字~', 650, '410402407', '賣家已出貨'),
(4, '444', '5151', '+8448599', '4', '666', '8448', '555', 3, '~說明文字~', '2', '~說明文字~', 600, '', ''),
(5, 'ug', 'xgx', 'xfgj', 'gjc', '企管', 'xtrjs', 'wwwwwwwww', 1, '~說明文字~\r\n                        ', '55', 'kkk~說明文字~\r\n                        ', 777, '', ''),
(7, 'Applied Calculus for the Managerial, Life, and Social Sciences', '97811339601', 'S.T.Tan', '9', '資訊管理學系', 'xtrjs', '下載 (4).jpg', 1, '~說明文字~\r\n                        ', 'k', '~說明文字~\r\n                        ', 660, '', '買家已下單'),
(8, '33', '45555555555', 'author', '1.1', '財金', '555', 'IMG_0589.PNG', 2, '453\r\n3\r\n\r\n                        ', '', '~說明文字~\r\n                        ', 680, '410402226', '買家已下單'),
(9, '999', '355322', 'author3', '1.1', '財金', '666', 'IMG_20180720_093925.jpg', 3, 'hahahahaha\r\n                        ', 'x', 'test test\r\n123\r\n                        ', 720, 'test1', '賣家已上架'),
(10, 'ドコデモ日本語4', '97898644120', '輔仁大學日文系教材編輯委員會', '1', '全人課程', '進階日文', '下載 (1).jpg', 1, '鉛筆、螢光筆筆跡，\r\n習題有寫過\r\n                        ', '王', '進階日文下學期用書\r\n                        ', 150, '410402226', '訂單已完成'),
(11, ' 資料結構使用Java', '97898647642', '蔡明志', '4', '資訊管理學系', '資料結構', 'ds_Java.jpg', 5, '近全新，無筆跡\r\n                        ', '蔡幸蓁', '買書沒多久就買了平板，\r\n所以幾乎沒用\r\n                        ', 400, 'test1', '訂單已完成'),
(12, 'Statistic for Business and Economics', '1292227087', 'James T.McClave', '13', '資訊管理學系', '統計學', 'statistics.jpg', 2, '有鉛筆、原子筆筆跡，\r\n封底頁不見\r\n                        ', '', '學姊傳下來的\r\n                        ', 350, '410402226', '賣家已上架'),
(13, 'foundations of computer science', '97814737510', 'Behrouz Forouza', '1.2', '資訊管理學系', 'computer science', '下載 (5).jpg', 3, '稍微折損，角落泡過水\r\n                        ', '', '~說明文字~\r\n                        ', 780, '410402226', '賣家已上架'),
(14, 'test2', '8888888888', 'author', '2', '全人課程', '英文', 'GearUp.jpg', 2, '~說明文字~\r\n                        ', '', '~說明文字~\r\n                        ', 150, 'test1', '賣家已出貨'),
(15, 'test3', '64555555', 'author', '3', '中國文學系', '英文', 'EssentialReading.jpg', 4, '~說明文字~\r\n                        ', '', '~說明文字~\r\n                        ', 300, '410402226', '賣家已出貨'),
(16, 'test4', '88844656', 'author', '4.2', '圖書資訊學系', '資訊管理', '資訊管理.jpg', 4, '~說明文字~\r\n                        ', '', '~說明文字~\r\n                        ', 350, 'test1', '訂單已完成'),
(19, 'test17', '585641964', 'author', '1.7', '哲學系', '國文', '下載 (3).jpg', 2, '鉛筆', '', '無', 320, '410402226', '訂單已完成'),
(20, 'test2020', '7727824728', 'author20', '2', '圖書資訊學系', '國文', 'test2.jpg', 3, '原子筆', '', '--', 350, '410402226', '訂單已完成'),
(21, '資料結構使用Python', '97898650287', '蔡明志', '2', '資訊管理學系', '資料結構', 'ds_python.jpg', 4, '鉛筆、螢光筆筆跡', '', '學姊送的，但我的課本不是用這本，算很新的三手書', 250, '410402226', '賣家已上架'),
(22, '基礎邏輯', '97898652290', '周明泉', '1', '全人教育課程', '邏輯與批判性思維', '143272.jpg', 3, '鉛筆、螢光筆筆跡', '周明泉', '通識課，老師一學期大概就教半本', 200, '410402226', '賣家已上架'),
(23, 'ドコデモ日本語1', '97898644153', '輔仁大學日本語文學系教材編輯委', '2', '', '基礎日文', '143274.jpg', 1, '鉛筆、螢光筆、原子筆筆跡，習題有寫', '林文瑛', '二外基礎日文上學期課本', 100, '410402226', '賣家已上架'),
(24, '跨網頁程式設計', '97862632401', '陳惠貞', '5', '', 'WEB程式設計', 'web.jpg', 2, '螢光筆筆跡', '廖建翔', '', 250, '410402226', '賣家已上架'),
(25, 'Java程式設計導論', '97898634747', '蔡明志', '10', '資訊管理學系', '進階程式設計', 'java1.jpg', 5, '沒有字跡', '胡俊之', '封面折到一點點', 400, '410402407', '賣家已上架');

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `C_CommentID` int(11) NOT NULL,
  `C_ParentCommentID` int(11) DEFAULT NULL,
  `A_StuID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `B_BookID` int(10) NOT NULL,
  `C_CommentText` text COLLATE utf8mb4_general_ci,
  `C_CommentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `order_information`
--

CREATE TABLE `order_information` (
  `O_OrderID` int(10) NOT NULL,
  `O_OrderTime` datetime DEFAULT NULL,
  `O_LockerID` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `B_BookID` int(10) NOT NULL,
  `A_BuyerID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `B_SalerID` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `O_SalerRating` int(3) NOT NULL,
  `O_BuyerRating` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_information`
--

INSERT INTO `order_information` (`O_OrderID`, `O_OrderTime`, `O_LockerID`, `B_BookID`, `A_BuyerID`, `B_SalerID`, `O_SalerRating`, `O_BuyerRating`) VALUES
(1, '2023-05-23 14:39:40', '1', 11, '410402407', 'test1', 0, 0),
(11, '2023-05-25 18:04:29', '1', 15, 'test1', '410402226', 0, 0),
(12, '2023-05-25 18:07:04', '1', 16, '410402226', 'test1', 0, 4),
(18, '2023-06-04 23:09:55', '1', 10, '410402226', 'test1', 0, 0),
(19, '2023-06-04 23:18:25', '1', 14, '410402226', 'test1', 0, 0),
(24, '2023-06-05 03:21:54', '1', 19, 'test1', '410402226', 3, 0),
(28, '2023-06-05 04:01:33', '1', 20, 'test1', '410402226', 0, 5),
(29, '2023-06-05 04:10:46', '1', 8, 'test1', '410402226', 0, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account_manage`
--
ALTER TABLE `account_manage`
  ADD PRIMARY KEY (`A_StuID`);

--
-- 資料表索引 `book_information`
--
ALTER TABLE `book_information`
  ADD PRIMARY KEY (`B_BookID`),
  ADD KEY `B_BookID` (`B_BookID`),
  ADD KEY `B_SalerID` (`B_SalerID`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`C_CommentID`),
  ADD KEY `A_StuID` (`A_StuID`),
  ADD KEY `B_BookID` (`B_BookID`);

--
-- 資料表索引 `order_information`
--
ALTER TABLE `order_information`
  ADD PRIMARY KEY (`O_OrderID`),
  ADD KEY `B_BookID` (`B_BookID`),
  ADD KEY `A_BuyerID` (`A_BuyerID`),
  ADD KEY `B_SalerID` (`B_SalerID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `book_information`
--
ALTER TABLE `book_information`
  MODIFY `B_BookID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `C_CommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_information`
--
ALTER TABLE `order_information`
  MODIFY `O_OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`A_StuID`) REFERENCES `account_manage` (`A_StuID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`B_BookID`) REFERENCES `book_information` (`B_BookID`);

--
-- 資料表的限制式 `order_information`
--
ALTER TABLE `order_information`
  ADD CONSTRAINT `order_information_ibfk_1` FOREIGN KEY (`B_BookID`) REFERENCES `book_information` (`B_BookID`),
  ADD CONSTRAINT `order_information_ibfk_2` FOREIGN KEY (`A_BuyerID`) REFERENCES `account_manage` (`A_StuID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
