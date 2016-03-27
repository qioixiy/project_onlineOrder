-- phpMyAdmin SQL Dump
-- version 3.3.10
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2016 年 03 月 27 日 13:55
-- 服务器版本: 5.1.56
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wldc`
--
CREATE DATABASE `wldc` DEFAULT CHARACTER SET gb2312 COLLATE gb2312_chinese_ci;
USE `wldc`;

-- --------------------------------------------------------

--
-- 表的结构 `can_ting`
--

CREATE TABLE IF NOT EXISTS `can_ting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '餐厅id',
  `name` varchar(20) NOT NULL COMMENT '餐厅的名字',
  `addr` varchar(20) NOT NULL COMMENT '餐厅的位置',
  `tel` varchar(11) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='餐厅信息' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `can_ting`
--


-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT '#',
  `ip` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT '#',
  `qq` varchar(20) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `content` text,
  `xm` varchar(20) DEFAULT 'none',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `url`, `ip`, `email`, `qq`, `date`, `content`, `xm`) VALUES
(17, '', '0:0:0:0:0:0:0:1', '@', '4', '2016年03月06日 11点39分', '超出预期的好吃哟。本以为素食清淡寡味，都有想换地方的冲动，谁吃一尝竟也觉得很不错。味道好又健康，推荐！ ', '4'),
(16, '', '0:0:0:0:0:0:0:1', '@', '3', '2016年03月06日 11点25分', '来这边吃饭才发现宝宝真的没有瘦的想法了。。所有的菜都是蔬菜，所有的菜都没有味道。。真的不适合我。', '3'),
(14, '', '0:0:0:0:0:0:0:1', '@', '1', '2016年03月06日 11点42分', '喜欢在不同的环境下做出不一样的体验，就像月光照耀在不同人的身影会折射出不同的光彩，而选择这样的环境去享受另类的美食本身就是一种感知世界的过程，与世界相连，通过感知，你会得到远比你想象的要多的回馈，选择就是如此的简单，却又时刻透露着复杂性。 ', '1'),
(18, '', '0:0:0:0:0:0:0:1', '@', '5', '2016年03月06日 11点54分', '八点十五也不算晚啊，冷冷清清的。就我们一拨客人，上菜也超级慢的。味道还是不错的', '5'),
(19, '', '0:0:0:0:0:0:0:1', '@', '6', '2016年03月06日 11点06分', '素食中的西餐厅，真的比较西，不是我爱吃的类型，不知道是怎么排名到素食餐厅的第二的，还没有素食汇好吃了，有点食不知味的感觉，不过营养还是比较全面的，这一点值得表扬。只是口味很淡，我以为我的口味已经很淡了。果汁很好喝。 ', '6'),
(20, '', '0:0:0:0:0:0:0:1', '@', '7', '2016年03月06日 11点21分', '继续陪太太搜寻素食，这次是上海的素宿。就在利兹卡尔顿边上。由于是西方的素食风格，口味一时难以适应。不过环境简单明了，菜单标明的卡路里对于我这种健身强迫症者简直是福音。好了，就写这么多了，没有吃饱，出去大饼油条了。 ', '7');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timeout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `user`, `uuid`, `ts`, `timeout`) VALUES
(3, 'root', '5930aa1b-42e0-4810-806e-a041cf107cc7', '2016-03-20 13:01:06', '0000-00-00 00:00:00'),
(1, 'test', '1a6d0435-ecc6-4e96-8f18-e38b72fda239', '2016-03-19 12:21:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 COMMENT='管理员账户' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`id`, `username`, `level`) VALUES
(1, 'root', 1);

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '菜名',
  `style` varchar(16) NOT NULL DEFAULT '蔬菜' COMMENT '菜的类别',
  `price` float NOT NULL COMMENT '单价',
  `thumb` varchar(1024) NOT NULL DEFAULT '001.jpg',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `details` varchar(1024) NOT NULL COMMENT '菜单的详细说明，请注意填写',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `style`, `price`, `thumb`, `timestamp`, `details`) VALUES
(1, '干锅手撕包菜', '蔬菜', 5, '1.jpg', '2016-03-27 21:28:16', '包菜（牛心菜）、五花肉、干辣椒'),
(2, '鱼香肉丝', '荤菜', 7, '2.jpg', '2016-03-27 21:29:30', '瘦肉、黑木耳、胡萝卜、?椒、豆瓣酱，葱姜蒜、'),
(3, '糖醋排骨', '荤菜', 10, '3.jpg', '2016-03-27 21:30:58', '猪肋排、盐、料酒、酱油、冰糖、白醋、八角'),
(4, '干锅土豆片', '蔬菜', 6, '4.jpg', '2016-03-27 21:32:03', '土豆、豆瓣酱 | 姜，蒜，葱，辣椒、猪肉、香菇'),
(5, '蒜香蒸茄子', '蔬菜', 7, '5.jpg', '2016-03-27 21:32:46', '茄子、大蒜，生姜，青椒、生抽、料酒、鱼露'),
(6, '干锅菜花', '蔬菜', 6, '6.jpg', '2016-03-27 21:33:13', '菜花 | 五花肉、姜、蒜、辣椒、盐、酱油'),
(7, '酸辣土豆丝', '蔬菜', 5, '7.jpg', '2016-03-27 21:33:36', '土豆、青椒、干辣椒、花椒、姜、蒜、盐、鸡精、醋'),
(8, '家常菜 蚝油生菜', '蔬菜', 5, '8.jpg', '2016-03-27 21:35:05', '生菜、蚝油、白糖、生粉、清水 '),
(9, '糖醋里脊', '荤菜', 11, '9.jpg', '2016-03-27 21:35:37', '猪里脊、生粉 | 白糖、番茄酱、鸡蛋、姜、白胡椒粉'),
(10, '糖醋藕丁', '蔬菜', 6, '10.jpg', '2016-03-27 21:36:27', '藕、糖 | 葱花、老抽、盐、鸡精'),
(11, '红烧豆腐', '蔬菜', 7, '11.jpg', '2016-03-27 21:37:34', '豆腐、猪肉 | 葱、姜、蒜、豆瓣酱、生抽、老抽'),
(12, '白菜炖粉条', '蔬菜', 5, '12.jpg', '2016-03-27 21:39:31', '白菜、粉条 | 五花肉、香菇、葱、姜、八角、盐、鸡'),
(13, '麻辣香锅', '蔬菜', 13, '13.jpg', '2016-03-27 21:40:01', '莲藕、莴笋、土豆、菜花（小）、木耳、芹菜、大葱'),
(14, '番茄炒蛋', '蔬菜', 8, '14.jpg', '2016-03-27 21:42:20', '番茄、鸡蛋 | 盐、糖 ');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加日期',
  `data` mediumtext NOT NULL COMMENT '发布信息数据',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `data`) VALUES
