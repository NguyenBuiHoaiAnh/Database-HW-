CREATE DATABASE `demo` ;

USE `demo` ;

-- Table structure for table `architect`
--

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `architect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `birthday` int(4) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '0' COMMENT '1: Name - 0: Nữ',
  `place` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `architect`
--

INSERT INTO `architect` (`id`, `name`, `birthday`, `sex`, `place`, `address`) VALUES
(1, 'le thanh tung', 1956, 1, 'tp hcm', '25 duong 3/2 tp bien hoa'),
(2, 'le kim dung', 1952, 0, 'ha noi', '18/5 phan van tri tp can tho'),
(3, 'nguyen anh thu', 1970, 0, 'new york', 'khu 2 dhct tp can tho'),
(4, 'nguyen song do quyen', 1970, 0, 'can tho', '73 tran hung dao tp hcm'),
(5, 'truong minh thai', 1950, 1, 'paris france', '12/2/5 tran phu tp hanoi'),
(6, 'do tuan diep', '1952', 1, 'ha noi', 'KTV top 1 ha noi');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE IF NOT EXISTS `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `start` date DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `contractor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `name`, `address`, `city`, `cost`, `start`, `host_id`, `contractor_id`) VALUES
(1, 'khach san quoc te', '5 nguyen an ninh', 'can tho', 450, '1994-12-13', 1, 1),
(2, 'cong vien thieu nhi', '100 nguyen thai hoc	', 'can tho', 200, '1994-05-08', 2, 1),
(3, 'hoi cho nong nghiep', 'bai cat', 'vinh long', 1000, '1994-06-10', 1, 1),
(4, 'truong mg mang non', '48 cm thang 8', 'can tho', 30, '1994-07-10', 3, 3),
(5, 'khoa trong trot dhct', 'khu ii dhct	', 'can tho', 3000, '1994-06-19', 4, 3),
(6, 'van phong bitis', '25 phan dinh phung', 'ha noi', 40, '1994-05-10', 5, 3),
(7, 'nha rieng 1', '124/5 nguyen trai', 'tp hcm', 65, '1994-11-15', 6, 2),
(8, 'nha rieng 2', '76 chau van liem', 'ha noi', 200, '1994-06-09', 7, 4),
(9, 'toa nha ptit', '33 dai mo', 'ha noi', 5000, '1994-06-09', 7, 4),
('10', 'KTV top 1', '30 bui thi xuan', 'ha noi', '4500', '1994-07-09', '6', '2');

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE IF NOT EXISTS `contractor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`id`, `name`, `phone`, `address`) VALUES
(1, 'cty xd so 6', '567456', '5 phan chu trinh'),
(2, 'phong dich vu so xd', '206481', '2 le van sy'),
(3, 'le van son', '028374', '12 tran nhan ton'),
(4, 'tran khai hoan', '658432', '20 nguyen thai hoc');

-- --------------------------------------------------------

--
-- Table structure for table `design`
--

