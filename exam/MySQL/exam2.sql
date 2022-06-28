-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `aid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (150,1,'小鹏P7','小鹏汽车智能系统以中控大屏为核心，它除了是一个互联网的入口和终端外，更多的是一个智能化的平台。中控大屏取代了传统中控实体按钮，而代之以一系列的虚拟按钮。小鹏汽车的智能控制系统专注于对车本身的智能控制，而非简单的互联网娱乐。通过中控大屏，可以方便的控制方向盘位置、座椅位置、车灯开关、车窗升降、空调设定等，还可以进行驾驶风格的选择、底盘刚度的调节、制动能量回收强度等的调节等等。','汽车'),(151,1,'特斯拉Model Y Performance延迟交付','现在全球的汽车工厂都在铆足了劲儿的生产发展新能源电动车，只要谁能够率先解决新能源电动汽车的头号难题，能源续航问题，那么在未来的汽车争夺战中，就可以占据先机，目前新能源电动车领域的领军企业还是特斯拉，但是能源方面，特斯拉也没什么好的办法，所以只要有企业能够解决能源问题，就可以立刻把特斯拉的位置给顶替下来。\n虽然说特斯拉是现阶段的新能源电动汽车的领军企业，但是特斯拉的日子也并不好过，因为随着全球芯片的短缺，和原材料的上涨，特斯拉的车辆生产遇到了很大的麻烦，再加上上半年特斯拉在上海建立的工厂停工，给特斯拉也是带来了非常大的麻烦。\n近日，有媒体报道称特斯拉柏林超级工厂生产的Model Y Performance已经多次延迟交付。有很多订购了特斯拉电动车的用户反映称，原本订在本周交付的新车已经取消了。而特斯拉方面给的答复是，目前这款特斯拉Model Y Performance上面的电动SUV驱动单元似乎存在一点问题，车辆的一个电压转换器有点问题，让车辆对于的部件不能正常的运转，有一定的安全风险。\n对此也有很多的用户表示担忧，一款卖三四十万的高端电动汽车，却屡屡出现安全问题，这不得不让开始怀疑新能源电动汽车的可行性，到底新能源汽车会不会因为电子元件的适配性给车辆带来安全问题。','问答教程'),(152,1,'实现交付20万辆，小鹏汽车成功的背后有这三张王牌','2021年，小鹏汽车在新势力车企中，月交付量率先实现破万，年交付量以98,155台荣登新势力年度交付冠军。2022年一季度，更是以34,561台的交付量连续三个季度夺得造车新势力交付冠军。截止到今年的6月20日，小鹏汽车用三年多的时间，实现了总交付20万辆的成绩。那么，小鹏汽车取得优秀交付成绩的背后，有哪些过人之处呢？\n带着这个问题，6月25日，重庆车展上，笔者参加了小鹏汽车的发布会，在发布会上，笔者找到了这个问题的答案：小鹏汽车围绕潮酷、智能和品质，孜孜不倦地打磨产品，构建了小鹏汽车产品的核心点和竞争力。\n可靠的品质\n小鹏汽车身上带有“科研基因”的标签，一方面是由于它的创始人团队，大多是从企业的研发系统里面走出来的，另一方面，小鹏汽车在不计得失的投入研发成本，在小鹏汽车还处于非盈利阶段，公司就投入了大量的研发资金，2021年的研发总费用为14.1亿元，占到了全年收入的19.5%。\n在众多研发人员的努力下，小鹏汽车旗下产品也获得了不错的成绩，其中，小鹏G3在中保研C-NCAP碰撞测试中，取得双五星安全的成绩；小鹏P7也获得了C-NCAP五星安全认证。并且，在同价位的纯电车型中，小鹏汽车的保值率行业第一，这也从侧面说明小鹏汽车可靠的品质。\n个性的延展\n年轻的客户群体，大多偏爱有个性的事或物。小鹏汽车自燃深谙其中的道理，并且做出了符合年轻人个性的产品。\n车展现场，小鹏汽车展台的中央，一辆打开剪刀门的小鹏P7，成为了舞台的焦点，配上荧光绿的配色，让它被许多年轻人围观。除了剪刀门的设计之外，这款鹏翼版车型还拥有6秒多的百公里提速，670KM的续航里程，以及L2级的自动驾驶系统，尽可能满足年轻客户的独特需求。除此之外，小鹏汽车在车展上还带来了次元粉和星云米的G3i车型。\n值得一说的是，小鹏汽车不仅在传统车型领域深耕，对于未来的出行方式，他们也在不断的研究，此次车展上，他们就对跑、飞、行智能出行生态进行了探索，并在车展上带来了第六代飞行汽车，和智能机器马。在这个时候能够大胆探寻未来出行方式，并付出实际行动去研发，这就是一种敢为人先的精神。\n科技的载体\n回到当下，传统汽车依旧是出行的首选工具，在众多车型中脱颖而出，小鹏汽车靠的是强大的科技实力。\n就拿自动泊车功能来说，小鹏汽车推出的VPN停车场记忆泊车功能，不仅能够识别标准的划线车位，完车泊车；它还能实现在螺旋路、陡坡，以及不规则车位的停车，真正做到停车无忧。在车展现场，小鹏汽车播放了一段，在普通城市路面上，从A地到B地的自动驾驶展示，小鹏汽车在无人驾驶的前提下，自己完成启动、加速、打灯变道，以及停车锁车的一系列操作，笔者不禁感叹到：科技改变生活。\n众所周知，一辆优秀的汽车，它必须拥有过硬的品质，个性的设计，以及智能的科技，但实际上真正做到车企并不多；反观小鹏汽车，它在这几方面都做得不错，并且还在持续在这条道路上深耕。所以，小鹏汽车的成功并非偶然。','汽车'),(153,1,'突破10万辆的全新小鹏P7，轴距接近3米，加速6.7秒，能跑670公里','近几年来，新能源汽车的销量不断增加，代替燃油车的趋势也愈加明显，各大车企都在这个领域使足了劲，其中也出现了很多造车新势力，而在这些新势力中，小鹏汽车是个不可不提的新能源品牌，尤其是小鹏P7，该车在3月份正式下线了第十万辆汽车，成为了首个突破十万台量产记录的纯电新势力车型，也是小鹏汽车的销量担当，这对于小鹏汽车来说也是个了不起的里程碑时刻，到底这款车有着怎样的出色表现？下面来具体看看。\n\n\n外观上，小鹏P7采用的是简约的设计风格，搭配着低趴的车身，使整体看起来年轻动感又不失优雅，扁平化的设计手法符合了当下年轻人的审美，同时也营造出浓烈的前卫科技氛围，封闭式的前格栅造型精致，搭配着两侧细长扁平的大灯组，营造出很强的冲击力，侧面采用了溜背式的设计，营造出很强的运动感，车尾采用现在流行的贯穿式尾灯，亮起之后更加惊艳。\n\n\n在内饰上，小鹏P7同样采用的是现在流行的设计手法，大尺寸双联屏设计使整体的科技感十足，并且搭配着xmartos2.0车载智能系统，支持车载助手、智能音乐、智能语音交互、智能辅助驾驶、智能网联及ai体验、整车ota升级等功能，同时还支持第三方软件安装以及视觉层面的个性化设计，在用料方面也比较高端，可以接触到的地方，大部分都采用了皮质包裹，质感很好。\n\n\n其中全液晶仪表盘信息显示丰富，效果生动，并且支持自定义功能，另外在主被动安全配置方面也很齐全，包括了车道保持、后驻车雷达、牵引力控制、侧安全气帘、制动辅助、防抱死制动、疲劳提醒等功能，另外还有一些辅助驾驶配置，自动泊车、上坡辅助、自动驻车、前驻车雷达、胎压监测、车身稳定控制等均都有配备，牵引力控制使汽车在各种行驶状况下都能获得最佳牵引力，制动辅助可以达到最好的刹车效果。\n\n\n车型定位是一辆中型纯电动轿车，车身尺寸长、宽、高分别为4880×1896×1450 mm，轴距为2998mm，在同级别车型中也是比较优秀的存在，后排乘坐三个成年人完全没有问题，地台隆起的幅度不高，乘坐体验感很好，车内的座椅采用真皮材料，前排座椅是较为运动化的一体式设计，内部填充物很柔软，包裹性很强，而且设计的头枕很大，标配有主副驾驶座椅电动调节，前排座椅加热，驾驶位电动座椅记忆，驾驶位座椅通风等功能。\n\n\n在动力及续航上，新增车型均采用了单电机，最大的功率为196千瓦，最大扭矩为390牛米，官方给出的百公里加速时间为6.7秒，其中最低配车型配备的是磷酸铁锂电池组，其余车型均采用了三元锂电池组，NEDC纯电续航里程分别为480km和670km，从参数上来看，这款车也有着性能车的潜质，在驾驶中也有很好的操控感，无论是哪个级别，在动能回收力度方面都很突出，动力衔接得也非常顺畅，极大地提高了用户在驾驶过程中的操控体验。\n\n\n结语：从目前来看，小鹏P7是小鹏汽车目前的销量担当，在2021年全年累计销量60569辆，占到小鹏汽车全年总交付量的62%，小鹏汽车也凭借着P7的出色表现，成为新势力品牌中的总销量第一，能够取得如此优秀的成绩，跟小鹏P7出众的产品力有关，作为一款中型轿跑车，这款车结合了数学与美学的跨界设计，主打的人机交互、驾驶辅助以及出色的驾乘体验也得到了消费者的认可，虽然是个造车新势力，但在技术与品质上完全不输那些老车企，这一点在小鹏P7上得到了验证。','汽车'),(154,1,'马斯克真抠门！特斯拉员工吐槽坐班难受：工位挤，WiFi信号差','近日有媒体报道，特斯拉CEO埃隆·马斯克计划强制要求员工必须回到办公室上班。不过，马斯克这一计划遇到了一些阻力，这种阻力来自特斯拉内部。据特斯拉员工反映，随着办公人员增多，他们在特斯拉弗里蒙特工厂的办公楼里找不到地方办公。\n与此同时，还有一些员工吐槽，办公室的WiFi太弱了，以至于他们没有办法正常工作。另一方面，在该工厂上班的员工一般都是乘坐班车上下班，对公司停车位没有太高要求。现在返回公司上班的人越来越多，停车位也出现了短缺的情况。\n自2019年以来，特斯拉的员工总量已经从4.8万人猛增至近10万人，原有的办公场地，办公配置以及环境肯定是不适合这么多人。再说了，现在哪家公司办公还不需要网络，WiFi信号差，自然会降低员工的工作效率。\n为了应对这种窘况，工厂的管理人员要求他们每周来上班的时间要少于5天，但马斯克在给全公司发的一封邮件中明确表示，公司高管必须每周至少在办公室工作40个小时，不算周末的话，那就相当于每天上8小时班，不然就走人。管理人员的要求，很显然与马斯克的计划相违背。\n小雷认为，想要彻底解决这样的问题，马斯克或许有两个比较合理的方式。首先是收回强制回办公室上班的计划，让员工轮流在家办公，这样可以有效缓解工厂内办公室的压力，同时也能有效提升员工的工作效率。\n其次，马斯克其实也可以通过扩建办公区域的方式，容纳更多的办公人员，从而实现所有员工回办公室办公的计划，同时也不至于让员工没有办公场地，搞得十分尴尬。当然了，马斯克一年从特斯拉赚的钱那么多，扩建几个办公区域对他来说也只是“举手之劳”。\n\n在小雷看来，现在各行各业的竞争都很激烈，在人才争夺方面尤其如此，大公司都是用行业高水准的待遇和福利吸引和留住员工，特斯拉身为全球电动车头部，却在办公环境丢分，属实是很不应该。小雷建议，马斯克还是多为员工考虑一下，别在这种地方“抠门”吧。\n','问答教程');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice`
--