(1, '习近平参加上海代表团审议', '2016-03-06 12:00:00', '3月5日，中共中央总书记、国家主席、中央军委主席习近平参加十二届全国人大四次会议上海代表团的审议。 新华社记者鞠鹏摄\r\n\r\n　　新华社北京3月5日电 中共中央总书记、国家主席、中央军委主席习近平5日下午在参加他所在的十二届全国人大四次会议上海代表团审议时强调，保持锐意创新的勇气、敢为人先的锐气、蓬勃向上的朝气，贯彻落实创新、协调、绿色、开放、共享的发展理念，着力加强全面深化改革开放各项措施系统集成，着力加快具有全球影响力的科技创新中心建设步伐，着力推进供给侧结构性改革，当好全国改革开放排头兵、创新发展先行者。\r\n\r\n　　上海代表团讨论气氛活跃、发言热烈。杨雄、李斌、金东寒、顾晋、邵志清、沈志刚、朱志远、奚美娟等8位代表分别就推进供给侧结构性改革、加强技工队伍建设、提升产学研合作实效、深化企业医院改革、推进社会信用体系建设、发展社区养老事业、加强文化事业青年人才队伍建设等问题发表意见。习近平边听边记，同代表们深入讨论。\r\n\r\n　　在认真听取代表发言后，习近平作了发言。他首先表示完全赞成政府工作报告，强调过去的5年是我国发展很不平凡的5年，全党全国各族人民团结一心、开拓创新，不畏艰险、顽强奋斗，全面推进经济建设、政治建设、文化建设、社会建设、生态文明建设和党的建设，我国经济实力、科技实力、国防实力又上了一个大台阶，我国人民生活水平又上了一个大台阶，我国国际地位和国际影响力又上了一个大台阶。\r\n\r\n　　习近平充分肯定一年来上海勇于改革攻坚、聚焦创新驱动取得的新成就。他强调，2016年是全面建成小康社会决胜阶段的开局之年，做好各项工作非常重要。他希望上海坚持以自由贸易试验区建设为突破口，全力深化改革攻坚，使自由贸易试验区建设百尺竿头、更进一步。自由贸易试验区建设的核心任务是制度创新。要深化完善基本体系，突破瓶颈、疏通堵点、激活全盘，率先形成法治化、国际化、便利化的营商环境，加快形成公平、统一、高效的市场环境。\r\n\r\n　　习近平指出，深化经济体制改革，核心是处理好政府和市场关系，使市场在资源配置中起决定性作用和更好发挥政府作用。这就要讲辩证法、两点论，“看不见的手”和“看得见的手”都要用好。关键是加快转变政府职能，该放给市场和社会的权一定要放足、放到位，该政府管的事一定要管好、管到位。\r\n\r\n　　习近平强调，创新发展理念首要的是创新。要抓住时机，瞄准世界科技前沿，全面提升自主创新能力，力争在基础科技领域作出大的创新、在关键核心技术领域取得大的突破。要以更加开放的视野引进和集聚人才，加快集聚一批站在行业科技前沿、具有国际视野的领军人才。要按照“三去一降一补”要求，加快产业结构调整，引导增量、优化存量、主动减量，加快培育新的经济增长点，全面提升上海实体经济发展能级和水平。\r\n\r\n　　习近平还就当前两岸关系发展发表了看法，他指出，上海及周边地区有不少台资企业，同台湾方面的人员往来和交流合作比较多。两岸同胞是命运与共的骨肉兄弟，是血浓于水的一家人。两岸同胞对推进两岸关系和平发展充满期待，我们不应让他们失望。\r\n\r\n　　习近平强调，我们对台大政方针是明确的、一贯的，不会因台湾政局变化而改变。我们将坚持“九二共识”政治基础，继续推进两岸关系和平发展。“九二共识”明确界定了两岸关系的性质，是确保两岸关系和平发展行稳致远的关键。承认“九二共识”的历史事实，认同其核心意涵，两岸双方就有了共同政治基础，就可以保持良性互动。我们将持续推进两岸各领域交流合作，深化两岸经济社会融合发展，增进同胞亲情和福祉，拉近同胞心灵距离，增强对命运共同体的认知。我们将坚决遏制任何形式的“台独”分裂行径，维护国家主权和领土完整，绝不让国家分裂的历史悲剧重演。这是全体中华儿女的共同心愿和坚定意志，也是我们对历史对人民的庄严承诺和责任。两岸关系和平发展成果需要两岸同胞共同维护，开创共同美好未来需要两岸同胞共同努力，实现中华民族伟大复兴需要两岸同胞携起手来同心干。\r\n\r\n　　中共中央政治局委员、上海市委书记韩正等参加审议。'),
(2, '李克强：2016年国内生产总值增长预期目标6.5%-7%', '2016-03-05 22:06:15', '【环球网综合报道】3月5日上午9时，十二届全国人大四次会议于今天上午9时在人民大会堂开幕，听取国务院总理李克强关于政府工作的报告，审查“十三五”规划纲要，审查计划报告，审查预算报告。\r\n\r\n　　李克强在政府工作报告中指出，2016年的主要预期目标是：国内生产总值增长6.5%-7%，居民消费价格涨幅3%左右，城镇新增就业1000万人以上，城镇登记失业率4.5%以内，进出口回稳向好，国际收支基本平衡，居民收入增长和经济增长基本同步。单位过你额上产总值能耗下降3.4%以上。主要污染物排放继续减少。'),
(3, '卫计委主任：感谢怒斥号贩子的女孩', '2016-03-05 22:06:42', '[国家卫计委主任李斌：感谢怒斥号贩子的女孩]国家卫计委主任李斌在部长通道表示：我要感谢怒斥号贩子的女孩，姑娘一声吼，推动了号贩子问题的解决'),
(4, '陕西铜川政府官员失联10天 警方:正全力查找', '2016-03-05 22:07:08', '法晚深度即时 昨日下午，法晚记者接到陕西省铜川市市民李女士、薛女士反映称，2月25日，其家人（铜川市机关事务管理局后勤服务处主任）王某与家中失去联系，2月29日，王某家属向陕西省铜川市新区公安分局报案。今日上午，法晚记者从当地警方获悉，警方目前正全力查找中。\r\n\r\n昨日下午，王某家属向法晚记者介绍称，2月25日晚上，王某没有回家吃饭，随后，家人给他打电话，但发现其电话已经关机。第二日，他们去往王某的工作单位询问其情况，但未联系到王某。直至2月29日，他们即向陕西省铜川市新区公安分局报案。\r\n\r\n随后，法晚记者在中国铜川政府网（2014年6月18日显示）了解到，王某为中共铜川市机关事务管理局后勤服务处主任。\r\n\r\n昨日下午，陕西省铜川市政府机关事务管理局工作人员向法晚记者表示，2月24日，他曾与王某一起下乡工作，并于当天下午回到单位。\r\n\r\n“前一天还好好的，第二天就找不到人了。”其工作人员还向法晚记者表示，2月25日，单位安排王某参加单位会议，然而，他们却一直联系不上王某。\r\n\r\n今日上午，法晚记者从当地警方获悉，警方正在全力查找中。\r\n'),
(5, '腾讯研究院：中国分享经济风潮全景解读', '2016-03-05 22:08:22', '3月3日，腾讯CEO马化腾在2016年两会期间提了一个大胆的预言：分享经济将成为促进经济增长的新动能。他认为，随着科技的发展，生产力和社会财富快速提升，经济过剩成为全球新问题。经济过剩带来了经济剩余资源，在企业层面体现为闲置库存和闲置产能，在个人层面则表现为闲置资金、物品和认知盈余。分享经济，恰恰是一种通过大规模盘活经济剩余而激发经济效益的经济形态。\r\n\r\n马化腾何以有此判断呢？因全球经济低迷，分享经济一枝独秀。\r\n\r\n从全球来看，分享经济已经成为服务业发展的引擎，也呈现出影响制造业发展的势头。这也是美英德法韩澳等经济体政府力推分享经济发展的动力所在。中共十八届五中全会公报明确指出“发展分享经济”,意味着分享经济正式列入党和国家的战略规划。\r\n\r\n对具备几千年历史的中国而言，历来并不缺少社会分享行为，然而，分享经济对国民经济却是个新生事物，比如在有关GDP的统计中，一直都找不到分享经济的准确数据，从某种角度来说，这意味着我国GDP增长可能被低估了。\r\n\r\n那么，中国分享经济发展在世界处于何种水平？分享经济为各行业带来哪些颠覆性创新？分享经济发展趋势如何？对于这股风潮，我们应该如何加强认识，进而推进有关行业健康发展？\r\n\r\n为此，腾讯研究院走访了许多企业，历时大半年，终于推出了《中国分享经济风潮全景解读报告》，从这股风潮背后的起源、现状、影响、问题、趋势等五个方面进行全局性解读，分析了分享经济风潮为中国经济社会带来的历史机遇和挑战，希望在客观总结的基础上，为上述问题进行一些前瞻性的探讨。\r\n一、 风潮源起\r\n究竟什么是分享经济？\r\n\r\n为了进行解读，我们首先得界定一下什么是分享经济。国内外众说纷纭，从便于研究的角度，腾讯研究院提出了一个定义，分享经济是公众将闲置资源通过社会化平台与他人分享，进而获得收入的经济现象。根据这个定义，我们解读分享经济的四个要素：\r\n\r\n第一个，公众??基本单位\r\n\r\n目前分享经济的参与主体主要是个人。随着分享经济的普及，参与主体也开始逐步由个体扩大到企业/政府等，因而笼统称为公众。\r\n\r\n第二个，闲置??资源属性\r\n\r\n分享资源是对于用户闲置物品和碎片化时间的剩余价值释放，主要包括未充分利用的实物资源和认知盈余两类。\r\n\r\n第三个，平台??规模化基础\r\n\r\n分享经济依托于互联网的先进技术，包括智能手机、在线支付、云计算、大数据和社交网络，将海量的供方资源和需求进行高效按需匹配，实现规模化的商业行为。\r\n\r\n第四个，收入??交易目的\r\n\r\n分享经济一种非公益性分享，供方和平台在分享过程中获取经济收益，不同于互联网常见的知识分享、开源软件分享、信息和数据分享等等。\r\n\r\n分享经济的发展日新月异，内涵也在不断丰富，这个定义也无法做到最完美的表述，但目前，能够解释我们看到的大多数现象。\r\n分享经济对宏观经济有什么意义？\r\n\r\n研究发现，分享经济能够助力供给侧改革，扩大消费需求，成为经济增长的新动能。据腾讯研究院初步估算，分享经济占国内第三产业增加值比例为3.15%。分享经济为服务业增长提供新动能，将服务业变成经济增长的“主引擎。我们试着从供给和需求两方面进行解读。\r\n\r\n第一，供给侧影响\r\n\r\n（1）扩大供给总量。分享经济通过重构无限量的存量资源，转化为能够提供经济和社会价值的产品或劳务。\r\n\r\n例如，分享经济一方面可以提升资源利用率，将闲置资金、资产和认知盈余等资源投入社会消费中，产生了新的价值。另一方面，扩大了供应面，过去生产供给以企业端为主，现在增加了个人端供给，大大提升了社会供给总量。\r\n\r\n（2）促进收入增长。个体参与到分享经济中，能够取得正常工作之外的额外收益。据腾讯研究院2015年调查，月收入提升的专车司机占比96.5%，收入提高30%以上的专车司机占比39.5%，收入提高10%以上专车司机占比78.1%。\r\n\r\n第二，需求侧影响\r\n\r\n（1）提升消费能力。分享经济有助于降低社会价格总水平，消费者参与分享经济，可以降低消费成本，提升消费者的实际购买力。分享经济平台通过供需方直接对接，免除复杂的手续和中介费用，降低交易成本。\r\n\r\n（2）培育新的消费增长点。分享经济通过将无限的社会存量供给，扩大消费者可选择空间，实现供需匹配，从而扩大社会总消费需求。以网络约租车为代表，并向二手交易、餐饮、房屋出租、家政服务等领域扩散，开创了互联网经济的新业态，都将成为拉动我国经济新的消费增长点。\r\n二、 风潮乍现：分享经济这场风潮是怎么刮起来呢？\r\n\r\n从全球来看，分享经济的发展可以划分为三个阶段，2007年前属于萌芽期，2007年后开始高速发展，2010-2014年爆发，出现井喷现象，2015年到现在，进入稳定期，但仍保持着稳步增长的态势。\r\n\r\n由上述发展历程可以看出，分享经济爆发，正值2008金融危机，当时，苹果公司2007年推出的iPhone智能手机也逐渐普及开来，两个元素一相逢，便胜却人间无数，分享经济就诞生了。\r\n\r\n由此可以看出，分享经济是应对经济低迷的，实质是一种经济的自我修复机制，是不是？\r\n\r\n1、原型期 ：2007年之前\r\n\r\n在互联网商业化发展初期，分享经济原型企业出现，例如在线二手交易Ebay于1995成立、在线影片租赁Netflix于1997年成立、在线雇佣Elance于1999年成立。2000年，汽车分时租赁鼻祖Zipcar成立。2005年P2P网贷公司Zopa成立，手工艺品共享网站Esty成立。这些企业的分享业务一直处于不温不火的状态，量小而分散，不成规模。大规模发展是接下来的事。\r\n\r\n2、高速成长期：2007-2014年\r\n\r\n2008美国金融危机大大催动了分享经济发展，分享经济平台迎来了爆发期。出行巨头Uber于2008年成立，短租巨头Airbnb于2009年成立，跑腿网站Taskrabbit于2009年成立，办公共享巨头wework成立于2010年，同城快递Postmate于2011年成立，全球首家食品共享网站Grub于2011年成立。其中，分享经济的初创企业在10年-14年进入爆发期，保持着将同比将近50%的增速发展。\r\n\r\n3、平稳期：2015-至今\r\n\r\n经过爆发式发展，海外分享经济于2014年进入平稳发展期，新增企业数量稍有回落，相比金融危机之前，仍保持着快速增长态势。\r\n中国分享经济进入黄金期\r\n\r\n分享经济在我国的发展晚于海外3年左右。许多分享经济企业2011年前后开始创建，2014年开始井喷，目前处于黄金期。\r\n\r\n2011年，我国分享经济企业起步，途家、蚂蚁短租、游天下等短租平台创建，短租行业建立。全国最大的P2P网站陆金所成立，P2P金融快速发展。医疗领域医生闲暇时间分享的春雨医生成立。个人音频自媒体蜻蜓FM成立，51talk跨国英语培训成立。\r\n\r\n2012年，现象级企业-滴滴成立，P2P租车平台PP租车进入市场。\r\n\r\n2013年，全国首家众包快递企业人人快递成立。众包家政服务e袋洗成立。\r\n\r\n2014年，2014年分享经济领域的新增企业数量同比增长3倍，分享经济在我国步入爆发期。在多个领域全面铺开：滴滴专车上线，拼车、租车多家企业创建，回家吃饭、觅食为代表的私厨起步，股权众筹起步，在行的达人分享模式出现，C2C二手车起步，办公共享出现，个人服务您说我办、河狸家等成立。\r\n\r\n2015年，分享经济继续保持着高速的发展，分享经济在我国正处于发展的黄金期。滴滴顺风车、巴士和代驾上线，网购二手交易APP?淘宝闲鱼、58转转、京东拍拍，百度外卖、美团外卖上线众包物流。\r\n黄金期：经济发展潜力巨大\r\n\r\n据腾讯研究院初步调研，2015年中国分享经济规模约为1644亿美元，占GDP的1.59%。英国分享经济2013年已占GDP的1.3%，并预测五年之内达到GDP的15%。美国分享经济2014年已经占到GDP的3%。\r\n\r\n分享经济2015年在全球的市场交易规模估测8100亿美元。对比英国和美国，分享经济在中国对于经济的整体拉动作用还存在较大发展空间，未来有望成为我国经济增长的新动能。\r\n黄金期：资本投入规模翻40倍\r\n\r\n资本市场对于分享经济高度关注，全球融资规模不断扩大。据Crowd Companies 统计，2008-2015年，全球分享经济企业融资交易次数达到800余次，融资总规模近270亿美元，年融资规模翻40倍。\r\n黄金期：社会普及潜力巨大\r\n\r\n分享经济使个人参与到社会化大生产中，促进了以创业者为主体的个体经济崛起，形成对大众创业、万众创新的有效推动。\r\n\r\n中国参与分享经济的人口规模庞大，但占总人口比重差距明显，普及率还有待提升\r\n\r\n?       参与分享经济的人口规模上，我国是英美两国之和的两倍，总规模达到3亿人以上。\r\n\r\n?       从分享经济参与者占总人口比重来看，中国只有22%，是加拿大和美国的一半，远远不及英国。\r\n黄金期的红利能享受多久？\r\n\r\n从前面分析可以看出，国内分享经济发展晚于国外3年左右，全球的分享经济进入平稳期，而国内的分享经济还在爆发之中。考虑到经济低迷，恢复周期漫长，我们认为，分享经济高速发展的势头在国内还会持续继续保持2-3年，此后将转入平稳发展之中。\r\n\r\n从长远来看，分享经济绝不是昙花一现，有能力打破互联网行业的“3年魔咒”。原因在于，分享经济是一种经济自我修复机制。在经济低迷时期，人们通过分享经济节约支出获取收入，这种带着绿色环保意识的做法一旦从社会消费行为转变为价值观念，就再也难以撼动。这意味着，分享经济还有广泛发展空间。\r\n\r\n我国GDP增速自2010年之后持续下行，2015年GDP增速收于6.9%，未来5年将保持新常态发展，正由较高增长转为中高速增长，传统拉动经济增长的三匹马车疲软，急需新的增长动能，分享经济发展大有可为。\r\n推动中国分享经济持续发展三大有利条件\r\n\r\n1、城镇化：\r\n\r\n城镇人口规模快速扩大，将突破城镇既有的服务承载能力，必需分享经济作为补充和替代。据联合国预测数据，至2050年发展中国家将有64.1％的人口、发达国家将有85.9％的人口为城市人口。\r\n\r\n随着城市化进程的加剧，人口的大量集中和流动，带来大量的需求，但传统行业受制于政策，有限供给资源难以满足，引发各类社会问题，例如“打车难”、“看病难”等。分享经济的实践，为解决这些社会问题提供了很好的思路和方案。\r\n\r\n2、老龄化：\r\n\r\n老年人存在大量闲置资源。据全国老龄办预测，我国未来20年加速老龄化发展，平均每年增1000万老年人，到2050年左右，老年人口将达到全国人口的三分之一。老年人具有丰富的经验和大量闲暇时间，并且普遍存在使用不足的情况，将来可以通过分享经济激活。\r\n\r\n3、习俗化：\r\n\r\n消费习俗逐渐形成。当越来越多的消费者已经习惯了手机打车的时候，人们很难退回到过去排队等车的模式中。同时，分享经济在传播一种绿色环保的价值观念。比如“使用而不占有”，从过度消费到够用即可”，“闲置就是浪费”等等，已经为消费者逐步接受。据PWC调研显示，美国分享经济下社会观念出现了转变。我们有理由相信，这种价值观念，在中国也会逐步形成。 \r\n三、 风潮影响\r\n分享经济开创互联网经济的新业态\r\n\r\n国内分享经济风潮，已经席卷10大主流行业，超过32个子领域，据腾讯研究院初步测算，按现有市场规模，分享经济10大主流行业，可分为三个梯队。这次不是洗牌，但是又要站队了！\r\n\r\n第一梯队：高速成长。\r\n\r\n主要是金融和出行领域，占据分享经济总体市场份额96%。独角兽企业包括滴滴快的、优步中国、陆金所、有利网和信而富。\r\n\r\n第二梯队：成长初期。\r\n\r\n包括短租、二手交易、专业/个人服务和众包物流，市场规模均接近百亿级别，占分享经济总体市场份额为3%左右。独角兽企业包括途家、猪八戒网和达达配送。\r\n\r\n第三梯队：萌芽期\r\n\r\n包括自媒体、教育共享、私厨、医疗共享等领域，规模均达亿元级别，占分享经济总体市场份额为1%左右。独角兽企业包括唱吧、沪江网、VIPABC和好大夫在线。\r\n分享经济带来的十大新现象\r\n\r\n1、闲置资金分享，中美发展极不相称。比如，从规模来看，P2P网络借贷占据中国分享经济市场总量的92%，但美国仅为为4%。P2P借贷美国两家公司主导，高度集中，中国有3千多家，相对分散，而且问题多多。中国P2P借贷公司已经达到3491家。其中，前五家P2P仅占市场份额约20%，市场集中度不高；问题平台896家，约占总量26%，风险系数增加。\r\n\r\n2、出行领域巨头壮大之后大规模跨界。\r\n\r\n出行领域的巨头主要是滴滴公司。官方资料显示，在已有市场上，份额达到80%。滴滴围绕一站式出行平台，基于现有的业务逻辑和平台规则逐渐长出一个完整的生态。在基础业务线上已经形成了专车、拼车、代驾、试驾、P2P租车等若干业态，在行业覆盖上，目前已经衍生出“滴滴+”现象，有打车看房，呼叫医生上门，与银行合作推出分期购车服务，滴滴与马蜂窝合作开发旅游，与入股饿了么开发一键叫小龙虾，与酒店合作增加专车优惠等等，这种全行业覆盖的态势，在滴滴开放平台上，会越来越明显。\r\n\r\n3、以租代售风头正健。\r\n\r\n以长租公寓、创客空间、线上短租平台的风潮出现，为住宅市场、非住宅存量等各类房地产去库存提供了有效路径。\r\n\r\n以租代售的三种玩法包括,（1）短租，以途家网、小猪短租为代表。（2）长租，以蘑菇公寓、YOU+为代表。（3）共享办公，以优客工场和SOHO3Q为代表。\r\n\r\n4、二手物品电商巨头伏兵四起\r\n\r\n近年来，受经济下行、网购市场火爆、电子消费品更新速度加快等因素影响，二手物品交易需求逐渐旺盛，市场空间巨大，但目前尚未形成行业领军企业。主要有综合性二手交易市场，这是BAT的最爱；二手车交易市场，这是准独角兽扎堆的地方；二手电子回收，有潜力的大生意；二手衣物寄售，照顾懒人的二手生意。\r\n\r\n5、大规模兼职服务，开始从企业流行到个人\r\n\r\n传统威客模式原本是企业享受的专属“服务。现在新兴的是私人服务---个人享受的服务，比如私人助理、私人导游、私人管家、私人医生、私人看护等等。这种模式为更多的个人服务者提供了就业机会，使拥有各类技能和兴趣及碎片化时间的劳动力资源得到有效解放。\r\n\r\n6、众包物流将成为电商的标配\r\n\r\n众包物流，以基于LBS的社会化众包方式，解决传统配送速度慢，成本高，配送不到家等弊端，打通O2O电商配送的最后一环。众包物流总体市场近百亿规模，独角兽开始出现。比如人人快递，达达快递等。当然，O2O电商们也在自建+众包物流模，比如百度外卖、美团众包、饿了么蜂鸟、京东众包等。\r\n\r\n7、自媒体内容创业崛起\r\n\r\n文字、音频视频等自媒体是内容创业的主渠道。内容创业者分布在各个平台，比如文字自媒体代表平台包括微信公众账号、微博、36Kr、虎嗅网、百度百家等；音视频主播，代表平台包括YY秀场主播、酷狗秀场主播，以及蜻蜓FM,喜马拉雅FM等等。\r\n\r\n现在，出现了许多新兴自媒体创业平台。比如视频自媒体，实现实时在线视频解说和互动。目前以草根主播为主，未来将逐步形成PGC为主，UGC为补充的运作机制。\r\n\r\n? 体育主播。如章鱼TV,2016年以 3 亿元的价格被乐视体育收购，成为旗下UCG直播平台。目前体育主播数量已超2000人，C端日活用户过300万。\r\n\r\n? 游戏主播。斗鱼TV成立于2014年，运营1年时间已有38万个主播，1千万的日活跃量用户。龙珠直播估值 13亿元，成为准独角兽。\r\n\r\n? 音乐主播。依托唱吧社区为基础的APP应用，开展国内知名主播以及众多唱吧红人的实时互动直播，据报道企业已估值65亿元。\r\n\r\n8、网络教育之异国授课与达人顾问\r\n\r\n分享经济+教育产生了许多新模式。例如远程外教的实时互动教学??海外兼职外教，利用其闲置时间，通过网络对于中国学生进行一对一远程互动授课。代表企业VIPABC，51talk。目前VIPABC估值65亿，跻身独角兽。51talk估值20亿元，为准独角兽。其他模式还有K12家教，沪江网远程课程分享；“轻轻家教”的线下私人面授，提供家教老师的搜索和一对一上门面授服务。\r\n\r\n社交+咨询的私人顾问也在兴起。平台吸纳各行各业高质量的行家用户，例如职场专家、高考状元、海外名校才子等，为用户提供针对性的答疑解惑和建议。代表企业在行，自得，榜样等。目前该领域平台还处于起步阶段，尚未出现大体量企业。\r\n\r\n9、私厨外卖步入大雅之堂\r\n\r\n私厨市场主要包括社交饭局的到店服务，私人厨师上门的家政服务拓展，美食寄售的电商服务，私厨外卖的O2O外卖服务四种模式，整体市场处于培育期，尚无巨头出现。其中以高频+刚需为主打的私厨外卖服务成为发展的新风向标。\r\n\r\n回家吃饭，成立一年多时间，已具备4000多名家厨，用餐用户超过10万人。\r\n\r\n觅食，推出“红星午餐”,聚焦于邻里共享的白领订单市场。\r\n\r\n烧饭饭从厨师上门服务转型到外卖服务“味蕾”，将厨师集中于中央厨房，提供外卖服务。\r\n\r\ne袋洗从”小e管家“拓展到了“小e管饭”，将充分整合社区的私厨资源提供外卖服务。\r\n\r\n国外半成品食材订购服务商 Blue Apron已估值达到20亿美金，跻身独角兽。豆果美食上线电商平台“优食汇”,半成品食材销量占比很大。\r\n\r\n10、请专家看病不用挂号\r\n\r\n不仅医生可以在空余时间分享基本的问诊服务，还可以选择多点执业或上门服务等新兴模式，同时医院和诊所的闲置资源多可以充分利用和流动，缓解看病难、看病贵的问题。\r\n\r\n一种是医生分享闲暇时间，例如春雨医生从在线问诊模式，向线下众包诊所合作模式拓展，打通线上到线下的全流程医疗服务。\r\n\r\n另一种是私人医生上门服务模式。用户可以基于地理位置，在线预约附近的中医或预健师上门提供服务。代表企业看中医，预健科技，国外有medicast。\r\n分享经济带来了哪些创业机会？\r\n\r\n基于市场竞争程度+市场空间+用户痛点程度，腾讯研究院认为，教育分享、医疗分享和众包物流属于比较适合创业者现阶段切入的细分领域，属于市场空间大，竞争格局尚不清晰，用户痛点程度大。其次为私厨外卖、自媒体、个人服务、海外短租和细分领域的二手交易。出行领域需要找到现有巨头比较薄弱的细分市场，而P2P借贷和股权众筹受国家政策影响，前景尚不清晰。\r\n传统企业该如何拥抱分享经济？\r\n\r\n客观的说，分享经济不是洪水猛兽，不是像电商那般要干掉卖场。它展现出来的，更多的是传统行业一种升级和补充，用时下的语言就是+互联网，对此，国外许多厂商已经闻风而动。\r\n\r\n那么，我国传统行业该如何拥抱分享经济呢？大致有三种策略：\r\n\r\n第一种，转型：以租代售。\r\n\r\n传统企业顺应分享经济的发展浪潮，主动向分享经济转型，从卖新和卖多向以租代售转型。例如汽车厂商，包括BMW，戴姆勒、标致等车企纷纷推出“以租代售”的汽车分时租赁业务。例如零售商，宜家在瑞典推出在线分享平台，巴塔哥尼亚户外用品公司和ebay合作建立了“共同衣物纤维伙伴关系”平台。例如地产商，Soho中国推出共享办公soho3Q，万科推出长租公寓“万科驿”等分享型业务。\r\n\r\n第二种、借力：社会化众包/众筹。\r\n\r\n以分享经济的思维，借助社会化力量开展企业运营和筹集资金。这种例子非常多。例如3W咖啡通过众筹模式筹集股东会员，wifi万能钥匙股权众筹高达77亿认购额。微软通过Gigwalk任务众包平台召集35个城市的10万人，为它提供商户和餐馆的3D全景图，融入Bing地图数据。\r\n\r\n第三种，资本运作：投资入股/兼并。\r\n\r\n与前两种办法相比，还有更简单粗暴但有效的办法：传统企业可以通过资本运作，快速进入分享经济领域。例子就更多了，比如凯悦酒店集团参与豪宅版Airbnb??Onefinestay的4000万美元融资,宝马集团投资共享停车初创公司JustPark，现在已是全球共享停车领域的龙头老大，超过50万名司机使用其服务。2013年，租车巨头安飞士巴吉集团以5亿美元的价格收购号称全球首家共享经济企业ZipCar公司。 \r\n四、 风潮争议\r\n\r\n分享经济带来机遇，同时也带来了挑战，腾讯研究院关注点主要集聚在两个方面：第一，参与者权益保障问题；第二，管理与发展如何平衡的问题。前者着眼于劳动者消费者关系，后者涉及到政府与平台关系。由此衍生出一系列问题，比如：\r\n\r\n1、消费者权益如何保障？\r\n\r\n分享经济下，供需双方都是陌生的个体，无企业实力背书，平台快速发展的同时也带来信任的风险。如何能够保障消费者在分享过程中的权益，是对于分享经济能够发展的核心挑战。\r\n\r\n2、劳动者权益如何保障？\r\n\r\n分享经济提供了大量的就业机会，促进了隐性就业和自由职业者的规模化发展，而对于这种非传统雇佣的劳动关系，脱离社会保障安全网，争议发生难以维权，对于这种逐步成为就业新趋势的新型劳动关系该如何保障，目前尚无定论。\r\n\r\n3、现有监管政策何去何从？\r\n\r\n分享经济企业准入机制远低于传统行业, 出行领域的专车司机与出租车公司司机、短租领域的个体房东与传统酒店业、私厨领域家厨端与餐饮从业者相比，无需获取各类政府/法案规定的许可证，更多是通过在线注册的方式，由平台进行审核。从而引发了新旧产业的大量摩擦，在自由与镣铐之间，现有监管政策该何去何从?\r\n五、 风潮走势:未来会怎样？\r\n\r\n分享经济的未来会怎样？正如互联网的发展一样，20多年前的我们很难对现在有个清晰而具体的描述，但是，我们发现，有这样几个趋势，目前已经呈现出来。\r\n\r\n腾讯研究院认为，分享经济将按照以下五大路径进行演进。\r\n\r\n目前分享经济处于个人闲置资源分享阶段，正在向企业和政府闲置资源分享阶段演变。篇幅过长，下面进行概要性介绍，更详细的资料可以参考腾讯研究院推出的《中国分享经济风潮全景解读报告》全文版。\r\n\r\n第一阶段，个人分享阶段，以个人闲置资源分享为主。\r\n\r\n第二阶段，企业分享，即企业闲置分享资源。未来3-5年，在线的企业分享市场发展起来，例如企业间的二手交易、租赁等。\r\n\r\n第三阶段，公共分享。政府和公共服务闲置资源分享。未来5-7年。政府牵头，主导公共服务资源开放共享。例如政府采购、政府公车、疗养院等资源，公共设施包括公共交通等。\r\n\r\n第四阶段，分享城市。未来10年左右，以城市为单位，整个城市的闲置资源分享。由政府统筹整合整个城市的闲置资源和分享主体。除公共服务的分享之外，还会统一规划发展各行业分享企业的布局。\r\n\r\n第五阶段，分享型社会。正如杰里米?里夫金所预言的，“分享经济带来了一场改变人类生活方式的资源革命，个人用户将在边际成本趋于零的条件下越来越多地通过协作生产、消费和分享自己的商品和服务，这就带来了经济生活的全新组织方式，将会超越传统的资本主义市场模式。”（张孝荣，孙怡。微信zhangxiaorong1609）'),
(6, '李克强最长政府工作报告透露了哪些互联网商机？', '2016-03-05 22:08:55', '李克强总理于3月5日作了政府工作报告。这个报告，代表着整个经济一年一度的走向，不仅宏观经济学家们要关心，其实互联网产业的从业者也不能忽视，就像去年的互联网+、大众创业万众创新无不是因为政府工作报告而被上升到全国政策的高度。那么2016年的这份互联网工作报告，对互联网产业有哪些方向性的商机？以下是我个人的归纳：\r\n? 优选商品、定制模式\r\n\r\n供给侧结构性改革，这是去年末开始大热的一个新名词。\r\n\r\n一言以蔽之，你可以理解为要多生产民众需要的商品。今次政府工作报告中，在谈及努力改善产品和服务供给时专门提出了这样的说法：\r\n\r\n提升消费品品质。加快质量安全标准与国际标准接轨，建立商品质量惩罚性赔偿制度。鼓励企业开展个性化定制、柔性化生产，培育精益求精的工匠精神，增品种、提品质、创品牌。\r\n\r\n把工匠精神写进政府工作报告，再联合商品质量惩罚性赔偿制度，可见克强总理对商品品质的要求。以往低质量糊弄要严惩，而品种多质量好能有品牌的，就会受扶植??尤其是走定制、柔性化生产道路。\r\n\r\n从目前互联网行业来看，早年已经有一些C2M(Customer-to- Manufactory)的尝试，与此同时也有商家联合外销品厂商将高质量的商品以较低的价格在内地市场销售。\r\n\r\n从大格局来看，这些方向对于刺激国内产能国内消化是有好处的??其实大家都明白，那么多商品在中国代工，中国不是没有好的制造力量，只不过普通消费者难以以合理的价格接触到这些优质商品。\r\n\r\n将这样的需求对接，应该是2016年电商领域符合国家大趋势的一个发展方向。\r\n? 海外仓模式的跨境电商服务\r\n\r\n谈及跨境电商，2015年大热的应该是“海淘”为代表的商家。\r\n\r\n将海外的商品直邮、保税区仓储来卖给国内消费者，相比传统转运，至少可以留下零售部分的GDP，这的确算是一个好的尝试。\r\n\r\n但是从今次政府工作报告我们要清晰的明了，政府更需要的是主打出口的跨境电商。\r\n\r\n先来对比下文字，2015年政府工作报告谈及跨境电商的表述相对含混：\r\n\r\n扩大跨境电子商务综合试点，增加服务外包示范城市数量，提高服务贸易比重\r\n\r\n而到了2016年就非常清晰了：\r\n\r\n扩大跨境电子商务试点，支持企业建设一批出口产品“海外仓”，促进外贸综合服务企业发展\r\n\r\n此外还有一句：\r\n\r\n降低出口商品查验率\r\n\r\n是的，国家要你们搞跨境电商，核心是要电商们帮助把国内的商品卖出去，增加出口对经济的拉动才是最巨大的。\r\n\r\n这里的海外仓，其实就是类似眼下海淘保税仓模式的反过来。外贸厂商批量将商品运送到比如美国的某个仓库，待美国消费者需要商品后，直接由美国仓库发货，如此相比直接从中国直邮缩短了邮寄时间降低了成本，又不需要外贸厂商在美国有自己的仓库，降低了外贸的难度。\r\n\r\n至于说海淘类的跨境电商，也不是没优惠条件，在拉动内需里面也提到了：\r\n\r\n降低部分消费品进口关税，增设免税店。\r\n\r\n但免税店这个实体的东西，对海淘跨境电商，一定程度会构成分流。\r\n? 二手车市场要活跃\r\n\r\n老实说，在政府工作报告中看到活跃二手车市场还是满突兀的。但是联系其所处的深挖国内需求潜力，开拓发展更大空间章节，也可以理解了。\r\n\r\n2015年，汽车不算好卖。其实也不奇怪，这几年该买车的陆陆续续的都买了，从没车到有车的消费升级潜力有限了，下面就是第二辆车或者换车需求了。\r\n\r\n要换车，就得有活跃的二手车市场??一方面想换车的可以将旧车出手，车款用来补贴买新车；另一方面，原本新车买不起的可以因为低价二手车而成为汽车及相关产业的消费者。\r\n\r\n是的，通过二手车的活跃，可以创造从低到高的不同层次需求，既进一步刺激新车的销售，又打造了一个二手车产业，对GDP好处是双份的。\r\n? 消费金融受鼓励\r\n\r\n中国人传统上习惯赚了了再消费，美国人喜欢了借钱消费再赚钱还贷。但不可否认，对于新生代，通过分期等信贷形式提前消费已经成为比较普遍的观念。\r\n\r\n而在刺激内需的大前提下，让原本因为缺钱无法激发的需求提前释放，也成为了一个政策的取向。正因此，2016年政府工作报告中提及了消费金融这个2015年工作报告中没有的新概念：\r\n\r\n在全国开展消费金融公司试点，鼓励金融机构创新消费信贷产品\r\n\r\n当然，消费金融公司作为一个专门的金融机构类别， 非金融企业也可以作为消费金融公司主要出资人，只不过条件是最近1年营业收入不低于300亿元人民币、最近1年年末净资产不低于资产总额的30%等几条，对于国内几家巨头级的TMT企业，应该不是大问题。\r\n? 农村电商终于要推进\r\n\r\n巨头们其实在农村电商领域已经刷墙好多年了，不过直到2016年政府工作报告才将这个写入：\r\n\r\n推动电子商务进农村\r\n\r\n农民不是没有消费需求，但以往因为实体店少需求被压抑，所以在刺激内需基础上推动农村电商可以理解。\r\n\r\n当然，这个领域还有另一个政策配套：\r\n\r\n推进5万个行政村通光纤，让更多城乡居民享受数字化生活\r\n\r\n更多农村能够光纤上网，对电商是好事儿，对视频网站其实也是啊！\r\n? 互联网+方向转变\r\n\r\n2015年时，政府工作报告首体互联网+：\r\n\r\n制定“互联网+”行动计划，推动移动互联网、云计算、大数据、物联网等与现代制造业结合\r\n\r\n但是到了2016年，虽然互联网+的提法增加到两处，但是内涵变了，类似云计算、大数据都不提了，而是改成：\r\n\r\n大力推行“互联网+政务服务”，实现部门间数据共享，让居民和企业少跑腿、好办事、不添堵。简除烦苛，禁察非法，使人民群众有更平等的机会和更大的创造空间\r\n\r\n以及：\r\n\r\n发挥大众创业、万众创新和“互联网+”集众智汇众力的乘数效应\r\n\r\n从去年的一些试点来看，互联网企业通过整合、分发政府的数据来辅助政府进行社会管理，或许会成为新方向。');
INSERT INTO `news` (`id`, `title`, `date`, `data`) VALUES
(7, '在北京中关村创业，起步时至少要花多少成本？', '2016-03-05 22:09:19', '（题图为 90年 代的中关村电子一条街，那时候，街的两侧也涌现了大量贸易为主的皮包公司，它们也是怀着梦想的创业公司，其中也不乏联想这样的企业一路走出来。）\r\n\r\n一个互联网创业团队决定开始创业，在起步时就要先支付一些成本。36 氪根据调查，以在中关村创业为例，列出这些起步成本。\r\n\r\n在实际操作中，创业团队也可能会 “八仙过海、各显神通”，找到其他各种低成本替代方案，在此基础上实现 “省钱” 目的，并能快速启动产品研发进程。比如在产品开发时期，先租用民宅或孵化器工位来代替写字楼办公室。甚至，如果创业者有自己的资源，可以申请政府扶持创业、有优惠政策的产业园区入驻，或者进入一些孵化空间，能在早期获得免费办公场地。在办公用品上，电脑、办公桌椅这些可以租用或买倒闭的创业公司留下的二手用品。\r\n\r\n我们的目的是给大家一个参考，如果在中关村起步创业，你大概要花费的一个起步成本，心里有个数。同时，这些成本配置也能让第一次创业的朋友在开始办公司的激动心情中，快速了解你需要配置什么东西，然后一项项去跑、去办就 OK 了。\r\n\r\n为什么是中关村？\r\n\r\n提起互联网创业，北京的互联网行业创业者大多会首先想到中关村，把中关村作为考察的地方之一。作为起始站，中关村会成为创业者们后面再考察其他地方的参照系。\r\n\r\n这里有大量互联网公司，周边又有北大、清华等等著名高校，招聘员工和实习生方便。交通方便，附近也有居民区可供员工租住，生活配套设施也完善。很多创始人和员工也许就是从中关村周围这些大学毕业的，他们对这里熟悉，也产生了依赖。就像硅谷生态的形成，斯坦福大学与加州大学伯克利分校这些大学在其中也功不可没。\r\n\r\n科技中心的聚集效应让很多人会选择在这里扎根起步。尽管从北京整体来看，中关村的创业成本会处于平均水平之上。但毫无疑问，中关村确确实实出现了大量中国互联网知名公司，以及正在涌现大量的有潜力改变世界的创业公司。成本是一方面考虑，但创始人的考虑是尽量让自己的团队在一个舒服不别扭的环境中起步。\r\n\r\n我们来算一算成本\r\n\r\n一.先要注册个公司 \r\n\r\n互联网创业公司追求节省时间，一般会找代理服务商代办注册事务。现在互联网化的代理代办服务公司比传统公司更加高效、方便，价格甚至会更低。\r\n\r\n注册有限责任公司\r\n\r\n中关村属于北京海淀区，在海淀区注册有限责任公司获得营业执照的合法经营资质，代理注册需要 500-600 元左右，公司自己跑只需要花刻公章的钱，260 元左右。\r\n\r\n公司注册地址 \r\n\r\n3000-6000 元左右。如果创业团队一开始在写字楼办公可以不交这笔钱，直接以写字楼地址注册。而在民宅里创业的团队需要代理帮助注册一个合法办公地址。如果在北京其他区办公，但是想注册海淀区的地址也需要花这笔钱。\r\n\r\n记账报税\r\n\r\n公司一开张就需要去税务机关做税务报到，取得 CA 证书及报税密码，才可开发票。公司成立后，税务机关会要求公司每月进行记账报税，没有收入支出也需要报税。如果企业在创业初期没有自己的会计，可以请代理公司。代理记账花费 2000-3000 元左右一年。\r\n\r\n公司的银行基本户\r\n\r\n公司开张后要在银行开立基本户，一个公司只能开一个基本户。这个基本户就是企业的主要存款账户，用于发工资、奖金，缴税、收贷款等，可以转账也可以提现。花费 300-500 元左右，不同银行费用不同。\r\n\r\n二.有公司这个壳了，要租个办公室\r\n\r\n中关村这里有不同的场地，有按整户出租的民宅、按面积出租的写字楼还有按人头出租的孵化器工位。写字楼的价格比较高，适合 A 轮之后的创业团队进驻，天使期的创业团队出于成本考虑多选择民宅或孵化器工位。\r\n\r\n写字楼\r\n\r\n以下选取几家写字楼最近的报价供参考（数据来源：点点租）\r\n\r\n中关村核心区：\r\n\r\n融科资讯中心 14-15 元 / 平米 / 天\r\n\r\n理想大厦 15 元 / 平米 / 天\r\n\r\n欧美汇大厦 12 元 / 平米 / 天\r\n\r\n清华同方科技广场 11  元 / 平米 / 天\r\n\r\n创业大街 10.8  元 / 平米 / 天\r\n\r\n新中关大厦 10 元 / 平米 / 天\r\n\r\n技术交易大厦 9.5-11  元 / 平米 / 天\r\n\r\n中关村 SOHO  9  元 / 平米 / 天\r\n\r\n银科大厦  9  元 / 平米 / 天\r\n\r\n左岸工社 7.5  元 / 平米 / 天\r\n\r\n中关村科贸中心 6-6.5 元 / 平米 / 天\r\n\r\n长远天地大厦 5.6 元 / 平米 / 天\r\n\r\n立方庭大厦  4.3-5.1  元 / 平米 / 天\r\n\r\n上地 \r\n\r\n金隅嘉华大厦 6.5  元 / 平米 / 天\r\n\r\n辉煌国际广场 3.5-3.8  元 / 平米 / 天\r\n\r\n知春路\r\n\r\n学院国际大厦 8.5  元 / 平米 / 天\r\n\r\n锦秋国际大厦 7.8  元 / 平米 / 天\r\n\r\n以上写字楼会提供精装或简装装修，包含物业费。\r\n\r\n民宅\r\n\r\n在写字楼之外，民宅很适合初创团队，比如正在融天使轮或刚完成天使轮的公司。此时公司重点是节省成本把产品做下去、公司活下去直到能融到资或产品盈利，尚未对外推广或商务合作。就像美国硅谷著名公司多起步于自家车库，车库创业是 Just do it 的精神和成本考虑相结合的结果。\r\n\r\n在民宅办公，除了房租便宜外，可以采用民用宽带，也可以请阿姨上门做饭，整个团队会有家的感觉。而写字楼则不能做饭，民宅办公也需要注册个合法的公司地址。\r\n\r\n中关村地区甚至海淀也有大量民宅，最为知名的是五道口的华清嘉园和知春路的锦秋家园，诞生过众多互联网公司，也有媒体专门报道过。\r\n\r\n目前房价，仅供参考（数据来源：链家和 58 同城）\r\n\r\n知春路锦秋家园 70 平左右一套民宅，8000 元左右\r\n\r\n五道口华清嘉园 50 平左右一套民宅，6500 元左右\r\n\r\n工位\r\n\r\n随着创业大潮的出现，中关村诞生了大量的创业孵化器。其主要盈利模式是出租联合办公空间收租金。创业公司能以租工位的形式较低成本来在中关村核心地区起步。联合办公空间的优势是可以直接注册公司地址，节省公司地址注册费用，有大量创业团队在此一起办公，有浓厚的创业氛围，各项服务设施完善。\r\n\r\n工位（数据来源：点点租）\r\n\r\n创业大街 1350 元   工位 /月\r\n\r\n丹棱 SOHO 2000-2500 元  工位 /月\r\n\r\n中关村 SOHO 2000 元  工位 /月\r\n\r\n上地 IMOMA 大厦 1000 元  工位 /月\r\n\r\n上地优投空间 1000 元  工位 /月\r\n\r\n氪空间?中关村天创社区 1680 元 工位 /月\r\n\r\n三.办公用品\r\n\r\n桌椅，平均到人，200 元左右每人。有的创业公司会给员工买特别好的人体工学设计的转椅。\r\n\r\n台式机电脑，3500-5000 元左右一台。早期电脑可先使用自有电脑。\r\n\r\n四.基础设施\r\n\r\n商用宽带 \r\n\r\n商用宽带一年5 万-10 万元左右。写字楼必须使用商用宽带，其优势是提供固定 IP，以及上行速率相比民用宽带更快。宽带价格根据带宽和固定 IP 数不同而定价不同。\r\n\r\n路由器\r\n\r\n企业路由器，1000-2000 元左右一台。\r\n\r\n五.其他成本\r\n\r\n此外，根据不同情况团队每月还要支付水电费用。\r\n\r\n一些产品会在研发阶段使用云服务，支付给云服务企业费用。\r\n\r\n创业初期最大的成本，办公室是一项，但其实成本大头还是人力成本，产品上线后有服务器等设备成本，以及后续开始推广时的推广成本。有了人之后，工资成本之外还要交社保等五险一金。\r\n\r\nWhy not 中关村？\r\n\r\n中关村地区创业有一些便利性，在本文前面已经提过，紧靠众多科技企业、高校，平时交流和招聘都会更方便，海淀区政府也会有一些优惠政策。\r\n\r\n但一些创业团队也会认为，现在的中关村地区，整体办公价格提高了，餐饮和交通变得越来越麻烦了，而整个 “村” 里的环境变得更浮躁了。这是他们不选择在中关村创业或继续留在中关村创业的原因。\r\n\r\n出了办公室各种餐馆、咖啡馆里都是在谈论创业和互联网，几千万大生意分分钟搞定。而对于早期阶段的创业公司，更重要的不是频繁对外交流，而是把自己的产品先做出来。一个浮躁的大环境和频繁的交流反倒会影响执行力。出于此，有些团队也不倾向于在中关村创业。\r\n\r\n起步成本外，还得有运营资金\r\n\r\n因不同的项目涉及的人数、情况不同，不同的服务供应商价格都不同，本文所列出的数据仅供参考。创业团队起步时需要综合考虑地点和环境以及各项条件，在选择办公地点时也可以与其他创业团队交流下吸取下经验。但无论如何，这一套投入成本的计划还是要做的。我们总不能只凭着激情和梦想，觉得上班打工不易、创业就能走上人生巅峰就去创业了吧，创业也需要理性思考和计算。\r\n\r\n最后，创业团队在融到天使轮之前，依靠自有资金起步创业，除了计算这些第一时间必须要交的费用之外，还要留出一段时间的资金，我们以半年计算，让产品能做出来，天使融资能到位。这种计算将来会出现在融资 BP 中。\r\n\r\n例如，如果一个 3 人规模团队在孵化器租用工位办公，预计半年内做出产品并能融到 A 轮，那么实际要准备的投入是起步成本加上 6 个月的人员成本及公司运营基本费用。\r\n\r\n注册公司 600+ 注册地址用孵化器地址 + 报税记账 2000+ 银行基本户 500+3 人工位半年18000（3*1000 每人一个月*6 个月）+ 电脑自带 + 人员半年工资 25.2 万（按 1 万元工资计算，公司要付出 1 万 4 千多元成本每月，1.4 万*3*6）=27 万 3100 元。\r\n\r\n这样算下来，创业还是有一定门槛，需要一些积蓄来启动的。');