CREATE TABLE IF NOT EXISTS `design` (
  `building_id` int(11) NOT NULL,
  `architect_id` int(11) NOT NULL,
  `benefit` float DEFAULT NULL,
  PRIMARY KEY (`building_id`,`architect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `design`
--

INSERT INTO `design` (`building_id`, `architect_id`, `benefit`) 
VALUES
(1, 1, 25),
(1, 5, 12),
(2, 4, 6),
(3, 3, 12),
(4, 2, 20),
(5, 5, 30),
(6, 2, 40),
(6, 5, 27),
(7, 1, 10),
(8, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE IF NOT EXISTS `host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`id`, `name`, `address`) VALUES
(1, 'so t mai du lich', '54 xo viet nghe tinh'),
(2, 'so van hoa thong tin', '101 hai ba trung'),
(3, 'so giao duc', '29 duong 3/2'),
(4, 'dai hoc can tho', '56 duong 30/4'),
(5, 'cty bitis', '29 phan dinh phung'),
(6, 'nguyen thanh ha', '45 de tham'),
(7, 'phan thanh liem', '48/6 huynh thuc khan');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE IF NOT EXISTS `work` (
  `building_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `total` int(4) DEFAULT NULL,
  PRIMARY KEY (`building_id`,`worker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`building_id`, `worker_id`, `date`, `total`) VALUES
(1, 1, '1994-12-15', 5),
(1, 3, '1994-12-18', 6),
(1, 6, '1994-09-14', 7),
(2, 1, '1994-05-08', 20),
(2, 4, '1994-05-10', 10),
(2, 5, '1994-12-16', 5),
(3, 4, '1994-10-06', 10),
(3, 7, '1994-10-06', 18),
(4, 1, '1994-09-07', 20),
(4, 6, '1994-05-12', 7);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE IF NOT EXISTS `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `birthday` int(4) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `skill` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `name`, `birthday`, `year`, `skill`) VALUES
(1, 'nguyen thi suu', 1945, 1960, 'ho'),
(2, 'vi chi a', 1966, 1987, 'moc'),
(3, 'le manh quoc', 1956, 1971, 'son'),
(4, 'vo van chin', 1940, 1952, 'dien'),
(5, 'le quyet thang', 1954, 1974, 'han'),
(6, 'nguyen hong van', 1950, 1970, 'dien'),
(7, 'dang van son', 1948, 1965, 'dien');


-- ALTER TABLE `design` 
-- ADD INDEX `architect_id_idx` (`architect_id` ASC) VISIBLE;

-- EX-02

ALTER TABLE `design` 
ADD CONSTRAINT `fk_design_architect`
  FOREIGN KEY (`architect_id`)
  REFERENCES `architect` (`id`)
  ON DELETE CASCADE ;
 
ALTER TABLE `design` 
DROP FOREIGN KEY `building_id`; 
-- --------------------------------------------
ALTER TABLE `design` 
ADD CONSTRAINT `fk_design_building`
  FOREIGN KEY (`building_id`)
  REFERENCES `demo`.`building` (`id`)
  ON DELETE CASCADE ;
  
ALTER TABLE `work` 
ADD CONSTRAINT `work_building_id`
  FOREIGN KEY (`building_id`)
  REFERENCES `building` (`id`)
  ON DELETE CASCADE,
  
ADD CONSTRAINT `work_worker_id`
  FOREIGN KEY (`worker_id`)
  REFERENCES `worker` (`id`)
  ON DELETE CASCADE
;

ALTER TABLE `work` 
DROP FOREIGN KEY `building_id`; 

ALTER TABLE `building` 
ADD CONSTRAINT `building_contractor_id`
  FOREIGN KEY (`contractor_id`)
  REFERENCES `contractor` (`id`)
  ON DELETE CASCADE,
ADD CONSTRAINT `building_host_id`
  FOREIGN KEY (`host_id`)
  REFERENCES `host` (`id`)
  ON DELETE CASCADE;
  
-- EX-03

SELECT * FROM `building`
WHERE `cost` = (SELECT MAX(`cost`) FROM `building`) ;

SELECT * FROM `building`
WHERE `cost` > ALL (
	SELECT `cost` FROM `building`
    WHERE `city` = 'can tho'
);

SELECT * FROM `building`
WHERE `city` <> 'can tho' AND `cost` > ANY (
	SELECT `cost` FROM `building`
    WHERE `city` = 'can tho'
);  

-- Hiển thị thông tin công trình chưa có kiến trúc sư thiết kế

SELECT * FROM `building`
WHERE `id` NOT IN ( 
SELECT DISTINCT `building_id` FROM `design` 
) ;

-- Hiển thị thông tin các kiến trúc sư cùng năm sinh
-- và cùng nơi tốt nghiệp

SELECT * FROM `architect`
WHERE (birthday, place) IN (
SELECT birthday, place FROM `architect` 
GROUP BY birthday, place 
HAVING COUNT(id) > 1
);

-- Ex4

-- Hiển thị thù lao trung bình của từng kiến trúc sư

SELECT architect_id, AVG(`benefit`) FROM `design`
GROUP BY architect_id ;

-- Lấy thông tin (tên gọi) của kiến trúc sư 
-- từ bảng architect 
-- --> Lấy thông tin từ 2 bảng 
--   - Bảng design (thông tin benefit trung bình)
--   - bange architect (thông tin tên gọi của architect)

SELECT a.`name`, AVG(d.`benefit`) 
FROM `architect` AS a
INNER JOIN `design` AS d
ON a.`id` = d.`architect_id`
GROUP BY d.`architect_id` ;

-- Hiển thị chi phí đầu tư cho các công trình ở mỗi thành phố

SELECT city, SUM(cost) FROM building
GROUP BY city ;

-- Tìm các công trình có chi phí trả cho kiến trúc sư lớn hơn 50
-- B1: Tính tổng benefit của các building (design)
-- nhóm theo building_id để biết mỗi building đc thiết kế 
-- mất bao nhiêu tiền (benefit )

-- B2: Cần lấy thông tin về building (building)
--  --> Lấy thông tin từ 2 bảng 
--    - Bảng building ( Lấy thông tin về name ... ) 
--    - Bảng design ( Lấy thông tin )

SELECT * FROM design ;
SELECT building_id, SUM(benefit) FROM design
GROUP BY building_id
HAVING SUM(benefit) > 50 ;

SELECT b.`name`, SUM(d.`benefit`) 
FROM `building` AS b
INNER JOIN `design` AS d
ON d.`building_id` = b.`id`
GROUP BY d.`building_id`
HAVING SUM(d.`benefit`) > 50 ;

-- Tìm các thành phố có ít nhất 2 kiến trúc sư tốt nghiệp

SELECT DISTINCT `place`
FROM `architect`
GROUP BY `place`
HAVING COUNT(id) >= 2;

-- Hiển thị tên công trình, tên chủ nhân và tên chủ thầu của công trình đó

SELECT b.`name`, h.`name`, c.`name` 
FROM `building` AS b
INNER JOIN `host` AS h 
INNER JOIN `contractor` AS c 
ON b.`host_id` = h.`id` AND b.`contractor_id` = c.`id`
;

-- Hiển thị tên công trình (building), tên kiến trúc sư (architect) và thù lao của kiến trúc sư ở mỗi công trình (design)
SELECT b.`name`, a.`name`, d.`benefit`
FROM `building` AS b
INNER JOIN `architect` AS a 
INNER JOIN `design` AS d
ON b.`id` = d.`architect_id` AND b.`id` = a.`id` ;

-- Hãy cho biết tên và địa chỉ công trình (building) do chủ thầu Công ty xây dựng số 6 thi công (contractor)
SELECT * FROM `contractor` ;

SELECT b.`name`,b.`address`,c.`name`
FROM `building` AS b
INNER JOIN `contractor` AS c
	ON c.`id` = b.`contractor_id` 
	WHERE c.`name` = 'cty xd so 6';

-- Tìm tên và địa chỉ liên lạc của các chủ thầu (contractor) thi công công trình ở Cần Thơ (building)
-- do kiến trúc sư Lê Kim Dung thiết kế (architect, design)
SELECT * FROM `contractor`;
-- ------------
SELECT c.`name`, c.`address` 
FROM `contractor` AS c
INNER JOIN 
	`building` AS b ON c.`id` = b.`contractor_id`
INNER JOIN 
	`design` AS d ON d.`building_id` = b.`id`
INNER JOIN 
	`architect` AS a ON a.`id` = d.`architect_id`
WHERE (
	b.`city` = 'can tho' 
    AND a.`name` = 'le kim dung'
);

-- Hãy cho biết nơi tốt nghiệp của các kiến trúc sư (architect) 
-- đã thiết kế (design) công trình Khách Sạn Quốc Tế ở Cần Thơ (building)

SELECT * FROM `building` ;

SELECT a.`name`, a.`place` 
FROM `architect` AS a
INNER JOIN 
	`design` AS d ON d.`architect_id` = a.`id`
INNER JOIN 
	`building` AS b ON b.`id` = d.`building_id`
WHERE b.`name` = 'khach san quoc te' AND b.`city` = 'can tho' ; 

-- Cho biết họ tên, năm sinh, năm vào nghề 
-- của các công nhân có chuyên môn hàn hoặc điện (worker) 
-- đã tham gia các công trình (work) 
-- mà chủ thầu Lê Văn Sơn (contractor) đã trúng thầu (building)

SELECT wk.`name`, wk.`birthday`, wk.`year` 
FROM `worker` AS wk
INNER JOIN 
	`work` AS w ON w.`worker_id` = wk.`id`
INNER JOIN 
	`building` AS b ON w.`building_id` = b.`id`
INNER JOIN 
	`contractor` AS c ON c.`id` = b.`contractor_id`
WHERE (
	(wk.`skill` = 'dien' 
    OR wk.`skill` = 'han')
    AND c.`name` = 'le van son'
) ;

-- Cho biết họ tên và năm sinh 
-- của các kiến trúc sư đã tốt nghiệp ở TP Hồ Chí Minh (architect) 
-- và đã thiết kế ít nhất một công trình (design) 
-- có kinh phí đầu tư trên 400 triệu đồng (building)

SELECT a.`name`, a.`birthday` 
FROM `architect` AS a
INNER JOIN 
	`design` AS d ON a.`id` = d.`architect_id`
INNER JOIN 
	`building` AS b ON d.`building_id` = b.`id`
WHERE (
	a.`place` = 'tp hcm'
    AND b.`cost` > 400
);

-- Cho biết tên công trình có kinh phí cao nhất

SELECT `name` FROM `building` 
WHERE `cost` = (SELECT MAX(`cost`) FROM `building`);

-- Cho biết tên các kiến trúc sư (architect) 
-- vừa thiết kế các công trình (design) 
-- do Phòng dịch vụ sở xây dựng (contractor) 
-- thi công vừa thiết kế các công trình do chủ thầu Lê Văn Sơn thi công

SELECT a.`name`
FROM `architect` AS a
INNER JOIN 
	`design` AS d ON d.`architect_id` = a.`id`
INNER JOIN 
	`building` AS b ON d.`building_id` = b.`id`
INNER JOIN 
	`contractor` AS c ON c.`id` = b.`contractor_id`
WHERE (
	c.`name` = 'phong dich vu so xd'
    AND c.`name` = 'le van son'
);

-- Cho biết họ tên các công nhân (worker)
-- có tham gia (work) 
-- các công trình ở Cần Thơ (building)
-- nhưng không có tham gia công trình ở Vĩnh Long

SELECT wk.`name` 
FROM `worker` AS wk
INNER JOIN 
	`work` AS w ON wk.`id` = w.`worker_id`
INNER JOIN 
	`building` AS b ON b.`id` = w.`building_id`
WHERE (
	b.`city` = 'can tho'
    AND b.`city` NOT IN (
    SELECT `city` FROM `building`
    WHERE `city` = 'vinh long')
);

-- Cho biết tên của các chủ thầu đã thi công các công trình có kinh phí lớn hơn 
-- tất cả các công trình do chủ thầu phòng Dịch vụ Sở xây dựng thi công

SELECT DISTINCT c.`name` 
FROM `contractor` AS c
INNER JOIN 
	`building` AS b ON b.`contractor_id` = c.`id` 
WHERE (
	b.`cost` > ALL (SELECT b1.`cost` 
    FROM `building` AS b1
    INNER JOIN `contractor` AS c1 
    ON b1.`contractor_id` = c1.`id` 
    WHERE (c1.`name` = 'phong dich vu so xd')
    )
) ;


-- Cho biết họ tên các kiến trúc sư 
-- có thù lao thiết kế một công trình nào đó 
-- dưới giá trị trung bình thù lao thiết kế cho một công trình

SELECT a.`name`
FROM `architect` AS a
INNER JOIN 
	`design` AS d ON d.`architect_id` = a.`id`
INNER JOIN 
	`building` AS b ON b.`id` = d.`building_id`
WHERE (
	d.`benefit` < (SELECT AVG(`benefit`) FROM `design`)
);


-- Tìm tên và địa chỉ những chủ thầu đã trúng thầu công trình có kinh phí thấp nhất

SELECT c.`name`, c.`address` 
FROM `contractor` AS c 
INNER JOIN 
	`building` AS b ON b.`contractor_id` = c.`id`
WHERE `cost` = (SELECT MIN(`cost`) FROM `building`) 
;

-- Tìm họ tên và chuyên môn của các công nhân (worker) 
-- tham gia (work) các công trình do kiến trúc sư Le Thanh Tung thiet ke (architect) (design)

SELECT wk.`name`, wk.`skill` 
FROM `worker` AS wk
INNER JOIN 
	`work` AS w ON w.`worker_id` = wk.`id`
INNER JOIN
	`building` AS b ON b.`id` = w.`worker_id`
INNER JOIN 
	`design` AS d ON d.`building_id` = b.`id`
INNER JOIN
	`architect` AS a ON a.`id` = d.`architect_id`
WHERE (
	a.`name` = 'le thanh tung'
) ;


-- Tìm các cặp tên của chủ thầu 
-- có trúng thầu các công trình tại cùng một thành phố

-- Tìm tổng kinh phí của 
-- tất cả các công trình theo từng chủ thầu

SELECT c.`name` AS `Cặp tên của chủ thầu`,
	SUM(b.`cost`) AS `Tổng kinh phí`
FROM `building` AS b
INNER JOIN 
	`contractor` AS c ON c.`id` = b.`contractor_id`
GROUP BY c.`name` ;

-- Cho biết họ tên các kiến trúc sư 
-- có tổng thù lao thiết kế các công trình lớn hơn 25 triệu

SELECT a.`name` 
FROM `architect` AS a
INNER JOIN 
	`design` AS d ON d.`architect_id` = a.`id`
GROUP BY a.`name`
HAVING (
	SUM(`benefit`) > 25
) ;

-- Cho biết số lượng các kiến trúc sư 
-- có tổng thù lao thiết kế các công trình lớn hơn 25 triệu

SELECT COUNT(*) AS `Số lượng các kiến trúc sư`
FROM (
	SELECT d.`architect_id` 
    FROM `design` AS d
    GROUP BY d.`architect_id`
    HAVING SUM(d.`benefit`) > 25
) AS ds;


-- Tìm tổng số công nhân đã tham gia ở mỗi công trình

SELECT b.`name`, COUNT(wk.`id`) AS 'Số công nhân đã tham gia ở mỗi công trình'
FROM `worker` AS wk
INNER JOIN 
	`work` AS w ON w.`worker_id` = wk.`id`
INNER JOIN
	`building` AS b ON b.`id` = w.`building_id`
GROUP BY b.`name` ;


-- Tìm tên và địa chỉ 
-- công trình có tổng số công nhân tham gia nhiều nhất
-- ??????

SELECT b.`name`, b.`address`
FROM `building` AS b
INNER JOIN 
	`work` AS w ON w.`building_id` = b.`id`
GROUP BY b.`id` ;


-- Cho biêt tên các thành phố và kinh phí trung bình 
-- cho mỗi công trình của từng thành phố tương ứng

SELECT b.`city`, AVG(`cost`) 
FROM `building` AS b
GROUP BY b.`city` ;


-- Cho biết họ tên các công nhân 
-- có tổng số ngày tham gia vào các công trình 
-- lớn hơn tổng số ngày tham gia của công nhân Nguyễn Hồng Vân

SELECT wk.`name`, COUNT(w.`date`)
FROM `worker` AS wk
INNER JOIN 
	`work` AS w ON w.`worker_id` = wk.`id`
;


-- Cho biết tổng số công trình 
-- mà mỗi chủ thầu đã thi công tại mỗi thành phố

SELECT b.`city`, COUNT(b.`id`) 
FROM `building` AS b
GROUP BY b.`city` ;


-- Cho biết họ tên công nhân có tham gia ở tất cả các công trình

SELECT wk.`name` 
FROM `worker` AS wk
INNER JOIN 
	`work` AS w ON w.`worker_id` = wk.`id`
GROUP BY wk.`id`, wk.`name`
HAVING COUNT(w.`building_id`) = (SELECT COUNT(*) FROM `building`)
;
