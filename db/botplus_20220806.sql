-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 06, 2022 at 01:17 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

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
-- Table structure for table `log_history`
--

CREATE TABLE `log_history` (
  `log_seq` int(11) NOT NULL,
  `log_date` timestamp NOT NULL,
  `user_id` int(11) NOT NULL,
  `stg_type` varchar(20) NOT NULL,
  `log_detail` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seq` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_history`
--

INSERT INTO `log_history` (`log_seq`, `log_date`, `user_id`, `stg_type`, `log_detail`, `seq`, `symbol`) VALUES
(1, '2022-07-21 11:47:37', 1001, 'EMA CROSS', 'WAIT---------', 1, 'ETHUSDT'),
(2, '2022-07-21 11:47:41', 1001, 'EMA CROSS', 'WAIT---------', 1, 'ETHUSDT'),
(3, '2022-07-21 11:47:44', 1001, 'EMA CROSS', 'WAIT---------', 1, 'ETHUSDT'),
(4, '2022-07-21 11:47:48', 1001, 'EMA CROSS', 'WAIT---------', 1, 'ETHUSDT'),
(5, '2022-07-21 11:48:04', 1001, 'EMA CROSS', 'WAIT---------', 1, 'ETHUSDT'),
(6, '2022-07-21 12:23:25', 1001, 'EMA CROSS', 'Close  SELL By Stop Loss:1507.73', 1, 'ETHUSDT'),
(7, '2022-07-21 16:05:14', 1001, 'EMA CROSS', 'BUY :1525.48', 1, 'ETHUSDT'),
(8, '2022-07-21 16:07:24', 1001, 'bb', 'OPEN SELL : price:1523.44 big_f:1538.44 bupper:1521.32724806 bupper_max:1527.86 op_price:1523.44', 2, 'ETHBUSD'),
(9, '2022-07-21 16:13:21', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1537.73 op_price:1525.48 big_f:1515.48', 1, 'ETHUSDT'),
(10, '2022-07-21 16:14:01', 1001, 'bb', 'Close SELL price:1538.85 op_price=1523.44 big_f=1538.44', 2, 'ETHBUSD'),
(11, '2022-07-21 16:14:30', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1547.27 op_price:1525.48 big_f:1525.48', 1, 'ETHUSDT'),
(12, '2022-07-21 16:17:31', 1001, 'EMA CROSS', 'Create BUY Stoploss :1535.48', 1, 'ETHUSDT'),
(13, '2022-07-21 16:30:27', 1001, 'EMA CROSS', 'Create BUY Stoploss :1545.48', 1, 'ETHUSDT'),
(14, '2022-07-21 17:25:34', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1544.51', 1, 'ETHUSDT'),
(15, '2022-07-21 17:31:35', 1001, 'bb', 'OPEN SELL : price:1543.26 big_f:1558.26 bupper:1568.36650326 bupper_max:1546.18 op_price:1543.26', 2, 'ETHBUSD'),
(16, '2022-07-21 17:33:21', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1548.26 price:1537.97 op_price:1543.26', 2, 'ETHBUSD'),
(17, '2022-07-21 19:02:50', 1001, 'bb', 'Close SELL price:1549.41 op_price=1543.26 big_f=1548.26', 2, 'ETHBUSD'),
(18, '2022-07-22 03:08:47', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1546.0 price:1567.77 op_price:1546.0', 2, 'ETHBUSD'),
(19, '2022-07-22 03:08:51', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1556.0 price:1567.88 op_price:1546.0', 2, 'ETHBUSD'),
(20, '2022-07-22 05:30:07', 1001, 'EMA CROSS', 'BUY :1579.76', 1, 'ETHUSDT'),
(21, '2022-07-22 05:59:02', 1001, 'EMA CROSS', 'Create BUY Stoploss :1569.76', 1, 'ETHUSDT'),
(22, '2022-07-22 06:01:36', 1001, 'bb', 'OPEN SELL : price:1593.48 big_f:1608.48 bupper:1590.73637454 bupper_max:1594.43 op_price:1593.48', 2, 'ETHBUSD'),
(23, '2022-07-22 06:09:39', 1001, 'bb', 'OPEN SELL : price:1593.04 big_f:1608.04 bupper:1591.03034161 bupper_max:1595.86 op_price:1593.04', 2, 'ETHBUSD'),
(24, '2022-07-22 06:19:32', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1598.04 price:1587.62 op_price:1593.04', 2, 'ETHBUSD'),
(25, '2022-07-22 06:33:39', 1001, 'bb', 'Close SELL price:1598.25 op_price=1593.04 big_f=1598.04', 2, 'ETHBUSD'),
(26, '2022-07-22 06:36:08', 1001, 'bb', 'OPEN SELL : price:1596.55 big_f:1611.55 bupper:1595.14357228 bupper_max:1598.33 op_price:1596.55', 2, 'ETHBUSD'),
(27, '2022-07-22 06:37:23', 1001, 'EMA CROSS', 'Create BUY Stoploss :1579.76', 1, 'ETHUSDT'),
(28, '2022-07-22 06:55:22', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1601.55 price:1591.28 op_price:1596.55', 2, 'ETHBUSD'),
(29, '2022-07-22 07:26:07', 1001, 'bb', 'Close SELL price:1601.68 op_price=1596.55 big_f=1601.55', 2, 'ETHBUSD'),
(30, '2022-07-22 07:26:30', 1001, 'bb', 'OPEN SELL : price:1606.43 big_f:1621.43 bupper:1604.70844286 bupper_max:1609.06 op_price:1606.43', 2, 'ETHBUSD'),
(31, '2022-07-22 07:26:46', 1001, 'EMA CROSS', 'Create BUY Stoploss :1589.76', 1, 'ETHUSDT'),
(32, '2022-07-22 07:36:25', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1611.43 price:1600.73 op_price:1606.43', 2, 'ETHBUSD'),
(33, '2022-07-22 07:38:04', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1601.43 price:1590.86 op_price:1606.43', 2, 'ETHBUSD'),
(34, '2022-07-22 07:39:59', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1589.04', 1, 'ETHUSDT'),
(35, '2022-07-22 09:13:13', 1001, 'bb', 'Close SELL price:1642.75 op_price=1619.0 big_f=1610.0', 2, 'ETHBUSD'),
(36, '2022-07-22 09:14:34', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1670.0 price:1641.25 op_price:1644.0', 2, 'ETHBUSD'),
(37, '2022-07-22 09:14:39', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1660.0 price:1642.0 op_price:1644.0', 2, 'ETHBUSD'),
(38, '2022-07-22 09:20:10', 1001, 'bb', 'Close SELL price:1641.19 op_price=1638.0 big_f=1640.0', 2, 'ETHBUSD'),
(39, '2022-07-22 09:26:33', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1670.0 price:1639.31 op_price:1639.0', 2, 'ETHBUSD'),
(40, '2022-07-22 09:26:38', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1660.0 price:1639.42 op_price:1639.0', 2, 'ETHBUSD'),
(41, '2022-07-22 09:26:42', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1650.0 price:1639.61 op_price:1639.0', 2, 'ETHBUSD'),
(42, '2022-07-22 09:36:49', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1670.0 price:1633.57 op_price:1638.0', 2, 'ETHBUSD'),
(43, '2022-07-22 09:36:54', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1660.0 price:1633.0 op_price:1638.0', 2, 'ETHBUSD'),
(44, '2022-07-22 09:36:58', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1650.0 price:1632.49 op_price:1638.0', 2, 'ETHBUSD'),
(45, '2022-07-22 09:37:02', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1638.0 big_f:1650.0 price:1633.27', 1, 'ETHUSDT'),
(46, '2022-07-22 13:32:38', 1001, 'bb', 'OPen BUY (BB) : price=1614.19 big_f:1599.19 blower:1615.62252641 blower_min:1471.93 op_price:1614.19', 2, 'ETHBUSD'),
(47, '2022-07-22 13:41:54', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1609.19 price:1619.32 op_price:1614.19', 2, 'ETHBUSD'),
(48, '2022-07-22 13:45:38', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1609.07 op_price=1614.19 big_f=1609.19', 2, 'ETHBUSD'),
(49, '2022-07-22 13:45:51', 1001, 'bb', 'OPen BUY (BB) : price=1611.04 big_f:1596.04 blower:1613.80673468 blower_min:1471.93 op_price:1611.04', 2, 'ETHBUSD'),
(50, '2022-07-22 13:49:41', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1606.04 price:1616.5 op_price:1611.04', 2, 'ETHBUSD'),
(51, '2022-07-22 13:50:55', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1616.04 price:1626.5 op_price:1611.04', 2, 'ETHBUSD'),
(52, '2022-07-22 13:53:47', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1615.34 op_price=1611.04 big_f=1616.04', 2, 'ETHBUSD'),
(53, '2022-07-22 13:55:28', 1001, 'bb', 'OPEN SELL : price:1608.91 big_f:1623.91 bupper:1646.17949148 bupper_max:1609.06 op_price:1608.91', 2, 'ETHBUSD'),
(54, '2022-07-22 13:56:18', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1613.91 price:1603.07 op_price:1608.91', 2, 'ETHBUSD'),
(55, '2022-07-22 13:57:32', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1608.91 big_f:1613.91 price:1599.16', 1, 'ETHUSDT'),
(56, '2022-07-22 13:57:37', 1001, 'bb', 'OPEN SELL : price:1599.79 big_f:1614.79 bupper:1649.55558732 bupper_max:1609.06 op_price:1599.79', 2, 'ETHBUSD'),
(57, '2022-07-22 14:01:27', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1604.79 price:1594.05 op_price:1599.79', 2, 'ETHBUSD'),
(58, '2022-07-22 14:48:28', 1001, 'bb', 'Close SELL price:1610.41 op_price=1599.79 big_f=1610.0', 2, 'ETHBUSD'),
(59, '2022-07-22 17:40:48', 1001, 'EMA CROSS', 'SELL :1561.07 fsp_p=20 big_f=1581.07', 1, 'ETHUSDT'),
(60, '2022-07-22 19:43:13', 1001, 'EMA CROSS', 'Create SELL Stoploss :1566.07', 1, 'ETHUSDT'),
(61, '2022-07-22 19:57:48', 1001, 'EMA CROSS', 'Create SELL Stoploss :1551.07', 1, 'ETHUSDT'),
(62, '2022-07-23 00:34:28', 1001, 'EMA CROSS', 'Close  SELL By Stop Loss:1551.08', 1, 'ETHUSDT'),
(63, '2022-07-23 02:12:00', 1001, 'EMA CROSS', 'BUY :1563.84', 1, 'ETHUSDT'),
(64, '2022-07-23 04:41:18', 1001, 'EMA CROSS', 'Create BUY Stoploss :1558.84', 1, 'ETHUSDT'),
(65, '2022-07-23 07:09:06', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1569.26', 1, 'ETHUSDT'),
(66, '2022-07-23 08:53:13', 1001, 'EMA CROSS', 'SELL :1558.44 fsp_p=20 big_f=1578.44', 1, 'ETHUSDT'),
(67, '2022-07-23 08:58:03', 1001, 'bb', 'OPEN SELL : price:1553.41 big_f:1568.41 bupper:1597.52063477 bupper_max:1609.06 op_price:1553.41', 2, 'ETHBUSD'),
(68, '2022-07-23 08:59:24', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1558.41 price:1547.41 op_price:1553.41', 2, 'ETHBUSD'),
(69, '2022-07-23 09:25:59', 1001, 'bb', 'Close SELL price:1558.42 op_price=1553.41 big_f=1558.41', 2, 'ETHBUSD'),
(70, '2022-07-23 11:13:10', 1001, 'EMA CROSS', 'Create SELL Stoploss :1563.44', 1, 'ETHUSDT'),
(71, '2022-07-23 11:15:47', 1001, 'bb', 'OPEN SELL : price:1528.78 big_f:1543.78 bupper:1599.66691566 bupper_max:1609.06 op_price:1528.78', 2, 'ETHBUSD'),
(72, '2022-07-23 12:13:59', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1533.78 price:1520.6 op_price:1528.78', 2, 'ETHBUSD'),
(73, '2022-07-23 12:16:17', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1528.78 big_f:1533.78 price:1522.69', 1, 'ETHUSDT'),
(74, '2022-07-23 13:06:40', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1558.44 big_f:1535.0 price:1520.19', 1, 'ETHUSDT'),
(75, '2022-07-23 18:16:36', 1001, 'bb', 'OPen BUY (BB) : price=1510.33 big_f:1495.33 blower:1499.21020354 blower_min:1471.93 op_price:1510.33', 2, 'ETHBUSD'),
(76, '2022-07-23 19:11:23', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1495.19 op_price=1510.33 big_f=1495.33', 2, 'ETHBUSD'),
(77, '2022-07-23 22:26:50', 1001, 'bb', 'OPEN SELL : price:1540.04 big_f:1555.04 bupper:1535.12483861 bupper_max:1609.06 op_price:1540.04', 2, 'ETHBUSD'),
(78, '2022-07-23 23:03:47', 1001, 'EMA CROSS', 'BUY :1551.11', 1, 'ETHUSDT'),
(79, '2022-07-24 00:01:37', 1001, 'bb', 'Close SELL price:1555.59 op_price=1540.04 big_f=1555.04', 2, 'ETHBUSD'),
(80, '2022-07-24 00:03:51', 1001, 'EMA CROSS', 'Create BUY Stoploss :1546.11', 1, 'ETHUSDT'),
(81, '2022-07-24 06:25:24', 1001, 'EMA CROSS', 'Create BUY Stoploss :1585.0', 1, 'ETHUSDT'),
(82, '2022-07-24 08:36:08', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1594.81', 1, 'ETHUSDT'),
(83, '2022-07-24 10:35:49', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1592.35', 2, 'ETHBUSD'),
(84, '2022-07-24 10:35:53', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1592.46', 2, 'ETHBUSD'),
(85, '2022-07-24 10:35:57', 1001, 'bb', 'OPen BUY (BB) : price=1592.89 big_f:1577.89 blower:1595.26537454 blower_min:1471.93 op_price:1592.89', 2, 'ETHBUSD'),
(86, '2022-07-24 11:12:16', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1587.89 price:1599.76 op_price:1592.89', 2, 'ETHBUSD'),
(87, '2022-07-24 11:12:37', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1597.89 price:1608.52 op_price:1592.89', 2, 'ETHBUSD'),
(88, '2022-07-24 11:13:19', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1607.89 price:1618.28 op_price:1592.89', 2, 'ETHBUSD'),
(89, '2022-07-24 11:25:03', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1592.89 big_f:1607.89 price:1618.52', 2, 'ETHBUSD'),
(90, '2022-07-24 12:43:54', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1595.56', 2, 'ETHBUSD'),
(91, '2022-07-24 12:43:58', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1595.6', 2, 'ETHBUSD'),
(92, '2022-07-24 12:44:03', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1595.58', 2, 'ETHBUSD'),
(93, '2022-07-24 12:44:06', 1001, 'bb', 'OPen BUY (BB) : price=1597.49 big_f:1582.49 blower:1598.73481124 blower_min:1471.93 op_price:1597.49', 2, 'ETHBUSD'),
(94, '2022-07-24 12:56:36', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1581.79 op_price=1597.49 big_f=1582.49', 2, 'ETHBUSD'),
(95, '2022-07-24 14:21:05', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1598.08 bupper:1592.37 blower:1573.57', 2, 'ETHBUSD'),
(96, '2022-07-24 14:21:09', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1599.44 bupper:1592.37 blower:1573.57', 2, 'ETHBUSD'),
(97, '2022-07-24 14:21:13', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1600.93 bupper:1592.37 blower:1573.57', 2, 'ETHBUSD'),
(98, '2022-07-24 14:21:18', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1604.64 bupper:1593.66 blower:1572.81', 2, 'ETHBUSD'),
(99, '2022-07-24 14:21:22', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1604.8 bupper:1593.66 blower:1572.81', 2, 'ETHBUSD'),
(100, '2022-07-24 14:21:26', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1602.29 bupper:1593.66 blower:1572.81', 2, 'ETHBUSD'),
(101, '2022-07-24 14:21:31', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1604.48 bupper:1593.66 blower:1572.81', 2, 'ETHBUSD'),
(102, '2022-07-24 14:21:48', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1601.67 bupper:1595.73 blower:1571.38', 2, 'ETHBUSD'),
(103, '2022-07-24 14:21:52', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1600.94 bupper:1595.73 blower:1571.38', 2, 'ETHBUSD'),
(104, '2022-07-24 14:21:56', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1600.94 bupper:1595.73 blower:1571.38', 2, 'ETHBUSD'),
(105, '2022-07-24 14:22:01', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1601.49 bupper:1595.73 blower:1571.38', 2, 'ETHBUSD'),
(106, '2022-07-24 14:22:05', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1602.62 bupper:1595.73 blower:1571.38', 2, 'ETHBUSD'),
(107, '2022-07-24 14:22:10', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1603.65 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(108, '2022-07-24 14:22:14', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1604.65 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(109, '2022-07-24 14:22:18', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1606.45 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(110, '2022-07-24 14:22:22', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1606.74 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(111, '2022-07-24 14:22:27', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1606.79 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(112, '2022-07-24 14:22:31', 1001, 'bb', 'WAIT-Up  bupper_max:1609.06 price:1607.96 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(113, '2022-07-24 14:22:35', 1001, 'bb', 'WAIT-Up  bupper_max:1613.17 price:1613.17 bupper:1595.58 blower:1571.49', 2, 'ETHBUSD'),
(114, '2022-07-24 14:22:39', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1613.98 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(115, '2022-07-24 14:22:43', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1611.56 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(116, '2022-07-24 14:22:47', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1613.24 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(117, '2022-07-24 14:22:51', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1612.53 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(118, '2022-07-24 14:22:55', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1610.77 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(119, '2022-07-24 14:22:59', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1612.22 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(120, '2022-07-24 14:23:04', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1612.27 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(121, '2022-07-24 14:23:07', 1001, 'EMA CROSS', 'BUY :1611.35', 1, 'ETHUSDT'),
(122, '2022-07-24 14:23:08', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1610.74 bupper:1597.99 blower:1569.73', 2, 'ETHBUSD'),
(123, '2022-07-24 14:23:13', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1607.85 bupper:1599.88 blower:1568.31', 2, 'ETHBUSD'),
(124, '2022-07-24 14:23:17', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1607.71 bupper:1599.88 blower:1568.31', 2, 'ETHBUSD'),
(125, '2022-07-24 14:23:21', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1609.93 bupper:1599.88 blower:1568.31', 2, 'ETHBUSD'),
(126, '2022-07-24 14:23:26', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1611.62 bupper:1599.88 blower:1568.31', 2, 'ETHBUSD'),
(127, '2022-07-24 14:23:30', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1610.67 bupper:1599.88 blower:1568.31', 2, 'ETHBUSD'),
(128, '2022-07-24 14:23:34', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1610.0 bupper:1599.88 blower:1568.31', 2, 'ETHBUSD'),
(129, '2022-07-24 14:23:38', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1612.69 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(130, '2022-07-24 14:23:42', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1612.57 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(131, '2022-07-24 14:23:46', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1612.23 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(132, '2022-07-24 14:23:50', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1611.22 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(133, '2022-07-24 14:23:54', 1001, 'bb', 'WAIT-Up  bupper_max:1613.98 price:1611.39 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(134, '2022-07-24 14:23:58', 1001, 'bb', 'WAIT-Up  bupper_max:1614.94 price:1614.94 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(135, '2022-07-24 14:24:03', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1616.21 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(136, '2022-07-24 14:24:07', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1616.09 bupper:1599.1 blower:1568.9', 2, 'ETHBUSD'),
(137, '2022-07-24 14:24:12', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1613.36 bupper:1600.75 blower:1567.65', 2, 'ETHBUSD'),
(138, '2022-07-24 14:24:16', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1613.06 bupper:1600.75 blower:1567.65', 2, 'ETHBUSD'),
(139, '2022-07-24 14:24:20', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1612.98 bupper:1600.75 blower:1567.65', 2, 'ETHBUSD'),
(140, '2022-07-24 14:24:24', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.93 bupper:1600.75 blower:1567.65', 2, 'ETHBUSD'),
(141, '2022-07-24 14:24:28', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1612.54 bupper:1600.75 blower:1567.65', 2, 'ETHBUSD'),
(142, '2022-07-24 14:24:32', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.41 bupper:1600.75 blower:1567.65', 2, 'ETHBUSD'),
(143, '2022-07-24 14:24:36', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.5 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(144, '2022-07-24 14:24:40', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1612.91 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(145, '2022-07-24 14:24:44', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1613.32 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(146, '2022-07-24 14:24:48', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.57 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(147, '2022-07-24 14:24:53', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.46 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(148, '2022-07-24 14:24:57', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.98 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(149, '2022-07-24 14:25:01', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.99 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(150, '2022-07-24 14:25:05', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.0 bupper:1599.83 blower:1568.35', 2, 'ETHBUSD'),
(151, '2022-07-24 14:25:09', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1609.59 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(152, '2022-07-24 14:25:13', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.49 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(153, '2022-07-24 14:25:18', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.81 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(154, '2022-07-24 14:25:22', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1612.4 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(155, '2022-07-24 14:25:27', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.36 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(156, '2022-07-24 14:25:31', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1611.06 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(157, '2022-07-24 14:25:35', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.03 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(158, '2022-07-24 14:25:39', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.18 bupper:1603.05 blower:1566.31', 2, 'ETHBUSD'),
(159, '2022-07-24 14:25:44', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.42 bupper:1603.21 blower:1566.2', 2, 'ETHBUSD'),
(160, '2022-07-24 14:25:48', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1610.27 bupper:1603.21 blower:1566.2', 2, 'ETHBUSD'),
(161, '2022-07-24 14:25:52', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1609.88 bupper:1603.21 blower:1566.2', 2, 'ETHBUSD'),
(162, '2022-07-24 14:25:56', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1609.74 bupper:1603.21 blower:1566.2', 2, 'ETHBUSD'),
(163, '2022-07-24 14:26:00', 1001, 'bb', 'OPEN SELL : price:1607.57 big_f:1622.57 bupper:1603.21196863 bupper_max:1616.21 op_price:1607.57', 2, 'ETHBUSD'),
(164, '2022-07-24 16:04:16', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1612.57 price:1601.75 op_price:1607.57', 2, 'ETHBUSD'),
(165, '2022-07-24 16:11:56', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1607.57 big_f:1612.57 price:1596.18', 2, 'ETHBUSD'),
(166, '2022-07-24 16:17:36', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1590.72', 1, 'ETHUSDT'),
(167, '2022-07-24 16:19:46', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1590.14 blower:1595.48', 2, 'ETHBUSD'),
(168, '2022-07-24 16:19:50', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1590.14 blower:1595.48', 2, 'ETHBUSD'),
(169, '2022-07-24 16:19:54', 1001, 'bb', 'OPen BUY (BB) : price=1590.96 big_f:1575.96 blower:1595.47929462 blower_min:1471.93 op_price:1590.96', 2, 'ETHBUSD'),
(170, '2022-07-24 16:42:58', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1585.96 price:1596.75 op_price:1590.96', 2, 'ETHBUSD'),
(171, '2022-07-24 17:13:44', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1595.96 price:1605.97 op_price:1590.96', 2, 'ETHBUSD'),
(172, '2022-07-24 17:16:36', 1001, 'EMA CROSS', 'BUY :1609.41', 1, 'ETHUSDT'),
(173, '2022-07-24 17:33:35', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1595.21 op_price=1590.96 big_f=1595.96', 2, 'ETHBUSD'),
(174, '2022-07-24 19:33:36', 1001, 'bb', 'WAIT-Up  bupper_max:1616.21 price:1614.09 bupper:1609.0 blower:1592.13', 2, 'ETHBUSD'),
(175, '2022-07-24 19:33:40', 1001, 'bb', 'OPEN SELL : price:1614.49 big_f:1629.49 bupper:1609.93650401 bupper_max:1616.21 op_price:1614.49', 2, 'ETHBUSD'),
(176, '2022-07-24 19:44:00', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1619.49 price:1609.28 op_price:1614.49', 2, 'ETHBUSD'),
(177, '2022-07-24 20:17:36', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1609.49 price:1599.3 op_price:1614.49', 2, 'ETHBUSD'),
(178, '2022-07-24 20:40:56', 1001, 'bb', 'Close SELL price:1610.93 op_price=1614.49 big_f=1609.49', 2, 'ETHBUSD'),
(179, '2022-07-24 20:43:27', 1001, 'bb', 'WAIT-Up  bupper_max:1619.66 price:1619.66 bupper:1614.42 blower:1595.16', 2, 'ETHBUSD'),
(180, '2022-07-24 20:43:31', 1001, 'bb', 'OPEN SELL : price:1618.6 big_f:1633.6 bupper:1614.4219919 bupper_max:1619.66 op_price:1618.6', 2, 'ETHBUSD'),
(181, '2022-07-24 20:47:23', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1623.6 price:1613.5 op_price:1618.6', 2, 'ETHBUSD'),
(182, '2022-07-24 21:12:14', 1001, 'bb', 'Close SELL price:1623.67 op_price=1618.6 big_f=1623.6', 2, 'ETHBUSD'),
(183, '2022-07-24 21:12:19', 1001, 'bb', 'WAIT-Up  bupper_max:1623.81 price:1623.81 bupper:1618.74 blower:1596.78', 2, 'ETHBUSD'),
(184, '2022-07-24 21:12:22', 1001, 'bb', 'OPEN SELL : price:1623.21 big_f:1638.21 bupper:1618.74179405 bupper_max:1623.81 op_price:1623.21', 2, 'ETHBUSD'),
(185, '2022-07-24 21:14:22', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1628.21 price:1617.85 op_price:1623.21', 2, 'ETHBUSD'),
(186, '2022-07-24 21:33:53', 1001, 'bb', 'Close SELL price:1632.13 op_price=1623.21 big_f=1628.21', 2, 'ETHBUSD'),
(187, '2022-07-24 21:33:57', 1001, 'bb', 'WAIT-Up  bupper_max:1632.07 price:1632.07 bupper:1626.4 blower:1595.82', 2, 'ETHBUSD'),
(188, '2022-07-24 21:34:01', 1001, 'bb', 'OPEN SELL : price:1630.99 big_f:1645.99 bupper:1626.40279019 bupper_max:1632.07 op_price:1630.99', 2, 'ETHBUSD'),
(189, '2022-07-24 21:35:16', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1635.99 price:1624.72 op_price:1630.99', 2, 'ETHBUSD'),
(190, '2022-07-24 22:39:12', 1001, 'EMA CROSS', 'Create BUY Stoploss :1604.41', 1, 'ETHUSDT'),
(191, '2022-07-24 22:39:37', 1001, 'bb', 'Close SELL price:1640.48 op_price=1630.99 big_f=1635.99', 2, 'ETHBUSD'),
(192, '2022-07-24 22:39:41', 1001, 'bb', 'WAIT-Up  bupper_max:1639.55 price:1639.55 bupper:1631.29 blower:1613.62', 2, 'ETHBUSD'),
(193, '2022-07-24 22:39:45', 1001, 'bb', 'WAIT-Up  bupper_max:1639.55 price:1638.65 bupper:1631.29 blower:1613.62', 2, 'ETHBUSD'),
(194, '2022-07-24 22:39:49', 1001, 'bb', 'WAIT-Up  bupper_max:1639.55 price:1638.43 bupper:1631.29 blower:1613.62', 2, 'ETHBUSD'),
(195, '2022-07-24 22:39:53', 1001, 'bb', 'WAIT-Up  bupper_max:1640.14 price:1640.14 bupper:1631.29 blower:1613.62', 2, 'ETHBUSD'),
(196, '2022-07-24 22:39:57', 1001, 'bb', 'WAIT-Up  bupper_max:1641.63 price:1641.63 bupper:1631.29 blower:1613.62', 2, 'ETHBUSD'),
(197, '2022-07-24 22:40:01', 1001, 'bb', 'WAIT-Up  bupper_max:1641.63 price:1639.63 bupper:1631.29 blower:1613.62', 2, 'ETHBUSD'),
(198, '2022-07-24 22:40:05', 1001, 'bb', 'WAIT-Up  bupper_max:1641.93 price:1641.93 bupper:1636.78 blower:1611.38', 2, 'ETHBUSD'),
(199, '2022-07-24 22:40:09', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1642.25 bupper:1636.78 blower:1611.38', 2, 'ETHBUSD'),
(200, '2022-07-24 22:40:13', 1001, 'bb', 'OPEN SELL : price:1639.71 big_f:1654.71 bupper:1636.7763854 bupper_max:1642.25 op_price:1639.71', 2, 'ETHBUSD'),
(201, '2022-07-24 22:41:56', 1001, 'EMA CROSS', 'Create BUY Stoploss :1619.41', 1, 'ETHUSDT'),
(202, '2022-07-24 22:42:12', 1001, 'bb', 'Close SELL price:1655.01 op_price=1639.71 big_f=1654.71', 2, 'ETHBUSD'),
(203, '2022-07-24 22:50:57', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1631.64', 1, 'ETHUSDT'),
(204, '2022-07-24 22:54:15', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1597.74 blower:1603.55', 2, 'ETHBUSD'),
(205, '2022-07-24 22:54:19', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1598.31 blower:1603.55', 2, 'ETHBUSD'),
(206, '2022-07-24 22:54:22', 1001, 'bb', 'OPen BUY (BB) : price=1600.9 big_f:1585.9 blower:1603.55311479 blower_min:1471.93 op_price:1600.9', 2, 'ETHBUSD'),
(207, '2022-07-24 22:54:34', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1595.9 price:1607.89 op_price:1600.9', 2, 'ETHBUSD'),
(208, '2022-07-24 23:04:30', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1594.97 op_price=1600.9 big_f=1595.9', 2, 'ETHBUSD'),
(209, '2022-07-24 23:04:57', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1591.97 blower:1597.08', 2, 'ETHBUSD'),
(210, '2022-07-24 23:05:01', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1589.36 blower:1597.08', 2, 'ETHBUSD'),
(211, '2022-07-24 23:05:05', 1001, 'bb', 'OPen BUY (BB) : price=1591.15 big_f:1576.15 blower:1591.626894 blower_min:1471.93 op_price:1591.15', 2, 'ETHBUSD'),
(212, '2022-07-24 23:05:58', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1586.15 price:1598.27 op_price:1591.15', 2, 'ETHBUSD'),
(213, '2022-07-24 23:14:25', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1596.15 price:1606.22 op_price:1591.15', 2, 'ETHBUSD'),
(214, '2022-07-24 23:18:41', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1596.06 op_price=1591.15 big_f=1596.15', 2, 'ETHBUSD'),
(215, '2022-07-25 00:25:31', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1585.82 blower:1591.76', 2, 'ETHBUSD'),
(216, '2022-07-25 00:25:35', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1585.15 blower:1591.76', 2, 'ETHBUSD'),
(217, '2022-07-25 00:25:39', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1585.03 blower:1591.76', 2, 'ETHBUSD'),
(218, '2022-07-25 00:25:43', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1584.58 blower:1591.76', 2, 'ETHBUSD'),
(219, '2022-07-25 00:25:48', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1584.8 blower:1590.81', 2, 'ETHBUSD'),
(220, '2022-07-25 00:25:52', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1585.0 blower:1590.81', 2, 'ETHBUSD'),
(221, '2022-07-25 00:25:55', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1585.04 blower:1590.81', 2, 'ETHBUSD'),
(222, '2022-07-25 00:26:00', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1584.29 blower:1590.81', 2, 'ETHBUSD'),
(223, '2022-07-25 00:26:04', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1583.92 blower:1590.81', 2, 'ETHBUSD'),
(224, '2022-07-25 00:26:08', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1582.6 blower:1590.81', 2, 'ETHBUSD'),
(225, '2022-07-25 00:26:12', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1579.41 blower:1590.81', 2, 'ETHBUSD'),
(226, '2022-07-25 00:26:16', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1578.89 blower:1589.46', 2, 'ETHBUSD'),
(227, '2022-07-25 00:26:20', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1581.23 blower:1589.46', 2, 'ETHBUSD'),
(228, '2022-07-25 00:26:24', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1581.94 blower:1589.46', 2, 'ETHBUSD'),
(229, '2022-07-25 00:26:28', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1581.65 blower:1589.46', 2, 'ETHBUSD'),
(230, '2022-07-25 00:26:32', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1581.8 blower:1589.46', 2, 'ETHBUSD'),
(231, '2022-07-25 00:26:36', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1578.51 blower:1589.46', 2, 'ETHBUSD'),
(232, '2022-07-25 00:27:07', 1001, 'EMA CROSS', 'SELL :1573.68 fsp_p=20 big_f=1593.68', 1, 'ETHUSDT'),
(233, '2022-07-25 04:22:38', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1573.68 big_f:1543.0 price:1515.22', 1, 'ETHUSDT'),
(234, '2022-07-25 06:38:25', 1001, 'bb', 'OPen BUY (BB) : price=1520.27 big_f:1505.27 blower:1518.40361448 blower_min:1471.93 op_price:1520.27', 2, 'ETHBUSD'),
(235, '2022-07-25 07:10:23', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1515.27 price:1525.5 op_price:1520.27', 2, 'ETHBUSD'),
(236, '2022-07-25 08:21:34', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1515.02 op_price=1520.27 big_f=1515.27', 2, 'ETHBUSD'),
(237, '2022-07-25 10:17:25', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1547.5 bupper:1542.18 blower:1532.04', 2, 'ETHBUSD'),
(238, '2022-07-25 10:17:28', 1001, 'bb', 'OPEN SELL : price:1546.43 big_f:1561.43 bupper:1542.17509855 bupper_max:1642.25 op_price:1546.43', 2, 'ETHBUSD'),
(239, '2022-07-25 12:08:28', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1546.43 price:1528.2 op_price:1546.43', 2, 'ETHBUSD'),
(240, '2022-07-25 12:10:08', 1001, 'EMA CROSS', 'SELL :1520.53', 1, 'ETHUSDT'),
(241, '2022-07-25 13:36:28', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1525.0 price:1509.99 op_price:1546.43', 2, 'ETHBUSD'),
(242, '2022-07-25 13:41:10', 1001, 'bb', 'Close SELL price:1525.32 op_price=1546.43 big_f=1525.0', 2, 'ETHBUSD'),
(243, '2022-07-25 14:56:22', 1001, 'EMA CROSS', 'Close  SELL By Stop Loss:1525.04', 1, 'ETHUSDT'),
(244, '2022-07-25 19:07:04', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1500.58 blower:1506.48', 2, 'ETHBUSD'),
(245, '2022-07-25 19:07:08', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1495.6 blower:1506.21', 2, 'ETHBUSD'),
(246, '2022-07-25 19:07:12', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1491.06 blower:1506.21', 2, 'ETHBUSD'),
(247, '2022-07-25 19:07:16', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1488.66 blower:1506.21', 2, 'ETHBUSD'),
(248, '2022-07-25 19:07:20', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1493.98 blower:1506.21', 2, 'ETHBUSD'),
(249, '2022-07-25 19:07:24', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1490.68 blower:1506.21', 2, 'ETHBUSD'),
(250, '2022-07-25 19:07:28', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1484.18 blower:1506.21', 2, 'ETHBUSD'),
(251, '2022-07-25 19:07:32', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1487.33 blower:1506.21', 2, 'ETHBUSD'),
(252, '2022-07-26 11:55:17', 1001, 'bb', 'WAIT-Down  blower_min:1402.0 price:1402.0 blower:1407.54', 2, 'ETHBUSD'),
(253, '2022-07-26 11:55:21', 1001, 'bb', 'WAIT-Down  blower_min:1398.49 price:1398.49 blower:1407.54', 2, 'ETHBUSD'),
(254, '2022-07-26 11:55:25', 1001, 'bb', 'WAIT-Down  blower_min:1396.19 price:1396.19 blower:1407.54', 2, 'ETHBUSD'),
(255, '2022-07-26 11:55:30', 1001, 'bb', 'WAIT-Down  blower_min:1395.0 price:1395.0 blower:1407.54', 2, 'ETHBUSD'),
(256, '2022-07-26 11:55:34', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1386.16 blower:1407.54', 2, 'ETHBUSD'),
(257, '2022-07-26 11:55:38', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1387.69 blower:1407.54', 2, 'ETHBUSD'),
(258, '2022-07-26 12:19:51', 1001, 'bb', 'OPen BUY (BB) : price=1406.82 big_f:1391.82 blower:1405.21221598 blower_min:1386.16 op_price:1406.82', 2, 'ETHBUSD'),
(259, '2022-07-26 12:38:23', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1391.38 op_price=1406.82 big_f=1391.82', 2, 'ETHBUSD'),
(260, '2022-07-26 12:38:28', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1392.95 blower:1397.97', 2, 'ETHBUSD'),
(261, '2022-07-26 12:38:32', 1001, 'bb', 'OPen BUY (BB) : price=1394.26 big_f:1379.26 blower:1397.97031195 blower_min:1386.16 op_price:1394.26', 2, 'ETHBUSD'),
(262, '2022-07-26 13:11:27', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1378.24 op_price=1394.26 big_f=1379.26', 2, 'ETHBUSD'),
(263, '2022-07-26 21:07:58', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1395.2 bupper:1386.53 blower:1357.15', 2, 'ETHBUSD'),
(264, '2022-07-26 21:08:02', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1395.19 bupper:1386.53 blower:1357.15', 2, 'ETHBUSD'),
(265, '2022-07-26 21:08:06', 1001, 'bb', 'OPEN SELL : price:1394.33 big_f:1409.33 bupper:1386.52506128 bupper_max:1642.25 op_price:1394.33', 2, 'ETHBUSD'),
(266, '2022-07-26 21:33:48', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1394.33 price:1378.61 op_price:1394.33', 2, 'ETHBUSD'),
(267, '2022-07-26 22:14:52', 1001, 'bb', 'Close SELL price:1394.61 op_price=1394.33 big_f=1394.33', 2, 'ETHBUSD'),
(268, '2022-07-27 00:11:13', 1001, 'EMA CROSS', 'BUY :1457.86', 1, 'ETHUSDT'),
(269, '2022-07-27 00:36:31', 1001, 'EMA CROSS', 'Close BUY Stoploss Price: 1437.79 op_price:1457.86 big_f:1437.86', 1, 'ETHUSDT'),
(270, '2022-07-27 05:47:07', 1001, 'EMA CROSS', 'BUY :1454.47', 1, 'ETHUSDT'),
(271, '2022-07-27 07:01:26', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1465.86 bupper:1457.0 blower:1443.88', 2, 'ETHBUSD'),
(272, '2022-07-27 07:01:31', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1467.56 bupper:1457.0 blower:1443.88', 2, 'ETHBUSD'),
(273, '2022-07-27 07:01:35', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1469.19 bupper:1457.0 blower:1443.88', 2, 'ETHBUSD'),
(274, '2022-07-27 07:01:39', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1465.85 bupper:1457.0 blower:1443.88', 2, 'ETHBUSD'),
(275, '2022-07-27 07:01:43', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1465.7 bupper:1457.0 blower:1443.88', 2, 'ETHBUSD'),
(276, '2022-07-27 07:01:47', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1465.0 bupper:1457.0 blower:1443.88', 2, 'ETHBUSD'),
(277, '2022-07-27 10:30:43', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1466.62 bupper:1464.09 blower:1455.29', 2, 'ETHBUSD'),
(278, '2022-07-27 10:30:47', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1466.88 bupper:1464.31 blower:1455.14', 2, 'ETHBUSD'),
(279, '2022-07-27 11:50:51', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1468.4 bupper:1466.36 blower:1454.53', 2, 'ETHBUSD'),
(280, '2022-07-27 11:50:56', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1468.4 bupper:1466.36 blower:1454.53', 2, 'ETHBUSD'),
(281, '2022-07-27 11:51:11', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1468.68 bupper:1466.36 blower:1454.53', 2, 'ETHBUSD'),
(282, '2022-07-27 11:56:40', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1452.19 blower:1454.83', 2, 'ETHBUSD'),
(283, '2022-07-27 11:56:44', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.82 blower:1454.83', 2, 'ETHBUSD'),
(284, '2022-07-27 11:56:52', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.45 blower:1454.83', 2, 'ETHBUSD'),
(285, '2022-07-27 11:56:56', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1450.66 blower:1454.83', 2, 'ETHBUSD'),
(286, '2022-07-27 11:57:00', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1449.91 blower:1454.83', 2, 'ETHBUSD'),
(287, '2022-07-27 11:57:06', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1450.43 blower:1454.83', 2, 'ETHBUSD'),
(288, '2022-07-27 11:57:10', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1452.02 blower:1454.83', 2, 'ETHBUSD'),
(289, '2022-07-27 11:58:07', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.56 blower:1453.93', 2, 'ETHBUSD'),
(290, '2022-07-27 11:58:11', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.39 blower:1453.93', 2, 'ETHBUSD'),
(291, '2022-07-27 11:58:16', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.0 blower:1453.93', 2, 'ETHBUSD'),
(292, '2022-07-27 11:58:20', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.47 blower:1453.93', 2, 'ETHBUSD'),
(293, '2022-07-27 11:58:24', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.25 blower:1453.93', 2, 'ETHBUSD'),
(294, '2022-07-27 11:58:33', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.59 blower:1453.93', 2, 'ETHBUSD'),
(295, '2022-07-27 11:59:31', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.94 blower:1453.99', 2, 'ETHBUSD'),
(296, '2022-07-27 11:59:35', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1451.8 blower:1453.99', 2, 'ETHBUSD'),
(297, '2022-07-27 12:00:25', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1450.15 blower:1452.5', 2, 'ETHBUSD'),
(298, '2022-07-27 12:00:29', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1450.17 blower:1452.5', 2, 'ETHBUSD'),
(299, '2022-07-27 12:00:33', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.48 blower:1452.5', 2, 'ETHBUSD'),
(300, '2022-07-27 12:00:37', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.88 blower:1452.5', 2, 'ETHBUSD'),
(301, '2022-07-27 12:00:41', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.84 blower:1452.5', 2, 'ETHBUSD'),
(302, '2022-07-27 12:00:45', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.36 blower:1452.5', 2, 'ETHBUSD'),
(303, '2022-07-27 12:00:50', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.8 blower:1451.85', 2, 'ETHBUSD'),
(304, '2022-07-27 12:00:54', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.96 blower:1451.85', 2, 'ETHBUSD'),
(305, '2022-07-27 12:00:58', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.45 blower:1451.85', 2, 'ETHBUSD'),
(306, '2022-07-27 12:01:03', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.63 blower:1451.85', 2, 'ETHBUSD'),
(307, '2022-07-27 12:01:07', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.84 blower:1451.85', 2, 'ETHBUSD'),
(308, '2022-07-27 12:01:11', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1445.39 blower:1451.85', 2, 'ETHBUSD'),
(309, '2022-07-27 12:01:15', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.94 blower:1451.85', 2, 'ETHBUSD'),
(310, '2022-07-27 12:01:19', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.97 blower:1451.85', 2, 'ETHBUSD'),
(311, '2022-07-27 12:01:23', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.47 blower:1450.87', 2, 'ETHBUSD'),
(312, '2022-07-27 12:01:31', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.87 blower:1450.87', 2, 'ETHBUSD'),
(313, '2022-07-27 12:01:35', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.1 blower:1450.87', 2, 'ETHBUSD'),
(314, '2022-07-27 12:01:39', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.83 blower:1450.87', 2, 'ETHBUSD'),
(315, '2022-07-27 12:01:43', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.36 blower:1451.37', 2, 'ETHBUSD'),
(316, '2022-07-27 12:01:47', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.07 blower:1451.37', 2, 'ETHBUSD'),
(317, '2022-07-27 12:01:51', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.69 blower:1451.37', 2, 'ETHBUSD'),
(318, '2022-07-27 12:01:56', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.75 blower:1451.37', 2, 'ETHBUSD'),
(319, '2022-07-27 12:02:00', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.67 blower:1451.37', 2, 'ETHBUSD'),
(320, '2022-07-27 12:02:04', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.57 blower:1451.37', 2, 'ETHBUSD'),
(321, '2022-07-27 12:02:08', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.67 blower:1451.37', 2, 'ETHBUSD'),
(322, '2022-07-27 12:02:12', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.32 blower:1451.46', 2, 'ETHBUSD'),
(323, '2022-07-27 12:02:17', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.91 blower:1451.46', 2, 'ETHBUSD'),
(324, '2022-07-27 12:02:21', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.93 blower:1451.46', 2, 'ETHBUSD'),
(325, '2022-07-27 12:02:25', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.06 blower:1451.46', 2, 'ETHBUSD'),
(326, '2022-07-27 12:02:29', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.76 blower:1451.46', 2, 'ETHBUSD'),
(327, '2022-07-27 12:02:33', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.29 blower:1451.46', 2, 'ETHBUSD'),
(328, '2022-07-27 12:02:37', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.29 blower:1450.73', 2, 'ETHBUSD'),
(329, '2022-07-27 12:02:41', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.59 blower:1450.73', 2, 'ETHBUSD'),
(330, '2022-07-27 12:02:45', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1446.84 blower:1450.73', 2, 'ETHBUSD'),
(331, '2022-07-27 12:02:49', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.06 blower:1450.73', 2, 'ETHBUSD'),
(332, '2022-07-27 12:02:53', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.55 blower:1450.73', 2, 'ETHBUSD'),
(333, '2022-07-27 12:02:57', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.99 blower:1450.73', 2, 'ETHBUSD'),
(334, '2022-07-27 12:03:01', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1447.94 blower:1450.73', 2, 'ETHBUSD'),
(335, '2022-07-27 12:03:05', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.25 blower:1451.09', 2, 'ETHBUSD'),
(336, '2022-07-27 12:03:11', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.4 blower:1451.09', 2, 'ETHBUSD'),
(337, '2022-07-27 12:03:15', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.94 blower:1451.09', 2, 'ETHBUSD'),
(338, '2022-07-27 12:03:20', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.45 blower:1451.09', 2, 'ETHBUSD'),
(339, '2022-07-27 12:03:24', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1448.73 blower:1451.09', 2, 'ETHBUSD'),
(340, '2022-07-27 12:03:28', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1449.04 blower:1451.09', 2, 'ETHBUSD'),
(341, '2022-07-27 12:42:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1470.48 bupper:1467.39 blower:1451.94', 2, 'ETHBUSD'),
(342, '2022-07-27 12:42:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1472.87 bupper:1467.39 blower:1451.94', 2, 'ETHBUSD'),
(343, '2022-07-27 12:42:24', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1473.53 bupper:1467.39 blower:1451.94', 2, 'ETHBUSD'),
(344, '2022-07-27 12:42:29', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.69 bupper:1467.39 blower:1451.94', 2, 'ETHBUSD'),
(345, '2022-07-27 12:42:33', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.31 bupper:1467.39 blower:1451.94', 2, 'ETHBUSD'),
(346, '2022-07-27 12:42:37', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.89 bupper:1468.69 blower:1451.1', 2, 'ETHBUSD'),
(347, '2022-07-27 12:42:41', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1472.36 bupper:1468.69 blower:1451.1', 2, 'ETHBUSD'),
(348, '2022-07-27 12:42:45', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.57 bupper:1468.69 blower:1451.1', 2, 'ETHBUSD'),
(349, '2022-07-27 12:42:49', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.02 bupper:1468.69 blower:1451.1', 2, 'ETHBUSD'),
(350, '2022-07-27 12:42:53', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1470.99 bupper:1468.69 blower:1451.1', 2, 'ETHBUSD'),
(351, '2022-07-27 12:43:05', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1470.96 bupper:1468.69 blower:1451.1', 2, 'ETHBUSD'),
(352, '2022-07-27 12:43:09', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.26 bupper:1468.13 blower:1451.48', 2, 'ETHBUSD'),
(353, '2022-07-27 12:43:13', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1470.44 bupper:1468.13 blower:1451.48', 2, 'ETHBUSD'),
(354, '2022-07-27 12:44:07', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1470.01 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(355, '2022-07-27 12:44:11', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1470.73 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(356, '2022-07-27 12:44:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1471.49 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(357, '2022-07-27 12:44:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1473.14 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(358, '2022-07-27 12:44:24', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1473.18 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(359, '2022-07-27 12:44:28', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1477.01 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(360, '2022-07-27 12:44:32', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1476.2 bupper:1467.84 blower:1451.66', 2, 'ETHBUSD'),
(361, '2022-07-27 12:44:36', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1477.4 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(362, '2022-07-27 12:44:40', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1479.1 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(363, '2022-07-27 12:44:43', 1001, 'EMA CROSS', 'Create BUY Stoploss :1449.47', 1, 'ETHUSDT'),
(364, '2022-07-27 12:44:45', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1479.36 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(365, '2022-07-27 12:44:49', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.91 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(366, '2022-07-27 12:44:53', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1479.36 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(367, '2022-07-27 12:44:57', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.98 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(368, '2022-07-27 12:45:01', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1479.16 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(369, '2022-07-27 12:45:06', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1481.26 bupper:1470.51 blower:1449.8', 2, 'ETHBUSD'),
(370, '2022-07-27 12:45:10', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1481.33 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(371, '2022-07-27 12:45:14', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1482.41 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(372, '2022-07-27 12:45:18', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1480.94 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(373, '2022-07-27 12:45:22', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1481.21 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(374, '2022-07-27 12:45:26', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1480.09 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(375, '2022-07-27 12:45:30', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1479.62 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(376, '2022-07-27 12:45:34', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.3 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(377, '2022-07-27 12:45:38', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.58 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(378, '2022-07-27 12:45:42', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.14 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(379, '2022-07-27 12:45:46', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.43 bupper:1474.9 blower:1447.76', 2, 'ETHBUSD'),
(380, '2022-07-27 12:45:50', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1478.16 bupper:1475.21 blower:1447.55', 2, 'ETHBUSD'),
(381, '2022-07-27 12:45:54', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1477.75 bupper:1475.21 blower:1447.55', 2, 'ETHBUSD'),
(382, '2022-07-27 12:45:59', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1477.56 bupper:1475.21 blower:1447.55', 2, 'ETHBUSD'),
(383, '2022-07-27 12:46:03', 1001, 'bb', 'OPEN SELL : price:1476.45 big_f:1491.45 bupper:1475.20889501 bupper_max:1642.25 op_price:1476.45 ADX_DIUP:39.09844731', 2, 'ETHBUSD'),
(384, '2022-07-27 13:25:43', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1476.45 big_f:1491.45 price:1473.68', 2, 'ETHBUSD'),
(385, '2022-07-27 13:54:42', 1001, 'EMA CROSS', 'Create BUY Stoploss :1464.47', 1, 'ETHUSDT'),
(386, '2022-07-27 13:54:44', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1495.87 bupper:1493.6 blower:1453.16', 2, 'ETHBUSD'),
(387, '2022-07-27 13:54:52', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1495.62 bupper:1493.6 blower:1453.16', 2, 'ETHBUSD'),
(388, '2022-07-27 13:54:55', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1495.74 bupper:1493.6 blower:1453.16', 2, 'ETHBUSD'),
(389, '2022-07-27 13:58:22', 1001, 'bb', 'OPEN SELL : price:1490.81 big_f:1505.81 bupper:1495.34357055 bupper_max:1642.25 op_price:1490.81 ADX_DIUP:35.57726587', 2, 'ETHBUSD'),
(390, '2022-07-27 14:36:37', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1490.81 big_f:1505.81 price:1485.47', 2, 'ETHBUSD'),
(391, '2022-07-27 16:17:18', 1001, 'EMA CROSS', 'Create BUY Stoploss :1479.47', 1, 'ETHUSDT'),
(392, '2022-07-27 16:19:12', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.14 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(393, '2022-07-27 16:19:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.18 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(394, '2022-07-27 16:19:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.95 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(395, '2022-07-27 16:19:24', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.53 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(396, '2022-07-27 16:19:28', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.19 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(397, '2022-07-27 16:19:32', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.65 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(398, '2022-07-27 16:19:36', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.51 bupper:1504.04 blower:1476.85', 2, 'ETHBUSD'),
(399, '2022-07-27 16:19:40', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.71 bupper:1503.76 blower:1477.06', 2, 'ETHBUSD'),
(400, '2022-07-27 16:19:44', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.8 bupper:1503.76 blower:1477.06', 2, 'ETHBUSD'),
(401, '2022-07-27 16:19:48', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.53 bupper:1503.76 blower:1477.06', 2, 'ETHBUSD');
INSERT INTO `log_history` (`log_seq`, `log_date`, `user_id`, `stg_type`, `log_detail`, `seq`, `symbol`) VALUES
(402, '2022-07-27 16:19:53', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.77 bupper:1503.76 blower:1477.06', 2, 'ETHBUSD'),
(403, '2022-07-27 16:19:57', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.18 bupper:1503.76 blower:1477.06', 2, 'ETHBUSD'),
(404, '2022-07-27 16:20:01', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.22 bupper:1503.76 blower:1477.06', 2, 'ETHBUSD'),
(405, '2022-07-27 16:20:05', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.53 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(406, '2022-07-27 16:20:09', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.97 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(407, '2022-07-27 16:20:14', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.43 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(408, '2022-07-27 16:20:18', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1516.21 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(409, '2022-07-27 16:20:22', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.57 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(410, '2022-07-27 16:20:26', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.38 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(411, '2022-07-27 16:20:30', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.64 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(412, '2022-07-27 16:20:34', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.78 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(413, '2022-07-27 16:20:38', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.23 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(414, '2022-07-27 16:20:42', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.15 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(415, '2022-07-27 16:20:46', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.97 bupper:1508.2 blower:1475.48', 2, 'ETHBUSD'),
(416, '2022-07-27 16:20:50', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.97 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(417, '2022-07-27 16:20:54', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.92 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(418, '2022-07-27 16:20:58', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.11 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(419, '2022-07-27 16:21:03', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.22 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(420, '2022-07-27 16:21:07', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.8 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(421, '2022-07-27 16:21:11', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.5 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(422, '2022-07-27 16:21:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.31 bupper:1508.95 blower:1474.96', 2, 'ETHBUSD'),
(423, '2022-07-27 16:21:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.65 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(424, '2022-07-27 16:21:24', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.4 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(425, '2022-07-27 16:21:28', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.49 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(426, '2022-07-27 16:21:32', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.99 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(427, '2022-07-27 16:21:36', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.84 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(428, '2022-07-27 16:21:40', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.95 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(429, '2022-07-27 16:21:44', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.53 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(430, '2022-07-27 16:21:48', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.92 bupper:1508.08 blower:1475.56', 2, 'ETHBUSD'),
(431, '2022-07-27 16:21:52', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.62 bupper:1508.21 blower:1475.47', 2, 'ETHBUSD'),
(432, '2022-07-27 16:21:56', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.41 bupper:1508.21 blower:1475.47', 2, 'ETHBUSD'),
(433, '2022-07-27 16:22:00', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.76 bupper:1508.21 blower:1475.47', 2, 'ETHBUSD'),
(434, '2022-07-27 16:22:04', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.7 bupper:1508.21 blower:1475.47', 2, 'ETHBUSD'),
(435, '2022-07-27 16:22:08', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.27 bupper:1508.21 blower:1475.47', 2, 'ETHBUSD'),
(436, '2022-07-27 16:22:12', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.94 bupper:1507.8 blower:1475.74', 2, 'ETHBUSD'),
(437, '2022-07-27 16:22:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.24 bupper:1507.8 blower:1475.74', 2, 'ETHBUSD'),
(438, '2022-07-27 16:22:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.62 bupper:1507.8 blower:1475.74', 2, 'ETHBUSD'),
(439, '2022-07-27 16:22:24', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.71 bupper:1507.8 blower:1475.74', 2, 'ETHBUSD'),
(440, '2022-07-27 16:22:28', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.94 bupper:1507.8 blower:1475.74', 2, 'ETHBUSD'),
(441, '2022-07-27 16:22:32', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.98 bupper:1507.8 blower:1475.74', 2, 'ETHBUSD'),
(442, '2022-07-27 16:22:36', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.58 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(443, '2022-07-27 16:22:40', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.36 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(444, '2022-07-27 16:22:44', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.64 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(445, '2022-07-27 16:22:48', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.49 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(446, '2022-07-27 16:22:52', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.7 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(447, '2022-07-27 16:22:56', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.0 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(448, '2022-07-27 16:23:00', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.04 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(449, '2022-07-27 16:23:05', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.16 bupper:1508.12 blower:1475.53', 2, 'ETHBUSD'),
(450, '2022-07-27 16:23:10', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.05 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(451, '2022-07-27 16:23:14', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.75 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(452, '2022-07-27 16:23:18', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.56 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(453, '2022-07-27 16:23:22', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.49 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(454, '2022-07-27 16:23:26', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.52 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(455, '2022-07-27 16:23:30', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.94 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(456, '2022-07-27 16:23:34', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.14 bupper:1507.54 blower:1475.92', 2, 'ETHBUSD'),
(457, '2022-07-27 16:23:38', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.28 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(458, '2022-07-27 16:23:42', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.03 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(459, '2022-07-27 16:23:46', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.85 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(460, '2022-07-27 16:23:50', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.02 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(461, '2022-07-27 16:23:54', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.79 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(462, '2022-07-27 16:23:58', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.79 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(463, '2022-07-27 16:24:02', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.96 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(464, '2022-07-27 16:24:06', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.92 bupper:1507.83 blower:1475.72', 2, 'ETHBUSD'),
(465, '2022-07-27 16:24:10', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.47 bupper:1507.77 blower:1475.77', 2, 'ETHBUSD'),
(466, '2022-07-27 16:24:14', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.39 bupper:1507.77 blower:1475.77', 2, 'ETHBUSD'),
(467, '2022-07-27 16:24:18', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.44 bupper:1507.77 blower:1475.77', 2, 'ETHBUSD'),
(468, '2022-07-27 16:24:22', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.98 bupper:1507.77 blower:1475.77', 2, 'ETHBUSD'),
(469, '2022-07-27 16:24:26', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.25 bupper:1507.77 blower:1475.77', 2, 'ETHBUSD'),
(470, '2022-07-27 16:24:30', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.28 bupper:1507.77 blower:1475.77', 2, 'ETHBUSD'),
(471, '2022-07-27 16:24:34', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.28 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(472, '2022-07-27 16:24:38', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.49 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(473, '2022-07-27 16:24:43', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.88 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(474, '2022-07-27 16:24:47', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.97 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(475, '2022-07-27 16:24:51', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.94 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(476, '2022-07-27 16:24:55', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.33 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(477, '2022-07-27 16:24:59', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.33 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(478, '2022-07-27 16:25:03', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1512.34 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(479, '2022-07-27 16:25:07', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1511.74 bupper:1507.97 blower:1475.63', 2, 'ETHBUSD'),
(480, '2022-07-27 16:25:12', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1513.52 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(481, '2022-07-27 16:25:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.29 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(482, '2022-07-27 16:25:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.34 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(483, '2022-07-27 16:25:24', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.18 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(484, '2022-07-27 16:25:28', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.33 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(485, '2022-07-27 16:25:32', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.38 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(486, '2022-07-27 16:25:36', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1514.78 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(487, '2022-07-27 16:25:41', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1515.08 bupper:1511.3 blower:1474.95', 2, 'ETHBUSD'),
(488, '2022-07-27 16:25:44', 1001, 'bb', 'OPEN SELL : price:1515.0 big_f:1530.0 bupper:1511.74355986 bupper_max:1642.25 op_price:1515.0 ADX_DIUP:38.39453507', 2, 'ETHBUSD'),
(489, '2022-07-27 16:49:58', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1515.0 price:1499.6 op_price:1515.0', 2, 'ETHBUSD'),
(490, '2022-07-27 16:50:32', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1515.0 big_f:1515.0 price:1500.46', 2, 'ETHBUSD'),
(491, '2022-07-27 16:58:50', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1479.79', 1, 'ETHUSDT'),
(492, '2022-07-27 18:03:02', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1556.48 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(493, '2022-07-27 18:03:06', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1560.62 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(494, '2022-07-27 18:03:12', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1561.53 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(495, '2022-07-27 18:03:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1560.98 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(496, '2022-07-27 18:03:21', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1568.4 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(497, '2022-07-27 18:03:25', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1566.71 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(498, '2022-07-27 18:03:30', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1569.2 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(499, '2022-07-27 18:03:35', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1577.28 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(500, '2022-07-27 18:03:40', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1577.6 bupper:1529.46 blower:1472.09', 2, 'ETHBUSD'),
(501, '2022-07-27 18:03:44', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1579.26 bupper:1533.47 blower:1469.21', 2, 'ETHBUSD'),
(502, '2022-07-27 18:03:49', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1573.1 bupper:1533.47 blower:1469.21', 2, 'ETHBUSD'),
(503, '2022-07-27 18:03:53', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1566.14 bupper:1533.47 blower:1469.21', 2, 'ETHBUSD'),
(504, '2022-07-27 18:03:58', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1564.91 bupper:1533.47 blower:1469.21', 2, 'ETHBUSD'),
(505, '2022-07-27 18:04:03', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1554.82 bupper:1533.47 blower:1469.21', 2, 'ETHBUSD'),
(506, '2022-07-27 18:04:07', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1552.52 bupper:1533.47 blower:1469.21', 2, 'ETHBUSD'),
(507, '2022-07-27 18:04:11', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1555.96 bupper:1539.46 blower:1464.75', 2, 'ETHBUSD'),
(508, '2022-07-27 18:04:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1551.44 bupper:1539.46 blower:1464.75', 2, 'ETHBUSD'),
(509, '2022-07-27 18:04:20', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1544.41 bupper:1539.46 blower:1464.75', 2, 'ETHBUSD'),
(510, '2022-07-27 18:04:24', 1001, 'bb', 'OPEN SELL : price:1540.48 big_f:1555.48 bupper:1539.46495182 bupper_max:1642.25 op_price:1540.48 ADX_DIUP:50.86137558', 2, 'ETHBUSD'),
(511, '2022-07-27 18:27:57', 1001, 'bb', 'Close SELL price:1555.55 op_price=1540.48 big_f=1555.48', 2, 'ETHBUSD'),
(512, '2022-07-27 18:45:33', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1583.1 bupper:1580.9 blower:1461.63', 2, 'ETHBUSD'),
(513, '2022-07-27 18:45:37', 1001, 'bb', 'OPEN SELL : price:1582.08 big_f:1597.08 bupper:1580.9022714 bupper_max:1642.25 op_price:1582.08 ADX_DIUP:40.39305078', 2, 'ETHBUSD'),
(514, '2022-07-27 19:07:30', 1001, 'bb', 'Close SELL price:1597.46 op_price=1582.08 big_f=1597.08', 2, 'ETHBUSD'),
(515, '2022-07-28 02:44:41', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1642.87 bupper:1628.23 blower:1600.96', 2, 'ETHBUSD'),
(516, '2022-07-28 02:44:46', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1642.38 bupper:1628.23 blower:1600.96', 2, 'ETHBUSD'),
(517, '2022-07-28 02:44:50', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1641.16 bupper:1628.23 blower:1600.96', 2, 'ETHBUSD'),
(518, '2022-07-28 02:44:54', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1640.02 bupper:1628.23 blower:1600.96', 2, 'ETHBUSD'),
(519, '2022-07-28 02:44:58', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1640.3 bupper:1628.23 blower:1600.96', 2, 'ETHBUSD'),
(520, '2022-07-28 02:45:03', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1640.99 bupper:1628.23 blower:1600.96', 2, 'ETHBUSD'),
(521, '2022-07-28 02:45:07', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1640.69 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(522, '2022-07-28 02:45:11', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1642.07 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(523, '2022-07-28 02:45:16', 1001, 'bb', 'WAIT-Up  bupper_max:1642.87 price:1642.31 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(524, '2022-07-28 02:45:20', 1001, 'bb', 'WAIT-Up  bupper_max:1643.91 price:1643.91 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(525, '2022-07-28 02:45:24', 1001, 'bb', 'WAIT-Up  bupper_max:1644.36 price:1644.36 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(526, '2022-07-28 02:45:28', 1001, 'bb', 'WAIT-Up  bupper_max:1645.05 price:1645.05 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(527, '2022-07-28 02:45:32', 1001, 'bb', 'WAIT-Up  bupper_max:1645.05 price:1643.37 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(528, '2022-07-28 02:45:36', 1001, 'bb', 'WAIT-Up  bupper_max:1645.05 price:1644.62 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(529, '2022-07-28 02:45:41', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1645.83 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(530, '2022-07-28 02:45:45', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1644.37 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(531, '2022-07-28 02:45:49', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1645.41 bupper:1633.32 blower:1598.72', 2, 'ETHBUSD'),
(532, '2022-07-28 02:45:53', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1643.95 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(533, '2022-07-28 02:45:57', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1643.84 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(534, '2022-07-28 02:46:01', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1642.59 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(535, '2022-07-28 02:46:05', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1643.15 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(536, '2022-07-28 02:46:10', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1644.65 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(537, '2022-07-28 02:46:14', 1001, 'bb', 'WAIT-Up  bupper_max:1645.83 price:1645.7 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(538, '2022-07-28 02:46:19', 1001, 'bb', 'WAIT-Up  bupper_max:1646.15 price:1646.15 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(539, '2022-07-28 02:46:23', 1001, 'bb', 'WAIT-Up  bupper_max:1651.99 price:1651.99 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(540, '2022-07-28 02:46:27', 1001, 'bb', 'WAIT-Up  bupper_max:1654.77 price:1654.77 bupper:1635.14 blower:1597.43', 2, 'ETHBUSD'),
(541, '2022-07-28 02:46:31', 1001, 'bb', 'WAIT-Up  bupper_max:1656.12 price:1656.12 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(542, '2022-07-28 02:46:35', 1001, 'bb', 'WAIT-Up  bupper_max:1656.12 price:1655.27 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(543, '2022-07-28 02:46:40', 1001, 'bb', 'WAIT-Up  bupper_max:1656.12 price:1655.52 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(544, '2022-07-28 02:46:44', 1001, 'bb', 'WAIT-Up  bupper_max:1656.12 price:1653.12 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(545, '2022-07-28 02:46:49', 1001, 'bb', 'WAIT-Up  bupper_max:1656.32 price:1656.32 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(546, '2022-07-28 02:46:53', 1001, 'bb', 'WAIT-Up  bupper_max:1656.32 price:1655.6 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(547, '2022-07-28 02:46:57', 1001, 'bb', 'WAIT-Up  bupper_max:1657.51 price:1657.51 bupper:1634.42 blower:1597.95', 2, 'ETHBUSD'),
(548, '2022-07-28 02:47:01', 1001, 'bb', 'WAIT-Up  bupper_max:1657.51 price:1655.44 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(549, '2022-07-28 02:47:05', 1001, 'bb', 'WAIT-Up  bupper_max:1657.51 price:1656.85 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(550, '2022-07-28 02:47:09', 1001, 'bb', 'WAIT-Up  bupper_max:1660.28 price:1660.28 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(551, '2022-07-28 02:47:13', 1001, 'bb', 'WAIT-Up  bupper_max:1661.78 price:1661.78 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(552, '2022-07-28 02:47:17', 1001, 'bb', 'WAIT-Up  bupper_max:1662.05 price:1662.05 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(553, '2022-07-28 02:47:21', 1001, 'bb', 'WAIT-Up  bupper_max:1662.05 price:1661.43 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(554, '2022-07-28 02:47:25', 1001, 'bb', 'WAIT-Up  bupper_max:1663.99 price:1663.99 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(555, '2022-07-28 02:47:29', 1001, 'bb', 'WAIT-Up  bupper_max:1663.99 price:1660.34 bupper:1638.72 blower:1594.8', 2, 'ETHBUSD'),
(556, '2022-07-28 02:47:34', 1001, 'bb', 'WAIT-Up  bupper_max:1663.99 price:1662.15 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(557, '2022-07-28 02:47:38', 1001, 'bb', 'WAIT-Up  bupper_max:1671.0 price:1671.0 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(558, '2022-07-28 02:47:42', 1001, 'bb', 'WAIT-Up  bupper_max:1671.54 price:1671.54 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(559, '2022-07-28 02:47:46', 1001, 'bb', 'WAIT-Up  bupper_max:1671.91 price:1671.91 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(560, '2022-07-28 02:47:50', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1674.97 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(561, '2022-07-28 02:47:55', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1674.15 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(562, '2022-07-28 02:47:59', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1672.05 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(563, '2022-07-28 02:48:03', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1668.69 bupper:1639.41 blower:1594.28', 2, 'ETHBUSD'),
(564, '2022-07-28 02:48:08', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1667.53 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(565, '2022-07-28 02:48:12', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1666.4 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(566, '2022-07-28 02:48:16', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.32 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(567, '2022-07-28 02:48:20', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1668.77 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(568, '2022-07-28 02:48:25', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1667.28 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(569, '2022-07-28 02:48:29', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.15 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(570, '2022-07-28 02:48:33', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1667.96 bupper:1641.11 blower:1593.0', 2, 'ETHBUSD'),
(571, '2022-07-28 02:48:37', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1667.49 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(572, '2022-07-28 02:48:41', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1666.73 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(573, '2022-07-28 02:48:46', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1668.27 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(574, '2022-07-28 02:48:50', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1668.04 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(575, '2022-07-28 02:48:54', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1670.61 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(576, '2022-07-28 02:48:59', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1667.67 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(577, '2022-07-28 02:49:03', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1667.16 bupper:1646.24 blower:1589.08', 2, 'ETHBUSD'),
(578, '2022-07-28 02:49:07', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1665.94 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(579, '2022-07-28 02:49:11', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1665.79 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(580, '2022-07-28 02:49:15', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1664.9 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(581, '2022-07-28 02:49:19', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1664.76 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(582, '2022-07-28 02:49:23', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1665.63 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(583, '2022-07-28 02:49:27', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1666.05 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(584, '2022-07-28 02:49:31', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.24 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(585, '2022-07-28 02:49:35', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.9 bupper:1644.54 blower:1590.39', 2, 'ETHBUSD'),
(586, '2022-07-28 02:49:40', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1668.32 bupper:1644.2 blower:1590.65', 2, 'ETHBUSD'),
(587, '2022-07-28 02:49:44', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.35 bupper:1644.2 blower:1590.65', 2, 'ETHBUSD'),
(588, '2022-07-28 02:49:48', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.34 bupper:1644.2 blower:1590.65', 2, 'ETHBUSD'),
(589, '2022-07-28 02:49:52', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1669.79 bupper:1644.2 blower:1590.65', 2, 'ETHBUSD'),
(590, '2022-07-28 02:49:56', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1671.76 bupper:1644.2 blower:1590.65', 2, 'ETHBUSD'),
(591, '2022-07-28 02:50:01', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1671.91 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(592, '2022-07-28 02:50:06', 1001, 'bb', 'WAIT-Up  bupper_max:1674.97 price:1672.89 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(593, '2022-07-28 02:50:11', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1676.19 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(594, '2022-07-28 02:50:15', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1673.43 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(595, '2022-07-28 02:50:20', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1673.06 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(596, '2022-07-28 02:50:24', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.25 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(597, '2022-07-28 02:50:29', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.19 bupper:1643.87 blower:1590.9', 2, 'ETHBUSD'),
(598, '2022-07-28 02:50:33', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.08 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(599, '2022-07-28 02:50:37', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.13 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(600, '2022-07-28 02:50:41', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.63 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(601, '2022-07-28 02:50:46', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.0 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(602, '2022-07-28 02:50:50', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.6 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(603, '2022-07-28 02:50:55', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.74 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(604, '2022-07-28 02:50:59', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.91 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(605, '2022-07-28 02:51:04', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.36 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(606, '2022-07-28 02:51:08', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.64 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(607, '2022-07-28 02:51:12', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.34 bupper:1657.48 blower:1584.35', 2, 'ETHBUSD'),
(608, '2022-07-28 02:51:17', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.98 bupper:1656.49 blower:1585.04', 2, 'ETHBUSD'),
(609, '2022-07-28 02:51:22', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.72 bupper:1656.49 blower:1585.04', 2, 'ETHBUSD'),
(610, '2022-07-28 02:51:27', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.68 bupper:1656.49 blower:1585.04', 2, 'ETHBUSD'),
(611, '2022-07-28 02:51:31', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.91 bupper:1656.49 blower:1585.04', 2, 'ETHBUSD'),
(612, '2022-07-28 02:51:36', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.75 bupper:1656.49 blower:1585.04', 2, 'ETHBUSD'),
(613, '2022-07-28 02:51:41', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.85 bupper:1656.49 blower:1585.04', 2, 'ETHBUSD'),
(614, '2022-07-28 02:51:45', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.9 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(615, '2022-07-28 02:51:51', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.28 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(616, '2022-07-28 02:51:55', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.78 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(617, '2022-07-28 02:52:00', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.07 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(618, '2022-07-28 02:52:04', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.84 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(619, '2022-07-28 02:52:09', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.19 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(620, '2022-07-28 02:52:14', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.61 bupper:1657.85 blower:1584.1', 2, 'ETHBUSD'),
(621, '2022-07-28 02:52:18', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1673.3 bupper:1657.16 blower:1584.58', 2, 'ETHBUSD'),
(622, '2022-07-28 02:52:23', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.92 bupper:1657.16 blower:1584.58', 2, 'ETHBUSD'),
(623, '2022-07-28 02:52:30', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1673.26 bupper:1657.16 blower:1584.58', 2, 'ETHBUSD'),
(624, '2022-07-28 02:52:34', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.54 bupper:1657.16 blower:1584.58', 2, 'ETHBUSD'),
(625, '2022-07-28 02:52:38', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.34 bupper:1657.16 blower:1584.58', 2, 'ETHBUSD'),
(626, '2022-07-28 02:52:42', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.36 bupper:1657.16 blower:1584.58', 2, 'ETHBUSD'),
(627, '2022-07-28 02:52:46', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.57 bupper:1656.82 blower:1584.81', 2, 'ETHBUSD'),
(628, '2022-07-28 02:52:50', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.67 bupper:1656.82 blower:1584.81', 2, 'ETHBUSD'),
(629, '2022-07-28 02:52:54', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.52 bupper:1656.82 blower:1584.81', 2, 'ETHBUSD'),
(630, '2022-07-28 02:52:58', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.01 bupper:1656.82 blower:1584.81', 2, 'ETHBUSD'),
(631, '2022-07-28 02:53:02', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.24 bupper:1656.82 blower:1584.81', 2, 'ETHBUSD'),
(632, '2022-07-28 02:53:06', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.8 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(633, '2022-07-28 02:53:11', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.41 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(634, '2022-07-28 02:53:15', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.73 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(635, '2022-07-28 02:53:19', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.37 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(636, '2022-07-28 02:53:24', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.61 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(637, '2022-07-28 02:53:28', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.46 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(638, '2022-07-28 02:53:32', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.75 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(639, '2022-07-28 02:53:36', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.45 bupper:1657.38 blower:1584.43', 2, 'ETHBUSD'),
(640, '2022-07-28 02:53:41', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1672.2 bupper:1657.35 blower:1584.45', 2, 'ETHBUSD'),
(641, '2022-07-28 02:53:45', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.87 bupper:1657.35 blower:1584.45', 2, 'ETHBUSD'),
(642, '2022-07-28 02:53:49', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.43 bupper:1657.35 blower:1584.45', 2, 'ETHBUSD'),
(643, '2022-07-28 02:53:53', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.69 bupper:1657.35 blower:1584.45', 2, 'ETHBUSD'),
(644, '2022-07-28 02:53:57', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1671.01 bupper:1657.35 blower:1584.45', 2, 'ETHBUSD'),
(645, '2022-07-28 02:54:01', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1670.35 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(646, '2022-07-28 02:54:05', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.78 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(647, '2022-07-28 02:54:09', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1669.21 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(648, '2022-07-28 02:54:13', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.27 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(649, '2022-07-28 02:54:18', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.32 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(650, '2022-07-28 02:54:22', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1667.89 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(651, '2022-07-28 02:54:26', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.0 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(652, '2022-07-28 02:54:30', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.05 bupper:1657.2 blower:1584.55', 2, 'ETHBUSD'),
(653, '2022-07-28 02:54:34', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1667.48 bupper:1657.0 blower:1584.69', 2, 'ETHBUSD'),
(654, '2022-07-28 02:54:38', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1666.97 bupper:1657.0 blower:1584.69', 2, 'ETHBUSD'),
(655, '2022-07-28 02:54:42', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1665.49 bupper:1657.0 blower:1584.69', 2, 'ETHBUSD'),
(656, '2022-07-28 02:54:46', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1666.76 bupper:1657.0 blower:1584.69', 2, 'ETHBUSD'),
(657, '2022-07-28 02:54:51', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1666.0 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(658, '2022-07-28 02:54:55', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1666.8 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(659, '2022-07-28 02:54:59', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1668.31 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(660, '2022-07-28 02:55:03', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1666.68 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(661, '2022-07-28 02:55:07', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1665.96 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(662, '2022-07-28 02:55:11', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1665.54 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(663, '2022-07-28 02:55:15', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1664.83 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(664, '2022-07-28 02:55:20', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1664.45 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(665, '2022-07-28 02:55:24', 1001, 'bb', 'WAIT-Up  bupper_max:1676.19 price:1665.06 bupper:1656.13 blower:1585.29', 2, 'ETHBUSD'),
(666, '2022-07-28 02:55:28', 1001, 'bb', 'OPEN SELL : price:1664.56 big_f:1679.56 bupper:1664.32436161 bupper_max:1676.19 op_price:1664.56 ADX_DIUP:53.913171', 2, 'ETHBUSD'),
(667, '2022-07-28 03:30:42', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1664.56 price:1648.55 op_price:1664.56', 2, 'ETHBUSD'),
(668, '2022-07-28 05:40:09', 1001, 'bb', 'Close SELL price:1645.01 op_price=1664.56 big_f=1645.0', 2, 'ETHBUSD'),
(669, '2022-07-28 11:45:42', 1001, 'EMA CROSS', 'BUY :1640.14', 1, 'ETHUSDT'),
(670, '2022-07-28 12:27:27', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1619.1', 1, 'ETHUSDT'),
(671, '2022-07-28 15:41:56', 1001, 'bb', 'WAIT-Up  bupper_max:1719.07 price:1719.07 bupper:1705.84 blower:1600.97', 2, 'ETHBUSD'),
(672, '2022-07-28 15:42:01', 1001, 'bb', 'WAIT-Up  bupper_max:1719.49 price:1719.49 bupper:1705.84 blower:1600.97', 2, 'ETHBUSD'),
(673, '2022-07-28 15:42:05', 1001, 'bb', 'WAIT-Up  bupper_max:1719.49 price:1718.79 bupper:1705.84 blower:1600.97', 2, 'ETHBUSD'),
(674, '2022-07-28 15:42:05', 1001, 'bb', 'OPEN SELL : price:1718.79 big_f:1733.79 bupper:1705.84203556 bupper_max:1719.49 op_price:1718.79 ADX_DIUP:40.95876797', 2, 'ETHBUSD'),
(675, '2022-07-28 15:52:50', 1001, 'bb', 'Close SELL price:1735.11 op_price=1718.79 big_f=1733.79', 2, 'ETHBUSD'),
(676, '2022-07-28 15:52:54', 1001, 'bb', 'WAIT-Up  bupper_max:1734.28 price:1734.28 bupper:1724.05 blower:1601.6', 2, 'ETHBUSD'),
(677, '2022-07-28 15:52:58', 1001, 'bb', 'WAIT-Up  bupper_max:1734.28 price:1734.0 bupper:1724.33 blower:1601.44', 2, 'ETHBUSD'),
(678, '2022-07-28 15:52:58', 1001, 'bb', 'OPEN SELL : price:1734.0 big_f:1749.0 bupper:1724.32759122 bupper_max:1734.28 op_price:1734.0 ADX_DIUP:42.11457207', 2, 'ETHBUSD'),
(679, '2022-07-28 15:53:49', 1001, 'bb', 'Close SELL price:1752.76 op_price=1734.0 big_f=1749.0', 2, 'ETHBUSD'),
(680, '2022-07-28 15:53:54', 1001, 'bb', 'WAIT-Up  bupper_max:1750.32 price:1750.32 bupper:1727.93 blower:1599.25', 2, 'ETHBUSD'),
(681, '2022-07-28 15:53:59', 1001, 'bb', 'WAIT-Up  bupper_max:1750.32 price:1748.0 bupper:1727.93 blower:1599.25', 2, 'ETHBUSD'),
(682, '2022-07-28 15:53:59', 1001, 'bb', 'OPEN SELL : price:1748.0 big_f:1763.0 bupper:1727.93073577 bupper_max:1750.32 op_price:1748.0 ADX_DIUP:45.71354585', 2, 'ETHBUSD'),
(683, '2022-07-28 15:56:34', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1748.0 price:1732.64 op_price:1748.0', 2, 'ETHBUSD'),
(684, '2022-07-28 17:38:36', 1001, 'bb', 'Close SELL price:1743.36 op_price=1748.0 big_f=1743.0', 2, 'ETHBUSD'),
(685, '2022-07-28 20:36:00', 1001, 'bb', 'WAIT-Up  bupper_max:1764.75 price:1764.75 bupper:1752.55 blower:1713.38', 2, 'ETHBUSD'),
(686, '2022-07-28 20:36:05', 1001, 'bb', 'WAIT-Up  bupper_max:1764.75 price:1764.01 bupper:1752.55 blower:1713.38', 2, 'ETHBUSD'),
(687, '2022-07-28 20:36:05', 1001, 'bb', 'OPEN SELL : price:1764.01 big_f:1779.01 bupper:1752.54849821 bupper_max:1764.75 op_price:1764.01 ADX_DIUP:44.44120392', 2, 'ETHBUSD'),
(688, '2022-07-28 20:37:32', 1001, 'bb', 'Close SELL price:1779.05 op_price=1764.01 big_f=1779.01', 2, 'ETHBUSD'),
(689, '2022-07-28 20:37:37', 1001, 'bb', 'WAIT-Up  bupper_max:1779.42 price:1779.42 bupper:1757.1 blower:1710.0', 2, 'ETHBUSD'),
(690, '2022-07-28 20:37:41', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1780.24 bupper:1756.23 blower:1710.65', 2, 'ETHBUSD'),
(691, '2022-07-28 20:37:44', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1779.94 bupper:1756.23 blower:1710.65', 2, 'ETHBUSD'),
(692, '2022-07-28 20:37:45', 1001, 'bb', 'OPEN SELL : price:1779.94 big_f:1794.94 bupper:1756.23210981 bupper_max:1780.24 op_price:1779.94 ADX_DIUP:47.79236856', 2, 'ETHBUSD'),
(693, '2022-07-28 20:43:30', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1779.94 price:1764.01 op_price:1779.94', 2, 'ETHBUSD'),
(694, '2022-07-28 20:44:57', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1764.94 price:1748.05 op_price:1779.94', 2, 'ETHBUSD'),
(695, '2022-07-28 20:46:18', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1749.94 price:1734.0 op_price:1779.94', 2, 'ETHBUSD'),
(696, '2022-07-28 20:50:09', 1001, 'bb', 'Close SELL price:1750.39 op_price=1779.94 big_f=1749.94', 2, 'ETHBUSD'),
(697, '2022-07-29 00:18:22', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1703.54 blower:1706.89', 2, 'ETHBUSD'),
(698, '2022-07-29 00:18:22', 1001, 'bb', 'OPen BUY (BB) : price=1703.54 big_f:1693.54 blower:1706.88696637 blower_min:1386.16 op_price:1703.54 ADX_DIDW:41.12504537', 2, 'ETHBUSD'),
(699, '2022-07-29 01:27:42', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1713.89 op_price=1703.54 big_f=1714.0', 2, 'ETHBUSD'),
(700, '2022-07-29 04:09:39', 1001, 'EMA CROSS', 'BUY :1729.17', 1, 'ETHUSDT'),
(701, '2022-07-29 07:13:23', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1708.56', 1, 'ETHUSDT'),
(702, '2022-07-29 11:34:26', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1685.97 blower:1696.27', 2, 'ETHBUSD'),
(703, '2022-07-29 11:34:32', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1686.99 blower:1696.27', 2, 'ETHBUSD'),
(704, '2022-07-29 11:34:38', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1686.24 blower:1696.27', 2, 'ETHBUSD'),
(705, '2022-07-29 11:34:38', 1001, 'bb', 'OPen BUY (BB) : price=1686.24 big_f:1676.24 blower:1696.26651557 blower_min:1386.16 op_price:1686.24 ADX_DIDW:42.2146113', 2, 'ETHBUSD'),
(706, '2022-07-29 11:43:41', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1676.01 op_price=1686.24 big_f=1676.24', 2, 'ETHBUSD'),
(707, '2022-07-29 11:43:47', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1676.1 blower:1683.41', 2, 'ETHBUSD'),
(708, '2022-07-29 11:43:52', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1674.22 blower:1682.63', 2, 'ETHBUSD'),
(709, '2022-07-29 11:43:57', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1669.94 blower:1682.63', 2, 'ETHBUSD'),
(710, '2022-07-29 11:44:03', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1670.61 blower:1682.63', 2, 'ETHBUSD'),
(711, '2022-07-29 11:44:09', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1671.49 blower:1682.63', 2, 'ETHBUSD'),
(712, '2022-07-29 11:44:09', 1001, 'bb', 'OPen BUY (BB) : price=1671.49 big_f:1661.49 blower:1682.62549867 blower_min:1386.16 op_price:1671.49 ADX_DIDW:41.6462875', 2, 'ETHBUSD'),
(713, '2022-07-29 12:44:55', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1661.27 op_price=1671.49 big_f=1661.49', 2, 'ETHBUSD'),
(714, '2022-07-29 14:30:37', 1001, 'EMA CROSS', 'BUY :1737.16', 1, 'ETHUSDT'),
(715, '2022-07-29 15:03:36', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1715.53', 1, 'ETHUSDT'),
(716, '2022-07-29 16:15:13', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1677.82 blower:1683.29', 2, 'ETHBUSD'),
(717, '2022-07-29 16:15:13', 1001, 'bb', 'OPen BUY (BB) : price=1677.82 big_f:1667.82 blower:1683.28607957 blower_min:1386.16 op_price:1677.82 ADX_DIDW:40.10581889', 2, 'ETHBUSD'),
(718, '2022-07-29 17:46:13', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1682.82 price:1697.95 op_price:1677.82', 2, 'ETHBUSD'),
(719, '2022-07-29 18:10:45', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1697.82 price:1713.29 op_price:1677.82', 2, 'ETHBUSD'),
(720, '2022-07-29 18:12:53', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1712.82 price:1727.83 op_price:1677.82', 2, 'ETHBUSD'),
(721, '2022-07-29 18:37:42', 1001, 'EMA CROSS', 'BUY :1729.26', 1, 'ETHUSDT'),
(722, '2022-07-29 19:31:08', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1711.25 op_price=1677.82 big_f=1712.82', 2, 'ETHBUSD'),
(723, '2022-07-29 21:38:03', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1706.95', 1, 'ETHUSDT'),
(724, '2022-07-30 01:50:07', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1697.0 blower:1703.99', 2, 'ETHBUSD'),
(725, '2022-07-30 01:50:07', 1001, 'bb', 'OPen BUY (BB) : price=1697.0 big_f:1687.0 blower:1703.98676948 blower_min:1386.16 op_price:1697.0 ADX_DIDW:41.67132277', 2, 'ETHBUSD'),
(726, '2022-07-30 01:57:54', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1702.0 price:1717.04 op_price:1697.0', 2, 'ETHBUSD'),
(727, '2022-07-30 02:32:59', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1700.71 op_price=1697.0 big_f=1702.0', 2, 'ETHBUSD'),
(728, '2022-07-30 10:05:51', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1686.7 blower:1690.85', 2, 'ETHBUSD'),
(729, '2022-07-30 10:05:57', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1686.84 blower:1690.85', 2, 'ETHBUSD'),
(730, '2022-07-30 10:06:02', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1686.71 blower:1690.85', 2, 'ETHBUSD'),
(731, '2022-07-30 10:06:08', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1688.17 blower:1691.67', 2, 'ETHBUSD'),
(732, '2022-07-30 10:06:08', 1001, 'bb', 'OPen BUY (BB) : price=1688.17 big_f:1678.17 blower:1691.67034057 blower_min:1386.16 op_price:1688.17 ADX_DIDW:40.36866755', 2, 'ETHBUSD'),
(733, '2022-07-30 10:13:13', 1001, 'EMA CROSS', 'SELL :1682.47 fsp_p=25 big_f=1707.47', 1, 'ETHUSDT'),
(734, '2022-07-30 12:59:50', 1001, 'EMA CROSS', 'Close SELL (Stoploss) Price: 1720.52 op_price:1682.47 big_f:1720.0', 1, 'ETHUSDT'),
(735, '2022-07-30 13:08:13', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1719.0 price:1736.8 op_price:1688.17', 2, 'ETHBUSD'),
(736, '2022-07-30 13:28:21', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1688.17 big_f:1719.0 price:1727.24', 2, 'ETHBUSD'),
(737, '2022-07-30 19:44:10', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1699.6 blower:1705.0', 2, 'ETHBUSD'),
(738, '2022-07-30 19:44:11', 1001, 'bb', 'OPen BUY (BB) : price=1699.6 big_f:1684.6 blower:1705.00207217 blower_min:1386.16 op_price:1699.6 ADX_DIDW:42.56232335', 2, 'ETHBUSD'),
(739, '2022-07-30 19:45:42', 1001, 'EMA CROSS', 'SELL :1692.79 fsp_p=25 big_f=1717.79', 1, 'ETHUSDT'),
(740, '2022-07-30 22:00:40', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1684.41 op_price=1699.6 big_f=1684.6', 2, 'ETHBUSD'),
(741, '2022-07-30 22:01:06', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1683.37 blower:1691.22', 2, 'ETHBUSD'),
(742, '2022-07-30 22:01:17', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1685.8 blower:1691.22', 2, 'ETHBUSD'),
(743, '2022-07-30 22:01:34', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1684.99 blower:1691.22', 2, 'ETHBUSD'),
(744, '2022-07-30 22:01:39', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1685.56 blower:1691.22', 2, 'ETHBUSD'),
(745, '2022-07-30 22:01:40', 1001, 'bb', 'OPen BUY (BB) : price=1685.56 big_f:1670.56 blower:1691.21604922 blower_min:1386.16 op_price:1685.56 ADX_DIDW:41.45306603', 2, 'ETHBUSD'),
(746, '2022-07-30 22:53:17', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1685.56 price:1702.47 op_price:1685.56', 2, 'ETHBUSD'),
(747, '2022-07-30 23:19:42', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1685.56 big_f:1685.56 price:1687.3', 2, 'ETHBUSD'),
(748, '2022-07-31 10:59:06', 1001, 'EMA CROSS', 'Close SELL (Stoploss) Price: 1720.12 op_price:1692.79 big_f:1717.79', 1, 'ETHUSDT'),
(749, '2022-07-31 14:44:40', 1001, 'EMA CROSS', 'SELL :1694.91 fsp_p=25 big_f=1719.91', 1, 'ETHUSDT'),
(750, '2022-07-31 18:08:00', 1001, 'EMA CROSS', 'Close SELL (Stoploss) Price: 1723.39 op_price:1694.91 big_f:1719.91', 1, 'ETHUSDT'),
(751, '2022-07-31 18:10:37', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1730.48 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(752, '2022-07-31 18:10:43', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1732.38 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(753, '2022-07-31 18:10:53', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1733.25 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(754, '2022-07-31 18:10:58', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1735.0 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(755, '2022-07-31 18:11:03', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1735.84 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(756, '2022-07-31 18:11:09', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1734.25 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(757, '2022-07-31 18:11:14', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1733.5 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(758, '2022-07-31 18:11:20', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1734.61 bupper:1724.49 blower:1697.81', 2, 'ETHBUSD'),
(759, '2022-07-31 18:11:25', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1734.11 bupper:1725.29 blower:1697.22', 2, 'ETHBUSD'),
(760, '2022-07-31 18:11:31', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1731.8 bupper:1725.29 blower:1697.22', 2, 'ETHBUSD'),
(761, '2022-07-31 18:11:37', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1732.5 bupper:1724.61 blower:1697.72', 2, 'ETHBUSD'),
(762, '2022-07-31 18:11:37', 1001, 'bb', 'OPEN SELL : price:1732.5 big_f:1747.5 bupper:1724.61304162 bupper_max:1780.24 op_price:1732.5 ADX_DIUP:43.58374676', 2, 'ETHBUSD'),
(763, '2022-07-31 18:13:32', 1001, 'bb', 'Close SELL price:1748.36 op_price=1732.5 big_f=1747.5', 2, 'ETHBUSD'),
(764, '2022-07-31 18:13:37', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1749.36 bupper:1729.55 blower:1694.0', 2, 'ETHBUSD'),
(765, '2022-07-31 18:13:42', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1747.91 bupper:1729.55 blower:1694.0', 2, 'ETHBUSD'),
(766, '2022-07-31 18:13:48', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1746.26 bupper:1729.55 blower:1694.0', 2, 'ETHBUSD'),
(767, '2022-07-31 18:13:53', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1744.39 bupper:1729.55 blower:1694.0', 2, 'ETHBUSD'),
(768, '2022-07-31 18:13:58', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1745.03 bupper:1729.55 blower:1694.0', 2, 'ETHBUSD'),
(769, '2022-07-31 18:14:03', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1748.14 bupper:1729.55 blower:1694.0', 2, 'ETHBUSD'),
(770, '2022-07-31 18:14:09', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1748.34 bupper:1729.44 blower:1694.08', 2, 'ETHBUSD'),
(771, '2022-07-31 18:14:14', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1748.28 bupper:1729.44 blower:1694.08', 2, 'ETHBUSD'),
(772, '2022-07-31 18:14:21', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1748.96 bupper:1729.44 blower:1694.08', 2, 'ETHBUSD'),
(773, '2022-07-31 18:14:26', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1749.97 bupper:1729.44 blower:1694.08', 2, 'ETHBUSD'),
(774, '2022-07-31 18:14:32', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1753.2 bupper:1729.44 blower:1694.08', 2, 'ETHBUSD'),
(775, '2022-07-31 18:14:38', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1751.21 bupper:1729.44 blower:1694.08', 2, 'ETHBUSD'),
(776, '2022-07-31 18:14:44', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1748.24 bupper:1733.12 blower:1691.25', 2, 'ETHBUSD'),
(777, '2022-07-31 18:14:49', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1746.33 bupper:1733.12 blower:1691.25', 2, 'ETHBUSD'),
(778, '2022-07-31 18:14:54', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1743.87 bupper:1733.12 blower:1691.25', 2, 'ETHBUSD'),
(779, '2022-07-31 18:14:59', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1744.91 bupper:1733.12 blower:1691.25', 2, 'ETHBUSD'),
(780, '2022-07-31 18:15:05', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1749.25 bupper:1733.12 blower:1691.25', 2, 'ETHBUSD'),
(781, '2022-07-31 18:15:10', 1001, 'bb', 'WAIT-Up  bupper_max:1780.24 price:1748.74 bupper:1735.99 blower:1690.77', 2, 'ETHBUSD'),
(782, '2022-07-31 18:15:11', 1001, 'bb', 'OPEN SELL : price:1748.74 big_f:1763.74 bupper:1735.99367474 bupper_max:1780.24 op_price:1748.74 ADX_DIUP:54.26794939', 2, 'ETHBUSD'),
(783, '2022-07-31 18:28:46', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1748.74 price:1731.89 op_price:1748.74', 2, 'ETHBUSD'),
(784, '2022-07-31 18:29:27', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1733.74 price:1716.71 op_price:1748.74', 2, 'ETHBUSD'),
(785, '2022-07-31 18:32:00', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1718.74 price:1702.17 op_price:1748.74', 2, 'ETHBUSD'),
(786, '2022-07-31 18:32:14', 1001, 'EMA CROSS', 'SELL :1695.45 fsp_p=25 big_f=1720.45', 1, 'ETHUSDT');
INSERT INTO `log_history` (`log_seq`, `log_date`, `user_id`, `stg_type`, `log_detail`, `seq`, `symbol`) VALUES
(787, '2022-07-31 18:38:02', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1703.74 price:1688.32 op_price:1748.74', 2, 'ETHBUSD'),
(788, '2022-07-31 18:39:19', 1001, 'bb', 'Close SELL price:1709.4 op_price=1748.74 big_f=1703.74', 2, 'ETHBUSD'),
(789, '2022-07-31 19:05:19', 1001, 'EMA CROSS', 'Close SELL (Stoploss) Price: 1723.51 op_price:1695.45 big_f:1720.45', 1, 'ETHUSDT'),
(790, '2022-07-31 22:02:18', 1001, 'EMA CROSS', 'SELL :1698.86 fsp_p=15 big_f=1713.86', 1, 'ETHUSDT'),
(791, '2022-07-31 22:27:43', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1683.0 blower:1685.42', 2, 'ETHBUSD'),
(792, '2022-07-31 22:27:48', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1682.14 blower:1685.42', 2, 'ETHBUSD'),
(793, '2022-07-31 22:27:53', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1683.4 blower:1685.42', 2, 'ETHBUSD'),
(794, '2022-07-31 22:28:14', 1001, 'bb', 'OPen BUY (BB) : price=1683.57 big_f:1668.57 blower:1685.56342606 blower_min:1386.16 op_price:1683.57 ADX_DIDW:40.49935202', 2, 'ETHBUSD'),
(795, '2022-07-31 22:39:41', 1001, 'EMA CROSS', 'Create SELL Stoploss :1698.86', 1, 'ETHUSDT'),
(796, '2022-07-31 22:39:44', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1668.24 op_price=1683.57 big_f=1668.57', 2, 'ETHBUSD'),
(797, '2022-07-31 22:39:50', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1668.99 blower:1674.95', 2, 'ETHBUSD'),
(798, '2022-07-31 22:39:55', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1671.12 blower:1674.95', 2, 'ETHBUSD'),
(799, '2022-07-31 22:40:00', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1669.66 blower:1674.95', 2, 'ETHBUSD'),
(800, '2022-07-31 22:41:06', 1001, 'bb', 'OPen BUY (BB) : price=1672.3 big_f:1657.3 blower:1670.00226 blower_min:1386.16 op_price:1672.3 ADX_DIDW:43.6540378', 2, 'ETHBUSD'),
(801, '2022-07-31 23:40:21', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1672.3 price:1688.33 op_price:1672.3', 2, 'ETHBUSD'),
(802, '2022-08-01 00:33:08', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1698.86 big_f:1698.86 price:1688.06', 1, 'ETHUSDT'),
(803, '2022-08-01 02:25:18', 1001, 'EMA CROSS', 'BB Close Order Manual / op_price:1672.3 big_f:1675.0 price:1696.41', 2, 'ETHBUSD'),
(804, '2022-08-01 10:43:39', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.97 sw_min:8 price:1672.03', 3, 'ETHBUSD'),
(805, '2022-08-01 10:43:50', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.97 sw_min:8 price:1672.14', 3, 'ETHBUSD'),
(806, '2022-08-01 10:44:00', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.97 sw_min:8 price:1672.06', 3, 'ETHBUSD'),
(807, '2022-08-01 10:44:10', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1673.79', 3, 'ETHBUSD'),
(808, '2022-08-01 10:44:20', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1673.03', 3, 'ETHBUSD'),
(809, '2022-08-01 10:44:30', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1673.28', 3, 'ETHBUSD'),
(810, '2022-08-01 10:44:40', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1672.47', 3, 'ETHBUSD'),
(811, '2022-08-01 10:44:51', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1672.0', 3, 'ETHBUSD'),
(812, '2022-08-01 10:45:01', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1671.0', 3, 'ETHBUSD'),
(813, '2022-08-01 10:45:11', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1670.64', 3, 'ETHBUSD'),
(814, '2022-08-01 10:45:21', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1670.83', 3, 'ETHBUSD'),
(815, '2022-08-01 10:45:32', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.74 sw_min:8 price:1670.35', 3, 'ETHBUSD'),
(816, '2022-08-01 10:45:42', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.58 sw_min:8 price:1670.34', 3, 'ETHBUSD'),
(817, '2022-08-01 10:45:52', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.58 sw_min:8 price:1671.59', 3, 'ETHBUSD'),
(818, '2022-08-01 10:46:02', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.58 sw_min:8 price:1672.77', 3, 'ETHBUSD'),
(819, '2022-08-01 10:46:12', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.27 sw_min:8 price:1673.03', 3, 'ETHBUSD'),
(820, '2022-08-01 10:46:41', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.26 sw_min:8 price:1672.94', 3, 'ETHBUSD'),
(821, '2022-08-01 10:46:51', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.26 sw_min:8 price:1672.26', 3, 'ETHBUSD'),
(822, '2022-08-01 10:52:53', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1654.67 blower:1663.5', 2, 'ETHBUSD'),
(823, '2022-08-01 10:52:53', 1001, 'bb', 'OPen BUY (BB) : price=1654.67 big_f:1639.67 blower:1663.50222339 blower_min:1386.16 op_price:1654.67 ADX_DIDW:43.70971439', 2, 'ETHBUSD'),
(824, '2022-08-01 10:52:56', 1001, 'bb', 'WAIT-Down  Red Over SW_MAX / ADX_DIDW:43.71 sw_max:40 price:1655.82', 3, 'ETHBUSD'),
(825, '2022-08-01 11:41:55', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1650.82 price:1662.09 op_price:1655.82', 3, 'ETHBUSD'),
(826, '2022-08-01 11:57:48', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1654.67 price:1669.77 op_price:1654.67', 2, 'ETHBUSD'),
(827, '2022-08-01 12:42:57', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1663.86 op_price=1655.82 big_f=1664.0', 3, 'ETHBUSD'),
(828, '2022-08-01 12:55:14', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1655.37 op_price=1654.67 big_f=1657.0', 2, 'ETHBUSD'),
(829, '2022-08-01 17:31:16', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.89 sw_min:8 price:1631.63', 3, 'ETHBUSD'),
(830, '2022-08-02 02:33:44', 1001, 'bb', 'WAIT-Down  Red Over SW_MAX / ADX_DIDW:43.19 sw_max:40 price:1588.53', 3, 'ETHBUSD'),
(831, '2022-08-02 02:33:44', 1001, 'adx', 'OPen BUY (ADX) : price=1588.53 ADX_DIUP:11.84 ADX_DIDW:43.19188123 op_price:1588.53 big_f:1573.53', 3, 'ETHBUSD'),
(832, '2022-08-02 02:34:01', 1001, 'bb', 'WAIT-Down  blower_min:1386.16 price:1587.02 blower:1589.41', 2, 'ETHBUSD'),
(833, '2022-08-02 02:34:11', 1001, 'bb', 'OPen BUY (BB) : price=1587.58 big_f:1572.58 blower:1589.55987644 blower_min:1386.16 op_price:1587.58 ADX_DIDW:43.87912229', 2, 'ETHBUSD'),
(834, '2022-08-02 02:36:31', 1001, 'adx', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1583.53 price:1594.29 op_price:1588.53', 3, 'ETHBUSD'),
(835, '2022-08-02 02:57:32', 1001, 'adx', 'CLOSE-BUY Alert: price= price=1582.82 op_price=1588.53 big_f=1583.53', 3, 'ETHBUSD'),
(836, '2022-08-02 03:01:52', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.83 sw_min:8 price:1583.27', 3, 'ETHBUSD'),
(837, '2022-08-02 03:14:12', 1001, 'bb', 'WAIT-Down  Red Over SW_MAX / ADX_DIDW:40.26 sw_max:40 price:1574.59', 3, 'ETHBUSD'),
(838, '2022-08-02 03:14:58', 1001, 'adx', 'OPen BUY (ADX) : price=1574.59 ADX_DIUP:6.55 ADX_DIDW:40.26315256 op_price:1574.59 big_f:1559.59', 3, 'ETHBUSD'),
(839, '2022-08-02 03:15:26', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1571.84 op_price=1587.58 big_f=1572.58', 2, 'ETHBUSD'),
(840, '2022-08-02 06:18:06', 1001, 'adx', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1574.59 price:1590.2 op_price:1574.59', 3, 'ETHBUSD'),
(841, '2022-08-02 07:06:43', 1001, 'adx', 'CLOSE-BUY Alert: price= price=1576.89 op_price=1574.59 big_f=1578.0', 3, 'ETHBUSD'),
(842, '2022-08-02 10:06:42', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:6.93 sw_min:7 price:1569.79', 3, 'ETHBUSD'),
(843, '2022-08-02 11:51:37', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(844, '2022-08-02 12:07:04', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(845, '2022-08-02 12:40:14', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(846, '2022-08-02 14:52:29', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:6.64 price:1633.47', 3, 'ETHBUSD'),
(847, '2022-08-02 14:56:49', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1625.28 op_price:1576.0 big_f:1565.0', 1, 'ETHUSDT'),
(848, '2022-08-02 14:56:54', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1623.78 op_price:1576.0 big_f:1580.0', 1, 'ETHUSDT'),
(849, '2022-08-02 14:57:06', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1626.58 op_price:1576.0 big_f:1595.0', 1, 'ETHUSDT'),
(850, '2022-08-02 15:52:36', 1001, 'bb', 'OPen BUY (BB) : price=1628.3 big_f:1613.3 blower:1556.10297355 blower_min:1471.93 op_price:1628.3 ADX_DIDW:13.47708059', 2, 'ETHBUSD'),
(851, '2022-08-02 16:01:52', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1623.3 price:1633.86 op_price:1628.3', 2, 'ETHBUSD'),
(852, '2022-08-02 16:03:02', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1633.3 price:1644.2 op_price:1628.3', 2, 'ETHBUSD'),
(853, '2022-08-02 16:20:10', 1001, 'EMA CROSS', 'BUY :1649.64', 1, 'ETHUSDT'),
(854, '2022-08-02 16:29:02', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1643.3 price:1668.88 op_price:1628.3', 2, 'ETHBUSD'),
(855, '2022-08-02 16:29:10', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1653.3 price:1669.7 op_price:1628.3', 2, 'ETHBUSD'),
(856, '2022-08-02 16:29:41', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1663.3 price:1673.41 op_price:1628.3', 2, 'ETHBUSD'),
(857, '2022-08-02 16:52:45', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1662.88 op_price=1628.3 big_f=1663.3', 2, 'ETHBUSD'),
(858, '2022-08-02 17:30:45', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1657.27', 1, 'ETHUSDT'),
(859, '2022-08-03 00:27:12', 1001, 'EMA CROSS', 'SELL :1604.99', 1, 'ETHUSDT'),
(860, '2022-08-03 00:55:03', 1001, 'EMA CROSS', 'Create SELL Stoploss :1614.99', 1, 'ETHUSDT'),
(861, '2022-08-03 01:10:35', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:6.99 sw_min:7 price:1597.47', 3, 'ETHBUSD'),
(862, '2022-08-03 01:50:35', 1001, 'EMA CROSS', 'Close  SELL By Stop Loss:1615.27', 1, 'ETHUSDT'),
(863, '2022-08-03 06:08:13', 1001, 'EMA CROSS', 'BUY :1637.98', 1, 'ETHUSDT'),
(864, '2022-08-03 06:11:07', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:6.92 price:1642.31', 3, 'ETHBUSD'),
(865, '2022-08-03 07:52:16', 1001, 'EMA CROSS', ' !!Error TradingView API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 1, 'ETHUSDT'),
(866, '2022-08-03 07:52:49', 1001, 'bb', ' !!Error TradingView API TimeFrame 1Minute : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 2, 'ETHBUSD'),
(867, '2022-08-03 07:53:20', 1001, 'bb', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 2, 'ETHBUSD'),
(868, '2022-08-03 07:53:51', 1001, 'adx', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 3, 'ETHBUSD'),
(869, '2022-08-03 07:54:22', 1001, 'EMA CROSS', ' !!Error TradingView API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 1, 'ETHUSDT'),
(870, '2022-08-03 07:54:56', 1001, 'bb', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 2, 'ETHBUSD'),
(871, '2022-08-03 07:55:27', 1001, 'adx', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 3, 'ETHBUSD'),
(872, '2022-08-03 07:56:30', 1001, 'EMA CROSS', ' !!Error TradingView API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 1, 'ETHUSDT'),
(873, '2022-08-03 07:57:02', 1001, 'bb', ' !!Error TradingView API TimeFrame 1Minute : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 2, 'ETHBUSD'),
(874, '2022-08-03 07:57:43', 1001, 'EMA CROSS', 'Close BUY Stoploss Price: 1626.79 op_price:1637.98 big_f:1628.0', 1, 'ETHUSDT'),
(875, '2022-08-03 07:58:17', 1001, 'bb', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 2, 'ETHBUSD'),
(876, '2022-08-03 07:58:48', 1001, 'adx', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 3, 'ETHBUSD'),
(877, '2022-08-03 08:00:04', 1001, 'bb', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 2, 'ETHBUSD'),
(878, '2022-08-03 08:00:36', 1001, 'adx', ' !!Error Tradingview API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 3, 'ETHBUSD'),
(879, '2022-08-03 08:37:33', 1001, 'adx', ' !!Error Tradingview API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 3, 'ETHBUSD'),
(880, '2022-08-03 08:44:07', 1001, 'EMA CROSS', 'BUY :1646.79', 1, 'ETHUSDT'),
(881, '2022-08-03 08:46:04', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:35.98 price:1648.4', 3, 'ETHBUSD'),
(882, '2022-08-03 08:46:05', 1001, 'adx', 'OPEN SELL : price:1648.4 ADX_DIDW:9.96081513 ADX_DIUP:35.98 op_price:1648.4 big_f:1663.4', 3, 'ETHBUSD'),
(883, '2022-08-03 09:12:57', 1001, 'EMA CROSS', 'Create BUY Stoploss :1636.79', 1, 'ETHUSDT'),
(884, '2022-08-03 09:13:43', 1001, 'adx', 'BB Close Order Manual / op_price:1648.4 big_f:1663.4 price:1657.09', 3, 'ETHBUSD'),
(885, '2022-08-03 09:23:38', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:7.0 price:1660.86', 3, 'ETHBUSD'),
(886, '2022-08-03 11:06:26', 1001, 'EMA CROSS', 'Create BUY Stoploss :1646.79', 1, 'ETHUSDT'),
(887, '2022-08-03 11:26:21', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(888, '2022-08-03 11:53:01', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1646.79 big_f:1646.79 price:1663.41', 1, 'ETHUSDT'),
(889, '2022-08-03 12:52:01', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(890, '2022-08-03 13:33:17', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : HTTPSConnectionPool(host= fapi.binance.com , port=443): Read timed out. (read timeout=10)', 2, 'ETHUSDT'),
(891, '2022-08-03 13:51:18', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(892, '2022-08-03 15:29:07', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , RemoteDisconnected( Remote end closed connection without response ))', 1, 'ETHUSDT'),
(893, '2022-08-03 16:12:34', 1001, 'bb', 'WAIT-Down  Red Over SW_MAX / ADX_DIDW:35.93 sw_max:35 price:1650.25', 3, 'ETHBUSD'),
(894, '2022-08-03 16:58:15', 1001, 'bb', ' !!Error Tradingview API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 2, 'ETHUSDT'),
(895, '2022-08-03 18:10:57', 1001, 'adx', ' !!Error Tradingview API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 3, 'ETHBUSD'),
(896, '2022-08-03 18:11:16', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(897, '2022-08-03 19:08:08', 1001, 'EMA CROSS', ' !!Error Price of binance api : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(898, '2022-08-03 20:22:02', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(899, '2022-08-03 20:23:35', 1001, 'EMA CROSS', 'SELL :1642.28 fsp_p=20 big_f=1662.28', 1, 'ETHUSDT'),
(900, '2022-08-03 20:33:34', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.55 sw_min:8 price:1636.67', 3, 'ETHBUSD'),
(901, '2022-08-03 20:33:34', 1001, 'adx', 'OPen BUY (ADX) : price=1636.67 ADX_DIUP:7.55 ADX_DIDW:31.56998968 op_price:1636.67 big_f:1621.67', 3, 'ETHBUSD'),
(902, '2022-08-03 20:41:37', 1001, 'adx', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1631.67 price:1642.77 op_price:1636.67', 3, 'ETHBUSD'),
(903, '2022-08-03 22:18:12', 1001, 'EMA CROSS', 'Create SELL Stoploss :1652.28', 1, 'ETHUSDT'),
(904, '2022-08-03 22:18:44', 1001, 'adx', 'CLOSE-BUY Alert: price= price=1631.66 op_price=1636.67 big_f=1631.67', 3, 'ETHBUSD'),
(905, '2022-08-03 22:20:37', 1001, 'bb', 'WAIT-Down  Red Over SW_MAX / ADX_DIDW:36.37 sw_max:35 price:1630.0', 3, 'ETHBUSD'),
(906, '2022-08-03 22:43:16', 1001, 'EMA CROSS', 'Create SELL Stoploss :1642.28', 1, 'ETHUSDT'),
(907, '2022-08-03 22:44:07', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:7.98 sw_min:8 price:1619.64', 3, 'ETHBUSD'),
(908, '2022-08-03 22:44:07', 1001, 'adx', 'OPen BUY (ADX) : price=1619.64 ADX_DIUP:7.98 ADX_DIDW:35.63105147 op_price:1619.64 big_f:1604.64', 3, 'ETHBUSD'),
(909, '2022-08-03 22:46:17', 1001, 'adx', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1614.64 price:1625.59 op_price:1619.64', 3, 'ETHBUSD'),
(910, '2022-08-03 22:51:51', 1001, 'bb', ' !!Error client.futures_get_all_orders : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 2, 'ETHUSDT'),
(911, '2022-08-03 22:56:00', 1001, 'adx', 'BB Close Order Manual / op_price:1619.64 big_f:1614.64 price:1618.79', 3, 'ETHBUSD'),
(912, '2022-08-03 22:56:00', 1001, 'bb', 'WAIT-Down  Green down SW_MIN / ADX_DIUP:6.58 sw_min:8 price:1618.79', 3, 'ETHBUSD'),
(913, '2022-08-03 23:10:00', 1001, 'EMA CROSS', 'Create SELL Stoploss :1632.28', 1, 'ETHUSDT'),
(914, '2022-08-04 00:26:20', 1001, 'EMA CROSS', 'Close  SELL By Stop Loss:1632.44', 1, 'ETHUSDT'),
(915, '2022-08-04 01:02:23', 1001, 'EMA CROSS', 'BUY :1645.63', 1, 'ETHUSDT'),
(916, '2022-08-04 01:38:41', 1001, 'EMA CROSS', 'Create BUY Stoploss :1635.63', 1, 'ETHUSDT'),
(917, '2022-08-04 06:15:46', 1001, 'EMA CROSS', 'Close  BUY By Stoploss:1635.22', 1, 'ETHUSDT'),
(918, '2022-08-04 06:15:52', 1001, 'EMA CROSS', 'SELL :1636.89 fsp_p=20 big_f=1656.89', 1, 'ETHUSDT'),
(919, '2022-08-04 06:16:37', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1629.71 blower:1637.8', 2, 'ETHUSDT'),
(920, '2022-08-04 06:16:37', 1001, 'bb', 'OPen BUY (BB) : price=1629.71 big_f:1619.71 blower:1637.80364865 blower_min:1471.93 op_price:1629.71 ADX_DIDW:39.17662352', 2, 'ETHUSDT'),
(921, '2022-08-04 06:16:40', 1001, 'bb', 'WAIT-Down  Red Over SW_MAX / ADX_DIDW:39.43 sw_max:35 price:1630.78', 3, 'ETHBUSD'),
(922, '2022-08-04 06:16:40', 1001, 'adx', 'OPen BUY (ADX) : price=1630.78 ADX_DIUP:10.53 ADX_DIDW:39.43321648 op_price:1630.78 big_f:1615.78', 3, 'ETHBUSD'),
(923, '2022-08-04 06:20:31', 1001, 'EMA CROSS', 'Create SELL Stoploss :1646.89', 1, 'ETHUSDT'),
(924, '2022-08-04 06:24:30', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1619.5 op_price=1629.71 big_f=1619.71', 2, 'ETHUSDT'),
(925, '2022-08-04 06:24:36', 1001, 'bb', 'WAIT-Down  blower_min:1471.93 price:1619.3 blower:1630.98', 2, 'ETHUSDT'),
(926, '2022-08-04 06:24:36', 1001, 'bb', 'OPen BUY (BB) : price=1619.3 big_f:1609.3 blower:1630.97770963 blower_min:1471.93 op_price:1619.3 ADX_DIDW:45.04841222', 2, 'ETHUSDT'),
(927, '2022-08-04 06:30:19', 1001, 'EMA CROSS', 'Create SELL Stoploss :1636.89', 1, 'ETHUSDT'),
(928, '2022-08-04 06:35:19', 1001, 'bb', 'Create BUY-StopLoss : signal=Standard StopLoss big_f:1619.3 price:1629.68 op_price:1619.3', 2, 'ETHUSDT'),
(929, '2022-08-04 06:58:28', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1636.89 big_f:1636.89 price:1624.5', 1, 'ETHUSDT'),
(930, '2022-08-04 08:04:15', 1001, 'bb', 'CLOSE-BUY Alert: price= price=1623.24 op_price=1619.3 big_f=1624.0', 2, 'ETHUSDT'),
(931, '2022-08-04 08:58:59', 1001, 'adx', 'CLOSE-BUY Alert: price= price=1614.72 op_price=1630.78 big_f=1615.78', 3, 'ETHBUSD'),
(932, '2022-08-04 10:38:13', 1001, 'bb', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 2, 'ETHUSDT'),
(933, '2022-08-04 11:37:50', 1001, 'bb', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 2, 'ETHUSDT'),
(934, '2022-08-04 11:40:38', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(935, '2022-08-04 12:30:54', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(936, '2022-08-04 12:42:46', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(937, '2022-08-04 13:46:13', 1001, 'EMA CROSS', 'BUY :1638.92', 1, 'ETHUSDT'),
(938, '2022-08-04 14:15:51', 1001, 'EMA CROSS', 'Close BUY Stoploss Price: 1618.63 op_price:1638.92 big_f:1618.92', 1, 'ETHUSDT'),
(939, '2022-08-04 14:34:08', 1001, 'EMA CROSS', 'SELL :1601.01', 1, 'ETHUSDT'),
(940, '2022-08-04 14:46:58', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(941, '2022-08-04 14:48:03', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(942, '2022-08-04 16:24:42', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1601.01 big_f:1625.0 price:1621.61', 1, 'ETHUSDT'),
(943, '2022-08-05 00:08:09', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1616.43 bupper:1614.28 blower:1592.37', 2, 'ETHUSDT'),
(944, '2022-08-05 00:08:09', 1001, 'bb', 'OPEN SELL : price:1616.43 big_f:1626.43 bupper:1614.28428182 bupper_max:1642.25 op_price:1616.43 ADX_DIUP:27.81297659', 2, 'ETHUSDT'),
(945, '2022-08-05 00:48:43', 1001, 'bb', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1616.43 price:1606.11 op_price:1616.43', 2, 'ETHUSDT'),
(946, '2022-08-05 01:43:05', 1001, 'bb', 'Close SELL price:1617.48 op_price=1616.43 big_f=1616.43', 2, 'ETHUSDT'),
(947, '2022-08-05 01:43:27', 1001, 'bb', 'WAIT-Up  bupper_max:1642.25 price:1618.83 bupper:1615.46 blower:1606.71', 2, 'ETHUSDT'),
(948, '2022-08-05 01:43:27', 1001, 'bb', 'OPEN SELL : price:1618.83 big_f:1628.83 bupper:1615.45582297 bupper_max:1642.25 op_price:1618.83 ADX_DIUP:27.655345', 2, 'ETHUSDT'),
(949, '2022-08-05 01:47:34', 1001, 'bb', 'Close SELL price:1629.26 op_price=1618.83 big_f=1628.83', 2, 'ETHUSDT'),
(950, '2022-08-05 01:48:18', 1001, 'EMA CROSS', 'BUY :1629.49', 1, 'ETHUSDT'),
(951, '2022-08-05 01:48:34', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:42.19 price:1631.58', 3, 'ETHBUSD'),
(952, '2022-08-05 01:50:38', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:7.86 price:1634.1', 3, 'ETHBUSD'),
(953, '2022-08-05 01:50:38', 1001, 'adx', 'OPEN SELL : price:1634.1 ADX_DIDW:7.86389988 ADX_DIUP:44.59 op_price:1634.1 big_f:1649.1', 3, 'ETHBUSD'),
(954, '2022-08-05 01:57:16', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1641.13 op_price:1629.49 big_f:1619.49', 1, 'ETHUSDT'),
(955, '2022-08-05 01:59:02', 1001, 'adx', 'Close SELL price:1649.87 op_price=1634.1 big_f=1649.1', 3, 'ETHBUSD'),
(956, '2022-08-05 01:59:04', 1001, 'EMA CROSS', 'Create BUY Stoploss Price: 1650.27 op_price:1629.49 big_f:1629.49', 1, 'ETHUSDT'),
(957, '2022-08-05 01:59:09', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:48.09 price:1649.37', 3, 'ETHBUSD'),
(958, '2022-08-05 01:59:09', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:6.23 price:1649.37', 3, 'ETHBUSD'),
(959, '2022-08-05 01:59:09', 1001, 'adx', 'OPEN SELL : price:1649.37 ADX_DIDW:6.23177652 ADX_DIUP:48.09 op_price:1649.37 big_f:1664.37', 3, 'ETHBUSD'),
(960, '2022-08-05 02:06:14', 1001, 'bb', ' !!Error price of api binance  : ( Connection aborted. , RemoteDisconnected( Remote end closed connection without response ))', 2, 'ETHUSDT'),
(961, '2022-08-05 02:21:23', 1001, 'EMA CROSS', 'Create BUY Stoploss :1639.49', 1, 'ETHUSDT'),
(962, '2022-08-05 02:30:08', 1001, 'adx', 'Close SELL price:1664.84 op_price=1649.37 big_f=1664.37', 3, 'ETHBUSD'),
(963, '2022-08-05 02:30:14', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:42.54 price:1664.08', 3, 'ETHBUSD'),
(964, '2022-08-05 02:30:14', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:4.36 price:1664.08', 3, 'ETHBUSD'),
(965, '2022-08-05 02:30:14', 1001, 'adx', 'OPEN SELL : price:1664.08 ADX_DIDW:4.36009746 ADX_DIUP:42.54 op_price:1664.08 big_f:1679.08', 3, 'ETHBUSD'),
(966, '2022-08-05 02:35:42', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1669.08 price:1659.01 op_price:1664.08', 3, 'ETHBUSD'),
(967, '2022-08-05 02:49:03', 1001, 'EMA CROSS', 'EMA Close Order Manual / op_price:1629.49 big_f:1639.49 price:1662.98', 1, 'ETHUSDT'),
(968, '2022-08-05 04:27:56', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(969, '2022-08-05 05:10:55', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1659.08 price:1648.69 op_price:1664.08', 3, 'ETHBUSD'),
(970, '2022-08-05 05:23:33', 1001, 'adx', 'BB Close Order Manual / op_price:1664.08 big_f:1659.08 price:1653.52', 3, 'ETHBUSD'),
(971, '2022-08-05 06:05:07', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:44.39 price:1673.1', 3, 'ETHBUSD'),
(972, '2022-08-05 10:52:25', 1001, 'bb', 'WAIT-Up  bupper_max:1674.49 price:1674.49 bupper:1670.01 blower:1655.78', 2, 'ETHUSDT'),
(973, '2022-08-05 10:52:33', 1001, 'bb', 'WAIT-Up  bupper_max:1674.49 price:1673.8 bupper:1670.01 blower:1655.78', 2, 'ETHUSDT'),
(974, '2022-08-05 10:52:33', 1001, 'bb', 'OPEN SELL : price:1673.8 big_f:1683.8 bupper:1670.00786359 bupper_max:1674.49 op_price:1673.8 ADX_DIUP:23.50132713', 2, 'ETHUSDT'),
(975, '2022-08-05 10:55:18', 1001, 'EMA CROSS', ' !!Error Price of binance api : HTTPSConnectionPool(host= api.binance.com , port=443): Max retries exceeded with url: /api/v3/ticker/price?symbol=ETHUSDT (Caused by ConnectTimeoutError(<urllib3.connection.HTTPSConnection object at 0x0000023DA4AB2920>,  Connection to api.binance.com timed out. (connect timeout=None) ))', 1, 'ETHUSDT'),
(976, '2022-08-05 11:13:08', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:7.9 price:1675.44', 3, 'ETHBUSD'),
(977, '2022-08-05 11:13:08', 1001, 'adx', 'OPEN SELL : price:1675.44 ADX_DIDW:7.90199576 ADX_DIUP:34.86 op_price:1675.44 big_f:1690.44', 3, 'ETHBUSD'),
(978, '2022-08-05 11:18:05', 1001, 'bb', 'Close SELL price:1688.96 op_price=1673.8 big_f=1683.8', 2, 'ETHUSDT'),
(979, '2022-08-05 11:18:13', 1001, 'bb', 'WAIT-Up  bupper_max:1689.27 price:1689.27 bupper:1677.15 blower:1651.55', 2, 'ETHUSDT'),
(980, '2022-08-05 11:18:21', 1001, 'bb', 'WAIT-Up  bupper_max:1691.08 price:1691.08 bupper:1677.15 blower:1651.55', 2, 'ETHUSDT'),
(981, '2022-08-05 11:18:24', 1001, 'adx', 'Close SELL price:1691.54 op_price=1675.44 big_f=1690.44', 3, 'ETHBUSD'),
(982, '2022-08-05 11:18:30', 1001, 'bb', 'WAIT-Up  bupper_max:1694.36 price:1694.36 bupper:1677.15 blower:1651.55', 2, 'ETHUSDT'),
(983, '2022-08-05 11:18:32', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:6.22 price:1692.96', 3, 'ETHBUSD'),
(984, '2022-08-05 11:18:39', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:45.53 price:1689.52', 3, 'ETHBUSD'),
(985, '2022-08-05 11:18:40', 1001, 'adx', 'OPEN SELL : price:1689.52 ADX_DIDW:5.3746857 ADX_DIUP:45.53 op_price:1689.52 big_f:1704.52', 3, 'ETHBUSD'),
(986, '2022-08-05 11:42:31', 1001, 'adx', 'Close SELL price:1704.91 op_price=1689.52 big_f=1704.52', 3, 'ETHBUSD'),
(987, '2022-08-05 11:42:38', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:3.34 price:1705.02', 3, 'ETHBUSD'),
(988, '2022-08-05 11:44:06', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:43.3 price:1711.8', 3, 'ETHBUSD'),
(989, '2022-08-05 11:44:06', 1001, 'adx', 'OPEN SELL : price:1711.8 ADX_DIDW:3.2033384 ADX_DIUP:43.3 op_price:1711.8 big_f:1726.8', 3, 'ETHBUSD'),
(990, '2022-08-05 11:45:00', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1716.8 price:1706.72 op_price:1711.8', 3, 'ETHBUSD'),
(991, '2022-08-05 11:47:14', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : HTTPSConnectionPool(host= fapi.binance.com , port=443): Max retries exceeded with url: /fapi/v1/allOrders?timestamp=1659700024109&signature=1e939b2532f59ce0a942dd6f4ba15b5f402912026e6f244db7179a375e4ea7e3 (Caused by ConnectTimeoutError(<urllib3.connection.HTTPSConnection object at 0x000001ED9AFF1120>,  Connection to fapi.binance.com timed out. (connect timeout=10) ))', 1, 'ETHUSDT'),
(992, '2022-08-05 12:00:34', 1001, 'adx', 'Close SELL price:1717.65 op_price=1711.8 big_f=1716.8', 3, 'ETHBUSD'),
(993, '2022-08-05 12:00:42', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:2.43 price:1715.81', 3, 'ETHBUSD'),
(994, '2022-08-05 12:01:44', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:44.26 price:1723.74', 3, 'ETHBUSD'),
(995, '2022-08-05 12:01:45', 1001, 'adx', 'OPEN SELL : price:1723.74 ADX_DIDW:2.24425053 ADX_DIUP:44.26 op_price:1723.74 big_f:1738.74', 3, 'ETHBUSD'),
(996, '2022-08-05 12:02:07', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1728.74 price:1718.0 op_price:1723.74', 3, 'ETHBUSD'),
(997, '2022-08-05 12:30:08', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1718.74 price:1702.51 op_price:1723.74', 3, 'ETHBUSD'),
(998, '2022-08-05 12:30:40', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1708.74 price:1695.82 op_price:1723.74', 3, 'ETHBUSD'),
(999, '2022-08-05 12:38:27', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1698.74 price:1687.96 op_price:1723.74', 3, 'ETHBUSD'),
(1000, '2022-08-05 12:45:56', 1001, 'adx', 'BB Close Order Manual / op_price:1723.74 big_f:1698.74 price:1684.78', 3, 'ETHBUSD'),
(1001, '2022-08-05 12:50:06', 1001, 'bb', 'OPEN SELL : price:1677.11 big_f:1687.11 bupper:1719.22389677 bupper_max:1694.36 op_price:1677.11 ADX_DIUP:29.56776977', 2, 'ETHUSDT'),
(1002, '2022-08-05 12:58:22', 1001, 'EMA CROSS', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 1, 'ETHUSDT'),
(1003, '2022-08-05 13:01:24', 1001, 'bb', 'Close SELL price:1688.55 op_price=1677.11 big_f=1687.11', 2, 'ETHUSDT'),
(1004, '2022-08-05 13:50:41', 1001, 'bb', ' !!Error client.futures_get_all_orders : APIError(code=-1021): Timestamp for this request is outside of the recvWindow.', 2, 'ETHUSDT'),
(1005, '2022-08-05 13:53:53', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(1006, '2022-08-05 14:23:54', 1001, 'bb', ' !!Error client.futures_get_all_orders : HTTPSConnectionPool(host= fapi.binance.com , port=443): Read timed out. (read timeout=10)', 2, 'ETHUSDT'),
(1007, '2022-08-05 14:59:38', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , ConnectionResetError(10054,  An existing connection was forcibly closed by the remote host , None, 10054, None))', 1, 'ETHUSDT'),
(1008, '2022-08-05 16:47:21', 1001, 'EMA CROSS', ' !!Error TradingView API : ( Connection aborted. , RemoteDisconnected( Remote end closed connection without response ))', 1, 'ETHUSDT'),
(1009, '2022-08-05 21:01:59', 1001, 'bb', 'WAIT-Up  bupper_max:1694.36 price:1688.87 bupper:1685.27 blower:1660.45', 2, 'ETHUSDT'),
(1010, '2022-08-05 21:01:59', 1001, 'bb', 'OPEN SELL : price:1688.87 big_f:1698.87 bupper:1685.27380492 bupper_max:1694.36 op_price:1688.87 ADX_DIUP:22.0594043', 2, 'ETHUSDT'),
(1011, '2022-08-05 21:02:14', 1001, 'EMA CROSS', 'BUY :1689.3', 1, 'ETHUSDT'),
(1012, '2022-08-05 21:14:59', 1001, 'EMA CROSS', 'Create BUY Stoploss :1679.3', 1, 'ETHUSDT'),
(1013, '2022-08-05 21:15:01', 1001, 'bb', 'Close SELL price:1705.76 op_price=1688.87 big_f=1698.87', 2, 'ETHUSDT'),
(1014, '2022-08-05 21:15:33', 1001, 'EMA CROSS', 'Create BUY Stoploss :1689.3', 1, 'ETHUSDT'),
(1015, '2022-08-05 21:15:37', 1001, 'bb', 'WAIT-Up Green Over SW_MAX  ADX_DIUP:42.45 price:1710.09', 3, 'ETHBUSD'),
(1016, '2022-08-05 21:38:33', 1001, 'EMA CROSS', ' !!Error TradingView API : Can t access TradingView s API. HTTP status code: 504. Check for invalid symbol, exchange, or indicators.', 1, 'ETHUSDT'),
(1017, '2022-08-05 22:52:40', 1001, 'EMA CROSS', 'Create BUY Stoploss :1699.3', 1, 'ETHUSDT'),
(1018, '2022-08-05 23:05:45', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:7.99 price:1720.76', 3, 'ETHBUSD'),
(1019, '2022-08-05 23:05:45', 1001, 'adx', 'OPEN SELL : price:1720.76 ADX_DIDW:7.99257823 ADX_DIUP:28.6 op_price:1720.76 big_f:1735.76', 3, 'ETHBUSD'),
(1020, '2022-08-05 23:11:10', 1001, 'adx', 'Create Sell-StopLossX : signal=Standard StopLoss big_f:1725.76 price:1715.48 op_price:1720.76', 3, 'ETHBUSD'),
(1021, '2022-08-05 23:14:17', 1001, 'adx', 'Close SELL price:1728.98 op_price=1720.76 big_f=1725.76', 3, 'ETHBUSD'),
(1022, '2022-08-05 23:14:25', 1001, 'EMA CROSS', 'Create BUY Stoploss :1709.3', 1, 'ETHUSDT'),
(1023, '2022-08-05 23:14:34', 1001, 'bb', 'WAIT-Up Red Down SW_MAX  ADX_DIDW:6.45 price:1727.07', 3, 'ETHBUSD'),
(1024, '2022-08-05 23:55:01', 1001, 'bb', 'WAIT-Up  bupper_max:1738.55 price:1738.55 bupper:1735.45 blower:1660.77', 2, 'ETHUSDT'),
(1025, '2022-08-05 23:56:50', 1001, 'EMA CROSS', 'Create BUY Stoploss :1719.3', 1, 'ETHUSDT'),
(1026, '2022-08-06 00:46:40', 1001, 'EMA CROSS', 'Create BUY Stoploss :1729.3', 1, 'ETHUSDT');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `stg_type` varchar(20) NOT NULL,
  `order_type` varchar(20) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `open_price` int(11) NOT NULL,
  `close_price` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  `remark` varchar(100) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`order_id`, `user_id`, `order_date`, `stg_type`, `order_type`, `order_status`, `open_price`, `close_price`, `last_update`, `remark`, `symbol`, `seq`) VALUES
(7, 1001, '2022-07-21 23:05:14', 'EMA', 'BUY', 'close', 1525, 1539, '2022-07-21 23:14:01', '', 'ETHUSDT', 1),
(16, 1001, '2022-07-22 20:45:51', 'BB', 'BUY', 'close', 1611, 1615, '2022-07-22 20:53:47', '', 'ETHBUSD', 2),
(17, 1001, '2022-07-22 20:55:28', 'BB', 'SELL', 'close', 1609, 1599, '2022-07-22 20:57:32', 'manual', 'ETHBUSD', 2),
(18, 1001, '2022-07-22 20:57:37', 'BB', 'SELL', 'close', 1600, 1610, '2022-07-22 21:48:28', '', 'ETHBUSD', 2),
(19, 1001, '2022-07-23 00:40:48', 'EMA', 'SELL', 'close', 1561, 1551, '2022-07-23 07:34:28', '', 'ETHUSDT', 1),
(20, 1001, '2022-07-23 09:12:00', 'EMA', 'BUY', 'close', 1564, 1569, '2022-07-23 14:09:06', '', 'ETHUSDT', 1),
(21, 1001, '2022-07-23 15:53:13', 'EMA', 'SELL', 'close', 1558, 1520, '2022-07-23 20:01:02', 'manual', 'ETHUSDT', 1),
(22, 1001, '2022-07-23 15:58:03', 'BB', 'SELL', 'close', 1553, 1558, '2022-07-23 16:25:59', '', 'ETHBUSD', 2),
(23, 1001, '2022-07-23 18:15:47', 'BB', 'SELL', 'close', 1529, 1523, '2022-07-23 19:16:17', 'manual', 'ETHBUSD', 2),
(24, 1001, '2022-07-24 01:16:36', 'BB', 'BUY', 'close', 1510, 1495, '2022-07-24 02:11:23', '', 'ETHBUSD', 2),
(25, 1001, '2022-07-24 05:26:50', 'BB', 'SELL', 'close', 1540, 1556, '2022-07-24 07:01:37', '', 'ETHBUSD', 2),
(26, 1001, '2022-07-24 06:03:47', 'EMA', 'BUY', 'close', 1551, 1595, '2022-07-24 15:36:08', '', 'ETHUSDT', 1),
(27, 1001, '2022-07-24 17:35:57', 'BB', 'BUY', 'close', 1593, 1619, '2022-07-24 18:25:03', 'manual', 'ETHBUSD', 2),
(28, 1001, '2022-07-24 19:44:06', 'BB', 'BUY', 'close', 1597, 1582, '2022-07-24 19:56:36', '', 'ETHBUSD', 2),
(29, 1001, '2022-07-24 21:23:07', 'EMA', 'BUY', 'close', 1611, 1591, '2022-07-24 23:17:36', '', 'ETHUSDT', 1),
(30, 1001, '2022-07-24 21:26:00', 'BB', 'SELL', 'close', 1608, 1596, '2022-07-24 23:11:56', 'manual', 'ETHBUSD', 2),
(31, 1001, '2022-07-24 23:19:54', 'BB', 'BUY', 'close', 1591, 1595, '2022-07-25 00:33:35', '', 'ETHBUSD', 2),
(32, 1001, '2022-07-25 00:16:36', 'EMA', 'BUY', 'close', 1609, 1632, '2022-07-25 05:50:57', '', 'ETHUSDT', 1),
(33, 1001, '2022-07-25 02:33:40', 'BB', 'SELL', 'close', 1614, 1611, '2022-07-25 03:40:56', '', 'ETHBUSD', 2),
(34, 1001, '2022-07-25 03:43:31', 'BB', 'SELL', 'close', 1619, 1624, '2022-07-25 04:12:14', '', 'ETHBUSD', 2),
(35, 1001, '2022-07-25 04:12:22', 'BB', 'SELL', 'close', 1623, 1632, '2022-07-25 04:33:53', '', 'ETHBUSD', 2),
(36, 1001, '2022-07-25 04:34:01', 'BB', 'SELL', 'close', 1631, 1640, '2022-07-25 05:39:37', '', 'ETHBUSD', 2),
(37, 1001, '2022-07-25 05:40:13', 'BB', 'SELL', 'close', 1640, 1655, '2022-07-25 05:42:12', '', 'ETHBUSD', 2),
(38, 1001, '2022-07-25 05:54:22', 'BB', 'BUY', 'close', 1601, 1595, '2022-07-25 06:04:30', '', 'ETHBUSD', 2),
(39, 1001, '2022-07-25 06:05:05', 'BB', 'BUY', 'close', 1591, 1596, '2022-07-25 06:18:41', '', 'ETHBUSD', 2),
(40, 1001, '2022-07-25 07:27:07', 'EMA', 'SELL', 'close', 1574, 1515, '2022-07-25 11:22:38', 'manual', 'ETHUSDT', 1),
(41, 1001, '2022-07-25 13:38:25', 'BB', 'BUY', 'close', 1520, 1515, '2022-07-25 15:21:34', '', 'ETHBUSD', 2),
(42, 1001, '2022-07-25 17:17:28', 'BB', 'SELL', 'close', 1546, 1525, '2022-07-25 20:41:10', '', 'ETHBUSD', 2),
(43, 1001, '2022-07-25 19:10:08', 'EMA', 'SELL', 'close', 1521, 1525, '2022-07-25 21:56:22', '', 'ETHUSDT', 1),
(44, 1001, '2022-07-26 19:19:51', 'BB', 'BUY', 'close', 1407, 1391, '2022-07-26 19:38:23', '', 'ETHBUSD', 2),
(45, 1001, '2022-07-26 19:38:32', 'BB', 'BUY', 'close', 1394, 1378, '2022-07-26 20:11:27', '', 'ETHBUSD', 2),
(46, 1001, '2022-07-27 04:08:06', 'BB', 'SELL', 'close', 1394, 1395, '2022-07-27 05:14:52', '', 'ETHBUSD', 2),
(47, 1001, '2022-07-27 07:11:13', 'EMA', 'BUY', 'close', 1458, 1438, '2022-07-27 07:36:31', '', 'ETHUSDT', 1),
(48, 1001, '2022-07-27 12:47:07', 'EMA', 'BUY', 'close', 1454, 1480, '2022-07-27 23:58:50', '', 'ETHUSDT', 1),
(49, 1001, '2022-07-27 19:46:03', 'BB', 'SELL', 'close', 1476, 1474, '2022-07-27 20:25:43', 'manual', 'ETHBUSD', 2),
(50, 1001, '2022-07-27 20:58:22', 'BB', 'SELL', 'close', 1491, 1485, '2022-07-27 21:36:37', 'manual', 'ETHBUSD', 2),
(51, 1001, '2022-07-27 23:25:44', 'BB', 'SELL', 'close', 1515, 1500, '2022-07-27 23:50:32', 'manual', 'ETHBUSD', 2),
(52, 1001, '2022-07-28 01:04:24', 'BB', 'SELL', 'close', 1540, 1556, '2022-07-28 01:27:57', '', 'ETHBUSD', 2),
(53, 1001, '2022-07-28 01:45:37', 'BB', 'SELL', 'close', 1582, 1597, '2022-07-28 02:07:30', '', 'ETHBUSD', 2),
(54, 1001, '2022-07-28 09:55:28', 'BB', 'SELL', 'close', 1665, 1645, '2022-07-28 12:40:09', '', 'ETHBUSD', 2),
(55, 1001, '2022-07-28 18:45:42', 'EMA', 'BUY', 'close', 1640, 1619, '2022-07-28 19:27:27', '', 'ETHUSDT', 1),
(56, 1001, '2022-07-28 22:42:05', 'BB', 'SELL', 'close', 1719, 1735, '2022-07-28 22:52:50', '', 'ETHBUSD', 2),
(57, 1001, '2022-07-28 22:52:58', 'BB', 'SELL', 'close', 1734, 1753, '2022-07-28 22:53:49', '', 'ETHBUSD', 2),
(58, 1001, '2022-07-28 22:53:59', 'BB', 'SELL', 'close', 1748, 1743, '2022-07-29 00:38:37', '', 'ETHBUSD', 2),
(59, 1001, '2022-07-29 03:36:05', 'BB', 'SELL', 'close', 1764, 1779, '2022-07-29 03:37:32', '', 'ETHBUSD', 2),
(60, 1001, '2022-07-29 03:37:45', 'BB', 'SELL', 'close', 1780, 1750, '2022-07-29 03:50:09', '', 'ETHBUSD', 2),
(61, 1001, '2022-07-29 07:18:22', 'BB', 'BUY', 'close', 1704, 1714, '2022-07-29 08:27:42', '', 'ETHBUSD', 2),
(62, 1001, '2022-07-29 11:09:39', 'EMA', 'BUY', 'close', 1729, 1709, '2022-07-29 14:13:23', '', 'ETHUSDT', 1),
(63, 1001, '2022-07-29 18:34:38', 'BB', 'BUY', 'close', 1686, 1676, '2022-07-29 18:43:41', '', 'ETHBUSD', 2),
(64, 1001, '2022-07-29 18:44:09', 'BB', 'BUY', 'close', 1671, 1661, '2022-07-29 19:44:55', '', 'ETHBUSD', 2),
(65, 1001, '2022-07-29 21:30:37', 'EMA', 'BUY', 'close', 1737, 1716, '2022-07-29 22:03:36', '', 'ETHUSDT', 1),
(66, 1001, '2022-07-29 23:15:13', 'BB', 'BUY', 'close', 1678, 1711, '2022-07-30 02:31:08', '', 'ETHBUSD', 2),
(67, 1001, '2022-07-30 01:37:42', 'EMA', 'BUY', 'close', 1729, 1707, '2022-07-30 04:38:03', '', 'ETHUSDT', 1),
(68, 1001, '2022-07-30 08:50:07', 'BB', 'BUY', 'close', 1697, 1701, '2022-07-30 09:32:59', '', 'ETHBUSD', 2),
(69, 1001, '2022-07-30 17:06:08', 'BB', 'BUY', 'close', 1688, 1727, '2022-07-30 20:28:21', 'manual', 'ETHBUSD', 2),
(70, 1001, '2022-07-30 17:13:13', 'EMA', 'SELL', 'close', 1682, 1721, '2022-07-30 19:59:50', '', 'ETHUSDT', 1),
(71, 1001, '2022-07-31 02:44:11', 'BB', 'BUY', 'close', 1700, 1684, '2022-07-31 05:00:40', '', 'ETHBUSD', 2),
(72, 1001, '2022-07-31 02:45:42', 'EMA', 'SELL', 'close', 1693, 1720, '2022-07-31 17:59:06', '', 'ETHUSDT', 1),
(73, 1001, '2022-07-31 05:01:40', 'BB', 'BUY', 'close', 1686, 1687, '2022-07-31 06:19:42', 'manual', 'ETHBUSD', 2),
(74, 1001, '2022-07-31 21:44:40', 'EMA', 'SELL', 'close', 1695, 1723, '2022-08-01 01:08:00', '', 'ETHUSDT', 1),
(75, 1001, '2022-08-01 01:11:37', 'BB', 'SELL', 'close', 1733, 1748, '2022-08-01 01:13:32', '', 'ETHBUSD', 2),
(76, 1001, '2022-08-01 01:15:11', 'BB', 'SELL', 'close', 1749, 1709, '2022-08-01 01:39:19', '', 'ETHBUSD', 2),
(77, 1001, '2022-08-01 01:32:14', 'EMA', 'SELL', 'close', 1695, 1724, '2022-08-01 02:05:19', '', 'ETHUSDT', 1),
(78, 1001, '2022-08-01 05:02:18', 'EMA', 'SELL', 'close', 1699, 1688, '2022-08-01 07:33:08', 'manual', 'ETHUSDT', 1),
(79, 1001, '2022-08-01 05:28:14', 'BB', 'BUY', 'close', 1684, 1668, '2022-08-01 05:39:44', '', 'ETHBUSD', 2),
(80, 1001, '2022-08-01 05:41:06', 'BB', 'BUY', 'close', 1672, 1696, '2022-08-01 09:25:18', 'manual', 'ETHBUSD', 2),
(81, 1001, '2022-08-01 17:52:53', 'BB', 'BUY', 'close', 1655, 1655, '2022-08-01 19:55:14', '', 'ETHBUSD', 2),
(82, 1001, '2022-08-02 09:33:44', 'ADX', 'BUY', 'close', 1589, 1583, '2022-08-02 09:57:32', '', 'ETHBUSD', 3),
(83, 1001, '2022-08-02 09:34:11', 'BB', 'BUY', 'close', 1588, 1572, '2022-08-02 10:15:26', '', 'ETHBUSD', 2),
(84, 1001, '2022-08-02 10:14:58', 'ADX', 'BUY', 'close', 1575, 1577, '2022-08-02 14:06:43', '', 'ETHBUSD', 3),
(85, 1001, '2022-08-02 22:52:36', 'BB', 'BUY', 'close', 1628, 1663, '2022-08-02 23:52:45', '', 'ETHBUSD', 2),
(86, 1001, '2022-08-02 23:20:10', 'EMA', 'BUY', 'close', 1650, 1657, '2022-08-03 00:30:45', '', 'ETHUSDT', 1),
(87, 1001, '2022-08-03 07:27:12', 'EMA', 'SELL', 'close', 1605, 1615, '2022-08-03 08:50:35', '', 'ETHUSDT', 1),
(88, 1001, '2022-08-03 13:08:13', 'EMA', 'BUY', 'close', 1638, 1627, '2022-08-03 14:57:43', '', 'ETHUSDT', 1),
(89, 1001, '2022-08-03 15:44:07', 'EMA', 'BUY', 'close', 1647, 1663, '2022-08-03 18:53:01', 'manual', 'ETHUSDT', 1),
(90, 1001, '2022-08-03 15:46:05', 'ADX', 'SELL', 'close', 1648, 1657, '2022-08-03 16:13:43', 'manual', 'ETHBUSD', 3),
(91, 1001, '2022-08-04 03:23:35', 'EMA', 'SELL', 'close', 1642, 1632, '2022-08-04 07:26:20', '', 'ETHUSDT', 1),
(92, 1001, '2022-08-04 03:33:34', 'ADX', 'BUY', 'close', 1637, 1632, '2022-08-04 05:18:44', '', 'ETHBUSD', 3),
(93, 1001, '2022-08-04 05:44:07', 'ADX', 'BUY', 'close', 1620, 1619, '2022-08-04 05:56:00', 'manual', 'ETHBUSD', 3),
(94, 1001, '2022-08-04 08:02:23', 'EMA', 'BUY', 'close', 1646, 1635, '2022-08-04 13:15:46', '', 'ETHUSDT', 1),
(95, 1001, '2022-08-04 13:15:52', 'EMA', 'SELL', 'close', 1637, 1625, '2022-08-04 13:58:28', 'manual', 'ETHUSDT', 1),
(96, 1001, '2022-08-04 13:16:37', 'BB', 'BUY', 'close', 1630, 1620, '2022-08-04 13:24:30', '', 'ETHUSDT', 2),
(97, 1001, '2022-08-04 13:16:40', 'ADX', 'BUY', 'close', 1631, 1615, '2022-08-04 15:58:59', '', 'ETHBUSD', 3),
(98, 1001, '2022-08-04 13:24:36', 'BB', 'BUY', 'close', 1619, 1623, '2022-08-04 15:04:15', '', 'ETHUSDT', 2),
(99, 1001, '2022-08-04 20:46:13', 'EMA', 'BUY', 'close', 1639, 1619, '2022-08-04 21:15:51', '', 'ETHUSDT', 1),
(100, 1001, '2022-08-04 21:34:08', 'EMA', 'SELL', 'close', 1601, 1622, '2022-08-04 23:24:42', 'manual', 'ETHUSDT', 1),
(101, 1001, '2022-08-05 07:08:09', 'BB', 'SELL', 'close', 1616, 1617, '2022-08-05 08:43:05', '', 'ETHUSDT', 2),
(102, 1001, '2022-08-05 08:43:27', 'BB', 'SELL', 'close', 1619, 1629, '2022-08-05 08:47:34', '', 'ETHUSDT', 2),
(103, 1001, '2022-08-05 08:48:18', 'EMA', 'BUY', 'close', 1629, 1663, '2022-08-05 09:49:03', 'manual', 'ETHUSDT', 1),
(104, 1001, '2022-08-05 08:50:38', 'ADX', 'SELL', 'close', 1634, 1650, '2022-08-05 08:59:02', '', 'ETHBUSD', 3),
(105, 1001, '2022-08-05 08:59:09', 'ADX', 'SELL', 'close', 1649, 1665, '2022-08-05 09:30:08', '', 'ETHBUSD', 3),
(106, 1001, '2022-08-05 09:30:14', 'ADX', 'SELL', 'close', 1664, 1654, '2022-08-05 12:23:33', 'manual', 'ETHBUSD', 3),
(107, 1001, '2022-08-05 17:52:33', 'BB', 'SELL', 'close', 1674, 1689, '2022-08-05 18:18:05', '', 'ETHUSDT', 2),
(108, 1001, '2022-08-05 18:13:08', 'ADX', 'SELL', 'close', 1675, 1692, '2022-08-05 18:18:24', '', 'ETHBUSD', 3),
(109, 1001, '2022-08-05 18:18:40', 'ADX', 'SELL', 'close', 1690, 1705, '2022-08-05 18:42:31', '', 'ETHBUSD', 3),
(110, 1001, '2022-08-05 18:44:06', 'ADX', 'SELL', 'close', 1712, 1718, '2022-08-05 19:00:34', '', 'ETHBUSD', 3),
(111, 1001, '2022-08-05 19:01:45', 'ADX', 'SELL', 'close', 1724, 1685, '2022-08-05 19:45:56', 'manual', 'ETHBUSD', 3),
(112, 1001, '2022-08-05 19:50:06', 'BB', 'SELL', 'close', 1677, 1689, '2022-08-05 20:01:24', '', 'ETHUSDT', 2),
(113, 1001, '2022-08-06 04:01:59', 'BB', 'SELL', 'close', 1689, 1706, '2022-08-06 04:15:01', '', 'ETHUSDT', 2),
(114, 1001, '2022-08-06 04:02:14', 'EMA', 'BUY', 'open', 1689, 0, '2022-08-06 04:02:14', '', 'ETHUSDT', 1),
(115, 1001, '2022-08-06 06:05:45', 'ADX', 'SELL', 'close', 1721, 1729, '2022-08-06 06:14:17', '', 'ETHBUSD', 3);

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
  `setup_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_setup`
--

INSERT INTO `tb_setup` (`user_id`, `seq`, `symbol`, `wait_p`, `gap_p`, `close_p`, `sw_max`, `sw_min`, `fsp_p`, `stoploss_p`, `lot_p`, `lev_p`, `userclose_p`, `order_active`, `over_bolling`, `trend_sty`, `bb_sty`, `time_frame`, `stg_code`, `stg_active`, `setup_name`) VALUES
(1001, 1, 'ETHUSDT', 3, 4, 3, 32, 10, 20, 10, 0.05, 20, 1, 1, 0, 'Y', 'N', 30, 'ema', 'Y', 'พัท'),
(1001, 2, 'ETHUSDT', 3, 4, 3, 30, 10, 10, 10, 0.05, 20, 1, 0, 2, 'N', 'Y', 15, 'bb', 'Y', 'ไอ้เสือ'),
(1001, 3, 'ETHBUSD', 0, 0, 0, 41, 8, 15, 10, 0.05, 20, 0, 1, 0, 'N', 'N', 5, 'adx', 'Y', 'ADX Spiecy');

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
  `close_order` int(11) NOT NULL,
  `adx_sell_up` int(11) NOT NULL,
  `adx_sell_down` int(11) NOT NULL,
  `adx_buy_up` int(11) NOT NULL,
  `adx_buy_down` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_temp`
--

INSERT INTO `tb_temp` (`seq`, `user_id`, `buy_f`, `sell_f`, `wait_f`, `op_price`, `big_f`, `buy_bb`, `sell_bb`, `wait_bb`, `op_bb`, `big_bb`, `max_bb`, `low_bb`, `last_update`, `last_price`, `close_order`, `adx_sell_up`, `adx_sell_down`, `adx_buy_up`, `adx_buy_down`) VALUES
(1, 0, 1, 0, 0, 1689.3, 1729.3, 0, 0, 0, 0, 0, 0, 0, '2022-08-06 00:46:40', 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1738.55, 1471.93, '2022-08-06 01:16:56', 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-06 01:16:59', 0, 0, 0, 1, 0, 0);

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
`close_price` int(11)
,`last_update` datetime
,`open_price` int(11)
,`order_date` datetime
,`order_id` int(11)
,`order_status` varchar(20)
,`order_type` varchar(20)
,`remark` varchar(100)
,`seq` int(11)
,`stg_nm` varchar(20)
,`stg_type` varchar(20)
,`symbol` varchar(20)
,`user_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vsetup`
-- (See below for the actual view)
--
CREATE TABLE `vsetup` (
`bb_sty` varchar(1)
,`close_p` int(11)
,`fsp_p` int(11)
,`gap_p` int(11)
,`lev_p` float
,`lot_p` float
,`order_active` int(11)
,`over_bolling` int(11)
,`seq` int(11)
,`stg_active` varchar(1)
,`stg_code` varchar(20)
,`stg_nm` varchar(20)
,`stoploss_p` int(11)
,`sw_max` float
,`sw_min` float
,`symbol` varchar(20)
,`time_frame` int(11)
,`trend_sty` varchar(1)
,`user_id` int(11)
,`userclose_p` int(11)
,`wait_p` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vsetup_user_temp`
-- (See below for the actual view)
--
CREATE TABLE `vsetup_user_temp` (
`bb_sty` varchar(1)
,`big_f` float
,`buy_f` int(11)
,`close_p` int(11)
,`fsp_p` int(11)
,`gap_p` int(11)
,`last_update` timestamp
,`lev_p` float
,`lot_p` float
,`op_price` float
,`order_active` int(11)
,`over_bolling` int(11)
,`sell_f` int(11)
,`seq` int(11)
,`setup_name` varchar(100)
,`stg_active` varchar(1)
,`stg_code` varchar(20)
,`stoploss_p` int(11)
,`sw_max` float
,`sw_min` float
,`symbol` varchar(20)
,`time_frame` int(11)
,`trend_sty` varchar(1)
,`user_id` int(11)
,`user_name` varchar(100)
,`user_role` varchar(10)
,`userclose_p` int(11)
,`wait_f` int(11)
,`wait_p` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vtemp`
-- (See below for the actual view)
--
CREATE TABLE `vtemp` (
`big_bb` float
,`big_f` float
,`buy_bb` int(11)
,`buy_f` int(11)
,`close_order` int(11)
,`last_price` float
,`last_update` timestamp
,`low_bb` float
,`max_bb` float
,`op_bb` float
,`op_price` float
,`sell_bb` int(11)
,`sell_f` int(11)
,`seq` int(11)
,`stg_nm` varchar(20)
,`user_id` int(11)
,`wait_bb` int(11)
,`wait_f` int(11)
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
-- Indexes for table `log_history`
--
ALTER TABLE `log_history`
  ADD PRIMARY KEY (`log_seq`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`order_id`);

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
-- AUTO_INCREMENT for table `log_history`
--
ALTER TABLE `log_history`
  MODIFY `log_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tb_setup`
--
ALTER TABLE `tb_setup`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_temp`
--
ALTER TABLE `tb_temp`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