-- --------------------------------------------------------

--
-- 表的结构 `order_form`
--

CREATE TABLE IF NOT EXISTS `order_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(20) NOT NULL COMMENT '下订单用户id',
  `menu_id` int(11) NOT NULL COMMENT '对应菜单的id是多少',
  `repeat` int(11) NOT NULL DEFAULT '1' COMMENT '需要多少份？',
  `spec` varchar(1024) NOT NULL COMMENT '有没有什么特殊要求说明',
  `status` varchar(100) NOT NULL DEFAULT 'null' COMMENT '订单状态，未处理、处理中、已经处理',
  `dish_id` varchar(20) NOT NULL DEFAULT 'unkown' COMMENT '餐盘id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `order_form`
--

INSERT INTO `order_form` (`id`, `timestamp`, `user_id`, `menu_id`, `repeat`, `spec`, `status`, `dish_id`) VALUES
(1, '2016-03-06 00:00:00', 3, 12, 2, '加急做啊', 'handing', 'unkown'),
(2, '2016-03-06 17:25:22', 1, 10, 2, 'null', 'completed', 'unkown'),
(3, '2016-03-06 18:27:16', 1, 11, 3, 'null', 'completed', 'unkown'),
(4, '2016-03-19 23:46:16', 3, 10, 12, 'null', 'completed', 'unkown'),
(5, '2016-03-20 22:32:40', 1, 12, 2, 'null', 'null', 'unkown'),
(6, '2016-03-20 22:33:03', 1, 12, 2, 'null', 'null', 'unkown'),
(7, '2016-03-20 22:33:43', 1, 5, 23, 'null', 'null', 'unkown');

-- --------------------------------------------------------

--
-- 表的结构 `pingjia`
--

CREATE TABLE IF NOT EXISTS `pingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `data` varchar(10240) NOT NULL,
  `score` int(11) NOT NULL COMMENT '评分等级',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=118 ;

