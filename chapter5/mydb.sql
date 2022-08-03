-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 
-- サーバのバージョン： 10.4.10-MariaDB
-- PHP のバージョン: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `mydb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `carts`
--

INSERT INTO `carts` (`id`, `item_id`, `count`) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 3, 1),
(4, 1, 3),
(5, 3, 2),
(6, 1, 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `items`
--

INSERT INTO `items` (`id`, `name`) VALUES
(1, '商品1'),
(2, '商品2'),
(3, '商品3'),
(100, '商品100');

-- --------------------------------------------------------

--
-- テーブルの構造 `makers`
--

CREATE TABLE `makers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `tel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `makers`
--

INSERT INTO `makers` (`id`, `name`, `address`, `tel`) VALUES
(1, '山田さん', '東京都港区', '000-111-2222'),
(2, '斎藤さん', '北海道小樽市', '111-222-3333'),
(3, '川上さん', '神奈川県横浜市', '222-333-4444');

-- --------------------------------------------------------

--
-- テーブルの構造 `my_items`
--

CREATE TABLE `my_items` (
  `id` int(11) NOT NULL,
  `maker_id` int(11) NOT NULL,
  `item_name` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `keyword` text NOT NULL,
  `sales` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `my_items`
--

INSERT INTO `my_items` (`id`, `maker_id`, `item_name`, `price`, `keyword`, `sales`, `created`, `modified`) VALUES
(1, 1, 'いちご', 180, '赤い,甘い,ケーキ', 20, '2018-01-01 00:00:00', '2022-07-26 05:39:35'),
(2, 2, 'りんご', 90, '丸い,赤い,パイ', 20, '2022-07-26 14:19:38', '2022-07-26 05:39:35'),
(3, 1, 'バナナ', 120, 'パック,甘い,黄色', 18, '0000-00-00 00:00:00', '2022-07-26 05:39:35'),
(4, 3, 'ブルーベリー', 200, '袋入り,青い,眼精疲労', 8, '0000-00-00 00:00:00', '2022-07-26 05:39:35');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `makers`
--
ALTER TABLE `makers`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `my_items`
--
ALTER TABLE `my_items`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルのAUTO_INCREMENT `makers`
--
ALTER TABLE `makers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `my_items`
--
ALTER TABLE `my_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
