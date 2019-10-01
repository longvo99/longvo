-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2019 lúc 04:37 AM
-- Phiên bản máy phục vụ: 10.1.39-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dragon_coffee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `administrators`
--

INSERT INTO `administrators` (`id`, `name`, `gender`, `phone`, `address`, `gmail`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'Nam', '0123456789', 'Đại Lộc, QNam', 'longcuto@gmail.com', 'admin', '123456', 'admin'),
(2, 'Hải', 'Nam', '0365141789', 'Nguyễn Như Hạnh, ĐN', 'haintde130138@gmail.com', 'haint', '123456', 'user'),
(3, 'quyền', 'Nữ', '0808350814', 'Trung Quôc', 'quyenbede@gmail.com', 'quyenkhoaito', '123456', 'shipper');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `quantity` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Cà phê Việt'),
(2, 'Cà phê Thế Giới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` int(50) NOT NULL,
  `username` int(50) NOT NULL,
  `password` int(32) NOT NULL,
  `gender` int(3) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `username`, `password`, `gender`, `phone`, `address`, `point`) VALUES
(1, 0, 0, 123456, 0, 765574951, 'Hòa Khánh, Đà Nẵng', 0),
(2, 0, 0, 123456, 0, 987456874, 'Thanh Khê, Đà Nẵng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `warehouse` int(3) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `preview`, `img`, `price`, `warehouse`, `id_type`) VALUES
(13, 'Cà phê trứng', 'Cà phê Trứng được chọn lọc kỹ lưỡng từ vù...', 'Cà phê Trứng được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '1', 50000, 50, 1),
(14, 'Cà phê đen', 'Những hạt cà phê được chọn lọc kỹ lưỡng từ...', 'Những hạt cà phê được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '2', 50000, 50, 1),
(15, 'Cà phê sữa', 'Cà phê sữa được chọn lọc kỹ lưỡng từ vùng...', 'Cà phê sữa được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '3', 60000, 50, 1),
(16, 'Bạc xỉu', 'Bạc sỉu được chọn lọc kỹ lưỡng từ vùng đất...', 'Bạc sỉu được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '4', 60000, 50, 1),
(17, 'Cà phê rang xây', 'Bột cà phê nguyên chất xốp nhẹ, có khối lượng...', 'Bột cà phê nguyên chất xốp nhẹ, có khối lượng riêng thấp, nên có khuynh hướng nổi lên trên, còn bột của các hạt ngũ cốc khác có khối lượng riêng lớn hơn , nên chìm xuống nhanh hơn.', '5', 80000, 50, 1),
(18, 'Cà phê Cappuccino', 'Cà phê Cappuccino được chọn lọc kỹ lưỡng từ...', 'Cà phê Cappuccino được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '6', 200000, 50, 2),
(19, 'Cà phê Americano', 'Cà phê Americano được chọn lọc kỹ lưỡng từ...', 'Cà phê Americano được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '7', 150000, 50, 2),
(20, 'Cà phê Espresso', 'Cà phê Espresso được chọn lọc kỹ lưỡng từ...', 'Cà phê Espresso được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '8', 150000, 50, 2),
(21, 'Cà phê mocha', 'Cà phê mocha được chọn lọc kỹ lưỡng từ vùng...', 'Cà phê mocha được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '9', 80000, 50, 2),
(22, 'Cà phê Latte', 'Cà phê Latte được chọn lọc kỹ lưỡng từ vùng...', 'Cà phê Latte được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '10', 130000, 50, 2),
(23, 'Cà phê Matchapresso', 'Cà phê Matchapresso được chọn lọc kỹ lưỡn...', 'Cà phê Matchapresso được chọn lọc kỹ lưỡng từ vùng đất đỏ bazan Buôn Mê Thuột; sau đó trải qua quá trình sàng lọc, rang xay dưới sự kiểm soát nghiêm ngặt về nhiệt độ và thời gian để đạt đến đỉnh cao của mùi thơm, độ nở và hương vị riêng biệt. Sự hài hòa trong tỷ lệ pha trộn giữa hạt cà phê Robusta và Arabica mang đến cho khách hàng những ly cà phê pha máy – kiểu Ý nhưng vẫn đậm đà bản sắc và đặc trưng của văn hóa nước Việt Nam.', '11', 100000, 50, 2),
(24, 'Cacao sữa đá cà phê', 'Có lẽ cacao được rất nhiều người ưa chuộng...', 'Có lẽ cacao được rất nhiều người ưa chuộng bởi đây là một món đồ uống có hương vị ngọt ngào. mê hoặc cả những thực khách khó tính nhất. Nếu vào mùa đông lạnh giá bạn được thưởng thức một ly cacao nóng thì còn gì sung sướng bằng. Nhưng với món đồ uống này, cacao đã trở thành một tuyệt tác của mùa hè!', '12', 90000, 50, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
