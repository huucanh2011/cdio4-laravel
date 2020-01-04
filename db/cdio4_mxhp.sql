-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2019 lúc 04:17 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cdio4_mxhp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_dangs`
--

CREATE TABLE `bai_dangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 0,
  `luot_xem` bigint(20) NOT NULL DEFAULT 0,
  `loaibd_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_dangs`
--

INSERT INTO `bai_dangs` (`id`, `tieu_de`, `noi_dung`, `anh_poster`, `trang_thai`, `luot_xem`, `loaibd_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'DRAMA!! Dave Bautista \'đá đểu\' Fast and Furious trên Twitter', '<p><em><strong>Ng&agrave;y 30/6 vừa qua, Dave Bautista đ&atilde; c&oacute; những b&igrave;nh luận kh&ocirc;ng mấy thiện ch&iacute; d&agrave;nh cho franchise Fast and Furious khi được người h&acirc;m mộ nhắc tới chuỗi phim n&agrave;y tr&ecirc;n Twitter c&aacute; nh&acirc;n của anh.&nbsp;</strong></em></p>\r\n\r\n<p>Cụ thể, khi c&oacute; th&ocirc;ng tin về việc người h&ugrave;ng WWE John Cena sẽ c&oacute; mặt trong phần 9 của&nbsp;<em>Fast and Furious</em>, một kh&aacute;n giả đ&atilde; gợi &yacute; Dave Bautista tham gia v&agrave;o bộ phim, v&agrave; c&oacute; thể l&agrave; một vai phản diện. Rất nhanh ch&oacute;ng, ng&ocirc;i sao&nbsp;<em>Guardians of the Galaxy</em>&nbsp;đ&aacute;p trả: &ldquo;Cảm ơn bạn đ&atilde; c&acirc;n nhắc&quot; k&egrave;m theo 2 emoji n&ocirc;n mửa v&agrave; d&ograve;ng hashtag đầy mỉa mai: &ldquo;T&ocirc;i th&iacute;ch l&agrave;m c&aacute;c bộ phim hay hơn&quot;.&nbsp;</p>\r\n\r\n<p>Trước th&aacute;i độ kh&ocirc;ng mặn m&agrave; của Dave với&nbsp;<em>Fast and Furious</em>, phản ứng của kh&aacute;n giả cũng kh&aacute; tr&aacute;i chiều. Một ph&iacute;a, nhiều người cho rằng đ&acirc;y l&agrave; một lời mỉa mai h&agrave;i hước v&agrave; tỏ ra đồng t&igrave;nh với sự đi xuống trong chất lượng của franchise n&agrave;y. Ngược lại, c&oacute; những người cho rằng đ&acirc;y l&agrave; sự c&ocirc;ng k&iacute;ch kh&ocirc;ng cần thiết, thậm ch&iacute; l&agrave; phản ứng kh&aacute; gay gắt với th&aacute;i độ của của Dave.</p>\r\n\r\n<p>Dave Bautista nổi tiếng l&agrave; người thẳng thắn tr&ecirc;n mạng x&atilde; hội. Trước đ&oacute;, anh cũng từng chỉ tr&iacute;ch Disney dữ dội khi h&atilde;ng n&agrave;y quyết định sa thải James Gunn v&igrave; những b&ecirc; bối tr&ecirc;n Twitter năm 2018. Với th&aacute;i độ kh&ocirc;ng mấy t&iacute;ch cực lần n&agrave;y của Dave với Fast and Furious, khả năng anh tham gia v&agrave;o bộ phim sẽ l&agrave; rất thấp. C&aacute;c dự &aacute;n &ldquo;phim hay hơn&rdquo; m&agrave; Dave Bautista sẽ g&oacute;p mặt trong thời gian tới bao gồm:&nbsp;<em>Stuber</em>&nbsp;ra mắt cuối th&aacute;ng 7,&nbsp;<em>My Spy</em>&nbsp;v&agrave;o th&aacute;ng 8, v&agrave; cả&nbsp;<em>Blade Runner 2020</em>&nbsp;dự kiến tr&igrave;nh l&agrave;ng v&agrave;o th&aacute;ng 11 năm sau. &nbsp;&nbsp;</p>\r\n\r\n<p>Về ph&iacute;a&nbsp;<em>Fast and Furious</em>, sau 8 phần v&agrave; một phim chuẩn bị ra mắt l&agrave;&nbsp;<em>Hobbs and Shaw</em>, đến thời điểm hiện tại, đ&acirc;y vẫn l&agrave; franchise hiếm hoi d&agrave;nh được sự y&ecirc;u mến của phần đ&ocirc;ng kh&aacute;n giả. Phần 9 của phim cũng mới được bấm m&aacute;y trong tuần trước v&agrave; dự kiến sẽ đến với kh&aacute;n giả v&agrave;o th&aacute;ng 4/2020. Những ng&ocirc;i sao đ&atilde; x&aacute;c nhận sẽ tham gia&nbsp;<em>Fast and Furious 9&nbsp;</em>bao gồm trụ cột Vin Diesel v&agrave; John Cena, được kỳ vọng l&agrave; sẽ ph&aacute; vỡ thế độc t&ocirc;n tại ph&ograve;ng v&eacute; của Disney trong suốt một qu&atilde;ng thời gian d&agrave;i.</p>', '1566814564_image.jpeg', 0, 9, 1, 1, '2019-08-26 03:16:05', '2019-10-05 09:12:48'),
(4, 'Nàng Tiên Cá da màu mới của Disney là ai?', '<p><strong><em>Diễn vi&ecirc;n, ca sĩ da m&agrave;u Halle Bailey l&agrave; người được chọn v&agrave;o vai nh&acirc;n vật ch&iacute;nh Ariel trong N&agrave;ng Ti&ecirc;n C&aacute; phi&ecirc;n bản live-action, theo th&ocirc;ng b&aacute;o mới nhất của Disney ng&agrave;y 3/7.&nbsp;</em></strong></p>\r\n\r\n<p>Theo đạo diễn Rob Marshall, người chịu tr&aacute;ch nhiệm thực hiện bộ phim, th&igrave; Halle Bailey l&agrave; một lựa chọn kh&ocirc;ng thể ph&ugrave; hợp hơn: &ldquo;Sau khi chọn lọc kỹ lưỡng, r&otilde; r&agrave;ng Halle l&agrave; sự kết hợp hiếm c&oacute; của l&ograve;ng nhiệt th&agrave;nh, tuổi trẻ, sự ng&acirc;y thơ v&agrave; giọng h&aacute;t tuyệt vời - tất cả những phẩm chất cần thiết &nbsp;để đảm nhận vai diễn mang t&iacute;nh biểu tượng n&agrave;y.&rdquo;&nbsp;</p>\r\n\r\n<p>19 tuổi, t&ecirc;n tuổi của Bailey c&ugrave;ng Chloe x Halle, nh&oacute;m nhạc đ&atilde; k&yacute; hợp đồng với c&ocirc;ng ty Parkwood Entertainment của Beyonc&eacute; sau khi nổi tiếng với c&aacute;c bản cover tr&ecirc;n YouTube. Nhận được vai diễn N&agrave;ng Ti&ecirc;n C&aacute; lần n&agrave;y chắc chắn l&agrave; một c&uacute; h&iacute;ch lớn trong sự nghiệp nghệ thuật của Bailey. Kh&ocirc;ng giấu được sự th&iacute;ch th&uacute;, c&ocirc; chia sẻ tr&ecirc;n Twitter c&aacute; nh&acirc;n: &ldquo;Giấc mơ th&agrave;nh sự thật&quot;.&nbsp;</p>\r\n\r\n<p>Việc nữ diễn vi&ecirc;n sinh năm 2000 n&agrave;y sẽ v&agrave;o vai c&ocirc;ng ch&uacute;a biển cả khiến kh&aacute;n giả kh&ocirc;ng khỏi bất ngờ. Th&ocirc;ng tin về th&agrave;nh c&ocirc;ng của buổi casting cũng nhanh ch&oacute;ng lan truyền tr&ecirc;n mạng x&atilde; hội c&ugrave;ng rất nhiều lời ch&uacute;c mừng của kh&aacute;n giả:&nbsp;<a href=\"https://twitter.com/WajahatAli/status/1146515563780423682?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1146515563780423682&amp;ref_url=https%3A%2F%2Fwww.theguardian.com%2Ffilm%2F2019%2Fjul%2F04%2Fus-singer-halle-bailey-cast-as-ariel-in-disneys-live-action-remake-of-the-little-mermaid\">&ldquo;T&ocirc;i rất mong được đưa con g&aacute;i m&igrave;nh đến xem Halle Bailey v&agrave;o vai Ariel trong phi&ecirc;n bản live action của N&agrave;ng ti&ecirc;n c&aacute;. Con b&eacute; chắc chắn sẽ ng&acirc;y ngất khi thấy một c&ocirc; g&aacute;i da m&agrave;u l&agrave; c&ocirc;ng ch&uacute;a Disney.&rdquo;</a>&nbsp;Ngược lại, một số người kh&ocirc;ng đồng t&igrave;nh với lựa chọn n&agrave;y của Disney: &ldquo;L&agrave; một người da m&agrave;u, t&ocirc;i thấy Halle kh&ocirc;ng ph&ugrave; hợp với vai. Bối cảnh c&acirc;u chuyện được nh&agrave; văn Andersen viết tại Đan Mạch. Việc xuất hiện một c&ocirc; g&aacute;i da m&agrave;u tại bờ biển nước n&agrave;y ở thời xưa l&agrave; bất hợp l&yacute;&quot;</p>\r\n\r\n<p>Trước khi th&ocirc;ng tin n&agrave;y được x&aacute;c nhận, cũng c&oacute; tin đồn suốt nhiều th&aacute;ng về việc Zendaya đang chuẩn bị cho vai diễn Ariel. Mặc d&ugrave; phủ nhận mọi th&ocirc;ng tin về việc đ&agrave;m ph&aacute;n với Disney, nhưng c&ocirc; đ&atilde; thừa nhận rằng vai diễn n&agrave;y thực sự hấp dẫn. Khi Disney x&aacute;c nhận vai diễn của Bailey, Zendaya đ&atilde; tỏ ra v&ocirc; c&ugrave;ng h&agrave;o hứng.</p>\r\n\r\n<p>D&agrave;n diễn vi&ecirc;n của Little Mermaid live-action, b&ecirc;n cạnh Halle Bailey, c&ograve;n c&oacute; sự tham gia gia của Melissa McCarthy, Jacob Tremblay v&agrave; Awkwafina. Ngo&agrave;i ra, đạo diễn Rob Marshall sẽ tiếp tục kh&acirc;u tuyển chọn diễn vi&ecirc;n trong tuần tới để kịp đưa v&agrave;o sản xuất v&agrave;o đầu năm 2020.</p>', '1566830331_a.jpeg', 0, 2, 1, 1, '2019-08-26 07:38:51', '2019-10-05 09:16:27'),
(5, 'Lion King live-action có thể đạt $150 triệu + mở màn?', '<p><em><strong>Theo kỳ vọng của nh&agrave; sản xuất, bộ phim Lion King phi&ecirc;n bản live-action lần n&agrave;y sẽ đem về cho Disney hơn 150 triệu USD chỉ trong 3 ng&agrave;y ra mắt. Con số n&agrave;y được đưa ra dựa tr&ecirc;n sự theo d&otilde;i ban đầu về phản ứng của giới ph&ecirc; b&igrave;nh v&agrave; kh&aacute;n giả, v&agrave; n&oacute; được cho l&agrave; c&oacute; thể cao hơn nữa nếu Disney tiếp tục đẩy mạnh c&aacute;c chiến dịch marketing của m&igrave;nh.&nbsp;</strong></em></p>\r\n\r\n<p>Disney ho&agrave;n to&agrave;n c&oacute; l&yacute; do để lạc quan về th&agrave;nh c&ocirc;ng của&nbsp;<em>Lion King&nbsp;</em>tại ph&ograve;ng v&eacute;. Theo Fandango, số lượng v&eacute; đặt trước của Lion King phi&ecirc;n bản live action l&agrave; cao hơn hẳn so với c&aacute;c bộ phim c&ugrave;ng thuộc nh&agrave; Disney, như&nbsp;<em>Beauty and the Beast, Aladdin v&agrave; The Jungle Book</em>. Thậm ch&iacute;, bộ phim của đạo diễn Jon Favreau c&ograve;n vượt qua nhiều đối thủ nặng k&yacute; kh&aacute;c, vươn l&ecirc;n vị tr&iacute; số 2 về số lượng v&eacute; đặt trước trong năm 2019, chỉ sau&nbsp;<em>Avengers: Endgame</em>.</p>\r\n\r\n<p>Trước đ&oacute;, vị đạo diễn n&agrave;y cũng từng đem về th&agrave;nh c&ocirc;ng lớn cho bộ phim hoạt h&igrave;nh&nbsp;<em>The Jungle Book</em>&nbsp;năm 2016 với hơn 966 triệu USD doanh thu to&agrave;n cầu, so với chi ph&iacute; sản xuất chỉ vỏn vẹn 175 triệu USD. Hơn nữa, bộ phim c&ograve;n quy tụ được d&agrave;n sao hạng A đ&aacute;ng ch&uacute; &yacute;, với Donald Glover trong vai Simba, Beyonce lồng tiếng cho Nala, Chiwetel Ejiofor trong vai Scar,... Ngo&agrave;i ra, ng&ocirc;i sao lồng tiếng cho Mufasa trong phi&ecirc;n bản hoạt h&igrave;nh 25 năm trước, James Earl Jones cũng quay trở lại trong phi&ecirc;n bản live action lần n&agrave;y.&nbsp;</p>\r\n\r\n<p><em>Lion King</em>&nbsp;l&agrave; dự &aacute;n live action thứ 3 của Disney trong năm 2019, sau&nbsp;<em>Dumbo</em>&nbsp;v&agrave;&nbsp;<em>Aladdin.&nbsp;</em>Doanh thu ph&ograve;ng v&eacute; của c&aacute;c bộ phim n&agrave;y cho thấy, kế hoạch chuyển thể c&aacute;c t&aacute;c phẩm tr&ecirc;n nền nội dung cũ vẫn đem vẫn l&agrave; khoản đầu tư th&ocirc;ng minh của nh&agrave; Chuột. Với&nbsp;<em>Dumbo</em>, Disney thu về chỉ 351 triệu USD, nhưng đến&nbsp;<em>Aladdin</em>, con số n&agrave;y đ&atilde; l&ecirc;n tới 819 triệu USD v&agrave; vẫn c&ograve;n đang tiếp tục tăng.&nbsp;</p>\r\n\r\n<p><em>Lion King</em>&nbsp;phi&ecirc;n bản live action dự kiến sẽ đến với kh&aacute;n giả Việt Nam v&agrave;o 19/7 sắp tới.</p>', '1566830976_c.jpeg', 0, 3, 1, 1, '2019-08-26 07:49:36', '2019-10-05 09:10:10'),
(6, 'Avengers: Endgame chưa kết thúc', '<p><strong><em>Marvel v&agrave; Disney lại một lần nữa l&agrave;m người h&acirc;m mộ bất ngờ, với th&ocirc;ng tin về việc Avengers: Endgame sẽ quay lại m&agrave;n ảnh rộng v&agrave;o cuối tuần sau với một phi&ecirc;n bản mới.</em></strong></p>\r\n\r\n<p><em>Avengers: Endgame</em>&nbsp;sẽ tiếp tục c&agrave;n qu&eacute;t c&aacute;c rạp chiếu phim tại Bắc Mỹ một lần nữa v&agrave;o cuối tuần sau, với một phi&ecirc;n bản đầy đủ hơn so với lần đầu ti&ecirc;n c&ocirc;ng chiếu. Cụ thể, chủ tịch Marvel Studios Kevin Peige cho biết, trong phi&ecirc;n bản d&agrave;i hơn 3 tiếng lần n&agrave;y, nhiều chi tiết th&uacute; vị sẽ được tiết lộ th&ecirc;m ở cuối phim: &ldquo;Đ&oacute; kh&ocirc;ng phải những đoạn cắt d&agrave;i, nhưng nếu bạn ở lại đến cuối phim, sẽ c&oacute; những cảnh đ&atilde; bị xo&aacute;, một ch&uacute;t tưởng nhớ v&agrave; cả sự bất ngờ. Tất cả sẽ tới v&agrave;o cuối tuần sau.&rdquo;</p>\r\n\r\n<p>Việc lựa chọn cuối tuần sau để ra mắt phi&ecirc;n bản mới của&nbsp;<em>Avengers: Endgame</em>&nbsp;ho&agrave;n to&agrave;n kh&ocirc;ng phải ngẫu nhi&ecirc;n. Bởi Disney chắc chắn kh&ocirc;ng muốn tự l&agrave;m đối thủ của ch&iacute;nh m&igrave;nh với&nbsp;<em>Toy Story 4&nbsp;</em>vừa ra mắt trong tuần n&agrave;y. Hơn nữa, cuối tuần sau cũng l&agrave; thời điểm gần với ng&agrave;y ra mắt của&nbsp;<em>Spider-man: Far From Home,&nbsp;</em>bộ phim được coi l&agrave; phần tiếp nối ngay sau những g&igrave; xảy ra trong&nbsp;<em>Avengers: Endgame</em>. Ngo&agrave;i ra, dịp Quốc kh&aacute;nh Mỹ 4/7 cũng được coi l&agrave; thời điểm v&agrave;ng để c&aacute;c bom tấn tr&igrave;nh l&agrave;ng v&agrave; thu về hiệu quả kinh tế tối đa.</p>\r\n\r\n<p>Việc t&aacute;i xuất tại c&aacute;c ph&ograve;ng v&eacute; của&nbsp;<em>Avengers: Endgame</em>&nbsp;được coi l&agrave; nỗ lực của Disney v&agrave; Marvel nhằm ph&aacute; vỡ kỷ lục doanh thu to&agrave;n cầu của&nbsp;<em>Avatar.</em>&nbsp;Sau khi li&ecirc;n tiếp x&aacute;c lập c&aacute;c kỷ lục mới, t&iacute;nh tới cuối tuần trước,&nbsp;<em>Endgame</em>&nbsp;chỉ c&ograve;n c&aacute;ch đối thủ của m&igrave;nh 50 triệu USD để trở th&agrave;nh bộ phim ăn kh&aacute;ch nhất mọi thời đại. Trước th&ocirc;ng tin về phi&ecirc;n bản mới n&agrave;y của&nbsp;<em>Endgame,</em>&nbsp;người h&acirc;m mộ lạc quan tin rằng &nbsp;việc ph&aacute; vỡ kỷ lục của Avatar l&agrave; ho&agrave;n to&agrave;n c&oacute; thể xảy ra.</p>', '1566831082_d.jpeg', 0, 21, 1, 1, '2019-08-26 07:51:22', '2019-10-04 03:46:54'),
(7, 'Spider-man: Far From Home được kỳ vọng doanh thu 154 triệu đô trong 6 ngày', '<p><em><strong>Spider-man: Far From Home l&agrave; bộ phim thuộc vũ trụ điện ảnh Marvel tiếp theo sau Avengers: Endgame, dự kiến sẽ tiếp tục c&ocirc;ng ph&aacute; ph&ograve;ng v&eacute; to&agrave;n cầu v&agrave; x&aacute;c lập nhiều kỷ lục về doanh thu mới.</strong></em></p>\r\n\r\n<p>Theo kỳ vọng của nh&agrave; sản xuất,&nbsp;<em>Spider-man: Far From Home</em>&nbsp;sẽ đem về 154 triệu USD cho nh&agrave; Sony trong 6 ng&agrave;y, trở th&agrave;nh bộ phim kh&ocirc;ng thuộc Disney đầu ti&ecirc;n trong năm 2019 đạt doanh thu mở m&agrave;n tr&ecirc;n 100 triệu, vượt qua&nbsp;<em>Captain Marvel</em>&nbsp;để vươn l&ecirc;n vị tr&iacute; số 2. Thậm ch&iacute;, c&aacute;c nh&agrave; ph&acirc;n t&iacute;ch c&ograve;n dự đo&aacute;n doanh thu tuần đầu của Spider-man c&ograve;n c&oacute; thể l&ecirc;n đến 180 triệu, c&ograve;n con số 150-160 triệu l&agrave; ho&agrave;n to&agrave;n nằm trong tầm tay. Dự đo&aacute;n n&agrave;y của nh&agrave; sản xuất v&agrave; c&aacute;c chuy&ecirc;n gia ho&agrave;n to&agrave;n kh&ocirc;ng phải kh&ocirc;ng c&oacute; căn cứ. Bởi v&igrave;, n&oacute; được dựa tr&ecirc;n th&agrave;nh c&ocirc;ng trước đ&oacute; của&nbsp;<em>Spider-man: Homecoming&nbsp;</em>với 117 triệu mở m&agrave;n v&agrave; thu về tổng cộng 880 triệu USD tr&ecirc;n to&agrave;n cầu.&nbsp;</p>\r\n\r\n<p>Một l&yacute; do nữa để tin v&agrave;o khởi đầu thuận lợi của&nbsp;<em>Spider-man: Far From Home</em>, đ&oacute; l&agrave; ng&agrave;y ra mắt của phim. Ban đầu, Sony dự kiến sẽ ra mắt phim v&agrave;o thứ 4, 5/7 tại Mỹ, nhưng nh&agrave; sản xuất đ&atilde; quyết định đưa phim đến với kh&aacute;n giả sớm hơn 3 ng&agrave;y, để tận dụng kỳ nghỉ lễ 6 ng&agrave;y nh&acirc;n dịp quốc kh&aacute;nh 4/7. Việc một bộ phim ra mắt v&agrave;o ng&agrave;y thứ 3 c&oacute; lẽ l&agrave; kh&aacute; đặc biệt, nhưng cũng l&agrave; bước đi kh&ocirc;n ngoan của nh&agrave; ph&aacute;t h&agrave;nh. Với tiềm năng to lớn của m&igrave;nh, phần phim người nhện tiếp theo cũng được kỳ vọng sẽ đem về th&agrave;nh c&ocirc;ng lớn tại thị trường Việt Nam khi ra mắt kh&aacute;n giả v&agrave;o 5/7 tới.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, người h&acirc;m mộ chắc chắn c&ograve;n đang t&ograve; m&ograve; về những g&igrave; sẽ xảy ra tiếp theo với vũ trụ điện ảnh Marvel, khi&nbsp;<em>Avengers: Endgame</em>&nbsp;vừa kết th&uacute;c với c&aacute;i chết của Thanos v&agrave; sự ra đi của Tony Stark. Đặc biệt, trong trailer của&nbsp;<em>Far From Home</em>&nbsp;cũng cung cấp những đầu mối quan trọng về nơi MCU sẽ xảy ra c&aacute;c sự kiện tiếp theo, đồng thời gợi mở về những hậu quả kh&ocirc;n lường m&agrave; những g&igrave; 2 phần&nbsp;<em>Avengers&nbsp;</em>trước đ&atilde; tạo ra. Nếu những chi tiết n&agrave;y cũng tạo được tiếng vang lớn như&nbsp;<em>Endgame</em>đ&atilde; l&agrave;m được, th&igrave; việc người xem truyền tai nhau sẽ l&agrave; một phương thức marketing hiệu quả hơn cả, đem về doanh thu lớn hơn cho bộ phim.</p>\r\n\r\n<p><em>Spider-man: Far From Home&nbsp;</em>l&agrave; sản phẩm hợp t&aacute;c giữa Sony v&agrave; Paramount Picture, n&acirc;ng tổng số phim lớn được h&atilde;ng n&agrave;y ph&aacute;t h&agrave;nh trong nửa đầu năm nay l&ecirc;n con số 3, c&ugrave;ng với<em>&nbsp;Men In Black: International&nbsp;</em>v&agrave;<em>&nbsp;Once Upon a Time...in Hollywood.</em></p>', '1566831169_1image.png', 0, 1, 1, 1, '2019-08-26 07:52:49', '2019-10-05 09:10:29'),
(8, 'Midsommar được Jordan Peele khen hết lời', '<p><strong><em>Trong cuộc phỏng vấn mới đ&acirc;y giữa Jordan Peele v&agrave; Ari Aster tại Fangoria, đạo diễn của Get Out đ&atilde; kh&ocirc;ng tiếc lời khen ngợi d&agrave;nh cho t&aacute;c phẩm kinh dị sắp ra mắt, Midsommar của Ari Aster.&nbsp;</em></strong></p>\r\n\r\n<p>Trong buổi phỏng vấn, Jordan Peele đ&atilde; nhận x&eacute;t Midsommar mang vẻ đẹp đến b&igrave;nh y&ecirc;n, đẹp đẽ m&agrave; kh&ocirc;ng ai c&oacute; thể tưởng tượng n&oacute; nằm trong một bộ phim kinh dị. &ldquo;Midsommar vượt qua nỗi kinh ho&agrave;ng của ch&iacute;nh n&oacute;&quot;, &ocirc;ng n&oacute;i, đồng thời chỉ ra những điểm th&uacute; vị của bộ phim: &quot;T&ocirc;i chắc chắn rằng kh&aacute;n giả đ&atilde; qu&aacute; quen thuộc với những bộ phim kinh dị đặt họ v&agrave;o những nơi bẩn thỉu, nhầy nhụa m&agrave; họ sẽ kh&ocirc;ng bao giờ chọn để gh&eacute; thăm. Thế nhưng, với những g&igrave; m&agrave; Midsommar đem lại, với t&ocirc;i, n&oacute; l&agrave; một c&ocirc;ng thức: &ldquo;T&ocirc;i muốn đi xem bộ phim n&agrave;y&quot;.</p>\r\n\r\n<p>Jordan Peele cũng tiếp lời: &ldquo;Midsommar l&agrave; một tr&ograve; quỷ thuật kỳ lạ, khi n&oacute; vượt qua sự kinh ho&agrave;ng của ch&iacute;nh n&oacute;. Thực sự l&agrave; một sự thăng hoa của d&ograve;ng phim kinh dị. T&ocirc;i kh&ocirc;ng cảm thấy m&igrave;nh bị tr&ugrave; dập m&agrave; thay v&agrave;o đ&oacute; l&agrave; như được đặt l&ecirc;n bệ v&agrave; được t&ocirc;n vinh qua con mắt của nh&acirc;n vật ch&iacute;nh. Đ&oacute; l&agrave; cảm gi&aacute;c độc nhất v&ocirc; nhị m&agrave; phim đem lại, bởi v&igrave; sau khi n&oacute; kết th&uacute;c, t&ocirc;i nghĩ lại v&agrave; phải thốt l&ecirc;n rằng:&quot;HOLY SHIT&quot;. Đ&acirc;y l&agrave; những h&igrave;nh ảnh đ&aacute;ng quan ngại nhất m&agrave; t&ocirc;i từng thấy tr&ecirc;n phim ảnh m&agrave; trải nghiệm đ&atilde; khiến t&ocirc;i phải mắt chữ O miệng chữ A.&quot;</p>\r\n\r\n<p>Jordan Peele v&agrave; Ari Aster đều l&agrave; những đạo diễn c&oacute; tầm ảnh hưởng trong l&agrave;ng phim kinh dị Mỹ, chỉ ngay sau t&aacute;c phẩm đầu tay của họ lần lượt l&agrave; Get Out (2017) v&agrave; Hereditary (2018). Năm nay, cả hai người đều trở lại với m&agrave;n ảnh rộng, m&agrave; trước ti&ecirc;n l&agrave; Us của Jordan Peele trong sự tung h&ocirc; của giới ph&ecirc; b&igrave;nh v&agrave; người h&acirc;m mộ. Tiếp sau đ&oacute;, Midsommar của Ari Aster dự kiến ra mắt v&agrave;o 3/7 tới, được kỳ vọng sẽ nối tiếp th&agrave;nh c&ocirc;ng của Us v&agrave; trở th&agrave;nh một trong những t&aacute;c phẩm kinh dị đ&aacute;ng nhớ nhất năm 2019.&nbsp;</p>\r\n\r\n<p>Việc hai nh&agrave; l&agrave;m phim kinh dị lớn của Hollywood c&ugrave;ng ngồi xuống thảo luận về Midsommar, bộ phim khiến Jordan Peele phải &ldquo;ph&aacute;t cuồng&quot;, chắc chắn l&agrave; một dấu hiệu đ&aacute;ng mừng cho người h&acirc;m mộ thể loại phim n&agrave;y.&nbsp;</p>', '1566831227_1560045619053-691k7ox3p_image.jpeg', 0, 2, 1, 1, '2019-08-26 07:53:47', '2019-10-05 09:10:45'),
(9, 'Xu hướng hợp tác giữa điện ảnh và trò chơi điện tử', '<p><em><strong>Trong thời gian gần đ&acirc;y, kh&aacute;i niệm phim reboot, remake, hay phim chuyển thể c&oacute; lẽ đ&atilde; kh&ocirc;ng c&ograve;n xa lạ với kh&aacute;n giả. Chỉ ri&ecirc;ng trong tuần vừa qua, đ&atilde; c&oacute; nhiều th&ocirc;ng tin về sự hợp t&aacute;c giữa điện ảnh v&agrave; tr&ograve; chơi điện tử.</strong></em></p>\r\n\r\n<h2>1. Uncharted</h2>\r\n\r\n<p>Bộ phim đầu ti&ecirc;n trong danh s&aacute;ch phim được chuyển thể từ game tuần n&agrave;y l&agrave;&nbsp;<em>Uncharted</em>&nbsp;với sự tham gia của Người Nhện Tom Holland trong vai nh&acirc;n vật ch&iacute;nh Nathan Drake. Th&ocirc;ng tin về việc Tom Holland tham gia dự &aacute;n n&agrave;y đ&atilde; được r&ograve; rỉ từ năm 2017, nhưng đến giờ, ch&uacute;ng ta vẫn chưa c&oacute; th&ocirc;ng tin n&agrave;o về tạo h&igrave;nh của anh trong phim, ngoại trừ bản fan art đến từ House of Mat.&nbsp;</p>\r\n\r\n<p>Sau nhiều năm tr&igrave; ho&atilde;n, cuối c&ugrave;ng, phim Uncharted chuyển thể từ tr&ograve; chơi điện tử c&ugrave;ng t&ecirc;n đ&atilde; được Sony ấn định ng&agrave;y ph&aacute;t h&agrave;nh v&agrave;o 18/12/20202, c&ugrave;ng thời điểm ra mắt với West Side Story của Steven Spielberg. Uncharted được chỉ đạo bởi đạo diễn của 10 Cloverfield Lane, Dan Trachtenberg, với phần kịch bản được chắp b&uacute;t bởi Jonathan Rosenberg v&agrave; Mark Walker.</p>\r\n\r\n<h2>2. The Division</h2>\r\n\r\n<p>Tiếp theo l&agrave;&nbsp;<em>The Division</em>, bộ phim chuyển thể từ tựa game c&ugrave;ng t&ecirc;n với sự tham gia của Jake Gyllenhaal v&agrave; Jessica Chastain. Thương vụ mua lại bản quyền n&agrave;y giữa Netflix v&agrave; nh&agrave; ph&aacute;t h&agrave;nh game Ubisoft được th&ocirc;ng b&aacute;o trong khu&ocirc;n khổ sự kiện ng&agrave;nh c&ocirc;ng nghiệp tr&ograve; chơi điện tử diễn ra ng&agrave;y 11/6. Ra mắt năm 2016, game The Division đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh tr&agrave;o lưu với hơn 20 triệu người chơi, v&agrave; phần 2 đ&atilde; ra mắt v&agrave;o th&aacute;ng 3 vừa qua.&nbsp;</p>\r\n\r\n<p>Theo tiết lộ, nội dung bộ phim sắp tới của Netflix sẽ lấy bối cảnh ở tương lai gần tại New York, nơi một đại dịch virus l&acirc;y lan qua tiền giấy khiến h&agrave;ng triệu người chết. Tới Gi&aacute;ng sinh, những g&igrave; c&ograve;n s&oacute;t lại của th&agrave;nh phố chỉ l&agrave; sự hỗn loạn, v&agrave; một nh&oacute;m người đ&atilde; được huấn luyện để cứu lấy những g&igrave; c&ograve;n s&oacute;t lại. Hiện tại,&nbsp;<em>The Division</em>&nbsp;của bi&ecirc;n kịch Rafe Judkins vẫn chưa được ấn định ng&agrave;y ra mắt.</p>\r\n\r\n<h2>3. Cyberpunk 2077</h2>\r\n\r\n<p>2019 c&oacute; thể coi l&agrave; một năm đại thắng với Keanu Reeves, sau th&agrave;nh c&ocirc;ng của&nbsp;<em>John Wick 3, Always Be My Maybe, Toy Story 4&nbsp;</em>v&agrave; sắp tới l&agrave; sự g&oacute;p mặt của anh trong một tựa game mới mang t&ecirc;n&nbsp;<em>Cyberpunk 2077</em>. Trong thế giới th&uacute; vị m&agrave; trailer mới của CD Projekt đ&atilde; tạo ra, nh&acirc;n vật do Keanu thủ vai một người h&ugrave;ng giải cứu, nhưng vai tr&ograve; cụ thể của anh cũng chưa được tiết lộ. Phần lớn thời lượng của trailer mới n&agrave;y kể về vụ cướp thất bại của nh&acirc;n vật V, nhưng b&agrave;n tay của Keanu xuất hiện cuối trailer c&oacute; thể l&agrave; dấu hiệu cho tầm quan trọng của nh&acirc;n vật n&agrave;y trong tổng thể cốt truyện.&nbsp;</p>\r\n\r\n<p><em>Cyberpunk 2077</em>&nbsp;l&agrave; phi&ecirc;n bản chuyển thể của tr&ograve; chơi tr&ecirc;n m&aacute;y t&iacute;nh từ năm 1988 tại th&agrave;nh phố Đ&ecirc;m, California, một &ldquo;thế giới mở với 6 v&ugrave;ng ri&ecirc;ng biệt&rdquo;. Theo Wikipedia, người chơi c&oacute; thể v&agrave;o vai nh&acirc;n vật V, một l&iacute;nh đ&aacute;nh thu&ecirc; với kho vũ kh&iacute; tầm xa đồ sộ v&agrave; khả năng cận chiến t&agrave;i t&igrave;nh.<em>&nbsp;Cyberpunk &nbsp;2077&nbsp;</em>sẽ ra mắt v&agrave;o 16/4/2020 ở 3 nền tảng l&agrave; Xbox One, PlayStation 4 v&agrave; PC.</p>', '1566831350_1560239564010-ywj5w5bae_image.jpeg', 0, 9, 1, 1, '2019-08-26 07:55:50', '2019-10-07 05:10:51'),
(10, 'The Lord of the Rings - một thế giới tuyệt vời! Phần 1', '<p>Nếu như l&agrave; một fan của thể loại fantasy, t&ocirc;i tin chắc rằng bất cứ ai cũng đ&atilde; từng nghe qua c&aacute;i t&ecirc;n &quot;<strong>The Lord of the Rings</strong>&quot;, hay dịch ra l&agrave;&nbsp;<strong>Ch&uacute;a tể những chiếc nhẫn</strong>. Một tượng đ&agrave;i bất hủ của thể loại fantasy n&oacute;i ri&ecirc;ng v&agrave; của cả văn học lẫn điện ảnh n&oacute;i chung. Để c&oacute; thể n&oacute;i hết về thế giới m&agrave;&nbsp;<strong>J.R.R Tolkien</strong>&nbsp;đ&atilde; x&acirc;y dựng n&ecirc;n th&igrave; c&oacute; lẽ cần cả một series, v&igrave; vậy t&ocirc;i sẽ chỉ n&oacute;i đến những thứ trong phạm vi của LOTR, đồng thời n&oacute;i tới một v&agrave;i chi tiết kh&aacute;c kh&ocirc;ng c&oacute; tr&ecirc;n phim cũng như s&aacute;ch, cũng như một v&agrave;i chi tiết của&nbsp;<strong>The Hobbit</strong>. V&agrave; trong phần đầu ti&ecirc;n n&agrave;y, t&ocirc;i sẽ b&agrave;n về tầm ảnh hưởng của LOTR v&agrave; &yacute; nghĩa đằng sau The One Ring c&ugrave;ng c&aacute;c nh&acirc;n vật ch&iacute;nh của phim.&nbsp;</p>\r\n\r\n<h2><strong>1. Sơ lược về The Lord of the Rings</strong></h2>\r\n\r\n<p>Bộ s&aacute;ch&nbsp;<strong>The Lord of the Rings</strong>&nbsp;khi xuất bản từ năm 1954 đến 1955 đ&atilde; tạo n&ecirc;n một cuộc c&aacute;ch mạng thực sự trong văn học. Lần đầu ti&ecirc;n một bộ truyện fantasy g&acirc;y được tiếng vang lớn đến như vậy, bộ truyện được dịch ra h&agrave;ng loạt ng&ocirc;n ngữ kh&aacute;c nhau tr&ecirc;n thế giới. Người ta say m&ecirc; n&oacute;, đắm ch&igrave;m v&agrave;o n&oacute;, v&agrave; thậm ch&iacute; c&ograve;n coi thế giới ấy l&agrave; c&oacute; thật. Trước khi c&oacute; LOTR, fantasy được coi như một loại truyện cho trẻ em, nhưng kể từ LOTR, fantasy thực sự thay đổi v&agrave; trở th&agrave;nh một dạng văn học &quot;nghi&ecirc;m t&uacute;c v&agrave; người lớn&quot;. LOTR đ&atilde; x&acirc;y dựng cho m&igrave;nh một cộng đồng fan cực kỳ lớn, m&agrave; thực sự kh&ocirc;ng c&oacute; t&ecirc;n gọi cố định, v&igrave; bạn c&oacute; thể ph&acirc;n những người h&acirc;m mộ LOTR th&agrave;nh nhiều kiểu với nhiều c&aacute;ch gọi kh&aacute;c nhau, nhưng t&ocirc;i sẽ chia l&agrave;m 2 loại: Ringer - những người đọc v&agrave; y&ecirc;u th&iacute;ch c&aacute;c t&aacute;c phẩm của&nbsp;<strong>Tolkien</strong>; v&agrave; Tolkienist - những người nghi&ecirc;n cứu c&aacute;c t&aacute;c phẩm của &ocirc;ng. V&acirc;ng, nghi&ecirc;n cứu c&aacute;c t&aacute;c phẩm của&nbsp;<strong>Tolkien</strong>&nbsp;được coi như một ng&agrave;nh khoa học, giống như bạn nghi&ecirc;n cứu lịch sử vậy.&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&aacute; đ&aacute;ng buồn khi d&ugrave; c&oacute; cộng đồng fan lớn như vậy, nhưng phải đến khi trilogy phim&nbsp;<strong>The Lord of the Rings</strong>&nbsp;của&nbsp;<strong>Peter Jackson</strong>&nbsp;ra mắt từ năm 2001-2003, LOTR mới thực sự phổ biến tr&ecirc;n to&agrave;n cầu. V&acirc;ng, thực sự t&ocirc;i phải cảm ơn&nbsp;<strong>Peter Jackson</strong>&nbsp;v&igrave; đ&atilde; c&oacute; thể t&aacute;i hiện LOTR tr&ecirc;n m&agrave;n ảnh ho&agrave;n hảo đến như vậy. LOTR đ&atilde; đem đến một thế giới qu&aacute; rộng lớn, qu&aacute; chi tiết, qu&aacute; tuyệt vời, chưa hề c&oacute; trong lịch sử. Bạn đếm được bao nhi&ecirc;u bộ tiểu thuyết v&agrave; phim fantasy c&oacute; một thế giới được kỳ c&ocirc;ng x&acirc;y dựng như vậy?&nbsp;<strong>Tolkien</strong>&nbsp;đ&atilde; d&agrave;y c&ocirc;ng x&acirc;y n&ecirc;n một thế giới giả tưởng của ri&ecirc;ng m&igrave;nh từ thuở sơ khai. Địa l&yacute;, lịch sử, văn h&oacute;a, truyền thuyết, c&aacute;c tộc người,... tất cả đều được Tolkien tạo n&ecirc;n, một kỳ c&ocirc;ng nữa l&agrave;&nbsp;<strong>Tolkien</strong>&nbsp;đ&atilde; s&aacute;ng tạo ra hơn 20 ng&ocirc;n ngữ kh&aacute;c nhau cho thế giới của m&igrave;nh, trong đ&oacute; ho&agrave;n thiện nhất l&agrave; ng&ocirc;n ngữ của tộc Ti&ecirc;n (&ocirc;ng c&ograve;n c&oacute; dự định viết lại bộ truyện bằng tiếng Ti&ecirc;n nữa cơ). Một thế giới tuy giả tưởng, nhưng n&oacute; qu&aacute; đỗi ch&acirc;n thật!&nbsp;</p>\r\n\r\n<p>V&agrave; khi trilogy phim LOTR được ra mắt, lập tức n&oacute; tạo n&ecirc;n một cơn sốt chưa từng thấy, doanh thu ph&ograve;ng v&eacute; cực kỳ cao v&agrave;o thời điểm đ&oacute;, v&agrave; đặc biệt l&agrave; cả 3 phần đều được đề cử Oscar v&agrave; thắng giải! Với&nbsp;<strong>The Fellowship of the Ring</strong>&nbsp;l&agrave; 4 giải,&nbsp;<strong>The Two Towers</strong>&nbsp;l&agrave; 2 giải, v&agrave;&nbsp;<strong>The Return of the King</strong>&nbsp;- 11/11 giải được đề cử! Liệu rằng c&oacute; bộ phim fantasy n&agrave;o c&oacute; thể th&agrave;nh c&ocirc;ng như LOTR? V&agrave; cho d&ugrave; trilogy prequel&nbsp;<strong>The Hobbit</strong>&nbsp;cũng đạt doanh thu cao kh&ocirc;ng k&eacute;m, nhưng lại chỉ d&agrave;nh được 1 giải Oscar. Những g&igrave; m&agrave; LOTR đ&atilde; l&agrave;m được l&agrave; huyền thoại! Những c&aacute;i t&ecirc;n như Người Hobbit, Ti&ecirc;n, Người L&ugrave;n, Xứ Shire, Minas Tirith, Mordor, Rivendell,... đ&atilde; trở n&ecirc;n quen thuộc với nhiều người; đặc biệt phải n&oacute;i đến Gandalf, nhắc đến LOTR l&agrave; nhắc tới Gandalf v&agrave; ngược lại!&nbsp;</p>\r\n\r\n<p>Lại n&oacute;i về phim, phải thừa nhận&nbsp;<strong>Peter Jackson</strong>&nbsp;đ&atilde; l&agrave;m qu&aacute; xuất sắc nhiệm vụ của m&igrave;nh. LOTR từng bị nhận x&eacute;t l&agrave; &quot;Kh&ocirc;ng thể l&agrave;m th&agrave;nh phim&quot;, nhưng với c&ocirc;ng nghệ CGI từ những năm 2000, v&agrave; sự thật l&agrave; hầu hết đều được dựng thật,&nbsp;<strong>Peter Jackson</strong>&nbsp;đ&atilde; đem đến một thế giới qu&aacute; đẹp, qu&aacute; ch&acirc;n thực với những địa danh đ&atilde; trở n&ecirc;n quen thuộc. Xứ Shire y&ecirc;n b&igrave;nh thơ mộng, Rivendell đẹp đẽ như chốn thần ti&ecirc;n, Minas Tirith h&ugrave;ng vĩ tr&aacute;ng lệ, v&agrave; Mordor tăm tối đ&aacute;ng sợ. Liệu c&oacute; ai chưa từng mơ một lần sống ở Xứ Shire như một Hobbit? Hay đến thăm chốn thần ti&ecirc;n Rivendell? Hoặc sợ h&atilde;i v&ugrave;ng đất b&oacute;ng tối Mordor?&nbsp;</p>\r\n\r\n<p>C&acirc;u chuyện của LOTR thoạt nh&igrave;n rất đơn giản: một hội nh&oacute;m đủ c&aacute;c chủng tộc: Con Người, Hobbit, Ti&ecirc;n, Người L&ugrave;n v&agrave; Ph&aacute;p Sư c&ugrave;ng l&ecirc;n đường với sứ mệnh ti&ecirc;u diệt Ch&uacute;a Tể B&oacute;ng Tối để cứu thế giới. Nghe c&oacute; vẻ giống motip trong những c&acirc;u chuyện cổ t&iacute;ch phải kh&ocirc;ng? Lần đầu ti&ecirc;n t&ocirc;i xem LOTR l&agrave; từ hồi b&eacute;, v&agrave; thực sự th&igrave; chẳng hiểu g&igrave; hết. Lớn l&ecirc;n một ch&uacute;t th&igrave; hiểu như tr&ecirc;n, v&agrave; rồi sau n&agrave;y, khi đ&atilde; bỏ c&ocirc;ng đọc hết tiểu thuyết gốc lẫn c&aacute;c t&aacute;c phẩm kh&aacute;c về Trung Địa của Tolkien th&igrave; mới hiểu một phần những tầng &yacute; nghĩa m&agrave; &ocirc;ng đưa v&agrave;o c&aacute;c t&aacute;c phẩm của m&igrave;nh. Đầu ti&ecirc;n, ch&uacute;ng ta sẽ c&ugrave;ng ph&acirc;n t&iacute;ch biểu tượng của cả loạt phim: Chiếc nhẫn The One Ring - Nhẫn Ch&uacute;a v&agrave; sau đ&oacute; l&agrave; n&oacute;i một ch&uacute;t về Hội Đồng H&agrave;nh - những người tự nguyện bước ch&acirc;n v&agrave;o h&agrave;nh tr&igrave;nh ti&ecirc;u diệt Ch&uacute;a Tể B&oacute;ng Tối.</p>\r\n\r\n<h2><strong>2. &Yacute; nghĩa đằng sau Nhẫn Ch&uacute;a</strong></h2>\r\n\r\n<p>Chiếc Nhẫn Ch&uacute;a - vật c&oacute; vai tr&ograve; xuy&ecirc;n suốt cả t&aacute;c phẩm LOTR. Bạn n&agrave;o xem phim rồi th&igrave; chắc cũng đ&atilde; biết xuất xứ của n&oacute;, nhưng với ai chưa biết th&igrave; t&ocirc;i sẽ t&oacute;m tắt lại (thực ra ai chỉ xem phim cũng kh&aacute; m&ugrave; mờ về nguồn gốc của chiếc nhẫn n&agrave;y):&nbsp;</p>\r\n\r\n<p>Thuở xa xưa, c&oacute; một Ti&ecirc;n thợ r&egrave;n cực kỳ t&agrave;i giỏi ở Ti&ecirc;n quốc Eregion, t&ecirc;n &ocirc;ng l&agrave; Celebrimbor. Ch&uacute;a Tể Sauron khi đ&oacute; đ&atilde; cải trang v&agrave; t&igrave;m đến Celebrimbor, bằng tri thức của m&igrave;nh, hắn gi&uacute;p &ocirc;ng nghi&ecirc;n cứu c&aacute;ch chế tạo c&aacute;c Nhẫn Quyền Năng. V&agrave; sau đ&oacute;, Celebrimbor đ&atilde; tạo ra Bộ Bảy Nhẫn cho bảy Ch&uacute;a Người L&ugrave;n, Bộ Ch&iacute;n Nhẫn cho ch&iacute;n Vua Lo&agrave;i Người. Nhưng rồi, &ocirc;ng dần nhận ra d&atilde; t&acirc;m của Sauron, &ocirc;ng b&iacute; mật tạo ra Bộ Ba Nhẫn cho ba ch&uacute;a Ti&ecirc;n v&agrave; giấu ch&uacute;ng đi. Sauron muốn th&acirc;u t&oacute;m cả Bộ Ba nhưng kh&ocirc;ng th&agrave;nh, hắn bắt giữ, tra tấn v&agrave; giết hại Celebrimbor, hủy diệt Ti&ecirc;n quốc Eregion, nhưng cũng kh&ocirc;ng thể c&oacute; được Bộ Ba. Sau khi hủy diệt Eregion, Sauron quay về Mordor, v&agrave; rồi hắn tạo ra Nhẫn Ch&uacute;a - chiếc nhẫn quyền năng nhất với mục đ&iacute;ch kiểm so&aacute;t những chiếc nhẫn kh&aacute;c.&nbsp;</p>\r\n\r\n<p>Mục đ&iacute;ch ban đầu của c&aacute;c Nhẫn Quyền Năng l&agrave; đem lại tri thức, sức mạnh cho người đeo n&oacute; để gi&uacute;p họ l&atilde;nh đạo d&acirc;n tộc của m&igrave;nh. Nhưng bằng Nhẫn Ch&uacute;a, Sauron đ&atilde; l&agrave;m vấy bẩn Bộ Bảy v&agrave; Bộ Ch&iacute;n. Ch&iacute;n vị vua của lo&agrave;i người đ&atilde; biến th&agrave;nh tay sai cho Sauron - 9 Nazgul, 9 Ma Nhẫn. Bảy ch&uacute;a Người L&ugrave;n tuy kh&ocirc;ng chịu chung số phận nhưng cũng bị ảnh hưởng, v&agrave; kết cục cuối c&ugrave;ng của họ cũng đều bi thảm. Chỉ c&ograve;n Bộ Ba Nhẫn của Ti&ecirc;n tộc l&agrave; kh&ocirc;ng bị vấy bẩn. Với sức mạnh c&oacute; được, Sauron x&uacute;c tiến kế hoạch x&acirc;m lược Trung Địa, nhưng rồi cuối c&ugrave;ng thất bại trước Li&ecirc;n Minh Cuối C&ugrave;ng của Ti&ecirc;n v&agrave; Người, như những g&igrave; phần đầu của&nbsp;<strong>The Fellowship of the Ring&nbsp;</strong>đ&atilde; mi&ecirc;u tả.&nbsp;</p>\r\n\r\n<p>C&oacute; nhiều người xem phim xong sẽ c&oacute; một thắc mắc: Tại sao Nhẫn Ch&uacute;a lại c&oacute; quyền lực &quot;b&igrave;nh thường&quot; như vậy? N&oacute; chẳng c&oacute; sức mạnh hủy diệt hay giết ch&oacute;c g&igrave; kinh khủng cả. Ban đầu t&ocirc;i cũng nghĩ như vậy, nhưng thực sự bản chất của Nhẫn Ch&uacute;a kh&ocirc;ng phải l&agrave; &quot;hủy diệt&quot; m&agrave; l&agrave; &quot;kiểm so&aacute;t&quot;. Sauron l&agrave; Ch&uacute;a Tể B&oacute;ng Tối, nhưng hắn chẳng c&oacute; d&atilde; t&acirc;m ph&aacute; hủy thế giới rồi tự m&igrave;nh tạo ra một c&aacute;i mới, điều hắn muốn l&agrave; &quot;kiểm so&aacute;t v&agrave; thống trị to&agrave;n bộ sự sống&quot;. Nhẫn Ch&uacute;a của hắn sinh ra ch&iacute;nh l&agrave; do tư tưởng n&agrave;y, sức mạnh của chiếc nhẫn kh&ocirc;ng phải l&agrave; việc c&oacute; thể l&agrave;m nổ tung thế giới m&agrave; l&agrave; về sự thống trị. Điều quan trọng trong việc thống trị kh&ocirc;ng phải l&agrave; việc c&oacute; thể đ&aacute;nh bại một người m&agrave; phải l&agrave; việc c&oacute; thể &aacute;p đặt &yacute; ch&iacute; của người đ&oacute;, điều n&agrave;y khiến cho Sauron trở th&agrave;nh một kẻ cực kỳ nguy hiểm. Sauron kh&ocirc;ng muốn ch&eacute;m giết, cũng kh&ocirc;ng muốn cướp b&oacute;c, hắn chỉ muốn KIỂM SO&Aacute;T to&agrave;n bộ. Kh&ocirc;ng thể sở hữu một thứ g&igrave; đ&oacute; bởi việc ph&aacute; hủy n&oacute;, m&agrave; thay v&igrave; đ&oacute; h&atilde;y biến n&oacute; th&agrave;nh của m&igrave;nh, v&agrave; kẻ kiểm so&aacute;t sẽ l&agrave; kẻ thống trị. Để chiến thắng một kẻ như Sauron, kh&ocirc;ng phải l&agrave; bằng sức mạnh cơ bắp, m&agrave; người đ&oacute; phải chiến thắng &yacute; ch&iacute; của ch&iacute;nh bản th&acirc;n m&igrave;nh. V&agrave; đ&oacute; l&agrave; một điều kh&oacute; khăn hơn rất nhiều lần so với việc đ&aacute;nh bại hắn bằng vũ lực đơn thuần. Ri&ecirc;ng việc x&acirc;y dựng Sauron v&agrave; Nhẫn Ch&uacute;a đ&atilde; cho thấy sự s&acirc;u sắc của Tolkien. V&agrave; bạn n&agrave;o xem phim hẳn sẽ biết: Sauron đặt phần lớn linh hồn v&agrave; quyền năng của m&igrave;nh v&agrave;o Nhẫn Ch&uacute;a của hắn. Điều n&agrave;y c&oacute; nghĩa l&agrave; g&igrave;? L&agrave; muốn loại bỏ ho&agrave;n to&agrave;n c&aacute;i &aacute;c th&igrave; phải hủy diệt n&oacute; từ tận s&acirc;u trong gốc rễ chứ kh&ocirc;ng phải chỉ ti&ecirc;u diệt c&aacute;i vỏ bọc m&agrave; n&oacute; mượn b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Chỉ một chi tiết như vậy đ&atilde; cho thấy được Tolkien đ&atilde; kỳ c&ocirc;ng đến như thế n&agrave;o rồi, bởi vậy mới n&oacute;i LOTR ẩn chứa rất nhiều &yacute; nghĩa chứ kh&ocirc;ng đơn thuần chỉ l&agrave; một bộ fantasy phi&ecirc;u lưu diệt kẻ &aacute;c. V&agrave; tiếp đến, ta h&atilde;y n&oacute;i tới những nh&acirc;n vật ch&iacute;nh trong Đo&agrave;n Hộ Nhẫn. 9 nh&acirc;n vật, 9 ho&agrave;n cảnh, 9 cuộc đời kh&aacute;c nhau của 5 chủng tộc. Họ đ&atilde; tự nguyện hợp lại với nhau để thực hiện cuộc h&agrave;nh tr&igrave;nh gần như bất khả thi: Th&acirc;m nhập v&agrave;o Mordor, ti&ecirc;u diệt Nhẫn Ch&uacute;a. C&oacute; v&agrave;i người trong số họ đ&atilde; c&oacute; quen biết, v&agrave;i người ho&agrave;n to&agrave;n xa lạ, thậm ch&iacute; c&ograve;n c&oacute; mối bất h&ograve;a giữa hai chủng tộc. Nhưng điểm chung của họ l&agrave; đều được định mệnh dẫn lối v&agrave; tự nguyện tham gia.&nbsp;</p>\r\n\r\n<h2><strong>3. Đo&agrave;n Hộ Nhẫn</strong></h2>\r\n\r\n<p>Đầu ti&ecirc;n l&agrave; bộ 4 anh ch&agrave;ng Hobbit đến từ Xứ Shire: Frodo Baggins, Samwise Gamgee, Meriadock &quot;Merry&quot; Brandybuck v&agrave; Peregrin &quot;Pippin&quot; Took. Họ đều l&agrave; những người bạn th&acirc;n v&agrave; quen biết với nhau nhiều năm trời.</p>\r\n\r\n<p>Frodo, ch&aacute;u của Bilbo Baggins (nh&acirc;n vật ch&iacute;nh của The Hobbit), anh được thừa kế từ b&aacute;c của m&igrave;nh to&agrave;n bộ t&agrave;i sản, trong đ&oacute; c&oacute; cả chiếc Nhẫn Ch&uacute;a - trong c&aacute;i may c&oacute; c&aacute;i rủi. Frodo được Gandalf cho biết sự nguy hiểm của chiếc nhẫn v&agrave; anh phải tới Rivendell để đảm bảo an to&agrave;n. Samwise - người phụ t&aacute; trung th&agrave;nh của Frodo, lu&ocirc;n lu&ocirc;n chăm lo v&agrave; bảo vệ anh. Cặp đ&ocirc;i Merry v&agrave; Pippin th&igrave; chuẩn kiểu l&aacute;o nh&aacute;o bắng nhắng v&agrave; đem lại tiếng cười cho mọi người. Nhưng điểm chung của cả 4 người đều l&agrave; những anh ch&agrave;ng Hobbit b&igrave;nh thường mong muốn một cuộc sống y&ecirc;n b&igrave;nh, nhưng số mệnh đ&atilde; bắt họ phải bước v&agrave;o một cuộc phi&ecirc;u lưu c&oacute; thể n&oacute;i l&agrave; quan trọng nhất với số mệnh của to&agrave;n Trung Địa.</p>\r\n\r\n<p>Tiếp đến, ta c&oacute; nh&acirc;n vật được y&ecirc;u th&iacute;ch bậc nhất: Gandalf &Aacute;o X&aacute;m. Một ph&aacute;p sư gi&agrave; h&agrave;i hước nhưng cũng rất b&iacute; ẩn v&agrave; mạnh mẽ. &Ocirc;ng c&oacute; sứ mạng l&agrave; Vệ Thần của Trung Địa v&agrave; nhiệm vụ của &ocirc;ng l&agrave; chiến đấu chống lại Sauron. Bạn nghĩ hẳn l&agrave; Gandalf c&oacute; nhiều quyền ph&eacute;p lắm? Theo kiểu thầy Dumbledore trong Harry Potter? (th&uacute; thực l&agrave; l&uacute;c trước t&ocirc;i cũng tưởng 2 người n&agrave;y l&agrave; một lu&ocirc;n). Nhưng ph&aacute;p sư trong thế giới của&nbsp;<strong>Tolkien</strong>&nbsp;mới mang đ&uacute;ng nghĩa &quot;ph&aacute;p sư&quot; - những người c&oacute; kiến thức th&acirc;m s&acirc;u v&agrave; rộng lớn, họ sử dụng tr&iacute; &oacute;c chứ kh&ocirc;ng phải m&uacute;a m&aacute;y c&acirc;y trượng rồi đọc thần ch&uacute; khiến kẻ địch h&oacute;a ra c&oacute;c hay nổ tung! Kh&ocirc;ng, ph&aacute;p sư của&nbsp;<strong>Tolkien</strong>&nbsp;l&agrave; như vậy, qua đ&oacute;,&nbsp;<strong>Tolkien</strong>muốn gửi gắm th&ocirc;ng điệp của m&igrave;nh: tr&iacute; th&ocirc;ng minh mới l&agrave; vũ kh&iacute; mạnh nhất!&nbsp;</p>\r\n\r\n<p>Kế đến l&agrave; cặp đ&ocirc;i cũng rất th&uacute; vị: Legolas tộc Ti&ecirc;n v&agrave; Gimli tộc Người L&ugrave;n. Họ thuộc về hai chủng tộc c&oacute; mối bất h&ograve;a s&acirc;u sắc (nguy&ecirc;n do l&agrave; g&igrave; th&igrave; phải kể đến lịch sử từ thời xa xưa n&ecirc;n t&ocirc;i kh&ocirc;ng n&oacute;i đến). V&agrave; quả thật ban đầu th&igrave; như nước với lửa vậy, nhưng rồi dần dần hai người họ đ&atilde; trở th&agrave;nh đ&ocirc;i bạn tri kỷ, sống chết c&oacute; nhau. Quả thật, c&oacute; ai xem phim m&agrave; kh&ocirc;ng y&ecirc;u mến họ cho được, nhất l&agrave; những l&uacute;c hai người thi xem ai hạ được nhiều kẻ địch hơn cơ chứ? Một t&igrave;nh bạn vượt l&ecirc;n tr&ecirc;n mối bất h&ograve;a, thật đ&aacute;ng qu&yacute; biết bao! Ngay cả vũ kh&iacute; họ sử dụng cũng vừa đối lập m&agrave; vừa hỗ trợ cho nhau rất ho&agrave;n hảo: Legolas d&ugrave;ng cung t&ecirc;n c&ograve;n Gimli d&ugrave;ng r&igrave;u, một cặp đ&ocirc;i tuyệt vời trong LOTR. C&ograve;n nhớ ngay trước trận chiến cuối c&ugrave;ng tại Cổng Đen, cuộc đối thoại ngắn giữ hai người họ l&agrave; minh chứng r&otilde; nhất cho t&igrave;nh bạn đ&aacute;ng qu&yacute; của hai người.</p>\r\n\r\n<blockquote>\r\n<p>&quot;Kh&ocirc;ng thể tin l&agrave; c&oacute; ng&agrave;y ta lại đứng vai kề vai với một t&ecirc;n Ti&ecirc;n cơ đấy!&quot;</p>\r\n\r\n<p>&quot;Thế c&ograve;n vai kề vai với một người bạn th&igrave; sao?&quot;</p>\r\n\r\n<p>&quot;C&aacute;i đ&oacute; th&igrave; được&quot;</p>\r\n</blockquote>\r\n\r\n<p>V&agrave; đ&acirc;y, ch&uacute;ng ta c&oacute; Sean Bean trong vai Boromir (ừ cũng l&agrave; Eddard &quot;Ned&quot; Stark của Game of Thrones lu&ocirc;n - thật t&igrave;nh, chọn vai qu&aacute; chuẩn). Boromir l&agrave; con cả của Quan Nhiếp Ch&iacute;nh Gondor v&agrave; đến Rivendell để hỏi về số phận của m&igrave;nh cũng như Minas Tirith - th&agrave;nh tr&igrave; cuối c&ugrave;ng ngăn c&aacute;ch giữa Mordor v&agrave; Trung Địa. V&agrave; anh cũng tự nguyện đi theo Frodo khi cậu thực hiện nhiệm vụ. Boromir l&agrave; một người ph&agrave;m, anh chỉ c&oacute; một mong muốn l&agrave; đ&aacute;nh bại Sauron v&agrave; bảo vệ Gondor, anh cũng cho rằng Gondor kh&ocirc;ng cần c&oacute; vua v&igrave; đ&atilde; c&oacute; d&ograve;ng d&otilde;i anh bảo vệ n&oacute;. Thực ra ban đầu Boromir muốn Gondor sử dụng Nhẫn Ch&uacute;a để chống lại Sauron, nhưng rồi Gandalf đ&atilde; thuyết phục anh từ bỏ &yacute; định đ&oacute;. Tuy nhi&ecirc;n suốt cuộc h&agrave;nh tr&igrave;nh, anh bị &aacute;m ảnh bởi chiếc nhẫn v&agrave; rồi cuối phần 1, anh bị mất kiểm so&aacute;t v&agrave; cố chiếm lấy n&oacute; từ Frodo v&agrave; khiến Đo&agrave;n Hộ Nhẫn tan r&atilde;, mặc d&ugrave; vậy, ngay sau đ&oacute; anh đ&atilde; tỉnh ra v&agrave; nhận ra sai lầm của m&igrave;nh. Cuối c&ugrave;ng Boromir đ&atilde; hy sinh khi bảo vệ Merry v&agrave; Pippin khỏi đo&agrave;n qu&acirc;n Uruk truy đuổi khi vẫn thổi chiếc t&ugrave; v&agrave; của Gondor kh&ocirc;ng dứt. C&aacute;i chết c&oacute; lẽ l&agrave; sự giải tho&aacute;t hợp l&yacute; nhất cho Boromir v&igrave; với t&iacute;nh c&aacute;ch của m&igrave;nh, anh sẽ kh&ocirc;ng tha thứ cho những h&agrave;nh động của bản th&acirc;n.&nbsp;</p>\r\n\r\n<p>Cuối c&ugrave;ng, th&agrave;nh vi&ecirc;n c&oacute; sứ mạng quan trọng bậc nhất: Aragorn, hậu duệ xa xưa của c&aacute;c vị vua Gondor. Thực ra Aragorn l&agrave; d&ograve;ng d&otilde;i của c&aacute;c vị vua Arnor - vương quốc anh em với Gondor đ&atilde; tuyệt diệt. Nhưng c&aacute;c thế hệ đi trước của Aragorn đ&atilde; kh&ocirc;ng quay lại tiếp nhận ngai v&agrave;ng Gondor khi vị vua cuối của Gondor tử trận. Họ trở th&agrave;nh c&aacute;c Rangers với nhiệm vụ canh giữ miền ph&iacute;a Bắc Trung Địa v&agrave; giữ cho d&acirc;n ch&uacute;ng an to&agrave;n. Nhưng sứ mệnh của Aragorn l&agrave; trở th&agrave;nh vua của Gondor v&agrave; dẫn dắt Con Người chiến đấu chống lại Sauron.&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, xuy&ecirc;n suốt cuộc h&agrave;nh tr&igrave;nh, ch&uacute;ng ta c&oacute; thể cảm thấy những mối băn khoăn của Aragorn khi anh kh&ocirc;ng biết liệu người Gondor c&oacute; chấp nhận m&igrave;nh hay kh&ocirc;ng v&igrave; theo như người d&acirc;n n&oacute;i th&igrave; anh chỉ l&agrave; một Kẻ Lang Thang kỳ quặc. Nhưng dần d&agrave;, những h&agrave;nh động của anh, những trận chiến khốc liệt anh trải qua để t&igrave;m đến mong muốn thực sự của m&igrave;nh đ&atilde; cho ta thấy: anh xứng đ&aacute;ng l&agrave; một vị vua, một vị vua đ&iacute;ch thực. Đ&uacute;ng như Tolkien đ&atilde; n&oacute;i về Aragorn: &quot;Not all those who wander are lost&quot; - &quot;Chẳng ai lang thang cũng l&agrave; lạc đường&quot;.&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>&quot;Đ&iacute;ch thực l&agrave; v&agrave;ng thời kh&ocirc;ng lấp l&aacute;nh,</p>\r\n\r\n<p>Lang thang c&ocirc; l&aacute;nh chẳng cứ lạc đường;</p>\r\n\r\n<p>Cội khỏe th&acirc;n cường dẫu gi&agrave; kh&ocirc;ng mạt,</p>\r\n\r\n<p>Rễ s&acirc;u b&aacute;m chặt phạm n&agrave;o tuyết sương.</p>\r\n\r\n<p>Từ đống tro t&agrave;n sẽ kh&ecirc;u lại lửa,</p>\r\n\r\n<p>Giữa đ&ecirc;m phong tỏa &aacute;nh s&aacute;ng bật ra;</p>\r\n\r\n<p>Lưỡi th&eacute;p g&atilde;y l&igrave;a lại r&egrave;n sắc b&eacute;n,</p>\r\n\r\n<p>Kẻ kh&ocirc;ng vương miện t&aacute;i hồi ngai vua.&quot;</p>\r\n</blockquote>\r\n\r\n<p>Như vậy l&agrave; trong phần đầu ti&ecirc;n n&agrave;y, t&ocirc;i đ&atilde; điểm đến những g&igrave; cơ bản nhất của trilogy&nbsp;<strong>The Lord of the Rings:</strong>&nbsp;c&aacute;c nh&acirc;n vật ch&iacute;nh; nguồn gốc, sức mạnh v&agrave; &yacute; nghĩa của chiếc Nhẫn Ch&uacute;a. Trong phần thứ 2, t&ocirc;i sẽ ph&acirc;n t&iacute;ch c&aacute;c nh&acirc;n vật phụ c&oacute; vai tr&ograve; quan trọng v&agrave; giải th&iacute;ch một số chi tiết tr&ecirc;n phim c&oacute; thể nhiều người kh&ocirc;ng hiểu.</p>\r\n\r\n<p>&nbsp;</p>', '1566833331_1550246168530-s99368irw_image.jpeg', 0, 29, 2, 1, '2019-08-26 08:28:51', '2019-10-14 15:20:15'),
(11, '[THẢO LUẬN CÓ SPOIL] AVENGERS: ENDGAME', '<p>Hi mọi người, m&igrave;nh hiểu rằng rất kh&oacute; để c&oacute; thể thoải m&aacute;i review, b&agrave;n luận về phim m&agrave; kh&ocirc;ng lộ ra bất kỳ một chi tiết n&agrave;o n&ecirc;n... Ch&agrave;o mừng c&aacute;c bạn đ&atilde; để với nơi để thảo luận c&oacute; thể spoil thoải m&aacute;i về&nbsp;<a href=\"https://phephim.vn/movie/933-Avengers:-Endgame\"><strong><em>Avengers: Endgame.</em></strong></a></p>\r\n\r\n<p>Đ&acirc;y sẽ l&agrave; địa điểm c&aacute;c bạn c&oacute; thể ho&agrave;n to&agrave;n v&ocirc; tư n&oacute;i tất cả mọi cảm nhận, suy nghĩ cũng như kh&uacute;c mắc về bom tấn lịch sử của Vũ trụ điện ảnh Marvel. M&igrave;nh bắt đầu trước nh&eacute;, đoạn m&igrave;nh cảm thấy b&aacute; đạo nhất trong phim l&agrave; khi Spider-Man được một tập hợp c&aacute;c chị đại của Marvel bảo vệ!!</p>', '1566833501_1556255976976-nuqatgju1_image.png', 0, 6, 4, 1, '2019-08-26 08:31:41', '2019-10-05 09:18:25'),
(12, 'Tóm tắt và cảm nhận phim \"About time\" (2013)', '<p>Đ&acirc;y l&agrave; bộ phim m&igrave;nh vừa được xem trong dịp Tết vừa qua. Một bộ phim tuyệt vời th&ocirc;i th&uacute;c m&igrave;nh l&agrave;m ngay video để chia sẻ với mọi người. Những g&igrave; m&igrave;nh muốn n&oacute;i đ&atilde; nằm hết trong video v&igrave; vậy m&igrave;nh rất mong được c&aacute;c bạn g&oacute;p &yacute; để m&igrave;nh c&oacute; thể ho&agrave;n thiện hơn trong những video tiếp theo. Xin ch&acirc;n th&agrave;nh cảm ơn !</p>', '1566833591_1550755401041-jo9rmaivw_image.jpeg', 0, 7, 4, 1, '2019-08-26 08:33:11', '2019-10-05 16:41:10'),
(36, 'Tôi xin test lần cuối nha :))', '<p>T&ocirc;i xin test lần cuối nha :))&nbsp;T&ocirc;i xin test lần cuối nha :))&nbsp;T&ocirc;i xin test lần cuối nha :))&nbsp;T&ocirc;i xin test lần cuối nha :))&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"Chú thích nè\" height=\"350\" src=\"/upload/ckfinder/images/70673977_2303668223219445_1327444133425446912_n.jpg\" width=\"450\" />\r\n<figcaption>Ch&uacute; th&iacute;ch lu&ocirc;n<br />\r\n​​​​​</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><strong>ahihi xin ch&agrave;o</strong></p>', '1569482106_avt-me.jpg', 1, 4, 1, 1, '2019-09-26 00:15:06', '2019-10-07 05:58:37'),
(37, 'Kimi no Na wa (Your Name) - Tình yêu và phép màu', '<p><strong><em>&quot;Kimi no nawa&quot; (Your name) : &ldquo;Cậu t&ecirc;n l&agrave; g&igrave;?&rdquo; &ndash; l&agrave; bộ phim hoạt h&igrave;nh điện ảnh c&oacute; doanh thu cao nhất Nhật Bản năm 2016 của đạo diễn Shinkai Makoto &ndash; &ldquo;ph&ugrave; thủy nỗi buồn tr&ecirc;n m&agrave;n ảnh rộng&rdquo;. Nội dung phim l&agrave; c&acirc;u chuyện tr&aacute;o đổi th&acirc;n x&aacute;c giữa một c&ocirc; g&aacute;i n&ocirc;ng th&ocirc;n - Mitsuha v&agrave; một ch&agrave;ng trai th&agrave;nh thị - Taki.</em></strong></p>\r\n\r\n<p><strong>CHẤT LƯỢNG H&Igrave;NH ẢNH V&Agrave; &Acirc;M NHẠC PHIM&nbsp;</strong></p>\r\n\r\n<p>Bộ phim được đầu tư h&igrave;nh ảnh rất kỹ lưỡng v&agrave; chăm ch&uacute;t. Đạo diễn Makoto đ&atilde; tự m&igrave;nh vẽ bản ph&aacute;c thảo Movie rồi vẽ ra từng chi tiết c&aacute;c cảnh.Đặc biệt l&agrave; những tia s&aacute;ng được phản chiếu tỉ mỉ để tạo sự ch&acirc;n thật nhất c&oacute; thể. G&oacute;c m&aacute;y phim cũng được thực hiện qua g&oacute;c quay thấp để thể hiện sự ri&ecirc;ng tư v&agrave; th&acirc;n quen trong căn ph&ograve;ng hay những cảnh g&oacute;c quay cận từng bước ch&acirc;n l&agrave;m cho người xem cảm thấy một sự t&ocirc;n trọng nhất định cho một con người b&igrave;nh thường. C&oacute; thể thấy đạo diễn Makoto rất ch&uacute; trọng từng chi tiết c&aacute;c cảnh quay để tạo ra một t&aacute;c phẩm tuyệt nhất. K&egrave;m theo đ&oacute; &ocirc;ng cũng gửi gắm th&ecirc;m những lời thoại g&acirc;y ấn tượng mạnh v&agrave; x&uacute;c động cho kh&aacute;n giả. Ngo&agrave;i ra, &acirc;m nhạc ch&iacute;nh Sparkle trong phim được đảm nhận bởi nh&oacute;m nhạc rock RADWIMPS, tuy l&agrave; thể loại nhạc kh&ocirc;ng nhẹ nh&agrave;ng v&agrave; trầm lắng như c&aacute;c loại anime theo thể loại buồn kh&aacute;c của Makoto, thế nhưng b&agrave;i h&aacute;t thể hiện rất đ&uacute;ng tinh thần của phim. Ch&iacute;nh v&igrave; vậy Your name đ&atilde; dễ d&agrave;ng đi v&agrave;o l&ograve;ng kh&aacute;n giả bằng sự chan h&ograve;a của &acirc;m nhạc v&agrave; h&igrave;nh ảnh.</p>', '1570163690_11111.jpeg', 0, 8, 2, 11, '2019-10-04 04:34:50', '2019-10-14 15:28:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `baidang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `noi_dung`, `parent_id`, `baidang_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'hihi, hay nè!', NULL, 10, 1, '2019-10-04 04:22:06', '2019-10-05 16:40:37'),
(4, 'hihi hay lắm bạn ơi', NULL, 10, 2, '2019-10-04 04:26:50', '2019-10-05 16:35:02'),
(6, 'xin chào test lần 2 tôi là bạn, bạn là tôi, tôi không phải là bạn, bạn cũng k phải tôi. =))', NULL, 10, 4, '2019-10-04 04:41:34', '2019-10-04 06:44:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gias`
--

CREATE TABLE `danh_gias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diem` tinyint(4) NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gias`
--

INSERT INTO `danh_gias` (`id`, `diem`, `noi_dung`, `phim_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 8, 'Phim hay quá luôn á nghe <3', 1, 1, '2019-10-04 03:29:42', '2019-10-07 05:57:24'),
(7, 10, 'Phim của tôi sao k hay cho được :v', 1, 2, '2019-10-06 12:06:48', '2019-10-06 12:06:48'),
(8, 6, 'Cũng thường, qua hãng của tôi xem nhé!', 1, 5, '2019-10-06 12:08:09', '2019-10-06 12:08:09'),
(9, 10, 'Hay nha!', 1, 10, '2019-10-06 12:09:18', '2019-10-06 12:09:18'),
(15, 10, 'Phim của tui hay không mấy ông?', 8, 5, '2019-10-14 16:05:56', '2019-10-14 16:05:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `do_tuois`
--

CREATE TABLE `do_tuois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `do_tuois`
--

INSERT INTO `do_tuois` (`id`, `ma`, `created_at`, `updated_at`) VALUES
(1, 'P', NULL, NULL),
(2, 'C13', NULL, NULL),
(3, 'C16', NULL, NULL),
(4, 'C18', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi_dang_kys`
--

CREATE TABLE `goi_dang_kys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_goi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong_phim` smallint(6) NOT NULL,
  `thang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `goi_dang_kys`
--

INSERT INTO `goi_dang_kys` (`id`, `ten_goi`, `so_luong_phim`, `thang`, `created_at`, `updated_at`) VALUES
(1, '10 phim - 300,000 VNĐ - 1 tháng', 10, 1, NULL, NULL),
(2, '20 phim - 500,000 VNĐ - 1 tháng', 20, 1, NULL, NULL),
(3, '30 phim - 600,000 VNĐ - 1 tháng', 30, 1, NULL, NULL),
(4, '50 phim - 1,000,000 VNĐ - 2 tháng', 50, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_bai_dangs`
--

CREATE TABLE `loai_bai_dangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_loai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_bai_dangs`
--

INSERT INTO `loai_bai_dangs` (`id`, `ten_loai`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', NULL, NULL),
(2, 'Phân tích', NULL, NULL),
(3, 'Hỏi đáp', NULL, NULL),
(4, 'Chia sẻ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2019_08_19_044756_create_goi_dang_kys_table', 1),
(15, '2019_08_19_044756_create_quyens_table', 1),
(16, '2019_08_19_044757_create_users_table', 1),
(17, '2019_08_19_044758_create_password_resets_table', 1),
(18, '2019_08_19_044759_create_the_loais_table', 1),
(19, '2019_08_19_045842_create_do_tuois_table', 1),
(20, '2019_08_19_045844_create_phims_table', 1),
(21, '2019_08_19_045933_create_danh_gias_table', 1),
(22, '2019_08_19_062451_create_loai_bai_dangs_table', 1),
(23, '2019_08_19_062609_create_bai_dangs_table', 1),
(24, '2019_08_19_062610_create_binh_luans_table', 1),
(25, '2019_08_27_192645_create_the_loai_phims_table', 1),
(26, '2019_10_04_093957_create_diem_bai_dangs_table', 1),
(27, '2019_10_05_123021_rename_table_diem_bai_dang', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phims`
--

CREATE TABLE `phims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_chinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_phu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoi_luong` smallint(6) NOT NULL,
  `dao_dien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_vien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imdb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_khoi_chieu` date NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer_yt_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dotuoi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phims`
--

INSERT INTO `phims` (`id`, `ten_chinh`, `ten_phu`, `thoi_luong`, `dao_dien`, `dien_vien`, `imdb_id`, `ngay_khoi_chieu`, `noi_dung`, `anh_poster`, `anh_cover`, `trailer_yt_id`, `trang_thai`, `user_id`, `dotuoi_id`, `created_at`, `updated_at`) VALUES
(1, 'Avengers: Endgame', 'Avengers: Hồi Kết', 181, 'Anthony Russo, Joe Russo', 'Brie Larson, Robert Downey Jr., Karen Gillan', 'tt4154796', '2019-04-26', 'Sau sự kiện hủy diệt tàn khốc, vũ trụ chìm trong cảnh hoang tàn. Với sự trợ giúp của những đồng minh còn sống sót, biệt đội siêu anh hùng Avengers tập hợp một lần nữa để đảo ngược hành động của Thanos và khôi phục lại trật tự của vũ trụ.', '1555129717070-yjhr3773j_image.jpeg', '1555659247646-w8ach502k_image.jpeg', 'TcMBFSGVi1c', 1, 2, 2, NULL, '2019-09-27 01:00:27'),
(2, 'Avengers: Infinity War', 'Avengers: Cuộc Chiến Vô Cực', 149, 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans', NULL, '2018-04-27', 'Các Avengers và đồng minh phải sẵn sàng hi sinh tất cả trong nỗ lực đánh bại tên Thanos hùng mạnh trước khi hắn đem đến sự huỷ diệt của toàn thể vũ trụ.', '1550480998304-213zitq43_image.jpeg', '1550481005155-a00aiucxs_image.jpeg', '6ZfuNTqbHE8', 1, 2, 2, NULL, '2019-09-27 01:00:58'),
(3, 'Avengers: Age Of Ultron', 'Avengers: Đế Chế Ultron', 141, 'Joss Whedon', '\r\nRobert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Samuel L. Jackson', NULL, '2015-04-24', 'Avengers: Age of Ultron khởi đầu từ nhân vật Tony Stark - siêu anh hùng Iron Man. Khi anh tái khởi động dự án gìn giữ hòa bình bị ngưng hoạt động từ lâu, mọi chuyện diễn ra không hề suôn sẻ. Các siêu anh hùng vĩ đại nhất trên Trái đất gồm Iron Man, Captain America, Thor, Hulk, Black Widow và Hawkeye đứng trước một thử thách vô cùng khó khăn trong việc đem lại cân bằng cho toàn thế giới.', '1550549009833-h8776mjv3_image.jpeg', '1550549091003-ax50c9a17_image.jpeg', 'tmeOjFno6Do', 1, 2, 2, NULL, '2019-09-28 01:28:20'),
(5, 'Iron Man', 'Người sắt', 126, '\r\nJon Favreau', 'Robert Downey Jr., Gwyneth Paltrow, Terrence Howard', NULL, '2008-05-16', 'Tỉ phú Tony Stark là một nhà phát minh đại tài, người thừa kế duy nhất của Tập đoàn Stark Enterprises, một tập đoàn chuyên nghiên cứu và sản xuất vũ khí. Một lần khi sang Afghanistan, ông bị bắt cóc và buộc phải chế tạo một loạt vũ khí hủy diệt. Với trí thông mình của mình, Stark đã tạo ra một bộ quần áo đặc biệt với sức mạnh phi thường để trốn thoát. Cũng từ đó, Tony Stark sử dụng sức mạnh đặc biệt của mình để chống lại cái ác, bảo vệ người vô tội dưới cái tên Iron Man.', '1550541079321-ijq9n1bdb_image.jpeg', '1550541148486-1mskxecm1_image.jpeg', '8hYlB38asDY', 0, 2, 2, NULL, '2019-09-28 01:28:02'),
(6, 'Iron Man 2', 'Người sắt 2', 124, 'Jon Favreau', 'Robert Downey Jr., Mickey Rourke, Gwyneth Paltrow', NULL, '2010-05-07', 'Trong \"Iron Man 2\", thế giới biết rằng nhà phát minh tỷ phú Tony Stark chính là Siêu anh hùng Iron Man. Dưới áp lực của chính phủ, báo chí và công chúng muốn anh chia sẻ công nghệ của mình với quân đội, Tony không sẵn sàng tiết lộ những bí mật đằng sau bộ giáp Iron Man vì anh lo ngại thông tin sẽ rơi vào tay kẻ xấu. Với Pepper Potts và James \"Rhodey\" Rhodes ở bên cạnh, Tony phải đối đầu với các thế lực xấu mới.', '1550541602814-txrqurj0j_image.jpeg', '1550672716786-v2twh6co3_image.jpeg', 'BoohRoVA9WQ', 0, 2, 2, NULL, '2019-09-28 01:28:02'),
(7, 'Iron Man 3', 'Người Sắt 3', 143, 'Shane Black', 'Robert Downey Jr., Guy Pearce, Gwyneth Paltrow', NULL, '2013-04-26', 'Khi Stark chứng kiến căn biệt thự - thế giới riêng của anh - bị phá hủy dưới tay một kẻ thù vô cùng nguy hiểm, anh buộc phải dấn thân vào một cuộc hành trình mới đầy khó khăn và nguy hiểm để tìm kẻ có trách nhiệm. Cuộc hành trình này sẽ là một thử thách cho khí phách của \"người sắt\". Bị dồn vào chân tường, anh phải tự mình sống sót với những thiết bị điện tử tối tân, dựa vào trí thông mình hơn người và bản năng sinh tồn mãnh liệt để bảo vệ những người thân nhất của mình. Phim cũng sẽ đưa Stark đến với câu trả lời mà anh tìm kiếm bấy lâu nay: liệu người anh hùng tạo nên bộ giáp, hay bộ giáp tạo nên người anh hùng?', '1550542025796-wmkssewbw_image.jpeg', '1550546962012-b6mia5xsd_image.jpeg', 'Ke1Y3P9D0Bc', 0, 2, 2, NULL, '2019-09-28 01:27:59'),
(8, 'Fast & Furious: Hobbs & Shaw', 'Quá nhanh quá nguy hiểm: Ngoại truyện Hobbs & Shaw', 134, 'David Leitch', 'Vanessa Kirby, Dwayne Johnson, Jason Statham', 'tt6806448', '2019-08-02', 'Câu chuyện giữa hai người tưởng như không đội trời chung là Đặc vụ An ninh Ngoại giao Mỹ Luke Hobbs và tên tội phạm đánh thuê khét tiếng Deckard Shaw khi họ bất đắc dĩ phải bắt tay hợp tác nhằm ngăn chặn âm mưu của trùm phản diện cực nguy hiểm trong diện bí ẩn Brixton.', '1568367527_ehaKA-image.jpeg', '1568367527_qFmjV-image1.jpeg', 'HZ7PAyCDwEg', 1, 5, 2, NULL, '2019-10-03 08:42:48'),
(10, 'Captain Marvel', 'Đại Uý Marvel', 124, 'Anna Boden, Ryan Fleck', 'Brie Larson, Gemma Chan, Ben Mendelsohn, Samuel L. Jackson', 'tt4154664', '2019-03-08', 'Carol Danvers trở thành một trong những người hùng mạnh nhất vũ trụ khi Trái Đất bị rơi vào giữa cuộc chiến giữa hai chủng tộc ngoài hành tinh.', '1551432523510-mi5oqpiiy_image.jpeg', '1551492933877-bpz22ijw6_image.jpeg', '0LHxvxdRnYc', 1, 2, 2, '2019-08-26 22:57:30', '2019-09-27 01:00:37'),
(11, 'Captain America: The First Avenger', 'Captain America: Avenger Đầu Tiên', 124, 'Joe Johnston', 'Chris Evans, Hugo Weaving, Samuel L. Jackson', 'tt0458339', '2011-07-29', 'Bối cảnh phim bắt đầu năm 1942, khi Mỹ đang tham gia Thế chiến II và cần tới những chiến binh can trường. Chàng trai Steve Rogers (Chris Evans) là một người như vậy, nhưng thể hình quá thấp bé khiến anh không thể đạt được ước mơ tòng quân. Cơ may đến với Rogers khi anh được chọn tham gia một thí nghiệm của chính phủ, giúp biến người thường trở thành siêu chiến binh. Anh trở thành Captain America, biểu tượng của nước Mỹ kể từ đó. Đối thủ của anh là phe Phát-xít, với quái nhân Red Skull, kẻ không chỉ quyền năng mà còn rất tàn ác.', '1566886196_image1.jpeg', '1566886196_image2.jpeg', 'W4DlMggBPvc', 0, 2, 2, '2019-08-26 23:09:56', '2019-09-27 00:59:53'),
(12, 'Captain America: The Winter Soldier', 'Captain America: Chiến Binh Mùa Đông', 136, 'Anthony Russo, Joe Russo', 'Chris Evans, Samuel L. Jackson, Scarlett Johansson, Anthony Mackie, Cobie Smulders', 'tt1843866', '2014-04-04', 'CAPTAIN AMERICA: THE WINTER SOLDIER là câu chuyện tiếp nối bộ phim The Avengers, khi Steve Rogers phải tìm cách hòa nhập vào thế giới hiện đại và kết hợp với Natasha Romanoff/Black Widow để chiến đấu chống lại một kẻ thù nguy hiểm ở Washington, D.C.', '1566886663_of4o1mfzq_image.jpeg', '1566886663_r84feb11x_image.jpeg', '7SlILk2WMTI', 1, 2, 2, '2019-08-26 23:17:43', '2019-10-04 03:38:36'),
(13, 'Fast & Furious 6', 'Quá Nhanh Quá Nguy Hiểm 6', 130, 'Justin Lin', 'Vin Diesel, Paul Walker, Dwayne Johnson', 'tt4154664', '2013-05-24', 'Fast And Furious 6 là phần thứ 6 của series phim hành động Mỹ nổi tiếng Fast And Furious. Lần này, đặc vụ Hobbs phải nhờ đến Dom và nhóm của anh giúp sức trong cuộc vây bắt 1 băng đảng do Owen Shaw cầm đầu. Đổi lại, Dom muốn một bản lý lịch \"sạch sẽ\" cho mọi người trong đội.', '1566964314_OD1bx-1image.jpeg', '1566964314_Wzyga-2image.jpeg', '0LHxvxdRnYc', 0, 5, 3, '2019-08-27 20:51:54', '2019-09-28 01:28:00'),
(14, 'Thor', 'Thần sấm', 115, 'Kenneth Branagh', 'Chris Hemsworth, Anthony Hopkins, Natalie Portman, Tom Hiddleston', 'test', '2011-04-29', 'Thor, một chiến binh mạnh mẽ nhưng kiêu ngạo với những hành động liều lĩnh bất chấp luật lệ của Asgard. Kết quả là, Thor bị đày xuống Trái đất nơi anh ta bị buộc phải sống giữa loài người. Khi nhân vật phản diện nguy hiểm nhất trong thế giới của anh ta phái những thế lực đen tối nhất của mình xâm chiếm Trái đất, Thor học được những gì cần thiết để trở thành một anh hùng thực sự', '1567054723_j7N8y-image.jpeg', '1567054723_IL0qj-1image.jpeg', 'linkTrailer', 0, 2, 2, '2019-08-28 21:58:43', '2019-09-28 01:27:58'),
(15, 'Fast Five', 'Quá Nhanh Quá Nguy Hiểm 5', 130, 'Justin Lin', 'Vin Diesel, Paul Walker, Dwayne Johnson', 'tt1596343', '2011-04-29', 'Chuyện phim Fast Five tiếp nối từ phần 4 “Fast and Furious”. Vì cứu Dom ra khỏi ngục tù, Brian và Mia Toretto phải trôi dạt qua nước khác. Giờ đây tại Rio de Janeiro, cả ba tập hợp thành một đội đua xe gồm toàn những tay đua cự phách để thực hiện phi vụ cuối cùng để giành lấy tự do, đó là vụ trộm trị giá 100 triệu đô. Không chỉ đối mặt với tay trùm khét tiếng nhất thành phố Rio, họ còn phải đối đầu với sự truy đuổi ráo riết của điệp viên liên bang Luke Hobbs – người chưa bao giờ đánh mất mục tiêu… Với những pha hành động trơn tru trong một diễn biến đầy hồi hộp và sự trợ giúp đắc lực của âm nhạc, Fast Five là món ăn tinh thần hấp dẫn dành cho những người hâm mộ dòng phim tốc độ.', '1569513353_i2JlB-2.jpeg', '1569513353_lNEZi-1.jpeg', 'mw2AqdB5EVA', 0, 5, 3, '2019-09-26 08:55:53', '2019-09-28 01:28:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyens`
--

CREATE TABLE `quyens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_quyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyens`
--

INSERT INTO `quyens` (`id`, `ten_quyen`, `created_at`, `updated_at`) VALUES
(1, 'Quản trị viên', NULL, '2019-09-04 21:51:15'),
(2, 'Hãng phim', NULL, '2019-09-18 20:29:32'),
(3, 'Thành viên', NULL, '2019-09-18 20:29:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loais`
--

CREATE TABLE `the_loais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_the_loai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loais`
--

INSERT INTO `the_loais` (`id`, `ten_the_loai`, `created_at`, `updated_at`) VALUES
(1, 'Hành động', NULL, NULL),
(2, 'Phiêu lưu', NULL, NULL),
(3, 'Hoạt hình', NULL, NULL),
(4, 'Tiểu sử', NULL, NULL),
(5, 'Hài', NULL, NULL),
(6, 'Tội phạm', NULL, NULL),
(7, 'Tài liệu', NULL, NULL),
(8, 'Chính kịch', NULL, NULL),
(9, 'Gia đình', NULL, NULL),
(10, 'Thần thoại', NULL, NULL),
(11, 'Lịch sử', NULL, NULL),
(12, 'Kinh dị', NULL, NULL),
(13, 'Âm nhạc/Nhạc kịch', NULL, NULL),
(14, 'Bí ẩn', NULL, NULL),
(15, 'Tình cảm', NULL, NULL),
(16, 'Viễn tưởng', NULL, NULL),
(17, 'Ngắn', NULL, NULL),
(18, 'Thể thao', NULL, NULL),
(19, 'Siêu anh hùng', NULL, NULL),
(20, 'Giật gân', NULL, NULL),
(21, 'Chiến tranh', NULL, NULL),
(22, 'Viễn tây', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai_phims`
--

CREATE TABLE `the_loai_phims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theloai_id` bigint(20) UNSIGNED NOT NULL,
  `phim_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai_phims`
--

INSERT INTO `the_loai_phims` (`id`, `theloai_id`, `phim_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2019-10-04 03:42:17', '2019-10-04 03:42:17'),
(2, 2, 8, '2019-10-04 03:42:17', '2019-10-04 03:42:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thichs`
--

CREATE TABLE `thichs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thich` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `baidang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thichs`
--

INSERT INTO `thichs` (`id`, `thich`, `user_id`, `baidang_id`, `created_at`, `updated_at`) VALUES
(5, 0, 1, 10, '2019-10-05 06:32:41', '2019-10-06 15:30:27'),
(6, 0, 1, 11, '2019-10-05 06:36:44', '2019-10-05 06:36:44'),
(7, 0, 1, 3, '2019-10-05 08:50:54', '2019-10-05 08:52:05'),
(8, 1, 1, 5, '2019-10-05 08:54:04', '2019-10-05 09:05:57'),
(9, 0, 12, 5, '2019-10-05 09:11:51', '2019-10-05 09:12:19'),
(10, 0, 12, 3, '2019-10-05 09:12:51', '2019-10-05 09:15:41'),
(11, 1, 12, 4, '2019-10-05 09:16:34', '2019-10-05 09:16:41'),
(12, 0, 12, 11, '2019-10-05 09:18:29', '2019-10-05 09:20:01'),
(13, 1, 5, 10, '2019-10-14 16:03:44', '2019-10-14 16:03:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_hien_thi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 0,
  `goidangky_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ngay_duyet_dang_ky` datetime DEFAULT NULL,
  `quyen_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `ten_hien_thi`, `hinh_dai_dien`, `trang_thai`, `goidangky_id`, `ngay_duyet_dang_ky`, `quyen_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$59vz9JKX8SRgR2plJw5m4egbfDCQgyvlqAetYb7qoWBEXHf6tlRPm', 'Admin', '1568990250_avt-me.jpg', 0, NULL, NULL, 1, NULL, NULL, '2019-10-01 04:46:13'),
(2, 'marvel@movie.com', '$2y$10$/youO7tpgqori3kurNqg6.Y34fI0JO/4RhfnItgyRtUtRuFd5Ip.y', 'Marvel Studio', '1567744101_Marvel_Studios_2016_logo.svg.png', 0, 1, '2019-08-20 00:00:00', 2, NULL, '2019-08-23 17:26:53', '2019-09-05 21:28:21'),
(4, 'lock@gmail.com', '$2y$10$7wjku0/yoCVSZE.uVjIgYuoIA.63tc2lT69QrgxfZ1nCZP4nXA4Ua', 'Lock', '1568891661_avt-me.jpg', 0, NULL, NULL, 3, NULL, '2019-08-25 01:30:00', '2019-10-07 03:35:03'),
(5, 'universal@movie.com', '$2y$10$EDhsQLKxnYdgLQIEIzeGQO76Wo7VVQnrTT4GqnSAPAwt3YJtEHad.', 'Universal Picture', '1569657854_cây.jpg', 0, 1, '2019-09-13 00:00:00', 2, NULL, '2019-08-25 23:44:22', '2019-09-28 01:04:14'),
(8, 'phimvietnam@movie.com', '$2y$10$2xtXxg4rSWDU7c4jxDXZlu21kc5Cb7yaX.kQL4N6vtr8LJpmHRzFW', 'Phim việt nam', '1566978130_JezbE-vietnam.jpg', 2, 1, NULL, 2, NULL, '2019-08-28 00:42:10', '2019-09-27 01:14:03'),
(10, 'huuphuoc@gmail.com', '$2y$10$eC.ddfCNz46qDB4PZJvPJupW5B38ygWJmAxnU2yFysKm3c5Dcrgaq', 'Hữu Phước', '1.jpg', 0, NULL, NULL, 3, NULL, '2019-08-29 00:02:11', '2019-10-03 08:49:13'),
(11, 'hung123@gmail.com', '$2y$10$TAHOiDpGan1bF6R2XCbC9O34VgJtYacudVWiIC5npgkrySo9o8hmO', 'hung', 'no-image.svg', 0, NULL, NULL, 3, NULL, '2019-10-04 04:09:41', '2019-10-07 03:35:06'),
(12, 'dkavpro213@gmail.com', '$2y$10$l.HZl6SQSv9oPGNOcCAvl.rshxUVF8U6mId3VR1Ef/GQ7pYY9UPi2', 'Phongnehihi', '1570268145_72227270_423284958324389_7733041616620879872_n.jpg', 0, NULL, NULL, 3, NULL, '2019-10-05 09:09:52', '2019-10-07 03:42:09'),
(13, 'test@test.com', '$2y$10$.svBoU8xWxCie3qOOaqdL.1OS9XaRzQPXaG5oarbFj6I1j8Zfcgmm', 'test123', 'no-image.svg', 0, NULL, NULL, 3, NULL, '2019-10-07 06:58:19', '2019-10-07 07:13:23');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bai_dangs`
--
ALTER TABLE `bai_dangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bai_dangs_loaibd_id_foreign` (`loaibd_id`),
  ADD KEY `bai_dangs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luans_parent_id_foreign` (`parent_id`),
  ADD KEY `binh_luans_baidang_id_foreign` (`baidang_id`),
  ADD KEY `binh_luans_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `danh_gias`
--
ALTER TABLE `danh_gias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_gias_phim_id_foreign` (`phim_id`),
  ADD KEY `danh_gias_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `do_tuois`
--
ALTER TABLE `do_tuois`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `goi_dang_kys`
--
ALTER TABLE `goi_dang_kys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_bai_dangs`
--
ALTER TABLE `loai_bai_dangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phims`
--
ALTER TABLE `phims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phims_user_id_foreign` (`user_id`),
  ADD KEY `phims_dotuoi_id_foreign` (`dotuoi_id`);

--
-- Chỉ mục cho bảng `quyens`
--
ALTER TABLE `quyens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `the_loais`
--
ALTER TABLE `the_loais`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `the_loai_phims`
--
ALTER TABLE `the_loai_phims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `the_loai_phims_theloai_id_foreign` (`theloai_id`),
  ADD KEY `the_loai_phims_phim_id_foreign` (`phim_id`);

--
-- Chỉ mục cho bảng `thichs`
--
ALTER TABLE `thichs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diem_bai_dangs_user_id_foreign` (`user_id`),
  ADD KEY `diem_bai_dangs_baidang_id_foreign` (`baidang_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_goidangky_id_foreign` (`goidangky_id`),
  ADD KEY `users_quyen_id_foreign` (`quyen_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bai_dangs`
--
ALTER TABLE `bai_dangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danh_gias`
--
ALTER TABLE `danh_gias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `do_tuois`
--
ALTER TABLE `do_tuois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `goi_dang_kys`
--
ALTER TABLE `goi_dang_kys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loai_bai_dangs`
--
ALTER TABLE `loai_bai_dangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `phims`
--
ALTER TABLE `phims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `quyens`
--
ALTER TABLE `quyens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `the_loais`
--
ALTER TABLE `the_loais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `the_loai_phims`
--
ALTER TABLE `the_loai_phims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thichs`
--
ALTER TABLE `thichs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bai_dangs`
--
ALTER TABLE `bai_dangs`
  ADD CONSTRAINT `bai_dangs_loaibd_id_foreign` FOREIGN KEY (`loaibd_id`) REFERENCES `loai_bai_dangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bai_dangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `binh_luans_baidang_id_foreign` FOREIGN KEY (`baidang_id`) REFERENCES `bai_dangs` (`id`),
  ADD CONSTRAINT `binh_luans_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `binh_luans` (`id`),
  ADD CONSTRAINT `binh_luans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `danh_gias`
--
ALTER TABLE `danh_gias`
  ADD CONSTRAINT `danh_gias_phim_id_foreign` FOREIGN KEY (`phim_id`) REFERENCES `phims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `danh_gias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `phims`
--
ALTER TABLE `phims`
  ADD CONSTRAINT `phims_dotuoi_id_foreign` FOREIGN KEY (`dotuoi_id`) REFERENCES `do_tuois` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `the_loai_phims`
--
ALTER TABLE `the_loai_phims`
  ADD CONSTRAINT `the_loai_phims_phim_id_foreign` FOREIGN KEY (`phim_id`) REFERENCES `phims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `the_loai_phims_theloai_id_foreign` FOREIGN KEY (`theloai_id`) REFERENCES `the_loais` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thichs`
--
ALTER TABLE `thichs`
  ADD CONSTRAINT `diem_bai_dangs_baidang_id_foreign` FOREIGN KEY (`baidang_id`) REFERENCES `bai_dangs` (`id`),
  ADD CONSTRAINT `diem_bai_dangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_goidangky_id_foreign` FOREIGN KEY (`goidangky_id`) REFERENCES `goi_dang_kys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_quyen_id_foreign` FOREIGN KEY (`quyen_id`) REFERENCES `quyens` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
