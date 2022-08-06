-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2022 at 02:31 PM
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
-- Table structure for table `log_history`
--

CREATE TABLE `log_history` (
  `log_seq` int(11) NOT NULL,
  `log_date` timestamp NOT NULL,
  `user_id` int(11) NOT NULL,
  `stg_type` varchar(20) NOT NULL,
  `log_detail` varchar(500) NOT NULL,
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
(232, '2022-07-25 00:27:07', 1001, 'EMA CROSS', 'SELL :1573.68 fsp_p=20 big_f=1593.68', 1, 'ETHUSDT');

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
(40, 1001, '2022-07-25 07:27:07', 'EMA', 'SELL', 'open', 1574, 0, '2022-07-25 07:27:07', '', 'ETHUSDT', 1);

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
  MODIFY `log_seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
