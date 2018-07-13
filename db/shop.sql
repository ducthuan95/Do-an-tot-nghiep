-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 08:40 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `email`, `phone`, `address`) VALUES
(1, 'dangquangtechvn@gmail.com', '0989611645', 'A1, Đường Nguyễn Cơ Thạch, Nam Tư Liêm, HN');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `role_id`, `password`, `remember_token`) VALUES
(4, 'Duc Thuan', 'ducthuan181295@gmail.com', '0985346841', 1, '$2y$10$VWAb2eZAYa4paQ/Z.RmPw.dcEI0DB9avM.Szrq9KzFnaoOg2S6hoS', 'RcKAtQx5udVBXqtfd4cj5pasX3KchOrBBEKKWuaqVbduX19TLAyZetrLXQ22'),
(6, 'Lê Thị A', 'user@gmail.com', '123456789', 2, '$2y$10$AudzBCBUNHpyOEaliSXGxu799C8R2rd/TAnFOPzrcvj0zc/nHIvFu', NULL),
(7, 'Trần Đức B', 'user1@gmail.com', '123456789', 2, '$2y$10$gYROfvx5YrCzFrs/d0rywekVFKrS1sFM7yhUdLuurzoB7shFG.pZq', NULL),
(8, 'Hà Thị Minh Thùy', 'hathuy95@gmail.com', '0966039619', 2, '$2y$10$C591IUnxepe6bCVObbfG5ejWUTfsI4oZAMFCpkZ62apFZW2BVUIvW', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `alias`, `parent_id`) VALUES
(1, 'Ổ cứng, Switch', 'o-cung,-switch', 0),
(2, 'Tủ Rack', 'tu-rack', 0),
(16, 'Vật tư phụ kiện', 'vat-tu-phu-kien', 0),
(21, 'Camera An Ninh', 'camera-an-ninh', 0),
(22, 'Camera IP', 'camera-ip', 21),
(23, 'Camera WIFI', 'camera-wifi', 21),
(24, 'Camera PTZ', 'camera-ptz', 21),
(25, 'Camera HD-TIVI', 'camera-hd-tivi', 21),
(26, 'Camera Fish Eye', 'camera-fish-eye', 21),
(27, 'Seagate', 'seagate', 1),
(28, 'Western', 'western', 1),
(29, 'Toshiba', 'toshiba', 1),
(30, 'Tủ Rack', 'tu-rack', 2),
(31, 'Thanh quản lý cáp ngang', 'thanh-quan-ly-cap-ngang', 2),
(32, 'Thanh quản lý cáp dọc', 'thanh-quan-ly-cap-doc', 2),
(33, 'Phụ kiện camera', 'phu-kien-camera', 16),
(34, 'Cáp mạng lan', 'cap-mang-lan', 16),
(35, 'Cáp quang', 'cap-quang', 16),
(36, 'Ống nhựa luồn dây', 'ong-nhua-luon-day', 16),
(37, 'Thiết bị smart phone', 'thiet-bi-smart-phone', 0),
(38, 'Ổ cắm thông minh', 'o-cam-thong-minh', 37),
(39, 'Công tắc thông minh', 'cong-tac-thong-minh', 37);

-- --------------------------------------------------------

--
-- Table structure for table `categorypost`
--

CREATE TABLE `categorypost` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorypost`
--

INSERT INTO `categorypost` (`id`, `name`, `alias`, `parent_id`) VALUES
(1, 'Tư Vấn Thời Trang', 'tu-van-thoi-trang', 0),
(2, 'Tin Tức Trong Nước', 'tin-tuc-trong-nuoc', 0),
(3, 'Tin Tức Quốc Tế', 'tin-tuc-quoc-te', 0),
(4, 'Xu Hướng Thời Trang 2018', 'xu-huong-thoi-trang-2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `color` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `product_id`, `color`) VALUES
(31, 19, '1 Năm'),
(32, 20, '1 Năm'),
(33, 21, '1 Năm'),
(34, 22, '1 Năm'),
(35, 23, '1 Năm'),
(36, 24, '1 Năm'),
(37, 25, '2 Năm'),
(38, 26, '1 Năm'),
(41, 29, '1 Năm'),
(42, 30, '1 Năm'),
(43, 31, '1 Năm'),
(47, 34, '1 Năm'),
(48, 35, '1 Năm'),
(49, 36, '1 Năm'),
(50, 37, '3 Năm'),
(51, 38, '2 Năm'),
(52, 39, '2 Năm');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `content`, `created`, `title`, `email`, `status`) VALUES
(1, 'duc thuan', 'Sản phẩm rất tốt, giá cả hợp lý.', '2018/06/21', 'Phản hồi chất lượng sản phẩm', 'ducthuan181295@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackproduct`
--

CREATE TABLE `feedbackproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbackproduct`
--

INSERT INTO `feedbackproduct` (`id`, `user_id`, `product_id`, `comment`, `created`, `vote`) VALUES
(1, 14, 19, 'Sản phẩm rất tốt', '2018/06/21', 5);

-- --------------------------------------------------------

--
-- Table structure for table `imageproduct`
--

CREATE TABLE `imageproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `imageproduct`
--

INSERT INTO `imageproduct` (`id`, `product_id`, `link`, `image`, `title`) VALUES
(36, 19, NULL, 'ab6da0cb67678b792cc599cc17f89987cdded3ce.jpg', 'ab6da0cb67678b792cc599cc17f89987cdded3ce.jpg'),
(37, 20, NULL, '1af87a43f73d8d3bd1c96707233a39e02ede5348.jpg', '1af87a43f73d8d3bd1c96707233a39e02ede5348.jpg'),
(38, 20, NULL, 'c18210c4528cdf2addbe738c1e54dc012a0d1a31.jpg', 'c18210c4528cdf2addbe738c1e54dc012a0d1a31.jpg'),
(39, 21, NULL, '933ba1b45181eb5e5e3f5924a613c1870c66452e.jpg', '933ba1b45181eb5e5e3f5924a613c1870c66452e.jpg'),
(40, 22, NULL, '8d611166b5aed35a4300f417dda88e65821321dd.jpg', '8d611166b5aed35a4300f417dda88e65821321dd.jpg'),
(41, 23, NULL, '22e456113d43792d01549059f612b14c9da2b636.jpg', '22e456113d43792d01549059f612b14c9da2b636.jpg'),
(42, 24, NULL, '435359c5fa04cc0a5e14a98f93bcb74dc3f81371.jpg', '435359c5fa04cc0a5e14a98f93bcb74dc3f81371.jpg'),
(43, 25, NULL, '643605d90d8a5ee06e4efb25c4af216297cf3fb4.jpg', '643605d90d8a5ee06e4efb25c4af216297cf3fb4.jpg'),
(44, 26, NULL, 'd43be1b93503c43c38d39981116ff43299316424.jpg', 'd43be1b93503c43c38d39981116ff43299316424.jpg'),
(46, 28, NULL, 'c3779b7094759887ab7b95b18951830815ba0ead.jpg', 'c3779b7094759887ab7b95b18951830815ba0ead.jpg'),
(47, 29, NULL, '61d47b4f6657a8c7bb4046cad5a9ec0e6f0a71b3.jpg', '61d47b4f6657a8c7bb4046cad5a9ec0e6f0a71b3.jpg'),
(48, 30, NULL, '7ed882feb10f65b19be9d632ee6780120c4ac77f.png', '7ed882feb10f65b19be9d632ee6780120c4ac77f.png'),
(49, 31, NULL, '343abe6830fabbe5ecda0c57a4d30cea56b65b64.jpg', '343abe6830fabbe5ecda0c57a4d30cea56b65b64.jpg'),
(52, 34, NULL, 'f3da3af3829ac1e0c2fb469f261b12ff8248dd33.png', 'f3da3af3829ac1e0c2fb469f261b12ff8248dd33.png'),
(53, 35, NULL, '318b965935fe39514933bd4f1be3756c5e8846e2.jpg', '318b965935fe39514933bd4f1be3756c5e8846e2.jpg'),
(54, 36, NULL, 'f6061119386fab53af391cbce063d0d803cb20a0.png', 'f6061119386fab53af391cbce063d0d803cb20a0.png'),
(55, 37, NULL, '004afd58b4ae4504d17721556dd2caded3267047.jpg', '004afd58b4ae4504d17721556dd2caded3267047.jpg'),
(56, 38, NULL, '7e40c5f4f5a785aff1de2ea6dee9c61d8fd544ed.jpg', '7e40c5f4f5a785aff1de2ea6dee9c61d8fd544ed.jpg'),
(57, 39, NULL, 'd893c006cbd92751840e162e83101f3524bbc518.jpg', 'd893c006cbd92751840e162e83101f3524bbc518.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) DEFAULT '0',
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `email`, `phone`, `address`, `total`, `status`, `created`, `name`, `note`, `payment`, `create_by`, `updated`) VALUES
(1, 14, 'ducthuan181295@gmail.com', '0985346841', 'acddcsd', 4000000, 1, '2018-06-22 00:01:58', 'duc thuan', NULL, 'offline', 4, '2018-06-22 01:24:12'),
(2, 14, 'ducthuan181295@gmail.com', '0985346841', 'Hưng hà, Thái Bình', 8583000, 1, '2018-06-22 01:07:57', 'duc thuan', NULL, 'offline', 4, '2018-06-22 01:24:10'),
(3, 14, 'ducthuan181295@gmail.com', '0985346841', 'acddcsd', 9, 1, '2018-07-14 00:46:22', 'duc thuan', NULL, 'offline', 4, '2018-07-14 00:48:08'),
(4, 14, 'ducthuan181295@gmail.com', '0985346841', 'acddcsd', 4, 0, '2018-07-14 00:51:20', 'duc thuan', NULL, 'offline', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `color` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `order_id`, `product_id`, `product_name`, `amount`, `color`, `size`) VALUES
(4, 3, 22, 'Camera DS 2CE56COT-IRP(IR)', 1, '1 Năm', 'Thương hiệu: HIKVISION'),
(5, 3, 23, 'Camera DS 2CE16COT-IRP(IR)', 1, '1 Năm', 'Thương hiệu: HIKVISION'),
(6, 4, 19, 'Camera DS-2CD2142FWD-IWS', 1, '1 Năm', 'Thương hiệu: HIKVISION');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `auther` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_post` int(10) UNSIGNED NOT NULL,
  `decribe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_describe` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `img`, `title`, `auther`, `category_post`, `decribe`, `meta_keyword`, `meta_describe`, `status`, `created`) VALUES