DROP TABLE IF EXISTS `choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choice` (
  `cid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `answer` bit(1) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qid` bigint DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  KEY `FKcaq6r76cswke5b9fk6fyx3y5w` (`qid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=915 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice`
--

LOCK TABLES `choice` WRITE;
/*!40000 ALTER TABLE `choice` DISABLE KEYS */;
INSERT INTO `choice` VALUES (1,_binary '\0','2013',1),(2,_binary '','2014',1),(3,_binary '\0','2015',1),(4,_binary '\0','2016',1),(5,_binary '\0','成交下定，信息对接，交车回访',2),(6,_binary '\0','信息对接，合同签署，交车回访',2),(7,_binary '\0','成交下定，交车回访，信息对接',2),(8,_binary '\0','合同签署，信息对接，交车回访',2),(9,_binary '\0','小鹏汽车P7',3),(10,_binary '\0','小鹏汽车P5',3),(11,_binary '\0','小鹏汽车G5',3),(12,_binary '\0','小鹏汽车G3',3),(13,_binary '\0','Leads Capture',4),(14,_binary '\0','Pre-Drive',4),(15,_binary '\0','Test Drive',4),(16,_binary '\0','Close Order',4),(17,_binary '\0','Delivery',4),(18,_binary '\0','首次通过垂直网站，总部下发，线上投放采买等途径与门店发生接触的有效联系信息的客户',5),(19,_binary '\0','通过市场活动，外展接待途径留下的有效客户信息属于线下线索',5),(20,_binary '\0','客户电话错号或者空号属于无线线索',5),(21,_binary '\0','客户表示不购买小鹏汽车或近期已经购买其他品牌属于暂败线索',5),(22,_binary '\0','品牌顾虑',6),(23,_binary '\0','续航焦虑',6),(24,_binary '\0','品质顾虑',6),(25,_binary '\0','充电焦虑',6);
/*!40000 ALTER TABLE `choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exampaper` (
  `pid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'陪练训练','陪练题目');
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papergrade`
--

DROP TABLE IF EXISTS `papergrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papergrade` (
  `rid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `intelligibility` double DEFAULT NULL,
  `integrity` double DEFAULT NULL,
  `logicality` double DEFAULT NULL,
  `accuracy` double DEFAULT NULL,
  `score` double DEFAULT NULL,
  `pid` bigint DEFAULT NULL,
  `uid` bigint DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE,
  KEY `FKmblvyjlk9x7rrm7mvqtbedycc` (`pid`) USING BTREE,
  KEY `FKsfc96jri4p4ukkdaitjt5rk13` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papergrade`
--

LOCK TABLES `papergrade` WRITE;
/*!40000 ALTER TABLE `papergrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `papergrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `qid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'小鹏汽车成立于（）年','单选','2'),(2,1,'交付对接正确的流程是','单选','2'),(3,1,'小鹏汽车目前有那几款车？','单选','2'),(4,1,'小鹏汽车新零售销售流程有哪些？','单选','2'),(5,1,'下面描述正确的是','单选','2'),(6,1,'下列哪些是属于客户的一级顾虑','单选','2'),(7,1,'小鹏汽车的智能系统是','问答','小鹏汽车智能系统以中控大屏为核心，它除了是一个互联网的入口和终端外，更多的是一个智能化的平台。中控大屏取代了传统中控实体按钮，而代之以一系列的虚拟按钮。小鹏汽车的智能控制系统专注于对车本身的智能控制，而非简单的互联网娱乐。通过中控大屏，可以方便的控制方向盘位置、座椅位置、车灯开关、车窗升降、空调设定等，还可以进行驾驶风格的选择、底盘刚度的调节、制动能量回收强度等的调节等等。'),(236,1,'小鹏汽车目前有那几款车？','单选','2'),(237,1,'小鹏汽车目前有那几款车？','单选','2'),(238,1,'小鹏汽车目前有那几款车？','单选','2'),(239,1,'小鹏汽车目前有那几款车？','单选','2'),(240,1,'小鹏汽车目前有那几款车？','单选','2'),(300,1,'小鹏汽车好吗','问答','好'),(301,1,'小鹏汽车帅吗','问答','帅'),(302,1,'小鹏汽车有多好','问答','非常好'),(303,1,'小鹏汽车有多快','问答','非常快'),(304,1,'小鹏汽车能充电吗','问答','能'),(305,1,'小鹏汽车强吗','问答','强'),(306,1,'喜欢小鹏汽车吗','问答','喜欢'),(307,1,'小鹏汽车怎么样','问答','很好'),(308,1,'小鹏汽车好玩吗','问答','好玩'),(309,1,'小鹏汽车便宜吗','问答','便宜'),(310,1,'小鹏汽车多少钱','问答','100元'),(311,1,'小鹏汽车贵吗','问答','不贵'),(400,1,'我想了解一下小鹏汽车的智能系统','对练','小鹏汽车智能系统以中控大屏为核心，它除了是一个互联网的入口和终端外，更多的是一个智能化的平台。'),(401,1,'我想了解一下小鹏汽车的电池相比其他匹配有什么优势','对练','小鹏汽车的电池包已经经过了4次迭代开发，不同于国内电动车电池包大多采用自然冷却或者风冷，小鹏汽车设计了液冷电池包，有效的解决了电池升温问题。'),(402,1,'小鹏p5这款车型后备箱空间如何','对练','小鹏汽车P5后备厢空间的表现比较不错，开口大小符合它家用车的定位，可以充分满足一家人的置物需求。'),(403,1,'我想了解一下p5的续航情况','对练','小鹏P5搭载的是一台最大功率155kW的驱动电机，它的续航里程拥有三个版本可选，分别为460km、550km和600km。'),(404,1,'我想详细了解一下小鹏p7智能导航系统','对练','目前小鹏P7搭载一流的智能导航辅助驾驶，拥有更高的场景覆盖率与更低的人工接管率。在它的设计过程中也加入了很多更加实用的功能，如智能上下匝道和智能超车等。'),(405,1,'小鹏g3i是一款什么样的车型呢','对练','作为一款20万以内的纯电动智能SUV来说，它综合实力更加均衡，在同级别的车型中性价比也非常高。对于热爱生活又喜欢尝试新鲜事物的年轻人来说，小鹏G3i无疑是一款值得推荐的好车。'),(406,1,'小鹏p7续航情况怎么样','对练','小鹏p7有三款不同车型，最低续航550千米，最高续航706千米。'),(407,1,'小鹏g3i有自动泊车功能吗','对练','小鹏G3i拥有智能的自动泊车功能，它的泊车技术覆了70%场景，只要系统识别到停车位就能全自动地泊车到对应车位。');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'测试1','123456',NULL),(2,'user1','123456','123456789');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28 16:49:59