--
-- 转存表中的数据 `pingjia`
--

INSERT INTO `pingjia` (`id`, `menu_id`, `data`, `score`, `timestamp`) VALUES
(3, 1, '桌子太小，坐的也不舒服，肉还行。 ', 5, '2016-03-05 21:49:21'),
(4, 1, '是冲着名气去的，去得有点迟，所以队伍有点长。', 5, '2016-03-05 21:49:41'),
(5, 1, '装修很好看 三只小猪很显眼 进门的时候5点左右 地面很滑 84味道重 但是当时人已经很多了 口味一般般 但是服务还挺好 会帮你烤肉啥的 套餐感觉不是很实惠 花茶真的是不好喝 吃个饭吵得要死 和闺蜜聊个天都得很大声 耳朵都耳鸣了 付钱时动作', 5, '2016-03-05 21:50:00'),
(6, 1, '这里的装修风格很可爱的，服务员也很好！ ', 4, '2016-03-05 21:50:13'),
(7, 1, '第一次尝试韩式烤肉，烤肉用生菜包着吃还不错，直接吃会有点干，芝士咖喱炒饭不错！', 4, '2016-03-05 21:50:23'),
(8, 1, '猪颈肉还不错～蛮鲜嫩～鸡蛋糕蛮爽口的～ ', 4, '2016-03-05 21:50:45'),
(9, 1, '按照网友推荐点的 很不错，咖喱芝士炒饭很特别 57炒牛肉挺好的 鱼子豆腐也不错，就是结账的时候 特意问了下能不能用大众点评团购 多少钱买单 买完又说只能用一张，真郁闷， ', 5, '2016-03-05 21:50:57'),
(10, 2, '非常好，阿姨的态度和蔼，就是没吃上饭，说电饭锅坏了一个…… ', 4, '2016-03-05 21:53:52'),
(11, 2, '还可以喽，就是这个牛肉有点老喽，咬不动！今天点的都是酸酸的！ ', 4, '2016-03-05 21:54:02'),
(12, 2, '驴肉好吃！第一次吃，下次还吃……', 4, '2016-03-05 21:54:19'),
(13, 2, '总的来讲还是很好吃的。味道好，服务员服务态度也好 ', 4, '2016-03-05 21:54:31'),
(14, 2, '吃到这家的凉皮我简直要哭了！真的！它是我在上海这5年来寻找多年那个凉皮的味道，因为在寻寻觅觅的过程中我已经被伤了太多次了，试吃一次伤一次完全没有想要的味道，今天在掌柜的店吃到了！以后再光顾是必须的啦～入正题简要介绍其它菜吧，小米粥是免费赠送', 5, '2016-03-05 21:54:50'),
(15, 2, '味道不错，爱吃的凉皮木有了，排队N久 ', 5, '2016-03-05 21:55:06'),
(16, 2, '排队排很久，点菜的时候被告知小米粥没了，桂花糕没了。特色菜木耳实在吃不习惯，不喜欢又酸又一股胡椒味。但胜在菜都不加味精，所以还是会带小孩去吃的 ', 5, '2016-03-05 21:55:22'),
(17, 2, '味道不错，价格公道，今后还会来 ', 5, '2016-03-05 21:55:40'),
(18, 3, '第一次过来 味道一般吧 环境还可以价格略贵 ', 4, '2016-03-05 21:56:39'),
(19, 3, '服务员态度不是很好！口味还可以。 ', 4, '2016-03-05 21:56:44'),
(20, 3, '还可以吧，就是去的时候人多，服务有点… ', 3, '2016-03-05 21:56:51'),
(21, 3, '味道好、材料棒、每个月都会去！！！！！ ', 5, '2016-03-05 21:56:59'),
(22, 4, '跟女儿去玩，晚饭披萨意面都是女儿的最爱，这边服务员非常热情带着女儿逛味道也很好喜欢，经常会来', 4, '2016-03-05 21:59:08'),
(23, 4, '味道还不错，值得一提的是，里面有个男服务员没话讲了，只能点个赞了！！！ ', 5, '2016-03-05 21:59:22'),
(24, 4, '披萨蛮好吃的，环境也不错！套餐很划算！很喜欢！ ', 5, '2016-03-05 21:59:31'),
(25, 4, '带宝宝去这里还是不错的，靠窗位可以看路人，服务很到位，宝宝杯子配的吸管帮我主动剪短了。点了299的套餐，薄切三文鱼配了橄榄油味道不错，甜品选了草莓的那个，里面白色的以为是棉花糖结果是烤的蛋白，挺新鲜特别的。结账发票刮到10块钱，可惜不高兴去.', 5, '2016-03-05 21:59:42'),
(26, 4, '点了289的套餐，经典的烤鸭披萨还是好吃，薄底脆脆的，头盘要的是?蘑菇????，可是来福士店的蘑菇个头比之前宏伊店吃过的小好多啊～沙拉和甜点都一般般，感觉会有好长一段时间不会想去吃了…… ', 4, '2016-03-05 21:59:52'),
(27, 4, '东西好吃 人不多 服务员会问菜好不好 ', 4, '2016-03-05 22:00:10'),
(28, 4, '烤鸭披萨其实挺一般的，也只是个噱头 ', 4, '2016-03-05 22:00:17'),
(29, 4, '环境惬意，刚出炉的披萨很赞！！ ', 4, '2016-03-05 22:00:25'),
(30, 4, '店里双人套餐299，大众289，内容是一样的。从来没吃过披萨马上诺，不知道其他店口味如何，点了个老北京烤鸭披萨，我去了，上面一层大葱丝，一开始害怕、但还是尝试了，这大葱味道还能接受，因为比较薄又比较大，所以叠起来吃的，披萨吃起来口感像大饼，', 4, '2016-03-05 22:00:37'),
(31, 4, '全明的厨房可以看到披萨面饼的制作 服务给满分 披萨环境给高分！ ', 4, '2016-03-05 22:00:50'),
(32, 4, '很好、蛮好、非常好、超好哦，亲 ', 4, '2016-03-05 22:01:14'),
(33, 4, 'Pizza Express 一直是我的大爱，今天和老公二人点了一个套餐，一个头牌?蘑菇，二个披萨，其中一个烤鸭的有点甜，另一个是特级?嘉丽特皇后很香但有一点油，两杯饮料，一份甜点，一共318，性价比不错。会常去 ', 5, '2016-03-05 22:01:34'),
(34, 5, '凑活吧，没有以前实惠，毕竟物价也在涨 ', 4, '2016-03-06 10:31:53'),
(35, 5, '万达里菜价实惠，味道不错，大骨头，我', 5, '2016-03-06 10:32:11'),
(36, 5, '总体来说在万达算做东北菜有特色的一家了，招待朋友会过去。但是收银那个吐槽啊，用了近15分钟，很不熟练，建议店家多培训吧', 5, '2016-03-06 10:32:28'),
(37, 5, '便宜去了，一般吃吃喝喝而已罢了', 5, '2016-03-06 10:32:39'),
(38, 5, '地三鲜，玉米饼挺好吃的，石锅鱼头爱吃辣的可以常常 ', 5, '2016-03-06 10:32:51'),
(39, 5, '味道环境都不错，服务热情，会再来', 5, '2016-03-06 10:33:06'),
(40, 5, '不错，每次必点酱大骨，锅包肉，地道东北味 ', 5, '2016-03-06 10:33:18'),
(41, 5, '性价比一般般，口味也一般般，没有任何可圈可点之处。', 4, '2016-03-06 10:33:33'),
(42, 5, '经济实惠，味道还不错。下次可以再来 ', 5, '2016-03-06 10:33:45'),
(43, 5, '不错，价廉物美。不排队难得感受一下', 5, '2016-03-06 10:33:56'),
(44, 5, '价格很合适，人均很便宜，人非常多，就是所有的菜味道都一般吧，没有觉得有什么特别好吃的，就酱骨稍微好一点吧。 ', 5, '2016-03-06 10:34:15'),
(45, 6, '口味好，服务佳，店里还有隐藏版的wifi哦', 5, '2016-03-06 10:37:52'),
(46, 6, '第二次去吃，没有第一次吃的感觉好，口味也一般', 3, '2016-03-06 10:38:10'),
(47, 6, '排队居然等了两个小时才吃上。原本满心期待的口味也变得很失望，鱼很咸蛋很老，满满一桌子菜可最后还是觉得没吃好和饱', 2, '2016-03-06 10:38:26'),
(48, 6, '味道一般般，上菜有点慢，座位不宽裕 ', 3, '2016-03-06 10:38:36'),
(49, 6, '孩子也喜欢，吃米线，鸡丝汤也喝了好多，土豆泥很好吃，感觉很健康，家常又比家里好吃一些 ', 5, '2016-03-06 10:38:47'),
(50, 6, '天山百盛5楼，云南菜，有点辣', 3, '2016-03-06 10:38:58'),
(51, 6, '环境不错，服务有待提高，口感可以，下次还会来', 5, '2016-03-06 10:39:10'),
(52, 6, '云南菜有特色还不错，人不算多。 ', 4, '2016-03-06 10:39:22'),
(53, 7, '总体还不错，服务员小妹人不错，上菜速度快 ', 5, '2016-03-06 10:49:07'),
(54, 7, '同学介绍去的，我和儿子一起去吃，发现不咋滴！ ', 5, '2016-03-06 10:49:07'),
(55, 7, '为什么每样肉都粘锅。粘锅。粘锅...... ', 4, '2016-03-06 10:49:26'),
(56, 7, '家庭聚会，已经来过多次了，孩子们就是喜欢吃烤肉！ ', 5, '2016-03-06 10:49:26'),
(57, 7, '味道还行吧。。。但是送的南瓜粥不是特别好喝', 5, '2016-03-06 10:49:49'),
(58, 7, '总体来说蛮不错的，人均100，三个男的都吃饱了。味道也还不错。至少没有不喜欢吃的，也都吃光了。服务也不错', 5, '2016-03-06 10:49:49'),
(59, 7, '还可以。蘸酱品种比同行多一些，还有冰淇淋什么的', 4, '2016-03-06 10:50:19'),
(60, 7, '菜品太小了，小料还自费 服务员态度还不错 ', 4, '2016-03-06 10:50:19'),
(61, 7, '晚上去友谊商城看叶问3，特地找个地方吃晚饭。朋友想吃烤肉，所以来到了这家店。店了几盘招牌的肉，感觉都有点偏老了，不知道是自己没烤好还是肉质本身问题。自助料理台有很多调教可供选择，还有3款冰激凌可以免费取用 ', 4, '2016-03-06 10:50:41'),
(62, 7, '环境比较糟糕，混乱。食物卖相也不好，抵不上这个价格 ', 2, '2016-03-06 10:50:41'),
(63, 7, '性价比比较高呀，吃几盘肉，一份饭，全家就基本上饱了。生菜无限量，小菜也精致，荤素搭配，也很健康。', 5, '2016-03-06 10:51:03'),
(64, 8, '难吃，喜欢好评吧…………一般不会再去 ', 5, '2016-03-06 10:52:46'),
(65, 8, '很不错，还是一如既往的喜欢蜜汁火方 ', 5, '2016-03-06 10:52:46'),
(66, 8, '最近一直特别馋水煮鱼，特意和妈妈打车过来吃饭。因为只有两个人所以就点了水煮鱼和鲍汁什菌一品煲，大概是叫这个名字吧。超级好吃!因为我特别懒不喜欢挑鱼刺，所以点的巴沙鱼简直完美!还有那个菌的酱汁真的真的我的太棒了!陪着菜我吃了两碗米饭!而且米饭', 5, '2016-03-06 10:53:13'),
(67, 8, '带父母了，味道不错哦，只是稍稍偏咸了一点', 5, '2016-03-06 10:53:13'),
(68, 8, '这次消费还比较满意，请一个客户吃饭，我们三个人，因为是中午，没有喝酒，点了八个菜，总共八百多，后来团购优惠?付了六百五。也就是人均两百出头！', 4, '2016-03-06 10:53:36'),
(69, 8, '连着两天天来吃，就是冲着澳洲带子和芦笋来的。因为芦笋非常粗壮，口感非常棒。于是，馋这口，就连着来了两天。', 5, '2016-03-06 10:53:36'),
(70, 8, '菜品都很好吃，但价格还是太贵啦！ ', 5, '2016-03-06 10:54:00'),
(71, 8, '味道不错，就是偏辣，环境不错，人不算多。', 5, '2016-03-06 10:54:00'),
(72, 8, '身居海外的小伙伴回沪探亲，约在龙之梦一叙。想吃水煮鱼，就来了俏江南。张兰退出后还没有光顾过这家以前三天两天去的餐饮集团。', 3, '2016-03-06 10:54:26'),
(73, 8, '环境一般，服务一般，菜可以，口味还好！', 3, '2016-03-06 10:54:26'),
(74, 9, '很好的上海本帮菜，熏鱼，红烧肉美味。 ', 5, '2016-03-06 10:56:13'),
(75, 9, '女儿过生日到这里来就餐，牛肉粒很嫩入味，阿婆红烧肉也不错，河虾仁新鲜好吃。 ', 5, '2016-03-06 10:56:13'),
(76, 9, '一如既往的好，经常会来，菜都吃光了，不仅仅是饿，更是因为好吃', 5, '2016-03-06 10:56:39'),
(77, 9, '环境优雅服务态度好，热情，上菜速度快，味道很好，下次还去 ', 5, '2016-03-06 10:56:39'),
(78, 9, '上菜慢，味道好，但是量少了一点噢', 5, '2016-03-06 10:57:02'),
(79, 9, '请客吃饭找了这家店，味道中规中矩，本帮菜，不算惊艳，但是不出错就好，感觉比某某顺风是好吃多了，反正聚会随便吃吃，挺好的。用了团购券，挺实惠的 ', 5, '2016-03-06 10:57:02'),
(80, 9, '适合老外的本帮餐厅', 5, '2016-03-06 10:57:24'),
(81, 9, '那个招牌的鸡很好吃，所点的每个菜品都很不错，没什么失误的。 ', 5, '2016-03-06 10:57:24'),
(82, 9, '一如既往的好吃，味道很正宗，红烧肉入口即化 ', 5, '2016-03-06 10:57:49'),
(83, 9, '非常喜欢这家店的响油鳝丝，每次来到上海都会来次这家店，蟹粉豆腐，糖醋小排也非常推荐，总之就是非常好吃的呦 ', 5, '2016-03-06 10:57:49'),
(84, 10, '公司聚餐，选了这家上海老字号，店内装饰挺古色古香的。房子挺老的，楼上的大桌间挺矮，略压抑。中午去的挺晚的，旁边大桌都没人了，和服务员商量换个大点的桌子，服务员说要去问一下，等很久都没回来。说到点餐，因为团购，就跟服务员说可以上菜了，也等很久', 4, '2016-03-06 11:04:03'),
(85, 10, '性价比超高，菜也好吃，总之觉得很合算 ', 5, '2016-03-06 11:04:03'),
(86, 10, '一桌人都有说好那当然是真的好喽 ', 5, '2016-03-06 11:04:24'),
(87, 10, '菜色一般，担不起元蟹宴。就一般的宴席，有点失望吧。 ', 3, '2016-03-06 11:04:24'),
(88, 10, '非常值得来的好地方。位于上海标志性建筑-陆家嘴金茂大厦的裙楼，交通方便，环境优美。走进蟹王府，大门布置得古色古香，取蟹肉的师傅坐在玻璃操作间内操作，每晚还有戏台内的戏曲演出，不得不说饭店在有限的空间内将各种元素都融合的恰到好处。因蟹有季节旺.', 5, '2016-03-06 11:04:44'),
(89, 10, '非常满意的，物超所值！以后还会来！希望明年过年菜式更好！', 5, '2016-03-06 11:04:44'),
(90, 10, '1688的团购非常超值，菜的色面很干净，味道也好。 ', 5, '2016-03-06 11:05:04'),
(91, 10, '家庭聚会，还不错，味道环境都可以！ ', 5, '2016-03-06 11:05:04'),
(92, 10, '宴请亲朋好友，定了正对舞台的包房，环境还算不错，菜式清淡，菜量也适中，单点4两的大闸蟹是180元/位。服务员也有拆蟹服务', 5, '2016-03-06 11:05:29'),
(93, 10, '????生日?的，人?到?就?始上菜了！人到?了?菜到是?始拖了，?之上菜的??方面不是很?意。其他到?什?差池，有什?要求都?足了。', 5, '2016-03-06 11:05:29'),
(94, 10, '一如既往的好。每年都会来个两三次，服务态度和菜品一直保持一个水准也不容易。 ', 5, '2016-03-06 11:06:02'),
(95, 10, '真的挺不错的.量足，都快吃不下了 ', 5, '2016-03-06 11:06:02'),
(96, 11, '吃个早饭随便吃吃，话说锅贴这里卖一份半的奇怪', 4, '2016-03-06 11:07:18'),
(97, 11, '味道不错，服务很好，环境很好。 ', 4, '2016-03-06 11:07:18'),
(98, 11, '很好，味道不错，价格也实惠～～～ ', 5, '2016-03-06 11:07:41'),
(99, 11, '总体一般，端上来的汤，居然还漂着结块的荤油，热都不热就端上来，我也是醉啦！ ', 3, '2016-03-06 11:07:41'),
(100, 11, '半筋半肉面没有龙茗路台湾店里的好吃，酸辣汤没有以前味道足，甜点不错', 4, '2016-03-06 11:08:01'),
(101, 11, '建议大家用点评买代金券，非常划算 ', 5, '2016-03-06 11:08:01'),
(102, 11, '喜欢辣味锅贴和酸辣汤～每次必点！～～～ ', 5, '2016-03-06 11:08:22'),
(103, 11, '挺好的，锅贴特色，其他面实一般！ ', 3, '2016-03-06 11:08:22'),
(104, 11, '在这家已消费多次，味道不错！！', 5, '2016-03-06 11:08:39'),
(105, 11, '锅贴的味道比以前更好了', 5, '2016-03-06 11:08:39'),
(106, 12, '蛋糕好吃，菜品一般，偶尔路过稍稍休息的好地儿。 ', 4, '2016-03-06 11:10:14'),
(107, 12, '隔段时间我都会去吃一下，味道不错。 ', 5, '2016-03-06 11:10:14'),
(108, 12, '就在附近上班，老早想吃了，空了就来了，不错不错 ', 5, '2016-03-06 11:10:34'),
(109, 12, '味道不错，下午茶的品种也多价格也还可以。 ', 5, '2016-03-06 11:10:34'),
(110, 12, '极其好吃，用料很足，大爱！芝士味很浓 ', 5, '2016-03-06 11:10:52'),
(111, 12, '喜欢食之秘的蛋糕，品种多，特别好吃，尤其是各种芝士口味的。 ', 5, '2016-03-06 11:10:52'),
(112, 12, '小朋友过生日买了这里的蛋糕，蛋糕一如既往的好吃，生日宴就在楼上，因为吃的是自助午餐，到吃蛋糕环节大家已经吃不下了，留着半个想分给小伙伴们带回去，餐厅不提供外卖盒，又提着剩下的半个蛋糕到柜台，服务人员态度很好按照要求将蛋糕切好装好还在每份蛋糕...', 5, '2016-03-06 11:11:11'),
(113, 12, '环境还不错的，蛋糕的味道也很好吃！', 5, '2016-03-06 11:11:11'),
(114, 12, '大理石芝士我的最爱，一口满满的幸福感 ', 4, '2016-03-06 11:11:33'),
(115, 12, '很棒，每次都是买他家的蛋糕，体验很棒 ', 5, '2016-03-06 11:11:33'),
(116, 12, '很不错 甜品cake非常好次 环境也好 ', 5, '2016-03-06 11:12:00'),
(117, 12, '味道一般，鱼柳盐没拌匀，一块咸一块淡。环境还可以。 ', 1, '2016-03-06 11:12:00');

-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) DEFAULT NULL,
  `email` varchar(40) NOT NULL DEFAULT 'a@b.c' COMMENT '邮箱',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `encrypt` tinyint(1) NOT NULL DEFAULT '1' COMMENT '密码是否加密了',
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `userinfo`
--

INSERT INTO `userinfo` (`id`, `user`, `email`, `timestamp`, `encrypt`, `password`) VALUES
(1, 'root', 'a@b.c', '2016-03-19 00:00:00', 0, 'password'),
(2, 'username', 'a@b.c', '2016-03-19 00:00:00', 0, 'password'),
(3, 'test', 'a@b.c', '2016-03-19 00:00:00', 1, '098F6BCD4621D373CADE4E832627B4F6');
