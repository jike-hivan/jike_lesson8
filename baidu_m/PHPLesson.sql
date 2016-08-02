-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: 2016-06-22 07:40:17
-- 服务器版本： 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `PHPLesson`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `newsid` int(11) NOT NULL COMMENT '自动增长',
  `newstitle` varchar(100) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newscontent` text NOT NULL,
  `addtime` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='新闻表';

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`newsid`, `newstitle`, `newsimg`, `newscontent`, `addtime`) VALUES
(41, '习近平出席波兰总统的欢迎仪式', 'http://e.hiphotos.baidu.com/news/q%3D100/sign=694194ec4b166d223e77119476220945/cb8065380cd79123ab678753a5345982b2b78015.jpg', '6月17日至24日，习近平对塞尔维亚、波兰和乌兹别克斯坦进行国事访问，并出席上合组织成员国元首理事会第十六次会议。', '2016-06-21'),
(66, '直播：快播上诉不服2.6亿罚单', 'http://h.hiphotos.baidu.com/news/q%3D100/sign=91b949a342ed2e73fae9822cb700a16d/730e0cf3d7ca7bcbad856108b6096b63f624a81f.jpg', '深圳市快播科技有限公司诉深圳市市场监督管理局有关2.6亿罚款一案，今天上午9点在广东高院公开开...', '2016-06-22'),
(67, '[欧洲杯]威尔士头名晋级 英格兰失小组第一', 'http://a.hiphotos.baidu.com/news/q%3D100/sign=48d37ced593d269728d30c5d65fbb24f/11385343fbf2b2117b2cc469c28065380cd78e93.jpg', '威尔士3战2胜1负，小组头名出线，俄罗斯小组垫底出局。拉姆塞、泰勒、贝尔先后进球。贝尔三场小组...', '2016-06-22'),
(68, '骑士全队赴赌城庆夺冠 球迷接机盼英雄回归克城 ', 'http://t12.baidu.com/it/u=http://www.tiqiu.com/uploads/allimg/160525/44-1605251113380-L.jpg&fm=36', '', '2016-06-22'),
(69, '湖南高院领导被曝多次上班时间与不同女子开房', 'http://t10.baidu.com/it/u=http://upload.morningpost.com.cn/2016/0620/1466433684876.jpg&fm=37', '', '2016-06-22'),
(70, '首位告别欧洲杯的巨星!不舍脚拉提琴的骚情', 'https://goal.baidu.com/icms/di/library/GOAL/4/21/tomas-rosicky-tschechien-13062016_aqrk6x6mpbk71uxfpx5txcprj.jpg?t=1301443765&w=480&h=360', ' 鲜衣怒马，再见罗萨。从04年青春风暴，到如今老兵不死。罗西基，感谢你带给我们这么多值得回味的美好…                ', '2016-06-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`),
  ADD KEY `newstitle` (`newstitle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',AUTO_INCREMENT=71;