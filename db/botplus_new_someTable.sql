-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2022 at 02:33 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_strategy`
--

CREATE TABLE `ref_strategy` (
  `stg_code` varchar(10) NOT NULL,
  `stg_nm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_strategy`
--

INSERT INTO `ref_strategy` (`stg_code`, `stg_nm`) VALUES
('ema', 'Trendy EMA'),
('bb', 'Bolling Band'),
('adx', 'ADX OutLine');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setup`
--

CREATE TABLE `tb_setup` (
  `user_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `wait_p` int(11) NOT NULL,
  `gap_p` int(11) NOT NULL,
  `close_p` int(11) NOT NULL,
  `sw_max` float NOT NULL,
  `sw_min` float NOT NULL,
  `fsp_p` int(11) NOT NULL,
  `stoploss_p` int(11) NOT NULL,
  `lot_p` float NOT NULL,
  `lev_p` float NOT NULL,
  `userclose_p` int(11) NOT NULL,
  `order_active` int(11) NOT NULL,
  `over_bolling` int(11) NOT NULL,
  `trend_sty` varchar(1) NOT NULL,
  `bb_sty` varchar(1) NOT NULL,
  `time_frame` int(11) NOT NULL,
  `stg_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stg_active` varchar(1) NOT NULL,
  `setup_name` varchar(100) NOT NULL,
  `adx_buy_up` float NOT NULL,
  `adx_buy_down` float NOT NULL,
  `adx_sell_up` float NOT NULL,
  `adx_sell_down` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_setup`
--

INSERT INTO `tb_setup` (`user_id`, `seq`, `symbol`, `wait_p`, `gap_p`, `close_p`, `sw_max`, `sw_min`, `fsp_p`, `stoploss_p`, `lot_p`, `lev_p`, `userclose_p`, `order_active`, `over_bolling`, `trend_sty`, `bb_sty`, `time_frame`, `stg_code`, `stg_active`, `setup_name`, `adx_buy_up`, `adx_buy_down`, `adx_sell_up`, `adx_sell_down`) VALUES
(1001, 1, 'ETHUSDT', 3, 4, 3, 32, 10, 20, 15, 0.4, 20, 1, 1, 0, 'Y', 'N', 5, 'ema', 'Y', '', 0, 0, 0, 0),
(1001, 2, 'ETHBUSD', 3, 4, 3, 35, 10, 15, 10, 0.01, 20, 1, 1, 5, 'N', 'Y', 10, 'adx', 'N', 'ไอ้เสือ', 0, 0, 0, 0),
(1001, 3, 'ETHBUSD', 0, 0, 0, 41, 7, 15, 15, 0.1, 20, 0, 0, 0, 'N', 'N', 5, 'adx', 'Y', 'ADX Spiecy', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_temp`
--

CREATE TABLE `tb_temp` (
  `seq` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buy_f` int(11) NOT NULL,
  `sell_f` int(11) NOT NULL,
  `wait_f` int(11) NOT NULL,
  `op_price` float NOT NULL,
  `big_f` float NOT NULL,
  `buy_bb` int(11) NOT NULL,
  `sell_bb` int(11) NOT NULL,
  `wait_bb` int(11) NOT NULL,
  `op_bb` float NOT NULL,
  `big_bb` float NOT NULL,
  `max_bb` float NOT NULL,
  `low_bb` float NOT NULL,
  `last_update` timestamp NOT NULL,
  `last_price` float NOT NULL,
  `close_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_temp`
--

INSERT INTO `tb_temp` (`seq`, `user_id`, `buy_f`, `sell_f`, `wait_f`, `op_price`, `big_f`, `buy_bb`, `sell_bb`, `wait_bb`, `op_bb`, `big_bb`, `max_bb`, `low_bb`, `last_update`, `last_price`, `close_order`) VALUES
(1, 0, 0, 1, 0, 1573.68, 1580, 0, 0, 0, 0, 0, 0, 0, '2022-07-25 00:27:07', 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1642.25, 1471.93, '2022-07-25 02:05:08', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `open_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `line_key` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `api_secret` varchar(100) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `user_role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_name`, `open_date`, `expire_date`, `line_key`, `api_key`, `api_secret`, `theme`, `user_role`) VALUES
(1001, 'winbot', '2022-07-01', '2024-07-30', 'WGZnLUvQwVuyFxb587s99aMqIGlMRGKQdDozpYSplfV', 'UAcHPuDF9Wc43v67upj4tK4aQIQCsAaNne1RjfYckHoiPbIPtOKO48voM6CxdHDq', 'EicHVzapiCkcAnchClS8NSpN2fAvrx2yXcG6wfhEFOQfdeNZAERpemtwwX2u3StV', 'dark', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vorderhistory`
-- (See below for the actual view)
--
CREATE TABLE `vorderhistory` (
`order_id` int(11)
,`user_id` int(11)
,`order_date` datetime
,`stg_type` varchar(20)
,`order_type` varchar(20)
,`order_status` varchar(20)
,`open_price` int(11)
,`close_price` int(11)
,`last_update` datetime
,`remark` varchar(100)
,`symbol` varchar(20)
,`seq` int(11)
,`stg_nm` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vsetup`
-- (See below for the actual view)
--
CREATE TABLE `vsetup` (
`user_id` int(11)
,`seq` int(11)
,`symbol` varchar(20)
,`wait_p` int(11)
,`gap_p` int(11)
,`close_p` int(11)
,`sw_max` float
,`sw_min` float
,`fsp_p` int(11)
,`stoploss_p` int(11)
,`lot_p` float
,`lev_p` float
,`userclose_p` int(11)
,`order_active` int(11)
,`over_bolling` int(11)
,`trend_sty` varchar(1)
,`bb_sty` varchar(1)
,`time_frame` int(11)
,`stg_code` varchar(20)
,`stg_active` varchar(1)
,`stg_nm` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vsetup_user_temp`
-- (See below for the actual view)
--
CREATE TABLE `vsetup_user_temp` (
`user_id` int(11)
,`seq` int(11)
,`symbol` varchar(20)
,`wait_p` int(11)
,`gap_p` int(11)
,`close_p` int(11)
,`sw_max` float
,`sw_min` float
,`fsp_p` int(11)
,`stoploss_p` int(11)
,`lot_p` float
,`lev_p` float
,`userclose_p` int(11)
,`order_active` int(11)
,`over_bolling` int(11)
,`trend_sty` varchar(1)
,`bb_sty` varchar(1)
,`time_frame` int(11)
,`stg_code` varchar(20)
,`stg_active` varchar(1)
,`setup_name` varchar(100)
,`user_name` varchar(100)
,`user_role` varchar(10)
,`buy_f` int(11)
,`sell_f` int(11)
,`wait_f` int(11)
,`last_update` timestamp
,`big_f` float
,`op_price` float
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vtemp`
-- (See below for the actual view)
--
CREATE TABLE `vtemp` (
`seq` int(11)
,`user_id` int(11)
,`buy_f` int(11)
,`sell_f` int(11)
,`wait_f` int(11)
,`op_price` float
,`big_f` float
,`buy_bb` int(11)
,`sell_bb` int(11)
,`wait_bb` int(11)
,`op_bb` float
,`big_bb` float
,`max_bb` float
,`low_bb` float
,`last_update` timestamp
,`last_price` float
,`close_order` int(11)
,`stg_nm` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `vorderhistory`
--
DROP TABLE IF EXISTS `vorderhistory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vorderhistory`  AS  select `d`.`order_id` AS `order_id`,`d`.`user_id` AS `user_id`,`d`.`order_date` AS `order_date`,`d`.`stg_type` AS `stg_type`,`d`.`order_type` AS `order_type`,`d`.`order_status` AS `order_status`,`d`.`open_price` AS `open_price`,`d`.`close_price` AS `close_price`,`d`.`last_update` AS `last_update`,`d`.`remark` AS `remark`,`d`.`symbol` AS `symbol`,`d`.`seq` AS `seq`,`r`.`stg_nm` AS `stg_nm` from ((`order_history` `d` left join `tb_setup` `s` on((`d`.`seq` = `s`.`seq`))) left join `ref_strategy` `r` on((convert(`s`.`stg_code` using utf8mb4) = `r`.`stg_code`))) where (0 <> 1) ;

-- --------------------------------------------------------

--
-- Structure for view `vsetup`
--
DROP TABLE IF EXISTS `vsetup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vsetup`  AS  select `s`.`user_id` AS `user_id`,`s`.`seq` AS `seq`,`s`.`symbol` AS `symbol`,`s`.`wait_p` AS `wait_p`,`s`.`gap_p` AS `gap_p`,`s`.`close_p` AS `close_p`,`s`.`sw_max` AS `sw_max`,`s`.`sw_min` AS `sw_min`,`s`.`fsp_p` AS `fsp_p`,`s`.`stoploss_p` AS `stoploss_p`,`s`.`lot_p` AS `lot_p`,`s`.`lev_p` AS `lev_p`,`s`.`userclose_p` AS `userclose_p`,`s`.`order_active` AS `order_active`,`s`.`over_bolling` AS `over_bolling`,`s`.`trend_sty` AS `trend_sty`,`s`.`bb_sty` AS `bb_sty`,`s`.`time_frame` AS `time_frame`,`s`.`stg_code` AS `stg_code`,`s`.`stg_active` AS `stg_active`,`r`.`stg_nm` AS `stg_nm` from (`tb_setup` `s` left join `ref_strategy` `r` on((convert(`s`.`stg_code` using utf8mb4) = `r`.`stg_code`))) where (0 <> 1) ;

-- --------------------------------------------------------

--
-- Structure for view `vsetup_user_temp`
--
DROP TABLE IF EXISTS `vsetup_user_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vsetup_user_temp`  AS  select `s`.`user_id` AS `user_id`,`s`.`seq` AS `seq`,`s`.`symbol` AS `symbol`,`s`.`wait_p` AS `wait_p`,`s`.`gap_p` AS `gap_p`,`s`.`close_p` AS `close_p`,`s`.`sw_max` AS `sw_max`,`s`.`sw_min` AS `sw_min`,`s`.`fsp_p` AS `fsp_p`,`s`.`stoploss_p` AS `stoploss_p`,`s`.`lot_p` AS `lot_p`,`s`.`lev_p` AS `lev_p`,`s`.`userclose_p` AS `userclose_p`,`s`.`order_active` AS `order_active`,`s`.`over_bolling` AS `over_bolling`,`s`.`trend_sty` AS `trend_sty`,`s`.`bb_sty` AS `bb_sty`,`s`.`time_frame` AS `time_frame`,`s`.`stg_code` AS `stg_code`,`s`.`stg_active` AS `stg_active`,`s`.`setup_name` AS `setup_name`,`u`.`user_name` AS `user_name`,`u`.`user_role` AS `user_role`,`t`.`buy_f` AS `buy_f`,`t`.`sell_f` AS `sell_f`,`t`.`wait_f` AS `wait_f`,`t`.`last_update` AS `last_update`,`t`.`big_f` AS `big_f`,`t`.`op_price` AS `op_price` from ((`tb_setup` `s` left join `tb_users` `u` on((`s`.`user_id` = `u`.`user_id`))) left join `tb_temp` `t` on((`s`.`seq` = `t`.`seq`))) where (0 <> 1) ;

-- --------------------------------------------------------

--
-- Structure for view `vtemp`
--
DROP TABLE IF EXISTS `vtemp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtemp`  AS  select `t`.`seq` AS `seq`,`t`.`user_id` AS `user_id`,`t`.`buy_f` AS `buy_f`,`t`.`sell_f` AS `sell_f`,`t`.`wait_f` AS `wait_f`,`t`.`op_price` AS `op_price`,`t`.`big_f` AS `big_f`,`t`.`buy_bb` AS `buy_bb`,`t`.`sell_bb` AS `sell_bb`,`t`.`wait_bb` AS `wait_bb`,`t`.`op_bb` AS `op_bb`,`t`.`big_bb` AS `big_bb`,`t`.`max_bb` AS `max_bb`,`t`.`low_bb` AS `low_bb`,`t`.`last_update` AS `last_update`,`t`.`last_price` AS `last_price`,`t`.`close_order` AS `close_order`,`g`.`stg_nm` AS `stg_nm` from ((`tb_temp` `t` join `tb_setup` `s` on((`t`.`seq` = `s`.`seq`))) left join `ref_strategy` `g` on((convert(`s`.`stg_code` using utf8mb4) = `g`.`stg_code`))) where (0 <> 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_setup`
--
ALTER TABLE `tb_setup`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `tb_temp`
--
ALTER TABLE `tb_temp`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_setup`
--
ALTER TABLE `tb_setup`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_temp`
--
ALTER TABLE `tb_temp`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
