-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2021 at 03:27 PM
-- Server version: 8.0.19
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giaoduc`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,2) DEFAULT NULL,
  `course_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lập trình website động với PHP và MySQL', 'php_mySQL', 'Môn học về lập trình trên mã nguồn mở', NULL, '1620874234-php1.png', '2021-05-12', 1, '2021-05-12 02:19:49', '2021-05-12 19:50:34', NULL),
(2, 'Lập trình MVC', 'mvc_course', 'Lập trình MVC', NULL, '1620874277-What-is-MVC.jpg', '2021-05-12', 1, '2021-05-12 02:20:21', '2021-05-12 19:51:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `rating` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int UNSIGNED NOT NULL,
  `course_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci,
  `full_text` text COLLATE utf8mb4_unicode_ci,
  `position` int UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint DEFAULT '0',
  `published` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `downloadable_files` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`, `downloadable_files`) VALUES
(1, 1, 'Bài 1. Tổng quan về PHP', 'tong_quan_ve_php', '1620878120-php1.png', 'Bài 1. Tổng quan về PHP', '<h1>B&agrave;i 1.Tổng quan về PHP v&agrave; MySQL</h1>\r\n\r\n<h2><a name=\"_1fob9te\"></a>1.1Ng&ocirc;n ngữ PHP v&agrave; MySQL</h2>\r\n\r\n<p>PHP Hypertext Preprcessr (PHP) l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh ch ph&eacute;p c&aacute;c lập tr&igrave;nh vi&ecirc;n web tạ c&aacute;c nội dung động m&agrave; tương t&aacute;c với Database. Về cơ bản, PHP được sử dụng để ph&aacute;t triển c&aacute;c ứng dụng phần mềm tr&ecirc;n web.</p>\r\n\r\n<p>PHP khởi đầu như l&agrave; một dự &aacute;n m&atilde; nguồn mở nhỏ, nhưng the đ&agrave; ph&aacute;t triển, ng&agrave;y c&agrave;ng nhiều người thấy rằng n&oacute; c&agrave;ng ng&agrave;y c&agrave;ng hữu &iacute;ch. PHP được ph&aacute;t triển từ một sản phẩm c&oacute; t&ecirc;n l&agrave; PHP/FI. PHP/FI d Rasmus Lerdrf tạ ra năm 1994, ban đầu được xem như l&agrave; một tập cn đơn giản của c&aacute;c m&atilde; kịch bản Perl để the d&otilde;i t&igrave;nh h&igrave;nh truy cập đến bản sơ yếu l&yacute; lịch của &ocirc;ng tr&ecirc;n mạng. &Ocirc;ng đ&atilde; đặt t&ecirc;n ch bộ m&atilde; kịch bản n&agrave;y l&agrave; &quot;Persnal Hme Page Tls&quot;. Khi cần đến c&aacute;c chức năng rộng hơn, Rasmus đ&atilde; viết ra một bộ thực thi bằng C lớn hơn để c&oacute; thể truy vấn tới Database v&agrave; gi&uacute;p ch người sử dụng ph&aacute;t triển c&aacute;c ứng dụng web đơn giản. Rasmus đ&atilde; quyết định c&ocirc;ng bố m&atilde; nguồn của PHP/FI ch mọi người xem, sử dụng cũng như sửa c&aacute;c lỗi c&oacute; trng n&oacute;, đồng thời cải tiến m&atilde; nguồn. PHP đ&atilde; ph&aacute;t triển rất nhanh ch&oacute;ng v&agrave; trở th&agrave;nh ng&ocirc;n ngữ lập tr&igrave;nh web phổ biến nhất tr&ecirc;n thế giới hiện nay.</p>\r\n\r\n<h3><a name=\"_3znysh7\"></a>1.1.1Ng&ocirc;n ngữ lập m&atilde; ngồn mở</h3>\r\n\r\n<p>Một số đặc điểm quan trọng của PHP:</p>\r\n\r\n<ul>\r\n	<li>PHP viết hồi qui của &quot;PHP: Hypertext Preprcessr&quot;.</li>\r\n	<li>PHP l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh kịch bản viết ch m&aacute;y chủ m&agrave; được nh&uacute;ng trng HTML. N&oacute; được sử dụng để quản l&yacute; nội dụng động, Database, Sessin tracking, &hellip;</li>\r\n	<li>N&oacute; được t&iacute;ch hợp với một số Database th&ocirc;ng dụng như MySQL, PstgreSQL, racle, Sybase, Infrmix, v&agrave; Micrsft SQL Server.</li>\r\n	<li>PHP thực thi rất tuyệt vời, đặc biệt khi được bi&ecirc;n dịch như l&agrave; một Apache Mdule tr&ecirc;n Unix side. MySQL Server, khi được khởi động, thực thi c&aacute;c truy vấn phức tạp với c&aacute;c tập hợp kết quả khổng lồ trng thời gian Recrd-setting.</li>\r\n	<li>PHP hỗ trợ một số lượng rộng r&atilde;i c&aacute;c gia thức lớn như PP3, IMAP, v&agrave; LDAP. PHP4 bổ sung sự hỗ trợ ch Java v&agrave; c&aacute;c cấu tr&uacute;c đối tượng ph&acirc;n phối (CM v&agrave; CRBA).</li>\r\n	<li>C&uacute; ph&aacute;p PHP l&agrave; giống C.</li>\r\n	<li>PHP thực hiện c&aacute;c h&agrave;m hệ thống, v&iacute; dụ: từ c&aacute;c file tr&ecirc;n một hệ thống, n&oacute; c&oacute; thể tạ, mở, đọc, ghi v&agrave; đ&oacute;ng ch&uacute;ng.</li>\r\n	<li>PHP c&oacute; thể xử l&yacute; c&aacute;c frm, v&iacute; dụ: thu thập dữ liệu từ file, lưu dữ liệu v&agrave; một file, th&ocirc;ng qua email bạn c&oacute; thể gửi dữ liệu, trả về dữ liệu tới người d&ugrave;ng.</li>\r\n	<li>Bạn c&oacute; thể th&ecirc;m, x&oacute;a, sửa đổi c&aacute;c phần tử b&ecirc;n trng Database của bạn th&ocirc;ng qua PHP.</li>\r\n	<li>Truy cập c&aacute;c biến Ckie v&agrave; thiết lập Ckie.</li>\r\n	<li>Sử dụng PHP, bạn c&oacute; thể hạn chế người d&ugrave;ng truy cập v&agrave; một số trang trng Website của bạn.</li>\r\n</ul>\r\n\r\n<p>5 đặc trưng quan trọng l&agrave;m PHP trở th&agrave;nh ng&ocirc;n ngữ phổ biến:</p>\r\n\r\n<ul>\r\n	<li>Đơn giản h&oacute;a</li>\r\n	<li>Hiệu quả</li>\r\n	<li>Bả mật ca</li>\r\n	<li>Linh động</li>\r\n	<li>Th&acirc;n thiện</li>\r\n</ul>\r\n\r\n<h3><a name=\"_2et92p0\"></a>1.1.2C&aacute;c đặc điểm PHP</h3>\r\n\r\n<p>MySQL l&agrave; một RDBMS nhanh v&agrave; dễ d&agrave;ng để sử dụng. MySQL đang được sử dụng ch nhiều c&ocirc;ng việc kinh danh từ lớn tới nhỏ. MySQL được ph&aacute;t triển, được c&ocirc;ng bố, được hỗ trợ bởi MySQL AB, l&agrave; một c&ocirc;ng ty của Thụy Điển. MySQL trở th&agrave;nh kh&aacute; phổ biến v&igrave; nhiều l&yacute; d:</p>\r\n\r\n<ul>\r\n	<li>MySQL l&agrave; m&atilde; ngồn mở. V&igrave; thế, để sử dụng n&oacute;, bạn chẳng phải mất một xu n&agrave;.</li>\r\n	<li>MySQL l&agrave; một chương tr&igrave;nh rất mạnh mẽ.</li>\r\n	<li>MySQL sử dụng một Frm chuẩn của ng&ocirc;n ngữ dữ liệu nổi tiếng l&agrave; SQL.</li>\r\n	<li>MySQL l&agrave;m việc tr&ecirc;n nhiều Hệ điều h&agrave;nh v&agrave; với nhiều ng&ocirc;n ngữ như PHP, PERL, C, C++, Java, &hellip;</li>\r\n	<li>MySQL l&agrave;m việc nhanh v&agrave; khỏe ngay cả với c&aacute;c tập dữ liệu lớn.</li>\r\n	<li>MySQL rất th&acirc;n thiện với PHP, một ng&ocirc;n ngữ rất đ&aacute;ng gi&aacute; để t&igrave;m hiểu để ph&aacute;t triển Web.</li>\r\n	<li>MySQL hỗ trợ c&aacute;c cơ sở dữ liệu lớn, l&ecirc;n tới 50 triệu h&agrave;ng hặc nhiều hơn nữa trng một bảng. K&iacute;ch cỡ file mặc định được giới hạn ch một bảng l&agrave; 4 GB, nhưng bạn c&oacute; thể tăng k&iacute;ch cỡ n&agrave;y (nếu hệ điều h&agrave;nh của bạn c&oacute; thể xử l&yacute; n&oacute;) để đạt tới giới hạn l&yacute; thuyết l&agrave; 8 TB.</li>\r\n</ul>\r\n\r\n<p>MySQL l&agrave; c&oacute; thể điều chỉnh. Giấy ph&eacute;p GPL m&atilde; nguồn mở ch ph&eacute;p lập tr&igrave;nh vi&ecirc;n sửa đổi phần mềm MySQL để ph&ugrave; hợp với m&ocirc;i trường cụ thể của họ.</p>', 1, 1, 1, '2021-05-12 02:21:10', '2021-05-13 00:56:59', NULL, 'null'),
(2, 1, 'Bài 2.	 Cấu trúc điều khiển trng PHP', 'bai_cau_truc_dieu_khien_php', NULL, 'Cấu trúc điều khiển rẽ nhánh', '<h2>1.1Cấu tr&uacute;c rẽ nh&aacute;nh</h2>\r\n\r\n<p>L&agrave; biểu thức d&ugrave;ng kiểm tra 1 sự kiện. Nếu ch&uacute;ng thỏa điều kiện đ&oacute; th&igrave; sẽ thực thi một h&agrave;nh động. Ngược lại sẽ l&agrave; một h&agrave;nh động kh&aacute;c.</p>\r\n\r\n<p>C&aacute;c lệnh if, elseif &hellip;else v&agrave; switch trng được sử dụng để điều khiển luồng dựa tr&ecirc;n c&aacute;c điều kiện kh&aacute;c nhau.</p>\r\n\r\n<p>Bạn c&oacute; thể sử dụng c&aacute;c lệnh điều kiện trng cde của bạn để điều khiển luồng. PHP hỗ trợ 3 lệnh điều khiển luồng sau:</p>\r\n\r\n<p><img src=\"file:///C:\\Users\\VUXUAN~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\" style=\"height:339px; width:264px\" /></p>\r\n\r\n<p><strong>Lệnh if...else</strong> &minus; Sử dụng lệnh n&agrave;y nếu bạn muốn thực thi một tập hợp cde khi một điều kiện l&agrave; true v&agrave; tập cde kh&aacute;c nếu điều kiện l&agrave; kh&ocirc;ng true.</p>\r\n\r\n<p><strong>Lệnh elseif</strong> &minus; Được sử dụng với lệnh if&hellip;else để thực thi một tập hợp cde nếu một trng c&aacute;c điều kiện l&agrave; true.</p>\r\n\r\n<p><strong>Lệnh switch</strong> &minus; Được sử dụng nếu bạn muốn lựa chọn một trng c&aacute;c khối cde để được thực thi. Lệnh switch được sử dụng để tr&aacute;nh sử dụng một khối if&hellip;elseif&hellip;else d&agrave;i.</p>\r\n\r\n<h3><a name=\"_35nkun2\"></a>1.1.1C&acirc;u lệnh if else</h3>\r\n\r\n<p>Nếu bạn muốn thực thi một đạn cde nếu một điều kiện l&agrave; true v&agrave; khối cde kh&aacute;c nếu một điều kiện l&agrave; false, bạn sử dụng lệnh if&hellip;else trng PHP.</p>\r\n\r\n<p>C&uacute; ph&aacute;p</p>\r\n\r\n<div>\r\n<p>if (điều_kiện)</p>\r\n\r\n<p>&nbsp;&nbsp; phần cde n&agrave;y được thực thi nếu điều kiện l&agrave; true</p>\r\n\r\n<p>else</p>\r\n\r\n<p>&nbsp;&nbsp; phần cde n&agrave;y được thực thi nếu điều kiện l&agrave; false</p>\r\n</div>\r\n\r\n<p>V&iacute; dụ sau sẽ ch kết quả &quot;Ch&uacute;c cuối tuần vui vẻ!&quot; nếu h&ocirc;m nay l&agrave; Friday. Nếu kh&ocirc;ng, n&oacute; sẽ ch kết quả &quot;Ch&uacute;c một ng&agrave;y vui vẻ!&quot;:</p>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p><!--?php</p--></p>\r\n\r\n<p>&nbsp;$d=date(&quot;D&quot;);</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;if ($d==&quot;Fri&quot;)</p>\r\n\r\n<p>ech &quot;Ch&uacute;c cuối tuần vui vẻ!&quot;;</p>\r\n\r\n<p>else</p>\r\n\r\n<p>ech &quot;Ch&uacute;c một ng&agrave;y vui vẻ!&quot;;</p>\r\n\r\n<p>&nbsp; ?&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lệnh elseif trng PHP</p>\r\n\r\n<p>Nếu bạn muốn thực thi một khối cde nếu một trng c&aacute;c điều kiện l&agrave; true, th&igrave; bạn n&ecirc;n sử dụng lệnh elseif trng PHP.</p>\r\n\r\n<p>C&uacute; ph&aacute;p</p>\r\n\r\n<div>\r\n<p>if (điều_kiện_1)</p>\r\n\r\n<p>&nbsp;&nbsp; phần cde n&agrave;y được thực thi nếu điều kiện 1 l&agrave; true;</p>\r\n\r\n<p>elseif (điều_kiện_2)</p>\r\n\r\n<p>&nbsp;&nbsp; phần cde n&agrave;y được thực thi nếu điều kiện 2 l&agrave; true;</p>\r\n\r\n<p>else</p>\r\n\r\n<p>&nbsp;&nbsp; phần cde n&agrave;y được thực thi nếu c&aacute;c điều kiện l&agrave; false;</p>\r\n</div>\r\n\r\n<p>V&iacute; dụ</p>\r\n\r\n<p>V&iacute; dụ sau sẽ ch kết quả &quot;Ch&uacute;c cuối tuần vui vẻ!&quot; nếu h&ocirc;m nay l&agrave; Friday, v&agrave; &quot;Chủ nhật vui vẻ!&quot; nếu h&ocirc;m nay l&agrave; Sunday. Nếu kh&ocirc;ng, n&oacute; sẽ ch kết quả &quot;Ch&uacute;c một ng&agrave;y vui vẻ!&quot;trng Thư viện C:</p>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p><!--?php</p--></p>\r\n\r\n<p>&nbsp;$d=date(&quot;D&quot;);</p>\r\n\r\n<p>if ($d==&quot;Fri&quot;)</p>\r\n\r\n<p>ech &quot;Ch&uacute;c cuối tuần vui vẻ!&quot;;</p>\r\n\r\n<p>elseif ($d==&quot;Sun&quot;)</p>\r\n\r\n<p>ech &quot;Chủ nhật vui vẻ!&quot;;</p>\r\n\r\n<p>else</p>\r\n\r\n<p>ech &quot;Ch&uacute;c một ng&agrave;y vui vẻ!&quot;;</p>\r\n\r\n<p>&nbsp; ?&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a name=\"_1ksv4uv\"></a>1.1.2C&acirc;u l&ecirc;nh swicth case</h3>\r\n\r\n<p>Nếu muốn lựa chọn một trng nhiều khối cde để được thực thi, bạn n&ecirc;n sử dụng lệnh switch trng PHP. Lệnh switch được sử dụng để tr&aacute;nh c&aacute;c khối if&hellip;elseif&hellip;else d&agrave;i.</p>\r\n\r\n<p>C&uacute; ph&aacute;p</p>\r\n\r\n<div>\r\n<p>switch (biểu_thức)</p>\r\n\r\n<p>{</p>\r\n\r\n<p>&nbsp;&nbsp; case nh&atilde;n_1:</p>\r\n\r\n<p>&nbsp; phần cde n&agrave;y được thực thi nếu biểu_thức = nh&atilde;n_1</p>\r\n\r\n<p>&nbsp; break;&nbsp;</p>\r\n\r\n<p>case nh&atilde;n_2:</p>\r\n\r\n<p>&nbsp; phần cde n&agrave;y được thực thi nếu biểu_thức = nh&atilde;n_2</p>\r\n\r\n<p>&nbsp; break;</p>\r\n\r\n<p>&nbsp;&nbsp; ...</p>\r\n\r\n<p>&nbsp; default:</p>\r\n\r\n<p>&nbsp;&nbsp; phần cde n&agrave;y được thực thi nếu</p>\r\n\r\n<p>&nbsp;&nbsp; biểu_thức l&agrave; kh&aacute;c với nh&atilde;n_1, nh&atilde;n_2, ...</p>\r\n\r\n<p>}</p>\r\n</div>\r\n\r\n<p>V&iacute; dụ</p>\r\n\r\n<p>Cơ chế l&agrave;m việc của lệnh switch l&agrave;: Đầu ti&ecirc;n, n&oacute; ước lượng biểu thức đ&atilde; ch, sau đ&oacute; t&igrave;m một nh&atilde;n để s khớp với gi&aacute; trị kết quả đ&atilde; ước lượng. Nếu t&igrave;m thấy một s khớp, th&igrave; cde được li&ecirc;n kết với nh&atilde;n sẽ được thực thi hặc nếu kh&ocirc;ng c&oacute; nh&atilde;n khớp với kết quả đ&oacute;, th&igrave; lệnh sẽ thực thi bất kỳ khối cde mặc định đ&atilde; ch n&agrave;.</p>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp; <!--?php</p--></p>\r\n\r\n<p>&nbsp;$d=date(&quot;D&quot;);</p>\r\n\r\n<p>&nbsp;switch ($d)</p>\r\n\r\n<p>&nbsp;{</p>\r\n\r\n<p>case &quot;Mn&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Thứ Hai&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>case &quot;Tue&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Thứ Ba&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>case &quot;Wed&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Thứ Tư&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>case &quot;Thu&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Thứ Năm&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>case &quot;Fri&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Thứ S&aacute;u&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>case &quot;Sat&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Thứ Bảy&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>case &quot;Sun&quot;:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;H&ocirc;m nay l&agrave; Chủ Nhật&quot;;</p>\r\n\r\n<p>&nbsp;&nbsp; break;</p>\r\n\r\n<p>default:</p>\r\n\r\n<p>&nbsp;&nbsp; ech &quot;C&ograve;n ng&agrave;y n&agrave;y l&agrave; thứ mấy ???&quot;;</p>\r\n\r\n<p>&nbsp;}</p>\r\n\r\n<p>?&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 2, 1, 1, '2021-05-13 00:59:45', '2021-05-13 00:59:55', NULL, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `lesson_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_student`
--

INSERT INTO `lesson_student` (`lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2021-05-12 02:35:29', '2021-05-12 02:35:29'),
(1, 1, '2021-05-12 03:26:46', '2021-05-12 03:26:46'),
(2, 1, '2021-05-13 01:00:05', '2021-05-13 01:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int UNSIGNED NOT NULL,
  `model_id` int UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Lesson', 'downloadable_files', 'php1', 'php1.png', 'media', 83317, '[]', '[]', 1, '2021-05-12 02:51:02', '2021-05-12 02:51:06'),
(2, NULL, 'App\\Lesson', 'downloadable_files', 'php1', 'php1.png', 'media', 83317, '[]', '[]', 2, '2021-05-12 03:37:54', '2021-05-12 03:37:54'),
(3, 1, 'App\\Lesson', 'downloadable_files', 'logo', 'logo.png', 'media', 44940, '[]', '[]', 2, '2021-05-13 00:25:41', '2021-05-13 00:27:27'),
(4, 1, 'App\\Lesson', 'downloadable_files', 'What-is-MVC', 'What-is-MVC.jpg', 'media', 60967, '[]', '[]', 3, '2021-05-13 00:28:19', '2021-05-13 00:28:24'),
(5, 2, 'App\\Lesson', 'downloadable_files', 'PHP_Logo-300x160', 'PHP_Logo-300x160.jpg', 'media', 5034, '[]', '[]', 1, '2021-05-13 00:59:40', '2021-05-13 00:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_19_082005_create_1500441605_permissions_table', 1),
(3, '2017_07_19_082006_create_1500441606_roles_table', 1),
(4, '2017_07_19_082009_create_1500441609_users_table', 1),
(5, '2017_07_19_082347_create_1500441827_courses_table', 1),
(6, '2017_07_19_082723_create_1500442043_lessons_table', 1),
(7, '2017_07_19_082724_create_media_table', 1),
(8, '2017_07_19_082929_create_1500442169_questions_table', 1),
(9, '2017_07_19_083047_create_1500442247_questions_options_table', 1),
(10, '2017_07_19_083236_create_1500442356_tests_table', 1),
(11, '2017_07_19_120427_create_596eec08307cd_permission_role_table', 1),
(12, '2017_07_19_120430_create_596eec0af366b_role_user_table', 1),
(13, '2017_07_19_120808_create_596eece522a6e_course_user_table', 1),
(14, '2017_07_19_121657_create_596eeef709839_question_test_table', 1),
(15, '2017_08_14_085956_create_course_students_table', 1),
(16, '2017_08_17_051131_create_tests_results_table', 1),
(17, '2017_08_17_051254_create_tests_results_answers_table', 1),
(18, '2017_08_18_054622_create_lesson_student_table', 1),
(19, '2017_08_18_060324_add_rating_to_course_student_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(2, 'user_management_create', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(3, 'user_management_edit', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(4, 'user_management_view', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(5, 'user_management_delete', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(6, 'permission_access', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(7, 'permission_create', '2021-05-12 02:00:58', '2021-05-12 02:00:58'),
(8, 'permission_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(9, 'permission_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(10, 'permission_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(11, 'role_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(12, 'role_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(13, 'role_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(14, 'role_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(15, 'role_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(16, 'user_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(17, 'user_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(18, 'user_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(19, 'user_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(20, 'user_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(21, 'course_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(22, 'course_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(23, 'course_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(24, 'course_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(25, 'course_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(26, 'lesson_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(27, 'lesson_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(28, 'lesson_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(29, 'lesson_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(30, 'lesson_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(31, 'question_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(32, 'question_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(33, 'question_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(34, 'question_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(35, 'question_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(36, 'questions_option_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(37, 'questions_option_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(38, 'questions_option_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(39, 'questions_option_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(40, 'questions_option_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(41, 'test_access', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(42, 'test_create', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(43, 'test_edit', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(44, 'test_view', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(45, 'test_delete', '2021-05-12 02:00:59', '2021-05-12 02:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(1, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(1, 3),
(21, 3),
(24, 3),
(26, 3),
(29, 3),
(31, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED DEFAULT NULL,
  `option_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `question_id` int UNSIGNED DEFAULT NULL,
  `test_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(2, 'Teacher', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(3, 'Student', '2021-05-12 02:00:59', '2021-05-12 02:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int UNSIGNED NOT NULL,
  `course_id` int UNSIGNED DEFAULT NULL,
  `lesson_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests_results`
--

CREATE TABLE `tests_results` (
  `id` int UNSIGNED NOT NULL,
  `test_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `test_result` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests_results_answers`
--

CREATE TABLE `tests_results_answers` (
  `id` int UNSIGNED NOT NULL,
  `tests_result_id` int UNSIGNED DEFAULT NULL,
  `question_id` int UNSIGNED DEFAULT NULL,
  `option_id` int UNSIGNED DEFAULT NULL,
  `correct` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'ofbwzYsmN6C9KlY1COAs6sLHlRoU4rw9Rg4rzsl0Sxn3D1psF7opqcL2fjTQ', '2021-05-12 02:00:59', '2021-05-12 02:00:59'),
(2, 'Vũ Xuân Thắng', 'giaovien@gmail.com', '$2y$10$wbWEZieVLkGbd8JyBAPK2eW3t3n3JxirtiwteC4mSsdovKukdPA3C', 'nRCaXfTrVD2wDo4ZwX5EUB6lqHzWLsDD4B7TJYs0RlwoXfJXb2v62gjo9YCx', '2021-05-12 02:05:11', '2021-05-12 02:42:33'),
(3, 'sinh vien', 'sinhvien@gmail.com', '$2y$10$CaJTRQ/A7S3KIk6yoL6Fe.hs7Fw7hGSF7TDhqi7maGH6sNsTkFEwu', 'bMAleuC3Sh8e2G6DRfxgDP6QSLXCUrXtcfO1xQJtTq2mRsWzAIXahbXoHOIN', '2021-05-12 02:05:32', '2021-05-12 02:05:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `fk_p_54418_54417_user_cou_596eece522b73` (`course_id`),
  ADD KEY `fk_p_54417_54418_course_u_596eece522bee` (`user_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54419_596eedbb6686e` (`course_id`),
  ADD KEY `lessons_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_54415_54416_role_per_596eec08308d0` (`permission_id`),
  ADD KEY `fk_p_54416_54415_permissi_596eec0830986` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54421_596eee8745a1e` (`question_id`),
  ADD KEY `questions_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD KEY `fk_p_54420_54422_test_que_596eeef70992f` (`question_id`),
  ADD KEY `fk_p_54422_54420_question_596eeef7099af` (`test_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_54416_54417_user_rol_596eec0af3746` (`role_id`),
  ADD KEY `fk_p_54417_54416_role_use_596eec0af37c1` (`user_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54422_596eeef514d00` (`course_id`),
  ADD KEY `54422_596eeef53411a` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_test_id_foreign` (`test_id`),
  ADD KEY `tests_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_answers_tests_result_id_foreign` (`tests_result_id`),
  ADD KEY `tests_results_answers_question_id_foreign` (`question_id`),
  ADD KEY `tests_results_answers_option_id_foreign` (`option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests_results`
--
ALTER TABLE `tests_results`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `fk_p_54417_54418_course_u_596eece522bee` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54418_54417_user_cou_596eece522b73` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `54419_596eedbb6686e` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_54415_54416_role_per_596eec08308d0` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54416_54415_permissi_596eec0830986` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `54421_596eee8745a1e` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `fk_p_54420_54422_test_que_596eeef70992f` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54422_54420_question_596eeef7099af` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_54416_54417_user_rol_596eec0af3746` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54417_54416_role_use_596eec0af37c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `54422_596eeef514d00` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `54422_596eeef53411a` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD CONSTRAINT `tests_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD CONSTRAINT `tests_results_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `questions_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_tests_result_id_foreign` FOREIGN KEY (`tests_result_id`) REFERENCES `tests_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