(1, '58161392417565760fc63023541efde7c13798a7.jpg', 'Giắt túi những kiến thức cơ bản về cổ áo sơ mi cho bạn!', 'Thân Thế Văn', 1, '<h2>&ldquo;TH&Ocirc;NG ĐIỆP&rdquo; TỪ CỔ &Aacute;O SƠ&nbsp; MI CHO BẠN</h2>\r\n\r\n<p>Một trong những m&oacute;n đồ &ldquo;cần c&oacute;&rdquo; trong tủ đồ của ph&aacute;i mạnh đ&oacute; l&agrave; chiếc &aacute;o sơ mi. &Aacute;o sơ mi dường như đ&atilde; trở th&agrave;nh biểu tượng v&agrave; l&agrave; một item thời trang kinh điển của bất cứ ai d&ugrave; họ c&oacute; quan t&acirc;m đến thời trang hay kh&ocirc;ng. Tuy nhi&ecirc;n, tưởng như sẽ chẳng c&ograve;n g&igrave; để n&oacute;i về chiếc &aacute;o sơ mi &ldquo;qu&aacute; đỗi b&igrave;nh thường&rdquo; n&agrave;y, bạn sẽ thấy bất ngờ trước những g&igrave; m&agrave; bạn c&oacute; thể &ldquo;lắng nghe&rdquo; từ m&oacute;n đồ n&agrave;y đấy!</p>\r\n\r\n<p>H&ocirc;m nay, những g&igrave; ch&uacute;ng t&ocirc;i &ldquo;bật m&iacute;&rdquo; cho bạn l&agrave; tất tần tật kiến thức cơ bản nhất về cổ &aacute;o sơ mi. Bạn c&oacute; lẽ chưa từng thực sự để t&acirc;m đến chi tiết n&agrave;y tr&ecirc;n chiếc &aacute;o, tuy nhi&ecirc;n, n&oacute; c&oacute; &yacute; nghĩa quan trọng hơn bạn tưởng rất nhiều!</p>\r\n\r\n<h3>Cổ &aacute;o sơ mi v&agrave; khu&ocirc;n mặt</h3>\r\n\r\n<p>Bạn c&oacute; bao giờ từng cho rằng cổ &aacute;o sơ mi ảnh hưởng phần n&agrave;o đến khu&ocirc;n mặt bạn chưa? Nghe dường như hai yếu tố n&agrave;y chắc li&ecirc;n quan ch&uacute;t n&agrave;o nhưng đ&uacute;ng l&agrave; thật đấy!</p>\r\n\r\n<p>Việc lựa chọn cổ &aacute;o sơ mi ph&ugrave; hợp với kiểu d&aacute;ng khu&ocirc;n mặt sẽ gi&uacute;p những đường n&eacute;t tr&ecirc;n khu&ocirc;n mặt bạn nổi bật hơn v&agrave; h&agrave;i h&ograve;a hơn, đồng thời cũng giảm sự ch&uacute; &yacute; của người nh&igrave;n v&agrave;o một số nhược điểm.&nbsp;<em>&ldquo;Cổ &aacute;o sơ mi&rdquo;</em>&nbsp;v&agrave;&nbsp;<em>&ldquo;khu&ocirc;n mặt&rdquo;</em>&nbsp;c&oacute; t&aacute;c dụng hỗ trợ nhau v&agrave; quyết định tổng thể vẻ ngo&agrave;i của bạn trong chiếc &aacute;o sơ mi.</p>\r\n\r\n<p><img alt="các loại cổ áo sơ mi" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14135204/co-ao-so-mi-2-684x1024.jpg" style="height:500px; width:334px" /></p>\r\n\r\n<h3>Cổ &aacute;o sơ mi v&agrave; chiếc c&agrave; vạt của bạn</h3>\r\n\r\n<p>Tất nhi&ecirc;n rồi, thật thiếu s&oacute;t khi nhắc đến &ldquo;cổ &aacute;o sơ mi&rdquo; m&agrave; lại qu&ecirc;n mất chiếc c&agrave; vạt. Trong khi chiếc c&agrave; vạt l&agrave; một điểm nhấn kh&ocirc;ng thể thiếu để ho&agrave;n thiện bộ đồ của bạn, cố &aacute;o được coi l&agrave; phần nền &ldquo;hỗ trợ&rdquo; đắc lực để tạo ra sự &ldquo;vừa vặn&rdquo; đến ho&agrave;n hảo tr&ecirc;n tổng thể bộ đồ.</p>\r\n\r\n<p><em><strong>N&ecirc;n xem:&nbsp;</strong></em></p>\r\n\r\n<ul>\r\n	<li><em><a href="https://canifa.com/blog/cach-that-ca-vat-dep/" target="_blank">KH&Ocirc;NG C&Ograve;N BỐI RỐI với 16 c&aacute;ch thắt c&agrave;-vạt Đẹp v&agrave; Chuẩn men dưới đ&acirc;y</a></em></li>\r\n	<li><em><a href="https://canifa.com/blog/chon-ca-vat-cho-ao-mi-trang/" target="_blank">Chọn c&agrave; vạt cho &aacute;o sơ mi trắng: Đ&atilde; mặc đẹp, lại c&ograve;n &ldquo;chuẩn&rdquo;!</a></em></li>\r\n</ul>\r\n\r\n<p><img alt="các loại cổ áo sơ mi" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14135339/co-ao-so-mi-3.jpg" style="height:500px; width:355px" /></p>\r\n\r\n<p>Cổ &aacute;o sơ mi c&oacute; vẻ &ldquo;nhỏ b&eacute;&rdquo; nhưng cũng c&oacute; &ldquo;v&otilde;&rdquo; chẳng k&eacute;m g&igrave; ai phải kh&ocirc;ng? Với rất nhiều loại cổ &aacute;o sơ mi, bạn c&ograve;n cần phải t&igrave;m ra &ldquo;th&ocirc;ng điệp&rdquo; của mỗi loại để lu&ocirc;n biết c&aacute;ch mặc đ&uacute;ng v&agrave; mặc đẹp mọi nơi mọi l&uacute;c.</p>\r\n\r\n<p>C&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng t&igrave;m hiểu ngay th&ocirc;i n&agrave;o!</p>\r\n\r\n<p><strong><a href="https://canifa.com/nam/danh-muc-san-pham/ao-so-mi.html" target="_blank">100+ MẪU &Aacute;O SƠ MI NAM CANIFA CHO BẠN THA HỒ CHỌN LỰA</a>&nbsp;</strong></p>\r\n\r\n<p><strong><a href="https://canifa.com/nu/danh-muc-san-pham/ao-so-mi.html" target="_blank">100+ MẪU &Aacute;O SƠ MI NỮ CANIFA CHO N&Agrave;NG &ndash; XEM NGAY</a></strong></p>\r\n\r\n<hr />\r\n<h2>CỔ &Aacute;O SƠ MI C&Oacute; CẤU TẠO NHƯ THẾ N&Agrave;O?</h2>\r\n\r\n<p>Trước khi đi v&agrave;o c&aacute;c loại cổ &aacute;o sơ mi cơ bản v&agrave; th&ocirc;ng dụng, h&atilde;y d&agrave;nh 1 ph&uacute;t để xem cấu tạo cổ &aacute;o sơ mi như thế n&agrave;o c&ugrave;ng&nbsp;<strong>CANIFA</strong>&nbsp;nh&eacute;!</p>\r\n\r\n<p><img alt="cấu tạo cổ áo sơ mi nam" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14135544/co-ao-so-mi-4-294x300.png" style="height:300px; width:294px" /></p>\r\n\r\n<ul>\r\n	<li><strong>Mũi cổ &aacute;o</strong>: đầu nhọn của cố &aacute;o</li>\r\n	<li><strong>Chiều d&agrave;i từ mũi cổ &aacute;o:</strong>&nbsp;khoảng c&aacute;ch từ mũi cổ &aacute;o đến điểm chạm với dải cổ &aacute;o</li>\r\n	<li><strong>Dải cổ &aacute;o:</strong>&nbsp;miếng vải xung quanh phần cổ</li>\r\n	<li><strong>Độ cao cổ &aacute;o:</strong>&nbsp;độ cao của phần cổ &aacute;o gập để vừa vặn với cổ</li>\r\n	<li><strong>Khoảng c&aacute;ch thắt c&agrave; vạt:</strong>&nbsp;khoảng c&aacute;ch giữa phần đầu của cổ &aacute;o gập khi &aacute;o sơ mi được c&agrave;i c&uacute;c</li>\r\n	<li><strong>Độ mở:</strong>&nbsp;khoảng c&aacute;ch giữa 2 mũi cổ &aacute;o</li>\r\n</ul>\r\n\r\n<p>Sau khi nắm được một số thuật ngữ về cổ &aacute;o sơ mi, bạn sẽ thấy đơn giản hơn nhiều khi t&igrave;m hiểu c&aacute;c loai cổ &aacute;o đấy! H&atilde;y c&ugrave;ng&nbsp;<strong>CANIFA</strong>&nbsp;kh&aacute;m ph&aacute; ngay b&acirc;y giờ nh&eacute;!</p>\r\n\r\n<h2>C&Aacute;C KIỂU/ LOẠI CỔ &Aacute;O SƠ MI NAM BẠN CẦN BIẾT</h2>\r\n\r\n<p>Nếu tinh &yacute; một ch&uacute;t, bạn c&oacute; thể để &yacute; thấy c&oacute; kh&aacute; nhiều kiểu cổ &aacute;o sơ mi kh&aacute;c nhau. Mỗi kiểu cổ &aacute;o n&agrave;y lại c&oacute; &ldquo;c&acirc;u chuyện ri&ecirc;ng&rdquo; của n&oacute; v&agrave; lại đi theo một số kiểu trang phục nhất định. Ch&iacute;nh v&igrave; vậy, để tr&aacute;nh những t&igrave;nh huống như &ldquo;mặc &aacute;o sơ mi cổ t&agrave;u với bộ suit&rdquo; th&igrave; bạn cần &ldquo;giắt t&uacute;i&rdquo; ngay những điều cần biết về cổ &aacute;o sơ mi.</p>\r\n\r\n<p>Dưới đ&acirc;y,&nbsp;<strong>CANIFA</strong>&nbsp;sẽ gi&uacute;p bạn ph&acirc;n loại cổ &aacute;o th&agrave;nh 3 loại lớn:&nbsp;<em>cổ nhọn, cổ bẻ v&agrave; một số kiểu cổ &aacute;o đặc biệt.</em></p>\r\n\r\n<h3>Kiểu cổ &aacute;o sơ mi nhọn (Point collar)</h3>\r\n\r\n<p>Cổ &aacute;o sơ mi nhọn c&oacute; thể n&oacute;i l&agrave; kiểu cổ &aacute;o th&ocirc;ng dụng nhất v&agrave; thường thấy nhất, chiếm khoảng 90% tr&ecirc;n &aacute;o sơ mi nam. Bắt nguồn từ những bộ đồng phục qu&acirc;n đội từ thế kỷ 20, cổ &aacute;o sơ mi nhọn cho đến nay đ&atilde; được thay đổi, biến tấu để tạo ra nhiều kiểu cổ nhọn kh&aacute;c ph&ugrave; hợp với trang phục của người mặc.</p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em>&nbsp;Đặc điểm dễ thấy của cổ &aacute;o sơ mi nhọn đ&oacute; l&agrave; đường cắt cổ &aacute;o khiến cho phần mũi cổ &aacute;o kh&aacute; gần nhau v&agrave; đ&ocirc;i khi hẹp đến mức che cả phần đầu của c&agrave; vạt. Một số kiểu cổ &aacute;o nhọn được thiết kế d&agrave;i gi&uacute;p hướng sự ch&uacute; &yacute; của người nh&igrave;n về ph&iacute;a c&agrave; vạt v&agrave; kh&ocirc;ng ch&uacute; &yacute; đến khu&ocirc;n mặt. Trong khi đ&oacute;, c&oacute; một số kiểu cổ &aacute;o sơ mi nhọn c&oacute; độ d&agrave;i vừa phải lại khiến người nh&igrave;n tập trung v&agrave;o khu&ocirc;n mặt bạn hơn.</p>\r\n\r\n<p><em><strong>Khu&ocirc;n mặt ph&ugrave; hợp với cổ &aacute;o nhọn:</strong></em>&nbsp;Kiểu cổ &aacute;o sơ mi nhọn sẽ thực sự &ldquo;ph&aacute;t huy&rdquo; tối đa c&ocirc;ng dụng của n&oacute; với những bạn c&oacute; khu&ocirc;n mặt tr&ograve;n bởi kiểu cổ &aacute;o d&agrave;i sẽ khiến khu&ocirc;n mặt c&acirc;n bằng tỷ lệ hơn. Ngược lại, những bạn c&oacute; khu&ocirc;n mặt gầy v&agrave; d&agrave;i n&ecirc;n tr&aacute;nh mặc kiểu cổ &aacute;o sơ mi n&agrave;y.</p>\r\n\r\n<h4>Cổ &aacute;o nhọn cổ điển&nbsp;</h4>\r\n\r\n<p><img alt="cổ áo sơ mi nhọn cổ điển" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14140559/co-ao-so-mi-5.png" style="height:357px; width:684px" /></p>\r\n\r\n<p><strong><em>Đặc điểm:</em></strong>&nbsp;Cổ &aacute;o nhọn cổ điển c&oacute; điểm đặc trưng ở độ mở cổ &aacute;o hẹp, khoảng c&aacute;ch thắt c&agrave; vạt khoảng 2cm, chiều d&agrave;i từ mũi cổ &aacute;o th&ocirc;ng thường l&agrave; 7cm.</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Hầu hết mọi kiểu khu&ocirc;n mặt</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng:</strong></em>&nbsp;&Aacute;o sơ mi c&oacute; cổ &aacute;o nhọn cổ điển lu&ocirc;n ph&ugrave; hợp với những trang phục c&ocirc;ng sở h&agrave;ng ng&agrave;y của ph&aacute;i mạnh. Ch&iacute;nh v&igrave; vậy, bạn cũng kh&ocirc;ng cần lo ngại khi diện &aacute;o sơ mi nhọn cổ điển. Với c&agrave; vạt, bạn n&ecirc;n chọn c&aacute;ch&nbsp;<a href="https://canifa.com/blog/cach-that-ca-vat-dep/#Kieu_Four_in_Hand" target="_blank">thắt Four-in-hand</a>&nbsp;cho kiểu cổ &aacute;o n&agrave;y.</p>\r\n\r\n<p><img alt="cổ áo sơ mi kiểu nhọn cổ điển" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14141156/co-ao-so-mi-6-1024x683.jpg" style="height:350px; width:525px" /></p>\r\n\r\n<h4>Cổ &aacute;o nhọn hẹp ( hay c&ograve;n gọi l&agrave; Cổ Đức)</h4>\r\n\r\n<p><img alt="cổ áo sơ mi nhọn hẹp - cổ đức" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14141554/co-ao-so-mi-8.png" style="height:364px; width:695px" /></p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em>&nbsp;So với kiểu cổ nhọn cổ điển, cổ &aacute;o nhọn hẹp đ&uacute;ng như t&ecirc;n gọi của n&oacute; sẽ c&oacute; độ mở cổ &aacute;o hẹp hơn. Chiều d&agrave;i từ mũi cổ &aacute;o khoảng 9cm.</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Những người khu&ocirc;n mặt tr&ograve;n n&ecirc;n chọn kiểu &aacute;o c&oacute; cổ nhọn hẹp để &ldquo;đ&aacute;nh lừa&rdquo; người nh&igrave;n với tỷ lệ c&acirc;n đối hơn.</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng:</strong></em>&nbsp;Tương tự như kiểu cổ nhọn cổ điển, cổ &aacute;o nhọn hẹp cũng l&agrave; sự lựa chọn tuyệt vời cho c&aacute;c trang phục c&ocirc;ng sở. Tuy nhi&ecirc;n, với cổ &aacute;o nhọn hẹp, bạn n&ecirc;n chọn c&agrave; vạt loại mảnh v&agrave; d&agrave;i, chọn kiểu thắt nhỏ.</p>\r\n\r\n<p><img alt="cổ áo sơ mi nhọn hẹp - cổ đức" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14141828/co-ao-so-mi-9-1024x513.jpg" style="height:263px; width:525px" /></p>\r\n\r\n<h4>Cổ &aacute;o c&agrave;i khuy (Button down collar )</h4>\r\n\r\n<p><img alt="cổ áo sơ mi cài khuy" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14142123/co-ao-so-mi-10.png" style="height:355px; width:683px" /></p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em>&nbsp;C&oacute; lỗ đ&iacute;nh khuy nhỏ ở phần mũi cổ &aacute;o v&agrave; thường được c&agrave;i v&agrave;o</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong>&nbsp;</em>Hầu hết mọi kiểu khu&ocirc;n mặt</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng:</strong></em>&nbsp;&Aacute;o sơ mi c&oacute; cổ &aacute;o c&agrave;i khuy c&oacute; thể mặc c&ugrave;ng c&agrave; vạt, tuy nhi&ecirc;n, v&igrave; đ&acirc;y l&agrave; kiểu cổ &aacute;o &iacute;t c&oacute; t&iacute;nh trang trọng nhất n&ecirc;n n&oacute; xuất hiện nhiều trong những&nbsp;<a href="https://canifa.com/blog/glossary/casual/" target="_blank">trang phục Casual</a>&nbsp; (h&agrave;ng ng&agrave;y) m&agrave; kh&ocirc;ng cần c&oacute; c&agrave; vạt.</p>\r\n\r\n<p><img alt="cổ áo sơ mi cài khuy" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14144115/co-ao-so-mi-11.jpg" style="height:400px; width:800px" /></p>\r\n\r\n<h4>Cổ &aacute;o c&agrave;i khuy ẩn</h4>\r\n\r\n<p><img alt="cổ áo sơ mi cài khuy ẩn" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14144638/co-ao-so-mi-11.png" style="height:320px; width:525px" /></p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em>&nbsp;C&oacute; lỗ đ&iacute;nh khuy nhỏ ở mặt trong của mũi cổ &aacute;o. Thiết kế khuy ẩn ở dưới khiến cho cổ &aacute;o thoạt nh&igrave;n b&ecirc;n ngo&agrave;i giống kiểu cổ điển nhưng vẫn cố định được 2 b&ecirc;n cổ &aacute;o như kiểu cổ c&agrave;i khuy</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Hầu hết mọi kiểu khu&ocirc;n mặt</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng:</strong></em>&nbsp;Ph&ugrave; hợp với cả trang phục c&ocirc;ng sở, trang trọng hay những trang phục phong c&aacute;ch Casual. Với kiểu cổ &aacute;o n&agrave;y th&igrave; n&uacute;t thắt của c&agrave; vạt sẽ được l&agrave;m nổi bật.</p>\r\n\r\n<p><img alt="cổ áo sơ mi cài khuy ẩn" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14145654/co-ao-so-mi-12.jpg" style="height:600px; width:484px" /></p>\r\n\r\n<h3>Kiểu cổ &aacute;o sơ mi bẻ rộng ( Speard collar)</h3>\r\n\r\n<p><img alt="cổ áo sơ mi bẻ rộng" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14150035/co-ao-so-mi-12-1024x398.png" style="height:204px; width:525px" /></p>\r\n\r\n<p>Đứng thứ hai chỉ sau cổ &aacute;o nhọn về độ th&ocirc;ng dụng v&agrave; phổ biến, kiểu cổ &aacute;o sơ mi bẻ rộng cũng được ưa chuộng v&agrave; ứng dụng nhiều trong c&aacute;c trang phục kể cả l&agrave; c&ocirc;ng sở hay những bộ đồ h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em>&nbsp;Kiểu cổ &aacute;o sơ mi bẻ rộng c&oacute; đặc trưng ở phần cổ bẻ rộng ra thay v&igrave; nhỏ v&agrave; hẹp như kiểu cổ nhọn thường thấy, để lộ ra phần tr&ecirc;n của &aacute;o v&agrave; đặc biệt c&ograve;n để một khoảng trống đủ rộng để thấy được c&aacute;c n&uacute;t thắt c&agrave; vạt lớn. Kiểu cổ &aacute;o sơ mi bẻ rộng c&oacute; nhiều loại, kh&aacute;c nhau về độ mở của cổ &aacute;o. C&oacute; loại cổ c&oacute; độ mở trung b&igrave;nh tr&ocirc;ng giống cổ nhọn x&ograve;e ra, c&oacute; loại c&oacute; độ mở lớn nhất th&igrave; cổ &aacute;o được bẻ ngang.</p>\r\n\r\n<p><em><strong>Khu&ocirc;n mặt ph&ugrave; hợp với cổ &aacute;o bẻ rộng:</strong></em>&nbsp;Nếu cổ &aacute;o nhọn d&agrave;nh cho những bạn nam c&oacute; khu&ocirc;n mặt hơi tr&ograve;n v&agrave; mập mạp th&igrave; cổ &aacute;o bẻ rộng lại &ldquo;sinh ra&rdquo; để d&agrave;nh cho c&aacute;c ch&agrave;ng trai c&oacute; khu&ocirc;n mặt gầy v&agrave; d&agrave;i. Cổ &aacute;o bẻ rộng sẽ l&agrave;m tăng hiệu ứng thị gi&aacute;c, khiến người nh&igrave;n tưởng như khu&ocirc;n mặt bạn đầy đặn hơn. Từ đ&oacute;, tỷ lệ khu&ocirc;n mặt được c&acirc;n đối hơn.</p>\r\n\r\n<h4>Cổ &aacute;o bẻ rộng cổ điển (Cutaway collar)</h4>\r\n\r\n<p><img alt="cổ áo sơ mi kiểu bẻ rộng cổ điển" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14150341/co-ao-so-mi-13.png" style="height:329px; width:669px" /></p>\r\n\r\n<p><em><strong>Đặc điểm</strong></em>: Độ mở cổ &aacute;o c&oacute; số đo từ khoảng 18 &ndash; 21 cm</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Khu&ocirc;n mặt nhỏ, gầy, d&agrave;i</p>\r\n\r\n<p><em>Lưu &yacute;</em>: H&atilde;y lưu &yacute; khoảng c&aacute;ch giữa 2 mũi cổ &aacute;o (tạo th&agrave;nh h&igrave;nh chữ V ngược) v&agrave; chiều d&agrave;i từ mũi cổ &aacute;o. C&ugrave;ng tạo ra một g&oacute;c chữ V như nhau nhưng lại c&oacute; chiều d&agrave;i từ mũi cổ &aacute;o ngắn sẽ ph&ugrave; hợp với những người c&oacute; đầu nhỏ bởi cổ &aacute;o nhỏ sẽ khiến đầu bạn c&oacute; cảm gi&aacute;c to hơn.</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng</strong></em>: Bạn c&oacute; thể lựa chọn kiểu cổ &aacute;o n&agrave;y cho nhiều loại trang phục kh&aacute;c nhau, nhưng cổ &aacute;o bẻ rộng n&agrave;y sẽ l&agrave; sự lựa chọn tuyệt vời khi mặc với &aacute;o kho&aacute;c suit v&agrave; c&agrave; vạt. Bạn n&ecirc;n chọn kiểu thắt c&agrave; vạt n&uacute;t to rộng như&nbsp;<a href="https://canifa.com/blog/cach-that-ca-vat-dep/#Kieu_Full_Windsor_Tie_Knot" target="_blank">kiểu thắt Windsor</a>&nbsp;với cổ &aacute;o n&agrave;y.</p>\r\n\r\n<p><img alt="cổ áo sơ mi kiểu bẻ rộng cổ điển" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14150442/co-ao-so-mi-14.jpg" style="height:600px; width:400px" /></p>\r\n\r\n<h4>Cổ &aacute;o bẻ rộng nửa (Semi Spread Collar)</h4>\r\n\r\n<p><img alt="cổ áo sơ mi kiểu bẻ rộng một nửa" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14150627/co-ao-so-mi-15.png" style="height:273px; width:600px" /></p>\r\n\r\n<p><em><strong>Đặc điểm:</strong>&nbsp;</em>Kiểu cổ n&agrave;y l&agrave; &ldquo;anh em xa&rdquo; của cổ &aacute;o nhọn, kh&aacute;c biệt ở mỗi độ mở của cổ &aacute;o. Độ mở của cổ &aacute;o c&oacute; số đo từ 10 &ndash; 15 cm v&agrave; kiểu cổ n&agrave;y to hơn kiểu cổ bẻ rộng cổ điển.</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Ph&ugrave; hợp với khu&ocirc;n mặt gầy, d&agrave;i hoặc người c&oacute; cổ d&agrave;i.</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng</strong></em>: Ph&ugrave; hợp với c&aacute;c kiểu trang phục c&ocirc;ng sở với n&uacute;t thắt c&agrave; vạt lớn</p>\r\n\r\n<p>Ngo&agrave;i hai kiểu cổ phổ biến tr&ecirc;n, cổ &aacute;o bẻ rộng c&ograve;n c&oacute; loại bẻ rộng (Wide spread) v&agrave; loại bẻ c&oacute; đường cong (Curved wide spread). Hai kiểu cổ n&agrave;y c&oacute; chiều d&agrave;i từ mũi cổ &aacute;o d&agrave;i hơn, khoảng 9cm.</p>\r\n\r\n<p><img alt="cổ áo sơ mi kiểu bẻ rộng một nửa" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14152124/co-ao-so-mi-16.jpg" style="height:400px; width:600px" /></p>\r\n\r\n<h3>Một số kiểu cổ &aacute;o đặc biệt</h3>\r\n\r\n<p>Ngo&agrave;i những kiểu cổ &aacute;o thường thấy ở tr&ecirc;n,&nbsp;<strong>CANIFA</strong>&nbsp;c&ograve;n muốn giới thiệu cho c&aacute;c bạn một số kiểu cổ &aacute;o đặc biệt v&agrave; &iacute;t thấy hơn. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; th&ocirc;i n&agrave;o!</p>\r\n\r\n<h4>Cổ &aacute;o c&oacute; dải (Tab collar)</h4>\r\n\r\n<p><img alt="cổ áo sơ mi có dải" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14152314/co-ao-so-mi-17.png" style="height:354px; width:542px" /></p>\r\n\r\n<p><em><strong>Đặc điểm:</strong>&nbsp;</em>Kiểu cổ &aacute;o n&agrave;y c&oacute; th&ecirc;m 1 dải vải nhỏ giữa hai mũi cổ &aacute;o thường được cố định lại bằng khuy c&agrave;i nằm ph&iacute;a dưới phần thắt c&agrave; vạt. C&aacute;ch thiết kế n&agrave;y gi&uacute;p c&agrave; vạt lu&ocirc;n được đẩy l&ecirc;n tr&ecirc;n v&agrave; nổi bật hơn.</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Ở đ&acirc;y, thay v&igrave; chọn kiểu khu&ocirc;n mặt ph&ugrave; hợp, cổ &aacute;o Tab sẽ gi&uacute;p người c&oacute; cổ d&agrave;i che giấu được khuyết điểm.</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng:</strong></em>&nbsp;Kiểu cổ &aacute;o n&agrave;y lu&ocirc;n phải mặc c&ugrave;ng c&agrave; vạt.</p>\r\n\r\n<p><img alt="cổ áo sơ mi có dải" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14152423/co-ao-so-mi-18.jpg" style="height:457px; width:800px" /></p>\r\n\r\n<h4>Cổ &aacute;o c&oacute; lỗ xỏ (Pin collar)</h4>\r\n\r\n<p><img alt="cổ áo sơ mi có lỗ xỏ" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14152615/co-ao-so-mi-19.png" style="height:374px; width:591px" /></p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em>&nbsp;Ở mỗi b&ecirc;n cổ &aacute;o c&oacute; một lỗ để xỏ v&agrave;o một thanh ngang trang tr&iacute; dưới phần thắt c&agrave; vạt gi&uacute;p đẩy c&agrave; vạt l&ecirc;n tr&ecirc;n v&agrave; đồng thời trang tr&iacute; cho cổ &aacute;o.</p>\r\n\r\n<p><em><strong>Kiểu khu&ocirc;n mặt ph&ugrave; hợp:</strong></em>&nbsp;Kiểu cổ &aacute;o n&agrave;y d&agrave;nh cho những người c&oacute; cổ cao muốn che khuyết điểm</p>\r\n\r\n<p><em><strong>Trang phục phối c&ugrave;ng:</strong>&nbsp;</em>Cổ &aacute;o c&oacute; lỗ xỏ lu&ocirc;n phải mặc c&ugrave;ng c&agrave; vạt.</p>\r\n\r\n<p><img alt="kiểu cổ áo sơ mi có lỗ xỏ" src="https://s3-ap-southeast-1.amazonaws.com/canifablog/blog/wp-content/uploads/2018/03/14152632/co-ao-so-mi-20.jpg" style="height:470px; width:600px" /></p>\r\n\r\n<p><strong>Lời kết,</strong></p>\r\n\r\n<p>Với to&agrave;n tập b&iacute; k&iacute;p về cổ &aacute;o sơ mi, c&aacute;c ch&agrave;ng chắc chắn sẽ tự tin hơn khi tự chọn những chiếc &aacute;o sơ mi cho m&igrave;nh trong bất cứ dịp n&agrave;o!&nbsp;<strong>CANIFA</strong>&nbsp;hy vọng đ&acirc;y sẽ l&agrave; b&iacute; k&iacute;p giắt t&uacute;i v&ocirc; c&ugrave;ng hữu &iacute;ch cho bạn để lu&ocirc;n mặc đẹp v&agrave; mặc đ&uacute;ng.</p>', 'Một trong những món đồ “cần có” trong tủ đồ của phái mạnh đó là chiếc áo sơ mi. Áo sơ mi dường như đã trở thành biểu tượng và là một item thời trang kinh điển của bất cứ ai dù họ có quan tâm đến thời trang hay không. Tuy nhiên, tưởng như sẽ chẳng còn gì để nói về chiếc áo sơ mi “quá đỗi bình thường” này, bạn sẽ thấy bất ngờ trước những gì mà bạn có thể “lắng nghe” từ món đồ này đấy!', 'Một trong những món đồ “cần có” trong tủ đồ của phái mạnh đó là chiếc áo sơ mi. Áo sơ mi dường như đã trở thành biểu tượng và là một item thời trang kinh điển của bất cứ ai dù họ có quan tâm đến thời trang hay không. Tuy nhiên, tưởng như sẽ chẳng còn gì để nói về chiếc áo sơ mi “quá đỗi bình thường” này, bạn sẽ thấy bất ngờ trước những gì mà bạn có thể “lắng nghe” từ món đồ này đấy!', 1, '2018-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `unit_price` int(11) NOT NULL,
  `promo_price` int(11) DEFAULT '0',
  `producer` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `vote` int(5) DEFAULT '0',
  `view_count` int(11) DEFAULT '0',
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_describe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `alias`, `category_id`, `unit_price`, `promo_price`, `producer`, `amount`, `vote`, `view_count`, `describe`, `meta_keyword`, `meta_describe`, `status`, `created`) VALUES
(19, 'Camera DS-2CD2142FWD-IWS', 'camera-ds-2cd2142fwd-iws', 23, 5110000, 3577000, 'Việt Nam', 100, 0, 0, '<p><strong>Camera Hikivision DS-2CD2141FWD-IWS 4MP.</strong><br />\r\n&nbsp;+ Cảm bi&ecirc;́n: 1/3&quot; CMOS&nbsp;<br />\r\n&nbsp;+ Ống k&iacute;nh: 2.8 mm (t&ugrave;y chọn 4/6 mm)<br />\r\n&nbsp;+ Hồng ngoại th&ocirc;ng minh 30m<br />\r\n&nbsp;+ Chống ngược s&aacute;ng thực&nbsp;<strong>120dB<br />\r\n&nbsp;</strong>+ 3D DNR,BLC,&nbsp;Chuẩn ngo&agrave;i trời IP67<br />\r\n&nbsp;+ Dải nhi&ecirc;̣t hoạt đ&ocirc;̣ng r&ocirc;̣ng (-40&deg;~60&deg;)<br />\r\n&nbsp;+ Hỗ trợ Wifi, cổng &acirc;m thanh b&aacute;o động v&agrave;o ra.<br />\r\n&nbsp;+ Nguồn v&agrave;o 12V.</p>', 'Camera Hikivision DS-2CD2141FWD-IWS 4MP.\r\n + Cảm biến: 1/3" CMOS \r\n + Ống kính: 2.8 mm (tùy chọn 4/6 mm)\r\n + Hồng ngoại thông minh 30m\r\n + Chống ngược sáng thực 120dB\r\n + 3D DNR,BLC, Chuẩn ngoài trời IP67\r\n + Dải nhiệt hoạt động rộng (-40°~60°)\r\n + Hỗ trợ Wifi, cổng âm thanh báo động vào ra.\r\n + Nguồn vào 12V.', 'Camera Hikivision DS-2CD2141FWD-IWS 4MP.\r\n + Cảm biến: 1/3" CMOS \r\n + Ống kính: 2.8 mm (tùy chọn 4/6 mm)\r\n + Hồng ngoại thông minh 30m\r\n + Chống ngược sáng thực 120dB\r\n + 3D DNR,BLC, Chuẩn ngoài trời IP67\r\n + Dải nhiệt hoạt động rộng (-40°~60°)\r\n + Hỗ trợ Wifi, cổng âm thanh báo động vào ra.\r\n + Nguồn vào 12V.', 1, '2018-06-17'),
(20, 'Camera DS-2CD2120F-IWS', 'camera-ds-2cd2120f-iws', 23, 3000000, 0, 'Việt Nam', 50, 0, 0, '<ul>\r\n	<li><strong>Camera IP DS-2CD2120F-IWS 2MP </strong><br />\r\n	+ Cảm biến: 1/3" CMOS 2mp.<br />\r\n	+ Ống kính: 4mm (Đặt hàng: 2.8mm, 6mm) <br />\r\n	+ Tầm xa hồng ngoại nhìn đêm: 30m.<br />\r\n	+ 3D DNR, DWDR, BLC. Tiêu chuẩn IP 66<br />\r\n	+ Có khe cắm thẻ nhớ MicroSD, hỗ trợ thẻ tối đa 128GB <br />\r\n	+ Hỗ trợ wifi<br />\r\n	+ Hỗ trợ cổng âm thanh báo động vào ra.</li>\r\n</ul>', 'Camera IP DS-2CD2120F-IWS 2MP \r\n+ Cảm biến: 1/3" CMOS 2mp.\r\n+ Ống kính: 4mm (Đặt hàng: 2.8mm, 6mm) \r\n+ Tầm xa hồng ngoại nhìn đêm: 30m.\r\n+ 3D DNR, DWDR, BLC. Tiêu chuẩn IP 66\r\n+ Có khe cắm thẻ nhớ MicroSD, hỗ trợ thẻ tối đa 128GB \r\n+ Hỗ trợ wifi\r\n+ Hỗ trợ cổng âm thanh báo động vào ra.', 'Camera IP DS-2CD2120F-IWS 2MP \r\n+ Cảm biến: 1/3" CMOS 2mp.\r\n+ Ống kính: 4mm (Đặt hàng: 2.8mm, 6mm) \r\n+ Tầm xa hồng ngoại nhìn đêm: 30m.\r\n+ 3D DNR, DWDR, BLC. Tiêu chuẩn IP 66\r\n+ Có khe cắm thẻ nhớ MicroSD, hỗ trợ thẻ tối đa 128GB \r\n+ Hỗ trợ wifi\r\n+ Hỗ trợ cổng âm thanh báo động vào ra.', 1, '2018-06-17'),
(21, 'Camera DS-2CD2020F-IW', 'camera-ds-2cd2020f-iw', 23, 4000000, 0, 'Việt Nam', 200, 0, 0, '<p><strong>Camera IP DS-2CD2020F-IW 2MP</strong>&nbsp;<br />\r\n+ Cảm biến h&igrave;nh ảnh : 1/3&Prime; CMOS 2MP<br />\r\n+ &Ocirc;́ng k&iacute;nh: 4mm (Đặt hàng: 6mm, 12mm).<br />\r\n+ Tầm xa hồng ngoại nh&igrave;n đ&ecirc;m: 30m.<br />\r\n+ 3D DNR, DWDR,BLC, Ti&ecirc;u chuẩn IP66<br />\r\n+ Hỗ trợ khe cắm thẻ nhớ 128GB<br />\r\n+ Dải nhiệt hoạt động r&ocirc;̣ng :( -30&deg;~60&deg;). K&egrave;m ch&acirc;n đế.<br />\r\n+ Hỗ trợ Wifi</p>', 'Camera DS-2CD2020F-IW', 'Camera DS-2CD2020F-IW', 2, '2018-06-17'),
(22, 'Camera DS 2CE56COT-IRP(IR)', 'camera-ds-2ce56cot-irp(ir)', 25, 4000000, 0, 'Việt Nam', 100, 0, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan="3" scope="col">Camera</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Image Sensor:</td>\r\n			<td>1MP CMOS Image Sensor</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Signal System:</td>\r\n			<td>PAL/NTSC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Effective Pixels:</td>\r\n			<td>1296(H)x732(V)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Min. Illumination:</td>\r\n			<td>0.1 Lux @(F1.2,AGC ON), 0 Lux with IR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shutter Time:</td>\r\n			<td>1/25(1/30) s to 1/50,000 s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lens:</td>\r\n			<td>3.6mm (2.8mm, 6mm optional), Angle of View: 70.9°(3.6mm), 92°(2.8mm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lens Mount:</td>\r\n			<td>M12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Adjustment Range:</td>\r\n			<td>Pan: 0 – 360°, Tilt: 0 – 75°, Rotation: 0 – 360°</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Day& Night:</td>\r\n			<td>IR cut filter with auto switch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Video Frame Rate:</td>\r\n			<td>720p@25fps/720p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HD Video Output:</td>\r\n			<td>1 Analog HD output</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Synchronization:</td>\r\n			<td>Internal Synchronization</td>\r\n		</tr>\r\n		<tr>\r\n			<td>S/N Ratio:</td>\r\n			<td>More than 62 dB</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan="3" scope="col">General</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating Conditions:</td>\r\n			<td>-20 °C – 45 °C (-4 °F – 113 °F)<br />\r\n			Humidity 90% or less (non-condensing)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Supply:</td>\r\n			<td>12 VDC±15%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Consumption:</td>\r\n			<td>Max. 4W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>IR Range:</td>\r\n			<td>Up to 20m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension:</td>\r\n			<td>Φ89.5 × 69.8 mm(Φ3.52” × 2.75”)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight:</td>\r\n			<td>250 g</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'Camera DS 2CE56COT-IRP(IR)', 'Camera DS 2CE56COT-IRP(IR)', 2, '2018-06-17'),
(23, 'Camera DS 2CE16COT-IRP(IR)', 'camera-ds-2ce16cot-irp(ir)', 25, 5000000, 4000000, 'Việt Nam', 100, 0, 0, '<p>Mã sản phẩm: DS-2CE16COT-IRP (IR)<br />\r\n+ Cảm biến : 1 / 3" Progressive Scan CMOS<br />\r\n + Độ phân giải: 1.0 Megapixel<br />\r\n + Hồng ngoại thông minh: 20m, tự chuyển chế độ ngày/đêm<br />\r\n + Giảm nhiễu số (3D DNR)<br />\r\n + Phát hiện chuyển động (Motion Detection)<br />\r\n + Độ nhạy sáng 0.01 Lux/F1.2<br />\r\n + Ống kính: 3.6mm (tùy chọn 2.8mm, 6mm)<br />\r\n + Nguồn vào 12 VDC<br />\r\n + Dải nhiệt hoạt động rộng (-40°~60°)<br />\r\n + Chuẩn ngoài trời IP66<br />\r\nChưa có adapter</p>', 'Camera DS-2CE16COT-IRP (IR)', 'Camera DS-2CE16COT-IRP (IR)', 1, '2018-06-17'),
(24, 'Camera DS-2CD2142FWD-I', 'camera-ds-2cd2142fwd-i', 25, 4090000, 2836000, 'Việt Nam', 100, 0, 0, '<p><strong>Camera Hikivision DS-2CD2142FWD-I 4MP.</strong><br />\r\n + Cảm biến: 1/3" CMOS <br />\r\n + Ống kính: 2.8 mm (tùy chọn 4/6 mm)<br />\r\n + Hồng ngoại thông minh 30m<br />\r\n + Chống ngược sáng thực <strong>120dB<br />\r\n </strong>+ 3D DNR,BLC<br />\r\n + Dải nhiệt hoạt động rộng (-40°~60°)<br />\r\n + Chuẩn ngoài trời IP67<br />\r\n + Nguồn vào 12V.</p>', 'Camera Hikivision DS-2CD2142FWD-I 4MP.', 'Camera Hikivision DS-2CD2142FWD-I 4MP.', 1, '2018-06-17'),
(25, 'Camera DS-2CD56F1T-IT3', 'camera-ds-2cd56f1t-it3', 25, 1580000, 1106000, 'Việt Nam', 100, 0, 0, '<p><strong>Camera Hikivision DS-2CE56F1T-IT3 3MP.</strong><br />\r\n&nbsp;+ Cảm bi&ecirc;́n: CMOS 3 MP, 2052x1536<br />\r\n&nbsp;+ Hồng ngoại EXIR: 20m<br />\r\n&nbsp;+ Ph&aacute;t hiện chuyển động (Motion Detection)<br />\r\n&nbsp;+ Giảm nhiễu KTS, Menu điều &nbsp;khiển th&ocirc;ng qua c&aacute;p đồng trục<br />\r\n&nbsp;+ Ống k&iacute;nh: 3.6mm (t&ugrave;y chọn 2.8mm, 6mm)<br />\r\n&nbsp;+ Dải nhi&ecirc;̣t hoạt đ&ocirc;̣ng r&ocirc;̣ng (-40&deg;~60&deg;)<br />\r\n&nbsp;+ Chuẩn ngo&agrave;i trời IP66<br />\r\n&nbsp;+ Nguồn v&agrave;o 12V.</p>', 'Camera Hikivision DS-2CE56F1T-IT3 3MP.', 'Camera Hikivision DS-2CE56F1T-IT3 3MP.', 1, '2018-06-17'),
(26, 'Camera DS-2CD2720F-IS', 'camera-ds-2cd2720f-is', 22, 5930000, 0, 'Việt Nam', 100, 0, 0, '<ul>\r\n	<li><strong>Camera IP DS-2CD2720F-IS&nbsp;2MP</strong><br />\r\n	+ Cảm bi&ecirc;́n: 1/3&quot; CMOS 2mp.<br />\r\n	+ &Ocirc;́ng kính thay đổi ti&ecirc;u cự: 2.8 - 12m<br />\r\n	+ Hồng ngoại th&ocirc;ng minh 30m.<br />\r\n	+ 3D DNR, DWDR, BLC. Ti&ecirc;u chuẩn IP 66<br />\r\n	+ C&oacute; khe cắm thẻ nhớ MicroSD, hỗ trợ thẻ tối đa 128GB&nbsp;<br />\r\n	+ Tự động điều chỉnh &aacute;nh s&aacute;ng<br />\r\n	+ Hỗ trợ cổng &acirc;m thanh b&aacute;o động v&agrave;o/ra.</li>\r\n</ul>', 'Camera IP DS-2CD2720F-IS 2MP', 'Camera IP DS-2CD2720F-IS 2MP', 1, '2018-06-17'),
(28, 'Camera DS-2CD2D14WD', 'camera-ds-2cd2d14wd', 22, 3790000, 2653000, 'Việt Nam', 100, 0, 0, '<p>Camera IP &nbsp;DS-2CD2D14WD 1.3MP<br />\r\n+ Cảm biến CMOS 1/4 &quot; mp, 1280X720<br />\r\n+ Ống k&iacute;nh 3.2mm, Ống nh&igrave;n ngang 65 độ<br />\r\n+ Độ nhạy s&aacute;ng cao: 0.01 Lux<br />\r\n+ Chống ngược s&aacute;ng 100dB WDR<br />\r\n+ 3D DNR,BLC</p>', 'Camera IP  DS-2CD2D14WD 1.3MP\r\n+ Cảm biến CMOS 1/4 " mp, 1280X720\r\n+ Ống kính 3.2mm, Ống nhìn ngang 65 độ\r\n+ Độ nhạy sáng cao: 0.01 Lux\r\n+ Chống ngược sáng 100dB WDR\r\n+ 3D DNR,BLC', 'Camera IP  DS-2CD2D14WD 1.3MP\r\n+ Cảm biến CMOS 1/4 " mp, 1280X720\r\n+ Ống kính 3.2mm, Ống nhìn ngang 65 độ\r\n+ Độ nhạy sáng cao: 0.01 Lux\r\n+ Chống ngược sáng 100dB WDR\r\n+ 3D DNR,BLC', 2, '2018-06-17'),
(29, 'Camera iDS-2CD6412FWD-C', 'camera-ids-2cd6412fwd-c', 22, 18750000, 13125000, 'Việt Nam', 100, 0, 0, '<p><strong>Camera IP iDS-2CD6412FWD 1.3MP</strong><br />\r\nCamera IP&nbsp;<strong>đếm lượt v&agrave;o / ra&nbsp;</strong>chuy&ecirc;n dụng 1.3MP<br />\r\n+ Cảm biến CMOS1/3&quot;<br />\r\n+ Hiển thị th&ocirc;ng tin số lượng người ra/ v&agrave;o trực tiếp tr&ecirc;n video<br />\r\n+ Xuất b&aacute;o c&aacute;o theo thời gian<br />\r\n+ Chống ngược s&aacute;ng cực mạnh WDR 120dB<br />\r\n+ H&ocirc;c trợ 60fps, Chế độ m&atilde; h&oacute;a th&ocirc;ng minh<br />\r\n+ Hỗ trợ t&iacute;nh năng ph&aacute;t hiện x&acirc;m phạm, ổn định h&igrave;nh ảnh<br />\r\n+ Hỗ trợ 3 luồng dữ liệu, Hỗ trợ khe cắm thẻ nhớ.</p>', 'Camera IP iDS-2CD6412FWD 1.3MP\r\nCamera IP đếm lượt vào / ra chuyên dụng 1.3MP\r\n+ Cảm biến CMOS1/3"\r\n+ Hiển thị thông tin số lượng người ra/ vào trực tiếp trên video\r\n+ Xuất báo cáo theo thời gian\r\n+ Chống ngược sáng cực mạnh WDR 120dB\r\n+ Hôc trợ 60fps, Chế độ mã hóa thông minh\r\n+ Hỗ trợ tính năng phát hiện xâm phạm, ổn định hình ảnh\r\n+ Hỗ trợ 3 luồng dữ liệu, Hỗ trợ khe cắm thẻ nhớ.', 'Camera IP iDS-2CD6412FWD 1.3MP\r\nCamera IP đếm lượt vào / ra chuyên dụng 1.3MP\r\n+ Cảm biến CMOS1/3"\r\n+ Hiển thị thông tin số lượng người ra/ vào trực tiếp trên video\r\n+ Xuất báo cáo theo thời gian\r\n+ Chống ngược sáng cực mạnh WDR 120dB\r\n+ Hôc trợ 60fps, Chế độ mã hóa thông minh\r\n+ Hỗ trợ tính năng phát hiện xâm phạm, ổn định hình ảnh\r\n+ Hỗ trợ 3 luồng dữ liệu, Hỗ trợ khe cắm thẻ nhớ.', 1, '2018-07-13'),
(30, 'Camera DS-2AE5223', 'camera-ds-2ae5223', 24, 18970000, 13279000, 'Việt Nam', 20, 0, 0, '<p><strong>Camera HD_TVI quay quyét 2MP</strong><br />\r\n+ Cảm biến: 1/3" Progressive Scan CMOS 2MP<br />\r\n+ Zoom quang 23X, Zoom số 16X <br />\r\n+ Khoảng cách hồng ngoại 150m <br />\r\n+ Định vị thông minh 3D,3D DNR,BLC, DWDR<br />\r\n+ Hỗ trợ điều khiển PTZ qua cáp đồng trục<br />\r\n+ Chức năng cài đặt vùng bí mật<br />\r\n+ Nguồn 12V</p>', 'Camera HD_TVI quay quyét 2MP\r\n+ Cảm biến: 1/3" Progressive Scan CMOS 2MP\r\n+ Zoom quang 23X, Zoom số 16X \r\n+ Khoảng cách hồng ngoại 150m \r\n+ Định vị thông minh 3D,3D DNR,BLC, DWDR\r\n+ Hỗ trợ điều khiển PTZ qua cáp đồng trục\r\n+ Chức năng cài đặt vùng bí mật\r\n+ Nguồn 12V', 'Camera HD_TVI quay quyét 2MP\r\n+ Cảm biến: 1/3" Progressive Scan CMOS 2MP\r\n+ Zoom quang 23X, Zoom số 16X \r\n+ Khoảng cách hồng ngoại 150m \r\n+ Định vị thông minh 3D,3D DNR,BLC, DWDR\r\n+ Hỗ trợ điều khiển PTZ qua cáp đồng trục\r\n+ Chức năng cài đặt vùng bí mật\r\n+ Nguồn 12V', 2, '2018-07-13'),
(31, 'Camera DS-2AE4123TI-D', 'camera-ds-2ae4123ti-d', 24, 10810000, 7567000, 'Việt Nam', 20, 0, 0, '<p><strong>Camera HD_TVI quay quy&eacute;t 1MP</strong><br />\r\n+&nbsp;Cảm bi&ecirc;́n: 1/3&quot; Progressive Scan CMOS&nbsp;<br />\r\n+ Zoom quang 23X, Zoom số 16X&nbsp;<br />\r\n+ Khoảng c&aacute;ch hồng ngoại 100m&nbsp;<br />\r\n+ Định vị th&ocirc;ng minh 3D,3D DNR,BLC, DWDR<br />\r\n+ H&ocirc;̃ trợ đi&ecirc;̀u khi&ecirc;̉n PTZ qua cáp đ&ocirc;̀ng trục<br />\r\n+ Chức năng c&agrave;i đặt v&ugrave;ng b&iacute; mật.<br />\r\n+ Nguồn 12V</p>', 'Camera HD_TVI quay quyét 1MP\r\n+ Cảm biến: 1/3" Progressive Scan CMOS \r\n+ Zoom quang 23X, Zoom số 16X \r\n+ Khoảng cách hồng ngoại 100m \r\n+ Định vị thông minh 3D,3D DNR,BLC, DWDR\r\n+ Hỗ trợ điều khiển PTZ qua cáp đồng trục\r\n+ Chức năng cài đặt vùng bí mật.\r\n+ Nguồn 12V', 'Camera HD_TVI quay quyét 1MP\r\n+ Cảm biến: 1/3" Progressive Scan CMOS \r\n+ Zoom quang 23X, Zoom số 16X \r\n+ Khoảng cách hồng ngoại 100m \r\n+ Định vị thông minh 3D,3D DNR,BLC, DWDR\r\n+ Hỗ trợ điều khiển PTZ qua cáp đồng trục\r\n+ Chức năng cài đặt vùng bí mật.\r\n+ Nguồn 12V', 1, '2018-07-13'),
(34, 'Camera DS-2CD2942F-I', 'camera-ds-2cd2942f-i', 26, 10090000, 0, 'Việt Nam', 100, 0, 0, '<p>Camera Hikivision DS-2CD2942F-I 4MP<br />\r\n+ Camera IP mắt c&aacute; 360 độ 4MP<br />\r\n+ Độ ph&acirc;n giải: 4 Megapixel (2464&times;1520) . Cảm bi&ecirc;́n: 1/3&Prime; Progressive Scan CMOS<br />\r\n+ Đ&ocirc;̣ nhạy sáng cao:Color: 0.01lux, B/W: 0.001lux, 0 lux with IR. &Ocirc;́ng kính 1.6mm, góc đứng 186&deg;(horizontal), góc ngang 106&deg;(vertical).<br />\r\n+ Tầm xa hồng ngoại nh&igrave;n đ&ecirc;m: 8m. C&oacute; khe cắm thẻ nhớ. hỗ trợ dung lượng tối đa 64GB. Chống nhiễu kỹ thuật số DNR<br />\r\n+ Kích thước nhỏ gọn : &Phi;119.9 x 41.2 (mm). Ngu&ocirc;̀n 12VDC</p>', 'Camera Hikivision DS-2CD2942F-I 4MP\r\n+ Camera IP mắt cá 360 độ 4MP\r\n+ Độ phân giải: 4 Megapixel (2464×1520) . Cảm biến: 1/3″ Progressive Scan CMOS\r\n+ Độ nhạy sáng cao:Color: 0.01lux, B/W: 0.001lux, 0 lux with IR. Ống kính 1.6mm, góc đứng 186°(horizontal), góc ngang 106°(vertical).\r\n+ Tầm xa hồng ngoại nhìn đêm: 8m. Có khe cắm thẻ nhớ. hỗ trợ dung lượng tối đa 64GB. Chống nhiễu kỹ thuật số DNR\r\n+ Kích thước nhỏ gọn : Φ119.9 x 41.2 (mm). Nguồn 12VDC', 'Camera Hikivision DS-2CD2942F-I 4MP\r\n+ Camera IP mắt cá 360 độ 4MP\r\n+ Độ phân giải: 4 Megapixel (2464×1520) . Cảm biến: 1/3″ Progressive Scan CMOS\r\n+ Độ nhạy sáng cao:Color: 0.01lux, B/W: 0.001lux, 0 lux with IR. Ống kính 1.6mm, góc đứng 186°(horizontal), góc ngang 106°(vertical).\r\n+ Tầm xa hồng ngoại nhìn đêm: 8m. Có khe cắm thẻ nhớ. hỗ trợ dung lượng tối đa 64GB. Chống nhiễu kỹ thuật số DNR\r\n+ Kích thước nhỏ gọn : Φ119.9 x 41.2 (mm). Nguồn 12VDC', 1, '2018-07-14'),
(35, 'Camera iDS-2CD6412FWD-C', 'camera-ids-2cd6412fwd-c', 26, 18750000, 13125000, 'Việt Nam', 100, 0, 0, '<p><strong>Camera IP iDS-2CD6412FWD 1.3MP</strong><br />\r\nCamera IP&nbsp;<strong>đếm lượt v&agrave;o / ra&nbsp;</strong>chuy&ecirc;n dụng 1.3MP<br />\r\n+ Cảm biến CMOS1/3&quot;<br />\r\n+ Hiển thị th&ocirc;ng tin số lượng người ra/ v&agrave;o trực tiếp tr&ecirc;n video<br />\r\n+ Xuất b&aacute;o c&aacute;o theo thời gian<br />\r\n+ Chống ngược s&aacute;ng cực mạnh WDR 120dB<br />\r\n+ H&ocirc;c trợ 60fps, Chế độ m&atilde; h&oacute;a th&ocirc;ng minh<br />\r\n+ Hỗ trợ t&iacute;nh năng ph&aacute;t hiện x&acirc;m phạm, ổn định h&igrave;nh ảnh<br />\r\n+ Hỗ trợ 3 luồng dữ liệu, Hỗ trợ khe cắm thẻ nhớ.</p>', 'Camera IP iDS-2CD6412FWD 1.3MP\r\nCamera IP đếm lượt vào / ra chuyên dụng 1.3MP\r\n+ Cảm biến CMOS1/3"\r\n+ Hiển thị thông tin số lượng người ra/ vào trực tiếp trên video\r\n+ Xuất báo cáo theo thời gian\r\n+ Chống ngược sáng cực mạnh WDR 120dB\r\n+ Hôc trợ 60fps, Chế độ mã hóa thông minh\r\n+ Hỗ trợ tính năng phát hiện xâm phạm, ổn định hình ảnh\r\n+ Hỗ trợ 3 luồng dữ liệu, Hỗ trợ khe cắm thẻ nhớ.', 'Camera IP iDS-2CD6412FWD 1.3MP\r\nCamera IP đếm lượt vào / ra chuyên dụng 1.3MP\r\n+ Cảm biến CMOS1/3"\r\n+ Hiển thị thông tin số lượng người ra/ vào trực tiếp trên video\r\n+ Xuất báo cáo theo thời gian\r\n+ Chống ngược sáng cực mạnh WDR 120dB\r\n+ Hôc trợ 60fps, Chế độ mã hóa thông minh\r\n+ Hỗ trợ tính năng phát hiện xâm phạm, ổn định hình ảnh\r\n+ Hỗ trợ 3 luồng dữ liệu, Hỗ trợ khe cắm thẻ nhớ.', 1, '2018-07-14'),
(36, 'Camera DS-2CD2942F-IWS', 'camera-ds-2cd2942f-iws', 26, 11930000, 8351000, 'Việt Nam', 100, 0, 0, '<p>Camera IP Mắt c&aacute; DS-2CD2942F-IWS 4MP</p>\r\n\r\n<p>+ Độ ph&acirc;n giải: 4 Megapixel (2464&times;1520) . Cảm bi&ecirc;́n: 1/3&Prime; Progressive Scan CMOS<br />\r\n+ Đ&ocirc;̣ nhạy sáng cao:Color: 0.01lux, B/W: 0.001lux, 0 lux with IR. &Ocirc;́ng kính 1.6mm, góc đứng 186&deg;(horizontal), góc ngang 106&deg;(vertical).<br />\r\n+ Tầm xa hồng ngoại nh&igrave;n đ&ecirc;m: 8m. C&oacute; khe cắm thẻ nhớ. hỗ trợ dung lượng tối đa 64GB. Chống nhiễu kỹ thuật số DNR<br />\r\n+ Kích thước nhỏ gọn : &Phi;119.9 x 41.2 (mm). Ngu&ocirc;̀n 12VDC</p>', 'Camera IP Mắt cá DS-2CD2942F-IWS 4MP\r\n+ Độ phân giải: 4 Megapixel (2464×1520) . Cảm biến: 1/3″ Progressive Scan CMOS\r\n+ Độ nhạy sáng cao:Color: 0.01lux, B/W: 0.001lux, 0 lux with IR. Ống kính 1.6mm, góc đứng 186°(horizontal), góc ngang 106°(vertical).\r\n+ Tầm xa hồng ngoại nhìn đêm: 8m. Có khe cắm thẻ nhớ. hỗ trợ dung lượng tối đa 64GB. Chống nhiễu kỹ thuật số DNR\r\n+ Kích thước nhỏ gọn : Φ119.9 x 41.2 (mm). Nguồn 12VDC', 'Camera IP Mắt cá DS-2CD2942F-IWS 4MP\r\n+ Độ phân giải: 4 Megapixel (2464×1520) . Cảm biến: 1/3″ Progressive Scan CMOS\r\n+ Độ nhạy sáng cao:Color: 0.01lux, B/W: 0.001lux, 0 lux with IR. Ống kính 1.6mm, góc đứng 186°(horizontal), góc ngang 106°(vertical).\r\n+ Tầm xa hồng ngoại nhìn đêm: 8m. Có khe cắm thẻ nhớ. hỗ trợ dung lượng tối đa 64GB. Chống nhiễu kỹ thuật số DNR\r\n+ Kích thước nhỏ gọn : Φ119.9 x 41.2 (mm). Nguồn 12VDC', 1, '2018-07-14'),
(37, 'Ổ cứng Seagate 500G', 'o-cung-seagate-500g', 27, 2000000, 1900000, 'Việt Nam', 100, 0, 0, '<p>M&atilde; sản phẩm:&nbsp;Model (P/N)ST500DM002<br />\r\n+ Dung lượng500Gb<br />\r\n+ T&ocirc;́c đ&ocirc;̣ quay&nbsp;7200rpm<br />\r\n+ B&ocirc;̣ nhớ Cache16Mb<br />\r\n+ Chu&acirc;̉n giao ti&ecirc;́pSATA3<br />\r\n+ Kích thước 3.5 Inch</p>', 'Mã sản phẩm: Model (P/N)ST500DM002\r\n+ Dung lượng500Gb\r\n+ Tốc độ quay 7200rpm\r\n+ Bộ nhớ Cache16Mb\r\n+ Chuẩn giao tiếpSATA3\r\n+ Kích thước 3.5 Inch', 'Mã sản phẩm: Model (P/N)ST500DM002\r\n+ Dung lượng500Gb\r\n+ Tốc độ quay 7200rpm\r\n+ Bộ nhớ Cache16Mb\r\n+ Chuẩn giao tiếpSATA3\r\n+ Kích thước 3.5 Inch', 1, '2018-07-14'),
(38, 'Ổ cứng Seagate 1T', 'o-cung-seagate-1t', 27, 3000000, 2600000, 'Việt Nam', 100, 0, 0, '<p>+ Dung lượng 1T<br />\r\n+ Tốc độ quay 7200rpm<br />\r\n+ Bộ nhớ Cache16Mb<br />\r\n+ Chuẩn giao tiếp SATA3<br />\r\n+ Kích thước 3.5 Inch</p>', '+ Dung lượng 1T\r\n+ Tốc độ quay 7200rpm\r\n+ Bộ nhớ Cache16Mb\r\n+ Chuẩn giao tiếp SATA3\r\n+ Kích thước 3.5 Inch', '+ Dung lượng 1T\r\n+ Tốc độ quay 7200rpm\r\n+ Bộ nhớ Cache16Mb\r\n+ Chuẩn giao tiếp SATA3\r\n+ Kích thước 3.5 Inch', 1, '2018-07-14'),
(39, 'Ổ cứng Seagate 6T', 'o-cung-seagate-6t', 27, 6000000, 5500000, 'Việt Nam', 100, 0, 0, '<p>​+ Dung lượng 6T<br />\r\n+ Tốc độ quay 7200rpm<br />\r\n+ Bộ nhớ Cache 64Mb<br />\r\n+ Chuẩn giao tiếp SATA3<br />\r\n+ Kích thước 3.5 Inch</p>', '​+ Dung lượng 6T\r\n+ Tốc độ quay 7200rpm\r\n+ Bộ nhớ Cache 64Mb\r\n+ Chuẩn giao tiếp SATA3\r\n+ Kích thước 3.5 Inch', '​+ Dung lượng 6T\r\n+ Tốc độ quay 7200rpm\r\n+ Bộ nhớ Cache 64Mb\r\n+ Chuẩn giao tiếp SATA3\r\n+ Kích thước 3.5 Inch', 1, '2018-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `role`) VALUES
(1, 'Quản trị cao cấp', 1),
(2, 'Nhân viên', 2);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `product_id`, `size`) VALUES
(60, 19, 'Thương hiệu: HIKVISION'),
(61, 20, 'Thương hiệu: HIKVISION'),
(62, 21, 'Thương hiệu: HIKVISION'),
(63, 22, 'Thương hiệu: HIKVISION'),
(64, 23, 'Thương hiệu: HIKVISION'),
(65, 24, 'Thương hiệu: HIKVISION'),
(66, 25, 'Thương hiệu: HIKVISION'),
(67, 26, 'Thương hiệu: HIKVISION'),
(70, 29, 'HIKVISION'),
(71, 30, 'HIKVISION'),
(72, 31, 'HIKVISION'),
(76, 34, 'HIKVISION'),
(77, 35, 'HIKVISION'),
(78, 36, 'HIKVISION'),
(79, 37, 'SEAGATE'),
(80, 38, 'SEAGATE'),
(83, 39, 'SEAGATE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `birthday`, `address`, `remember_token`, `created_at`) VALUES
(13, 'duc thuan', 'thuantd@vnext.com.vn', '$2y$10$VboBBpxL0cv01FEExWmgauCeTVpqIqLdPRqPM4QyG2.6Q2vkLy/ei', '0985346841', NULL, 'acddcsd', 'RhYhefVJr2BSfUQeNT5gXMppvZ5lvVsBSaZAz77CfJH6WdldZ9x3oscKZCI4', '2018-06-14'),
(14, 'duc thuan', 'ducthuan181295@gmail.com', '$2y$10$gVBbWBZRQVZKccGYjNKCM.Er1xD4ktR9fawFfhzjiNNaG/LFXOPhm', '0985346841', NULL, 'acddcsd', 'EVylAoyMRH9fEMSWQDqw9CFZKlxtpFPadv2NOKlDG23OtPyUtWSPIs6RyjTy', '2018-06-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorypost`
--
ALTER TABLE `categorypost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackproduct`
--
ALTER TABLE `feedbackproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post` (`category_post`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `categorypost`
--
ALTER TABLE `categorypost`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feedbackproduct`
--
ALTER TABLE `feedbackproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `feedbackproduct`
--
ALTER TABLE `feedbackproduct`
  ADD CONSTRAINT `feedbackproduct_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feedbackproduct_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `feedbackproduct_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD CONSTRAINT `imageproduct_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`category_post`) REFERENCES `categorypost` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
