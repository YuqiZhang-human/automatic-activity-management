-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activities
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1730873932796.jpg'),(2,'picture2','upload/1730873944966.jpg'),(3,'picture3','upload/1730873955099.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxinde`
--

DROP TABLE IF EXISTS `discusshuodongxinde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discusshuodongxinde` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='活动心得评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxinde`
--

LOCK TABLES `discusshuodongxinde` WRITE;
/*!40000 ALTER TABLE `discusshuodongxinde` DISABLE KEYS */;
INSERT INTO `discusshuodongxinde` VALUES (101,'2022-05-06 00:34:21',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-05-06 00:34:21',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-05-06 00:34:21',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-05-06 00:34:21',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-05-06 00:34:21',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-05-06 00:34:21',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuodongxinde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '活动类型',
  `renshu` int DEFAULT NULL COMMENT '人数',
  `baomingshuoming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '报名说明',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (41,'2022-05-06 00:34:21','书香校园 —— 小学阅读陪伴计划','儿童阅读陪伴与教育辅导',22,'','2022-05-06 08:34:21','111111111','张三','13823888881','是',''),(42,'2022-05-06 00:34:21','环保小卫士 —— 校园及社区环保活动','环保意识宣传与垃圾清理',15,'','2022-05-06 08:34:21','22222222222222','李四','13823888882','是',''),(43,'2022-05-06 00:34:21','阳光课堂 —— 农村留守儿童支教计划','教育支教与生活关怀',16,'','2022-05-06 08:34:21','3333333','王五','13823888883','是',''),(44,'2022-05-06 00:34:21','爱心义诊 —— 社区健康知识普及','义诊服务与健康讲座',43,'','2022-05-06 08:34:21','444444444','赵六','13823888884','是',''),(45,'2022-05-06 00:34:21','校园好帮手 —— 校园设施维护志愿服务','校园公共服务与设施维护',53,'','2022-05-06 08:34:21','555555555','周七','13823888885','是',''),(46,'2022-05-06 00:34:21','青春同行 —— 青少年职业生涯规划辅导','职业规划指导与未来展望',22,'','2022-05-06 08:34:21','66666666666','吴八','13823888886','是','');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongleixing`
--

DROP TABLE IF EXISTS `huodongleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huodongleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='活动类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongleixing`
--

LOCK TABLES `huodongleixing` WRITE;
/*!40000 ALTER TABLE `huodongleixing` DISABLE KEYS */;
INSERT INTO `huodongleixing` VALUES (21,'2022-05-06 00:34:21','职业规划指导与未来展望'),(22,'2022-05-06 00:34:21','义诊服务与健康讲座'),(23,'2022-05-06 00:34:21','校园公共服务与设施维护'),(24,'2022-05-06 00:34:21','教育支教与生活关怀'),(25,'2022-05-06 00:34:21','环保意识宣传与垃圾清理'),(26,'2022-05-06 00:34:21','儿童阅读陪伴与教育辅导');
/*!40000 ALTER TABLE `huodongleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongtongzhi`
--

DROP TABLE IF EXISTS `huodongtongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huodongtongzhi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `tongzhineirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '通知内容',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='活动通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongtongzhi`
--

LOCK TABLES `huodongtongzhi` WRITE;
/*!40000 ALTER TABLE `huodongtongzhi` DISABLE KEYS */;
INSERT INTO `huodongtongzhi` VALUES (51,'2022-05-06 00:34:21','2023新生报到日 - 欢迎新生融入校园生活','1111111111','张三','13823888881','每年的新生报到日是校园迎接新同学的重要时刻。为了帮助新生快速适应新环境、结识同学，校团委、学生会及各社团精心策划了多项迎新活动。','2022-05-06 08:34:21'),(52,'2022-05-06 00:34:21','2023年校级社团招新 - 展现你的热情与才华','1111111111','李四','13823888882','校级社团招新活动为学生提供了展现自我、发展兴趣的宝贵平台。此次招新活动不仅帮助新生更好地了解校园丰富的社团文化，还能帮助他们找到志同道合的朋友，开启多姿多彩的大学生活。希望通过此次招新，新生能够更深入地融入校园生活，拓展个人兴趣与能力。','2022-05-06 08:34:21'),(53,'2022-05-06 00:34:21','2023秋季运动会 - 激发活力，共享精彩','1111111111','王五','13823888883','秋季运动会是激发学生体育热情、提升身体素质的活动，也是增进同学间友谊与合作精神的重要平台。活动涵盖多种运动赛事，鼓励学生积极参与，在展示自我风采的同时，享受健康的运动生活。','2022-05-06 08:34:21'),(54,'2022-05-06 00:34:21','2023年秋季职业发展日 - 帮助学生规划未来职业发展','1111111111','赵六','13823888884','职业发展日活动旨在帮助学生了解行业动态，明确职业方向，提升职场技能。通过职业讲座、模拟面试、职场体验等活动，学生们可以直接与企业代表、校友进行交流，为未来的职业生涯做好更充分的准备。','2022-05-06 08:34:21'),(55,'2022-05-06 00:34:21','2023年迎新年晚会 - 喜迎新年，共同回顾精彩瞬间','1111111111','周七','13823888885','迎新年晚会是全校师生欢聚一堂的时刻，在跨年之际共同庆祝过去一年中的收获和成长。通过文艺表演、颁奖环节等丰富的活动，全体师生共同迎接新的一年，为新一年的校园生活注入更多活力与期待。','2022-05-06 08:34:21'),(56,'2022-05-06 00:34:21','2024年校园志愿者日 - 奉献爱心，服务校园','1111111111','吴八','13823888886','校园志愿者日是鼓励学生参与志愿服务、奉献爱心的重要活动。通过各种公益活动，志愿者们不仅能提升服务意识，还能在实践中学习合作与责任感，为校园和社会的和谐发展贡献力量。','2022-05-06 08:34:21');
/*!40000 ALTER TABLE `huodongtongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinde`
--

DROP TABLE IF EXISTS `huodongxinde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huodongxinde` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '图片',
  `xindefenxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '心得分享',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='活动心得';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinde`
--

LOCK TABLES `huodongxinde` WRITE;
/*!40000 ALTER TABLE `huodongxinde` DISABLE KEYS */;
INSERT INTO `huodongxinde` VALUES (61,'2022-05-06 00:34:21','书香校园 —— 小学阅读陪伴计划','儿童阅读陪伴与教育辅导','upload/huodongxinde_tupian1.jpg','<p>在书香校园的志愿活动中，我深刻体会到了陪伴的力量。当我与孩子们一同阅读时，他们的专注与好奇让我备受感染。从开始的羞涩到后来的主动分享，孩子们的阅读兴趣逐渐提升，我也感受到帮助他们在知识的海洋中遨游的喜悦。通过这次活动，我不仅提升了自己的沟通能力，还学会了如何用耐心和关爱去引导孩子，让他们感受到阅读的美好。</p>','2022-05-06 08:34:21',1),(62,'2022-05-06 00:34:21','环保小卫士 —— 校园及社区环保活动','环保意识宣传与垃圾清理','upload/huodongxinde_tupian2.jpg','<p>参加环保小卫士活动让我对环保有了新的理解。和志愿者伙伴一起清理社区、宣传环保时，我们不仅为社区的环境贡献了力量，也切身体验到了保护环境的责任感。居民们的支持和称赞让我觉得我们的努力是有意义的。这个活动让我意识到，环保需要从自身做起，从身边的小事做起，我们每个人都可以为地球的美丽贡献一份力量。</p>','2022-05-06 08:34:21',2),(63,'2022-05-06 00:34:21','阳光课堂 —— 农村留守儿童支教计划','教育支教与生活关怀','upload/huodongxinde_tupian3.jpg','<p>阳光课堂让我收获了很多感动和成长。在给孩子们上课的过程中，我不仅是他们的老师，更像他们的朋友。孩子们求知的眼神和纯真的笑脸让我觉得一切的辛苦都值得。我也深刻体会到知识对他们的重要性，教育是改变生活的一种力量。通过这个支教活动，我不仅传授了知识，也感受到了孩子们带给我的纯粹和善良，激励我在今后的学习生活中更加努力。</p>','2022-05-06 08:34:21',3),(64,'2022-05-06 00:34:21','爱心义诊 —— 社区健康知识普及','义诊服务与健康讲座','upload/huodongxinde_tupian4.jpg','<p>作为爱心义诊的一员，我很高兴能用自己的知识帮助他人。我们为社区居民提供了基本的健康检查，并解答他们的健康疑问。很多爷爷奶奶们对我们的服务表示感谢，他们的认可让我感受到作为志愿者的成就感。通过这个活动，我深刻理解了健康教育的重要性，也激励我在未来学习中更加努力，力争将来为更多人提供专业的帮助。</p>','2022-05-06 08:34:21',4),(65,'2022-05-06 00:34:21','校园好帮手 —— 校园设施维护志愿服务','校园公共服务与设施维护','upload/huodongxinde_tupian5.jpg','<p>在校园好帮手活动中，我体验到了维护校园环境的意义。每当看到清洁一新的自习室、整齐的桌椅，心中都有一种成就感。虽然活动中有些琐碎的工作需要耐心，但当我们完成任务，看到同学们能在更好的环境中学习时，那种满足感是难以言表的。这次活动让我更懂得校园是我们共同的家园，需要我们每个人用心去守护。</p>','2022-05-06 08:34:21',5),(66,'2022-05-06 00:34:21',' 青春同行 —— 青少年职业生涯规划辅导','职业规划指导与未来展望','upload/huodongxinde_tupian6.jpg','<p>参与青春同行活动让我回忆起自己曾经迷茫的求学之路。通过分享我的大学生活和专业学习的经验，我感受到自己对中学生们是有帮助的。许多学生在活动后向我提问，他们的热情和好奇让我意识到自己的责任。我希望我的分享能够帮助他们少走一些弯路，也让他们对未来的学习生活有更清晰的目标。这次活动不仅帮助了他们，也让我更加坚定了自己的学习方向。</p>','2022-05-06 08:34:21',6);
/*!40000 ALTER TABLE `huodongxinde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '图片',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `renshu` int DEFAULT NULL COMMENT '人数',
  `huodongchangdi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '活动场地',
  `huodongjieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '活动介绍',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (31,'2022-05-06 00:34:21','夕阳相伴 —— 老人关怀陪伴服务','陪伴与心理关怀','upload/huodongxinxi_tupian1.jpg','2022-05-06',10,'社区养老院、敬老院或老年活动中心','该活动旨在为老年人提供心灵上的关怀与陪伴，通过聊天、讲故事、分享生活趣事等方式，缓解他们的孤独感。志愿者每周末到养老院，陪伴老人们度过温馨的下午，听他们讲述过往的故事，帮助他们进行简单的心理疏导，让老人在晚年生活中感受到温暖和关爱。','是',''),(32,'2022-05-06 00:34:21','暖心时光 —— 长者陪伴与活动组织','集体娱乐与交流活动','upload/huodongxinxi_tupian2.jpg','2022-05-06',15,'社区中心、老年活动室','暖心时光活动通过组织各种娱乐活动，如棋牌、手工制作、电影放映等，为老年人带来丰富多彩的集体时光。志愿者将与老人们共同参与活动，拉近彼此的距离，并通过简单的才艺展示、趣味游戏等，让老年人保持愉悦的心情，享受集体活动的乐趣，增进老人之间的交流与互动。','是',''),(33,'2022-05-06 00:34:21','银龄守护者 —— 老年人健康支持计划','健康检查与健康知识普及','upload/huodongxinxi_tupian3.jpg','2022-05-06',21,'社区医疗服务中心或老年活动中心','银龄守护者项目专注于提升老年人的健康管理意识，志愿者将与医护人员一同为老人们提供基本的健康检查服务（如血压测量、体温检测等），并普及健康知识。志愿者还将组织健康讲座、示范适合老年人的运动方式，帮助老人们更好地了解自身健康状况，培养健康的生活习惯，增强体质。','是',''),(34,'2022-05-06 00:34:21','长者安心行 —— 助老出行陪护服务','陪护与外出活动','upload/huodongxinxi_tupian4.jpg','2022-05-06',12,'户外场地，如公园、博物馆、超市等','长者安心行项目为行动不便或不习惯独自出行的老年人提供陪护服务，志愿者会帮助老人们进行户外活动，陪同他们逛公园、参观博物馆，或协助其完成购物等生活需求。通过这一陪护活动，帮助老年人融入社会、感受户外的美好，提升他们的生活质量与幸福感。','是',''),(35,'2022-05-06 00:34:21','智慧长辈 —— 数字技术助老培训','技术培训与生活技能提升','upload/huodongxinxi_tupian5.jpg','2022-05-06',33,'社区活动中心或老年大学','智慧长辈活动旨在帮助老年人适应现代数字化生活，志愿者将为老人们提供智能手机、电脑等设备的使用培训，教授他们如何使用微信、网上支付、健康码等实用功能。通过细致的讲解和手把手的操作指导，帮助老年人掌握基本的数字技能，提升他们的日常生活便利性，让他们更好地融入现代社会。','是',''),(36,'2022-05-06 00:34:21','岁月相依 —— 老年人心理陪伴计划','心理关怀与情感支持','upload/huodongxinxi_tupian6.jpg','2022-05-06',20,'老年人家中或社区心理辅导室','岁月相依项目主要关注老年人的心理健康，志愿者将接受基本的心理辅导培训，定期上门或在社区为老人们提供情感支持和倾听服务。通过与老年人建立信任关系，志愿者帮助老人排解孤独和焦虑情绪，提升心理健康状态。活动也可结合简单的心灵舒缓练习，帮助老人更积极地面对生活，感受到社会的关怀。','是','');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
  `rpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='交流反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2022-05-06 00:34:21',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(92,'2022-05-06 00:34:21',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(93,'2022-05-06 00:34:21',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(94,'2022-05-06 00:34:21',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(95,'2022-05-06 00:34:21',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(96,'2022-05-06 00:34:21',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2023-08-30 00:00:00','2023新生报到日 - 欢迎新生融入校园生活','每年的新生报到日是校园迎接新同学的重要时刻。为了帮助新生快速适应新环境、结识同学，校团委、学生会及各社团精心策划了多项迎新活动。','upload/news_picture1.jpg','<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>2023新生报到日 - 欢迎新生融入校园生活</title>\n    <style>\n        h1 {\n            text-align: center;\n            margin-bottom: 20px;\n        }\n        .department {\n            text-align: center;\n            color: gray;\n            font-size: 0.9em;\n            margin-top: -10px;\n            margin-bottom: 15px;\n        }\n        .content ul {\n            list-style-type: none;\n            padding: 0;\n        }\n    </style>\n</head>\n<body>\n\n    <h1>2024新生报到日 - 欢迎新生融入校园生活</h1>\n    <p class=\"department\">校团委发布</p>\n    <p><strong>日期：</strong>2023年9月1日</p>\n\n    <p>新生报到日是每年校园的传统活动，为新生提供了了解校园和融入新环境的机会。各部门将联合为新生提供一系列服务和引导，帮助他们更快适应大学生活。通过校园导览、社团展示等活动，新生可以结识新朋友，熟悉校内环境，开启他们的大学生活之旅。</p>\n\n    <p><strong>活动类型：</strong>迎新活动、校园介绍、社团招新</p>\n    <div class=\"content\">\n        <p><strong>活动内容：</strong></p>\n        <ul>\n            <li>安排志愿者在各主要出入口迎接新生，提供校园导览服务，帮助新生熟悉教学楼、宿舍、食堂等关键场所。</li>\n            <li>设置社团摊位，展示各类社团的风采，让新生有机会与社团成员交流并了解加入流程。</li>\n            <li>组织迎新晚会或主题讲座，涵盖校园生活技巧、学业建议等，帮助新生更快融入大学生活。</li>\n        </ul>\n    </div>\n    \n    <p><strong>推荐参与单位：</strong>校团委、学生会、各大社团</p>\n\n</body>\n</html>\n'),(82,'2023-09-10 00:00:00','2023年校级社团招新 - 展现你的热情与才华','校级社团招新活动为学生提供了展现自我、发展兴趣的宝贵平台。此次招新活动不仅帮助新生更好地了解校园丰富的社团文化，还能帮助他们找到志同道合的朋友，开启多姿多彩的大学生活。希望通过此次招新，新生能够更深入地融入校园生活，拓展个人兴趣与能力。','upload/news_picture2.jpg','<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>2023年校级社团招新 - 展现你的热情与才华</title>\n    <style>\n        h1 {\n            text-align: center;\n            margin-bottom: 20px;\n        }\n        .department {\n            text-align: center;\n            color: gray;\n            font-size: 0.9em;\n            margin-top: -10px;\n            margin-bottom: 15px;\n        }\n        .content ul {\n            list-style-type: none;\n            padding: 0;\n        }\n    </style>\n</head>\n<body>\n\n    <h1>2024年校级社团招新 - 展现你的热情与才华</h1>\n    <p class=\"department\">学生会发布</p>\n    \n    <p><strong>日期：</strong>2023年9月8日 - 9月15日</p>\n\n    <p>校级社团招新活动为学生提供了展现自我、发展兴趣的宝贵平台。此次招新活动不仅帮助新生更好地了解校园丰富的社团文化，还能帮助他们找到志同道合的朋友，开启多姿多彩的大学生活。希望通过此次招新，新生能够更深入地融入校园生活，拓展个人兴趣与能力。</p>\n\n    <p><strong>活动类型：</strong>社团招新、校园文化推广</p>\n    <div class=\"content\">\n        <p><strong>活动内容：</strong></p>\n        <ul>\n            <li>各社团在活动平台上展示社团介绍、往期活动照片和视频，方便新生更好地了解社团特色。</li>\n            <li>组织“社团才艺秀”活动，鼓励社团展示独特才艺，让新生体验丰富的校园生活。</li>\n            <li>设立线上互动专区，由社团成员为新生答疑解惑，帮助他们更好地了解社团招新流程。</li>\n        </ul>\n    </div>\n    \n    <p><strong>推荐参与单位：</strong>各类兴趣类、学术类社团</p>\n\n</body>\n</html>\n'),(83,'2023-10-10 00:00:00','2023秋季运动会 - 激发活力，共享精彩','秋季运动会是激发学生体育热情、提升身体素质的活动，也是增进同学间友谊与合作精神的重要平台。活动涵盖多种运动赛事，鼓励学生积极参与，在展示自我风采的同时，享受健康的运动生活。','upload/news_picture3.jpg','<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>2023秋季运动会 - 激发青春活力，共享运动精彩</title>\n    <style>\n        h1 {\n            text-align: center;\n            margin-bottom: 20px;\n        }\n        .department {\n            text-align: center;\n            color: gray;\n            font-size: 0.9em;\n            margin-top: -10px;\n            margin-bottom: 15px;\n        }\n        .content ul {\n            list-style-type: none;\n            padding: 0;\n        }\n    </style>\n</head>\n<body>\n\n    <h1>2024秋季运动会 - 激发青春活力，共享运动精彩</h1>\n    <p class=\"department\">校体育部发布</p>\n    \n    <p><strong>日期：</strong>2023年10月15日 - 10月17日</p>\n\n    <p>秋季运动会是激发学生体育热情、提升身体素质的活动，也是增进同学间友谊与合作精神的重要平台。活动涵盖多种运动赛事，鼓励学生积极参与，在展示自我风采的同时，享受健康的运动生活。</p>\n\n    <p><strong>活动类型：</strong>运动竞技、团队建设</p>\n    <div class=\"content\">\n        <p><strong>活动内容：</strong></p>\n        <ul>\n            <li>举办田径、接力赛等多种竞技项目，增强学生的体质和拼搏精神。</li>\n            <li>组织拔河、障碍跑等趣味项目，鼓励更多同学参与，增添活动的趣味性和互动性。</li>\n            <li>活动平台提供报名通道，邀请各班级、社团组队参赛，为同学们提供展示风采的机会。</li>\n        </ul>\n    </div>\n    \n    <p><strong>推荐参与单位：</strong>校体育部、各学院</p>\n\n</body>\n</html>\n'),(84,'2023-11-01 00:00:00','2023年秋季职业发展日 - 帮助学生规划未来职业发展','职业发展日活动旨在帮助学生了解行业动态，明确职业方向，提升职场技能。通过职业讲座、模拟面试、职场体验等活动，学生们可以直接与企业代表、校友进行交流，为未来的职业生涯做好更充分的准备。','upload/news_picture4.jpg','<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>2023年秋季职业发展日 - 帮助学生规划未来职业发展</title>\n    <style>\n        h1 {\n            text-align: center;\n            margin-bottom: 20px;\n        }\n        .department {\n            text-align: center;\n            color: gray;\n            font-size: 0.9em;\n            margin-top: -10px;\n            margin-bottom: 15px;\n        }\n        .content ul {\n            list-style-type: none;\n            padding: 0;\n        }\n    </style>\n</head>\n<body>\n\n    <h1>2024年秋季职业发展日 - 帮助学生规划未来职业发展</h1>\n    <p class=\"department\">校就业指导中心发布</p>\n    \n    <p><strong>日期：</strong>2023年11月5日</p>\n\n    <p>职业发展日活动旨在帮助学生了解行业动态，明确职业方向，提升职场技能。通过职业讲座、模拟面试、职场体验等活动，学生们可以直接与企业代表、校友进行交流，为未来的职业生涯做好更充分的准备。</p>\n\n    <p><strong>活动类型：</strong>职业讲座、模拟面试、职场体验</p>\n    <div class=\"content\">\n        <p><strong>活动内容：</strong></p>\n        <ul>\n            <li>邀请校友分享职业发展经验，结合不同专业领域的招聘需求，帮助学生明确职业方向。</li>\n            <li>组织企业代表分享实习与就业机会，并开放简历投递环节，给予学生直接的职业机会。</li>\n            <li>开展模拟面试活动，由企业代表担任面试官，帮助学生提升面试技巧。</li>\n        </ul>\n    </div>\n    \n    <p><strong>推荐参与单位：</strong>校就业指导中心、校友会、合作企业</p>\n\n</body>\n</html>\n'),(85,'2023-12-20 00:00:00','2023年迎新年晚会 - 喜迎新年，共同回顾精彩瞬间','迎新年晚会是全校师生欢聚一堂的时刻，在跨年之际共同庆祝过去一年中的收获和成长。通过文艺表演、颁奖环节等丰富的活动，全体师生共同迎接新的一年，为新一年的校园生活注入更多活力与期待。','upload/news_picture5.jpg','<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>2023年迎新年晚会 - 喜迎新年，共同回顾精彩瞬间</title>\n    <style>\n        h1 {\n            text-align: center;\n            margin-bottom: 20px;\n        }\n        .department {\n            text-align: center;\n            color: gray;\n            font-size: 0.9em;\n            margin-top: -10px;\n            margin-bottom: 15px;\n        }\n        .content ul {\n            list-style-type: none;\n            padding: 0;\n        }\n    </style>\n</head>\n<body>\n\n    <h1>2024年迎新年晚会 - 喜迎新年，共同回顾精彩瞬间</h1>\n    <p class=\"department\">校团委发布</p>\n    \n    <p><strong>日期：</strong>2023年12月31日</p>\n\n    <p>迎新年晚会是全校师生欢聚一堂的时刻，在跨年之际共同庆祝过去一年中的收获和成长。通过文艺表演、颁奖环节等丰富的活动，全体师生共同迎接新的一年，为新一年的校园生活注入更多活力与期待。</p>\n\n    <p><strong>活动类型：</strong>文艺表演、校园庆典、年度总结</p>\n    <div class=\"content\">\n        <p><strong>活动内容：</strong></p>\n        <ul>\n            <li>举办迎新年晚会，邀请学生、教职工参与，共同庆祝即将到来的新年。</li>\n            <li>各社团、班级和学院联合组织歌舞、相声、小品等精彩的表演，营造欢乐的节日气氛。</li>\n            <li>活动管理平台将发布2024年度活动回顾视频，展示校园生活的精彩瞬间。</li>\n        </ul>\n    </div>\n    \n    <p><strong>推荐参与单位：</strong>校团委、学生会、各大社团、各学院</p>\n\n</body>\n</html>\n'),(86,'2024-03-01 00:00:00','2024年校园志愿者日 - 奉献爱心，服务校园','校园志愿者日是鼓励学生参与志愿服务、奉献爱心的重要活动。通过各种公益活动，志愿者们不仅能提升服务意识，还能在实践中学习合作与责任感，为校园和社会的和谐发展贡献力量。','upload/news_picture6.jpg','<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>2024年校园志愿者日 - 奉献爱心，服务校园</title>\n    <style>\n        h1 {\n            text-align: center;\n            margin-bottom: 20px;\n        }\n        .department {\n            text-align: center;\n            color: gray;\n            font-size: 0.9em;\n            margin-top: -10px;\n            margin-bottom: 15px;\n        }\n        .content ul {\n            list-style-type: none;\n            padding: 0;\n        }\n    </style>\n</head>\n<body>\n\n    <h1>2024年校园志愿者日 - 奉献爱心，服务校园</h1>\n    <p class=\"department\">校志愿者协会发布</p>\n    \n    <p><strong>日期：</strong>2024年3月5日</p>\n\n    <p>校园志愿者日是鼓励学生参与志愿服务、奉献爱心的重要活动。通过各种公益活动，志愿者们不仅能提升服务意识，还能在实践中学习合作与责任感，为校园和社会的和谐发展贡献力量。</p>\n\n    <p><strong>活动类型：</strong>志愿服务、校园清洁、公益宣传</p>\n    <div class=\"content\">\n        <p><strong>活动内容：</strong></p>\n        <ul>\n            <li>组织志愿者进行校园清洁活动，提升校园环境卫生，营造整洁的学习氛围。</li>\n            <li>在校内设置公益宣传展位，传播环保、节约资源等公益理念，提升学生的社会责任感。</li>\n            <li>邀请社区代表分享志愿服务经验，激励更多学生加入志愿服务的队伍。</li>\n        </ul>\n    </div>\n    \n    <p><strong>推荐参与单位：</strong>校志愿者协会、学生会、各学院</p>\n\n</body>\n</html>\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1716864419736 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1716864419735,'2024-05-28 02:46:59',16,62,'huodongxinde','活动名称2','upload/huodongxinde_tupian2.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','h2he91ohsbvar1yltefx0hvteauose0n','2022-05-06 00:37:36','2024-11-06 07:06:11'),(2,16,'user','zhiyuanzhe','志愿者','pge412l5vlo56ruo6zew0j924032hbox','2023-07-25 01:30:22','2024-11-06 07:20:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','123456','管理员','2022-05-06 00:34:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiyuanzhe`
--

DROP TABLE IF EXISTS `zhiyuanzhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zhiyuanzhe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '年龄',
  `banji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '班级',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `xuehao` (`xuehao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='志愿者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiyuanzhe`
--

LOCK TABLES `zhiyuanzhe` WRITE;
/*!40000 ALTER TABLE `zhiyuanzhe` DISABLE KEYS */;
INSERT INTO `zhiyuanzhe` VALUES (11,'2022-05-06 00:34:21','学号1','123456','姓名1','男','upload/zhiyuanzhe_touxiang1.jpg','年龄1','班级1','773890001@qq.com','13823888881','是',''),(12,'2022-05-06 00:34:21','学号2','123456','姓名2','男','upload/zhiyuanzhe_touxiang2.jpg','年龄2','班级2','773890002@qq.com','13823888882','是',''),(13,'2022-05-06 00:34:21','学号3','123456','姓名3','男','upload/zhiyuanzhe_touxiang3.jpg','年龄3','班级3','773890003@qq.com','13823888883','是',''),(14,'2022-05-06 00:34:21','学号4','123456','姓名4','男','upload/zhiyuanzhe_touxiang4.jpg','年龄4','班级4','773890004@qq.com','13823888884','是',''),(15,'2022-05-06 00:34:21','学号5','123456','姓名5','男','upload/zhiyuanzhe_touxiang5.jpg','年龄5','班级5','773890005@qq.com','13823888885','是',''),(16,'2022-05-06 00:34:21','user','123456','姓名6','男','upload/zhiyuanzhe_touxiang6.jpg','年龄6','班级6','773890006@qq.com','13823888886','是','');
/*!40000 ALTER TABLE `zhiyuanzhe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 14:26:21
