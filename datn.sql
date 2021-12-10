-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2021 lúc 05:49 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `thumbnail`) VALUES
(1, 'Duong Van Dat', 'datb', 'datb', 'admin.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collect`
--

CREATE TABLE `collect` (
  `id` int(11) NOT NULL,
  `collection_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `collect`
--

INSERT INTO `collect` (`id`, `collection_name`) VALUES
(1, 'Ipple'),
(2, 'SamSung'),
(3, 'Oppo'),
(4, 'Nokia'),
(5, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `content`) VALUES
(1, '<h1>C&ocirc;ng ty&nbsp;Tuấn B&nbsp;được th&agrave;nh lập từ th&aacute;ng 09&nbsp;năm 2021</h1>\r\n\r\n<p>Người đại diện: Dương Văn Đạt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Số ĐKKD 0107756568 do sở KHĐT TP. Th&aacute;i Nguy&ecirc;n&nbsp;cấp ng&agrave;y 10/09/2021<br />\r\n<br />\r\nTuấn B&nbsp;l&agrave; một trong những thương hiệu điện thoại&nbsp;uy t&iacute;n h&agrave;ng đầu Việt Nam. Với sự quản l&yacute; chặt chẽ, chuy&ecirc;n nghiệp của đội ngủ quản l&yacute;; Nỗ lực s&aacute;ng tạo kh&ocirc;ng ngừng của bộ phận thiết kế, Sự tận t&acirc;m chuy&ecirc;n nghiệp của nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng&hellip; l&agrave; những yếu tố l&agrave;m n&ecirc;n thương hiệu điện thoại Tuấn B&nbsp;lớn mạnh như hiện nay.</p>\r\n\r\n<p>Hiện nay, thương hiệu điện thoai&nbsp; Tuấn B&nbsp;ph&aacute;t triển ng&agrave;y c&agrave;ng lớn mạnh tại Th&aacute;i Nguy&ecirc;n. Ngo&agrave;i ra, nhằm tạo sự tiện lợi mua sắm tối đa cho kh&aacute;ch h&agrave;ng, Tuấn B&nbsp;ph&aacute;t triển hệ thống b&aacute;n h&agrave;ng online qua website; v&agrave; fanpag: l&agrave; Fanpage ch&iacute;nh thức của nh&atilde;n h&agrave;ng, ch&uacute;ng t&ocirc;i giao h&agrave;ng đến tận tay người ti&ecirc;u dung tr&ecirc;n to&agrave;n quốc. Giờ đ&acirc;y ngay tại nh&agrave; bạn cũng c&oacute; thể chọn cho m&igrave;nh những sản phẩm ph&ugrave; hợp với sở th&iacute;ch v&agrave; phong c&aacute;ch qua website:&nbsp;http://localhost:8080/datn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đến với Tuấn B, ch&uacute;ng t&ocirc;i lu&ocirc;n tận t&acirc;m tư vấn gi&uacute;p qu&yacute; kh&aacute;ch t&igrave;m được những sản phẩm y&ecirc;u th&iacute;ch, ph&ugrave; hợp với nhu cầu v&agrave; g&oacute;p phần tạo n&ecirc;n phong c&aacute;ch cho ri&ecirc;ng m&igrave;nh!</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `info_footer` text COLLATE utf8_unicode_ci NOT NULL,
  `hotline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marquee` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `info_footer`, `hotline`, `address`, `email`, `marquee`) VALUES
(1, '<p><strong>Tuấn B</strong>&nbsp;l&agrave; cửa h&agrave;ng điện thoại&nbsp;uy t&iacute;n c&oacute; trụ sở ch&iacute;nh tại Tp Th&aacute;i Nguy&ecirc;n.</p>\r\n\r\n<p>Tuấn B chuy&ecirc;n cung cấp những chiếc điện thoại, phụ kiện chất lượng cao gi&aacute; th&agrave;nh rẻ ph&ugrave; hợp với tất cả mọi người y&ecirc;u th&iacute;ch đồ c&ocirc;ng nghệ uy t&iacute;n.</p>\r\n', '0972358500', 'Số 25 Đường Bến Tượng - TP Thái Nguyên', 'tuanb@gmail.com', 'Chào mừng đến với Hoàng Minh shop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `logo`) VALUES
(1, 'a.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` int(11) NOT NULL,
  `producer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_producer` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `producer_id`, `name_producer`) VALUES
(1, 'ip', 'Ipple'),
(2, 'ss', 'SamSung'),
(3, 'op', 'Oppo'),
(4, 'no', 'Nokia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `name_product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_producer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` text COLLATE utf8_unicode_ci NOT NULL,
  `des_short` text COLLATE utf8_unicode_ci NOT NULL,
  `investment_money` int(200) NOT NULL,
  `price` int(40) NOT NULL,
  `discount` int(40) NOT NULL,
  `total` int(4) NOT NULL,
  `sell` int(11) NOT NULL,
  `image_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `size_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name_product`, `view`, `name_product_type`, `name_producer`, `des`, `des_short`, `investment_money`, `price`, `discount`, `total`, `sell`, `image_link`, `created`, `size_type`, `collection_name`) VALUES
(88, 'Iphone 13 Pro max ', 7, 'Cảm Ứng', 'Ipple', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>GBS :&nbsp;C&oacute;</li>\r\n	<li>Kết nối USB :&nbsp;Lightning</li>\r\n	<li>Băng tần 2G :&nbsp;GSM/EDGE (850, 900, 1800, 1900 MHz)</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh: 6.5 inchs HD Retina</li>\r\n	<li>Pin:&nbsp;2675 mAh</li>\r\n	<li>CPU :&nbsp;Hexa-core (2x Monsoon + 4x Mistral)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 7.0 MP</li>\r\n	<li>M&agrave;u Gold</li>\r\n	<li>Ram:&nbsp;32 GB</li>\r\n	<li>HĐH:&nbsp;iOS 11</li>\r\n</ul>\r\n', 12000000, 22000000, 21600000, 10, 2, 'ip12.jpg', '2021-09-15 13:49:24', '32g', 'Ipple'),
(91, 'Iphon 6s Plus++++', 19, 'Cảm Ứng', 'Ipple', '<p>Kết nối &amp; Cổng giao tiếp</p>\r\n\r\n<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;32 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>Băng tần 2G :&nbsp;GSM 850 / 900 / 1800 / 1900</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh:&nbsp;5.5 inch, 1080 x 1920 pixels</li>\r\n	<li>Pin:&nbsp;lithium-ion battery 2750mAh</li>\r\n	<li>CPU :&nbsp;Apple A9, 2 Nh&acirc;n, Dual-core<br />\r\n	1.8 GHz</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;12.0 MP/ 5.0MP</li>\r\n	<li>M&agrave;u: V&agrave;ng</li>\r\n	<li>Ram:&nbsp;2 GB</li>\r\n	<li>HĐH:&nbsp;iOS 10</li>\r\n</ul>\r\n', 5000000, 7000000, 6500000, 15, 1, 'ip6.jpg', '2021-09-15 14:04:29', '32g', 'Ipple'),
(90, 'Samsung Galaxy 100', 7, 'Cảm Ứng', 'SamSung', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;64GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;MicroSD</li>\r\n	<li>Thời gian bảo h&agrave;nh :&nbsp;12 th&aacute;ng</li>\r\n	<li>K&iacute;ch thước :&nbsp;162.5 x 74.8 x 8.6 mm</li>\r\n	<li>Cổng sạc :&nbsp;USB Type-C</li>\r\n	<li>Kết nối USB :&nbsp;Type-C</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh:&nbsp;6.3 inch</li>\r\n	<li>Pin:&nbsp;Li-Ion</li>\r\n	<li>CPU :&nbsp;L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i<br />\r\n	Tứ 1.7GHz)</li>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 8.0 MP</li>\r\n	<li>Ram:&nbsp;6 GB</li>\r\n	<li>M&agrave;u: Hồng</li>\r\n	<li>HĐH:&nbsp;Android 7.1.1 (Nougat)</li>\r\n</ul>\r\n', 5000000, 8000000, 7500000, 15, 0, 'ss.jpg', '2021-09-15 13:54:56', '6G', 'SamSung'),
(92, 'Oppo A900 Pro+++', 3, 'Cảm Ứng', 'SamSung', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;64GB</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;MicroSD</li>\r\n	<li>Thời gian bảo h&agrave;nh :&nbsp;12 th&aacute;ng</li>\r\n	<li>K&iacute;ch thước :&nbsp;162.5 x 74.8 x 8.6 mm</li>\r\n	<li>Cổng sạc :&nbsp;USB Type-C</li>\r\n	<li>Kết nối USB :&nbsp;Type-C</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh:&nbsp;6.3 inch</li>\r\n	<li>Pin:&nbsp;Li-Ion</li>\r\n	<li>CPU :&nbsp;L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i<br />\r\n	Tứ 1.7GHz)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 8.0 MP</li>\r\n	<li>Ram:&nbsp;6 GB</li>\r\n	<li>HĐH:&nbsp;Android 7.1.1 (Nougat)</li>\r\n</ul>\r\n', 8000000, 9000000, 8800000, 15, 0, 'ss2.jpg', '2021-09-15 14:23:24', '6G', 'SamSung'),
(93, 'Pin sạc dự phòng 30000mAh', 6, 'Phụ Kiện', 'SamSung', '<p>Hỗ trợ đa nguồn</p>\r\n\r\n<p>Sạc nhanh, kh&ocirc;ng lo n&oacute;ng pin</p>\r\n\r\n<p>Li&ecirc;n tục tới 3h &lt;3</p>\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Model:</strong></td>\r\n			<td>RPP-256</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>H&atilde;ng:</strong></td>\r\n			<td>SamSung</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dung lượng pin:</strong></td>\r\n			<td>30000mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Giao diện:</strong></td>\r\n			<td>\r\n			<p>2 input/ 3 output</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tổng Ouput:</strong></td>\r\n			<td>\r\n			<p>5V-3A</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Input/Output:</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>USB1 output: 5V-4.5A/4.5V-5A/5V-3A/9V-2A/12V-1.5A(22.5W)</li>\r\n				<li>USB2 output: 5V-4.5A/4.5V-5A/5V-3A/9V-2A/12V-1.5A(22.5W)</li>\r\n				<li>Type C output: 5V-3A/9V-2.22A/12V-1.67A(20W)</li>\r\n				<li>Type C input: 5V-3A/9V-2.22A/12V-1.67A(20W)</li>\r\n				<li>Micro input: 5V-2A/9V-2A/12V-1.5A(18W)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&agrave;u sắc:</strong></td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trọng lượng:</strong></td>\r\n			<td>553g</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước:</strong></td>\r\n			<td>151.8*67*34mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Vật liệu:</strong></td>\r\n			<td>ABS+PC+Chất liệu chống ch&aacute;y+Hợp kim nh&ocirc;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 500000, 800000, 780000, 15, 0, 'sac.jpeg', '2021-09-17 14:40:20', '1000MAH', 'Phụ Kiện'),
(94, 'Nokia 1280 Vertu Ferrari A8 V403', 3, 'Bàn Phím', 'Nokia', '<ul>\r\n	<li>Ghi &acirc;m C&oacute;</li>\r\n	<li>Thiết kế&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-kieu-thiet-ke-tren-di-dong-va-may-tin-597153#pinroi\" target=\"_blank\">Pin rời</a></li>\r\n	<li>K&iacute;ch thước, khối lượng 100g</li>\r\n	<li>H&agrave;ng qu&aacute; l&agrave; xịn ok</li>\r\n</ul>\r\n', '<ul>\r\n	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-tft-lcd-la-gi-905743\" target=\"_blank\">TFT LCD</a></li>\r\n	<li>Độ ph&acirc;n giải&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#qvga\" target=\"_blank\">QVGA (240 x 320 Pixels)</a></li>\r\n	<li>M&agrave;n h&igrave;nh rộng 3ich</li>\r\n	<li>Bộ nhớ trong 1G</li>\r\n	<li>Danh bạ 2000 số</li>\r\n	<li>C&ocirc;̉ng k&ecirc;́t n&ocirc;́i/sạc&nbsp;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cap-ket-noi-micro-usb-1341315\" target=\"_blank\">Micro USB</a></li>\r\n</ul>\r\n', 11000000, 13000000, 1950000, 5, 0, 'nokia.jpg', '2021-09-17 14:55:08', '1G', 'Nokia'),
(95, 'Nokia Huyền Thoại 110i', 2, 'Bàn Phím', 'Nokia', '<ul>\r\n	<li>Thiết kế&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-kieu-thiet-ke-tren-di-dong-va-may-tin-597153#pinroi\" target=\"_blank\">Pin rời</a></li>\r\n	<li>K&iacute;ch thước, khối lượng 100g</li>\r\n	<li>H&agrave;ng qu&aacute; l&agrave; xịn ok</li>\r\n</ul>\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh:</th>\r\n			<th>TFT, QQVGA (120 x 160 pixels), 1.77&quot;</th>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ</strong>&nbsp;nhớ trong:</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ nhớ:</td>\r\n			<td>MicroSD, hỗ trợ tối đa 32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ SIM:</td>\r\n			<td>2 SIM thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin:</td>\r\n			<td>800 mAh, Kh&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 100000, 15000, 14000, 10, 1, 'nk.jpg', '2021-09-17 15:00:34', '1G', 'Nokia'),
(96, 'Oppo A3 Pro+++', 0, 'Cảm Ứng', 'Oppo', '<p>Kết nối &amp; Cổng giao tiếp</p>\r\n\r\n<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;32 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>Băng tần 2G :&nbsp;GSM 850 / 900 / 1800 / 1900</li>\r\n</ul>\r\n', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: AMOLED6.43&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh: Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau: Ch&iacute;nh 64 MP &amp; Phụ 8 MP, 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước: 32 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip: MediaTek Dimensity 800U 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 6&nbsp;GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong: 128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc: 4310 mAh30 W</p>\r\n	</li>\r\n</ul>\r\n', 4000000, 7000000, 6500000, 10, 0, 'op.jpg', '2021-09-17 15:12:23', '6G', 'Oppo'),
(98, 'Apple 11 pro+', 1, 'Cảm Ứng', 'Ipple', '<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>GBS :&nbsp;C&oacute;</li>\r\n	<li>Kết nối USB :&nbsp;Lightning</li>\r\n	<li>Băng tần 2G :&nbsp;GSM/EDGE (850, 900, 1800, 1900 MHz)</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh: 6.5 inchs HD Retina</li>\r\n	<li>Pin:&nbsp;2675 mAh</li>\r\n	<li>CPU :&nbsp;Hexa-core (2x Monsoon + 4x Mistral)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 7.0 MP</li>\r\n	<li>M&agrave;u Gold</li>\r\n	<li>Ram:&nbsp;32 GB</li>\r\n	<li>HĐH:&nbsp;iOS 11</li>\r\n</ul>\r\n', 11000000, 13000000, 12500000, 10, 0, 'ip11.jpg', '2021-10-03 13:38:22', '32g', 'Ipple'),
(99, 'Apple 5s', 4, 'Cảm Ứng', 'Ipple', '<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>GBS :&nbsp;C&oacute;</li>\r\n	<li>Kết nối USB :&nbsp;Lightning</li>\r\n	<li>Băng tần 2G :&nbsp;GSM/EDGE (850, 900, 1800, 1900 MHz)</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh: 6.5 inchs HD Retina</li>\r\n	<li>Pin:&nbsp;2675 mAh</li>\r\n	<li>CPU :&nbsp;Hexa-core (2x Monsoon + 4x Mistral)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 7.0 MP</li>\r\n	<li>M&agrave;u Gold</li>\r\n	<li>Ram: 6&nbsp;GB</li>\r\n	<li>HĐH:&nbsp;iOS 11</li>\r\n</ul>\r\n', 1000000, 2000000, 1900000, 12, 0, 'iPhone-5.jpg', '2021-10-03 13:40:33', '6G', 'Ipple'),
(100, 'Sạc Đa năng Apple', 1, 'Phụ Kiện', 'Ipple', '<p>Hỗ trợ đa nguồn</p>\r\n\r\n<p>Sạc nhanh, kh&ocirc;ng lo n&oacute;ng pin</p>\r\n\r\n<p>Li&ecirc;n tục tới 3h &lt;3</p>\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Model:</strong></td>\r\n			<td>RPP-256</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>H&atilde;ng:</strong></td>\r\n			<td>Apple</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dung lượng pin:</strong></td>\r\n			<td>30000mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Giao diện:</strong></td>\r\n			<td>\r\n			<p>2 input/ 3 output</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tổng Ouput:</strong></td>\r\n			<td>\r\n			<p>5V-3A</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Input/Output:</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>USB1 output: 5V-4.5A/4.5V-5A/5V-3A/9V-2A/12V-1.5A(22.5W)</li>\r\n				<li>USB2 output: 5V-4.5A/4.5V-5A/5V-3A/9V-2A/12V-1.5A(22.5W)</li>\r\n				<li>Type C output: 5V-3A/9V-2.22A/12V-1.67A(20W)</li>\r\n				<li>Type C input: 5V-3A/9V-2.22A/12V-1.67A(20W)</li>\r\n				<li>Micro input: 5V-2A/9V-2A/12V-1.5A(18W)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&agrave;u sắc:</strong></td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trọng lượng:</strong></td>\r\n			<td>553g</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước:</strong></td>\r\n			<td>151.8*67*34mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Vật liệu:</strong></td>\r\n			<td>ABS+PC+Chất liệu chống ch&aacute;y+Hợp kim nh&ocirc;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 500000, 700000, 685000, 10, 0, 'pk2.jpg', '2021-10-03 13:44:56', '3A', 'Phụ Kiện'),
(101, 'Apple 7G', 0, 'Cảm Ứng', 'Ipple', '<ul>\r\n	<li>Danh bạ lưu trữ :&nbsp;Kh&ocirc;ng giới hạn</li>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>GBS :&nbsp;C&oacute;</li>\r\n	<li>Kết nối USB :&nbsp;Lightning</li>\r\n	<li>Băng tần 2G :&nbsp;GSM/EDGE (850, 900, 1800, 1900 MHz)</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh: 6.5 inchs HD Retina</li>\r\n	<li>Pin:&nbsp;2675 mAh</li>\r\n	<li>CPU :&nbsp;Hexa-core (2x Monsoon + 4x Mistral)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 7.0 MP</li>\r\n	<li>M&agrave;u Gold</li>\r\n	<li>Ram: 6&nbsp;GB</li>\r\n	<li>HĐH:&nbsp;iOS 11</li>\r\n</ul>\r\n', 4000000, 5000000, 4950000, 10, 0, 'iphone-7-gold-600x600-1-600x600.jpg', '2021-10-03 13:48:49', '32g', 'Ipple'),
(102, 'Apple 2', 0, 'Cảm Ứng', 'Ipple', '<ul>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>GBS :&nbsp;C&oacute;</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh: 6.5 inchs HD Retina</li>\r\n	<li>Pin:&nbsp;2675 mAh</li>\r\n	<li>CPU :&nbsp;Hexa-core (2x Monsoon + 4x Mistral)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 7.0 MP</li>\r\n	<li>M&agrave;u Gold</li>\r\n</ul>\r\n', 500000, 1000000, 950000, 10, 0, 'old-vintage-technology-back-view-260nw-1842347632.jpg', '2021-10-03 13:52:11', '2G', 'Ipple'),
(103, 'Apple 3', 0, 'Cảm Ứng', 'Ipple', '<ul>\r\n	<li>ROM :&nbsp;64 GB</li>\r\n	<li>Hỗ trợ thẻ nhớ tối đa :&nbsp;Kh&ocirc;ng</li>\r\n	<li>Thẻ nhớ ngo&agrave;i :&nbsp;Kh&ocirc;ng</li>\r\n	<li>NFC :&nbsp;C&oacute;</li>\r\n	<li>GBS :&nbsp;C&oacute;</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n H&igrave;nh: 6.5 inchs HD Retina</li>\r\n	<li>Pin:&nbsp;2675 mAh</li>\r\n	<li>CPU :&nbsp;Hexa-core (2x Monsoon + 4x Mistral)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Camera:&nbsp;Ch&iacute;nh: Dual 12.0 MP, Phụ: 7.0 MP</li>\r\n</ul>\r\n', 1200000, 1400000, 1350000, 10, 0, 'ip3.jpg', '2021-10-03 13:53:03', '3G', 'Ipple');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `type_id`, `name_product_type`) VALUES
(1, 'C', 'Cảm Ứng '),
(2, 'BP', 'Bàn Phím'),
(3, 'PK', 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(12) NOT NULL,
  `price` int(50) NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `size` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `email`, `address`, `phone`, `price`, `info`, `status`, `created`, `size`) VALUES
(5, 'datb', 'dat123@gmail.com', 'âs', 972358550, 21628000, ' Nokia Huyền Thoại 110i x2 1G, Iphone 13 Pro max  x1 32g,', 'Đã xong', '2021-09-24 13:18:25', NULL),
(6, 'datt', 'dat123@gmail.com', 'âs', 972358550, 21600000, ' Iphone 13 Pro max  x1 32g,', 'Đang chờ', '2021-09-29 05:33:35', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name_image`, `created`) VALUES
(1, 'a5.jpg', '2020-04-01 19:08:22'),
(2, 'a4.jpg', '2020-04-01 19:08:27'),
(3, 'a1.png', '2020-04-01 19:08:33'),
(4, 'a5.jpg', '2020-04-01 19:08:22'),
(5, 'a3.jpg', '2020-04-01 19:08:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `created`) VALUES
(24, 'Duong Van Dat', 'datb', 972358550, 'datb', '2021-09-15 15:05:47');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
