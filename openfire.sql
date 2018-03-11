/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : openfire

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2016-05-13 19:18:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archiveconversations
-- ----------------------------
DROP TABLE IF EXISTS `archiveconversations`;
CREATE TABLE `archiveconversations` (
  `conversationId` bigint(20) NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `endTime` bigint(20) NOT NULL,
  `ownerJid` varchar(255) NOT NULL,
  `ownerResource` varchar(255) default NULL,
  `withJid` varchar(255) NOT NULL,
  `withResource` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `thread` varchar(255) default NULL,
  PRIMARY KEY  (`conversationId`),
  KEY `idx_archiveConversations_startTime` (`startTime`),
  KEY `idx_archiveConversations_endTime` (`endTime`),
  KEY `idx_archiveConversations_ownerJid` (`ownerJid`),
  KEY `idx_archiveConversations_withJid` (`withJid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archiveconversations
-- ----------------------------

-- ----------------------------
-- Table structure for archivemessages
-- ----------------------------
DROP TABLE IF EXISTS `archivemessages`;
CREATE TABLE `archivemessages` (
  `messageId` bigint(20) NOT NULL,
  `time` bigint(20) NOT NULL,
  `direction` char(4) NOT NULL,
  `type` char(15) NOT NULL,
  `subject` varchar(255) default NULL,
  `body` longtext character set utf8,
  `conversationId` bigint(20) NOT NULL,
  PRIMARY KEY  (`messageId`),
  KEY `idx_archiveMessages_conversationId` (`conversationId`),
  KEY `idx_archiveMessages_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archivemessages
-- ----------------------------

-- ----------------------------
-- Table structure for archiveparticipants
-- ----------------------------
DROP TABLE IF EXISTS `archiveparticipants`;
CREATE TABLE `archiveparticipants` (
  `participantId` bigint(20) NOT NULL,
  `startTime` bigint(20) NOT NULL,
  `endTime` bigint(20) default NULL,
  `jid` varchar(255) NOT NULL,
  `nick` varchar(255) default NULL,
  `conversationId` bigint(20) NOT NULL,
  PRIMARY KEY  (`participantId`),
  KEY `idx_archiveParticipants_conversationId` (`conversationId`),
  KEY `idx_archiveParticipants_jid` (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archiveparticipants
-- ----------------------------

-- ----------------------------
-- Table structure for archiveprefitems
-- ----------------------------
DROP TABLE IF EXISTS `archiveprefitems`;
CREATE TABLE `archiveprefitems` (
  `username` varchar(64) NOT NULL,
  `jid` varchar(255) NOT NULL default '',
  `saveMode` int(11) default NULL,
  `otrMode` int(11) default NULL,
  `expireTime` bigint(20) default NULL,
  PRIMARY KEY  (`username`,`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archiveprefitems
-- ----------------------------

-- ----------------------------
-- Table structure for archiveprefmethods
-- ----------------------------
DROP TABLE IF EXISTS `archiveprefmethods`;
CREATE TABLE `archiveprefmethods` (
  `username` varchar(64) NOT NULL,
  `methodType` varchar(255) NOT NULL,
  `methodUsage` int(11) default NULL,
  PRIMARY KEY  (`username`,`methodType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archiveprefmethods
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(100) character set utf8 default NULL,
  `source` varchar(40) character set utf8 default NULL,
  `date` varchar(10) character set utf8 default NULL,
  `kind` varchar(50) character set utf8 default NULL,
  `article` varchar(10000) character set utf8 default NULL,
  `click` int(10) NOT NULL,
  `state` int(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '导致食道癌疾病的因素', '天津日报', '1462599893747', '内科', '　Tips\r\n　　导致食道癌疾病的因素 有哪些？\r\n　　因素一：饮食习惯\r\n　　食道癌的发病与人们的不良生活、饮食习惯有关，如果食物粗糙、质硬、进食过热、过快、饮用浓茶、多吃辣椒、蒜、醋等刺激性食物及饮酒、吸烟等，都有可能引起食道癌。食道癌具有显著的家族聚集现象，高发区连续三代或三代以上患病家族屡见不鲜，但食道癌绝对不存在遗传，而与家庭饮食习惯有密不可分的关系。\r\n　　因素二：环境因素\r\n　　我国调查发现，在高发区的水源中，硝酸盐、亚硝酸盐和二级胺含量显著增高。化学物质致癌，其中最为代表性的就是亚硝胺类化合物，这些物质在胃内易合成致癌物质亚硝胺，从而导致食道癌。\r\n　　因素三：营养缺乏\r\n　　食道癌与动物蛋白质、新鲜水果和蔬菜的低摄入有较强的地理相关性，以上食物的低摄入可致维生素A、维生素C和维生素B2的低摄入。在非洲和亚洲食道癌高发地区人群，膳食的主食为含维生素B2，烟酸、镁和锌较低的小麦或玉米，而低发区人主食为富含上述营养素的主食(高粱、小米等)。', '23', '0');
INSERT INTO `article` VALUES ('2', '百度将下线2518家医疗机构1.26亿条推广信息', '新京报', '1467943743799', '新闻', '新京报讯（记者李丹丹）昨日下午，国家互联网信息办公室对外发布联合调查组对百度搜索在“魏则西事件”中存在问题的调查结果。国家网信办称，调查组要求百度公司改变竞价排名机制。\r\n    国家网信办5月2日会同国家工商总局、国家卫生计生委和北京市有关部门成立联合调查组进驻百度公司，集中围绕百度搜索在“魏则西事件”中存在的问题、搜索竞价排名机制存在的缺陷进行了调查取证。\r\n    调查组认为，百度搜索相关关键词竞价排名结果客观上对魏则西选择就医产生了影响，百度竞价排名机制存在付费竞价权重过高、商业推广标识不清等问题，影响了搜索结果的公正性和客观性，容易误导网民，必须立即整改。\r\n    国家网信办称，搜索引擎是网民获取信息的重要渠道，具有很强引导作用。国家网信办将于近期在全国开展搜索服务专项治理，加快出台《互联网信息搜索服务管理规定》，促进搜索服务管理的法治化、规范化；会同相关部门严厉打击网上传播医疗、药品、保健品等事关人民群众生命健康安全的虚假信息、虚假广告等违法违规行为。国家工商总局将加快出台《互联网广告管理暂行办法》，进一步规范互联网广告市场秩序。\r\n    昨日，百度搜索公司总裁向海龙表示，百度坚决拥护调查组的整改要求，深刻反思自身问题，绝不打一丝折扣。\r\n    调查组对百度提三点整改要求\r\n    立即全面清理整顿医疗类等事关人民群众生命健康安全的商业推广服务。即日起，对医疗、药品、保健品等相关商业推广活动，进行全面清理整顿，对违规信息一经发现立即下线，对未获得主管部门批准资质的医疗机构不得进行商业推广。\r\n    改变竞价排名机制，不能仅以给钱多少作为排位标准。立即调整相关技术系统，在2016年5月31日前，提出以信誉度为主要权重的排名算法并落实到位；对商业推广信息逐条加注醒目标识，并予以风险提示；严格限制商业推广信息比例，每页面不得超过30%。\r\n    建立完善先行赔付等网民权益保障机制。畅通网民监督举报渠道，提高对网民举报的受理、处置效率；对违法违规信息及侵害网民权益行为，一经发现立即终止服务；建立完善相关机制，对网民因受商业推广信息误导而造成的损失予以先行赔付。\r\n    解读1\r\n    百度推广是否属于广告？\r\n    中国政法大学传播法中心研究员朱巍表示，调查组将搜索引擎竞价排名法律性质定性为“商业推广服务”，是因为我国现有法律并未对其进行明确定义，现行广告法无法将其有效涵盖在内，在立法层面对竞价排名的法律性质出现了空白。\r\n    他认为，在未来即将出台的工商总局《互联网广告暂行管理办法》和国家网信办《互联网信息搜索服务管理规定》，必将对竞价排名的商业推广服务性质做出进一步明确定性。\r\n    朱巍表示，同时，调查组要求搜索引擎平台必须对“未获得主管部门批准的医疗机构”，不得进行商业推广服务。这实际是明确了搜索平台对医疗类广告的审核责任范畴，一方面，医疗推广的主体必须是医疗机构，相关下属“科室”、“中心”、“部门”或“野鸡医院”等都不能成为推广对象。', '226', '0');
INSERT INTO `article` VALUES ('3', '上海16家医院组成\"儿科医疗联合体\"', '东方网', '1468934892989', '新闻', '东方网记者刘轶琳5月10日报道：上海首个多区协作、统筹运行的儿科医疗联合体“上海市儿童医院儿科医疗联合体”今天上午签约授牌成立。“儿科医疗联合体”旨在发挥协作统筹优势努力缓解儿童看病难的突出问题。\r\n上海市儿童医院（上海交通大学附属儿童医院）儿科医疗联合体以上海市儿童医院为核心，联合静安区、普陀区、嘉定区、长宁区四区卫计委，携手四区所辖16家二级医疗机构组建而成，是上海首个多区协作、统筹运行的儿科医疗联合体。\r\n16家成员单位包括静安区中心医院、静安区闸北中心医院、上海市市北医院、静安区妇幼保健所、静安区中医医院、普陀区中心医院、普陀区人民医院、普陀区利群医院、普陀区妇婴保健院、嘉定区中心医院、嘉定区南翔医院、嘉定区安亭医院、嘉定区妇幼保健院、嘉定区中医医院、上海市同仁医院、长宁区妇幼保健院。上海市儿童医院在构建三区联合团队的基础上，按照规划的要求，联合静安、普陀、嘉定、长宁各区协同发展的区域儿科医疗联合体，“儿联体”运作后，将逐渐形成各区协同、分工明确的协作机制，有效整合区域儿科资源，最大限度发挥优质儿科资源的利用效率，切实促进申城儿科服务能力的提升。\r\n据了解，儿童医院于2012年11月建立了沪上首家儿科联合团队——上海儿童医院普陀儿科联合团队，并在2014年6月和9月建立了嘉定儿科联合团队和静安儿科联合团队。三年来，共开展专家查房2400余例，疑难病例会诊500余例，共接收转运危重患儿800余名、儿童保健门诊转诊患儿1500余名。儿科联合团队组织儿科医护人员培训30余次，各医院参训60余人次。', '35', '0');
INSERT INTO `article` VALUES ('4', '有必要建立大病免费医疗制度', '上海金融报', '1469439884390', '新闻', '近日，内蒙古巴彦淖尔市21岁身患白血病的大学生郝需婷正在医院接受化疗。医生告诉其家属，白血病通过化疗、骨髓移植可以治愈，但需要花费130多万元。郝需婷家人千方百计地通过各个渠道筹钱帮助郝需婷看病，并在微信朋友圈和众筹平台发出求助。众多爱心人士相继接力，为郝需婷筹集善款。截至目前，已经筹得善款近8万元。\r\n\r\n　　8万元离130多万元还有很大的差距，郝需婷家人筹款的艰难可想而知。事实上，在现实生活中，为救治患大病的亲人，不少病人的亲属都曾求助社会、媒体、政府部门等相关机构，有些家长为了救治自己的孩子，甚至跪在大街上乞讨。同时，我们也会经常从媒体上看到，公益组织、热心人士慷慨解囊救助重病患者的感人一幕。\r\n\r\n　　但现实是，大病患者能够有幸被关注到的比例甚微，而因为贫困放弃治疗的悲剧则时有发生。虽然当前我国已形成“全民医保”的医保体系，但不容忽视的是，各种癌症、白血病、尿毒症等大病重病动辄几十万元、上百万元的治疗费用，不要说普通民众家庭承受不起，即使是中高收入的家庭也很难承受，况且，有的大病还需要常年治疗巩固，更是很多家庭难以承受之重。\r\n\r\n　　如何才能让百姓摆脱看不起大病的困扰？在新医疗改革实施前，国家劳动和社会保障部曾经测算过，政府投入1380亿元可解决贫困人口的医疗费用，再拿出650亿元建立大额风险支出基金，可以解决全民大病支出的风险。笔者认为，大病治疗全民免费的建议值得重视。社会救助是政府的一项重要职能，政府在社会救助中应占主导地位。现在制度设计的弊端是缺少有效的公共救助保障制度，草根民众只要摊上一次大病，整个家庭便会因病致贫、因病返贫。\r\n\r\n　　其实，无论是发达国家还是发展中国家，医疗卫生都是国家财政支出的重要科目。如印度的经济增速虽然不如我国，但国家的医卫开支却占GDP的8.9%(2012年数据)，同时，印度已经实现了全民医保和全民免费医疗。而我国目前只有个别县镇试点全民免费医疗。为此，我们必须加快医疗改革步伐，构筑公民抵御大病侵袭的屏障，帮助公民摆脱大病风险。政府要建立完善的大病救助机制，成为百姓的“救命稻草”，才能更好地尊重和保障公民的健康权和生命权。\r\n\r\n　　从各国经验来看，医保制度设计应与国家的财力水平相匹配。有关数据显示，再过三年左右，中国人均GDP将突破一万美元。若确如其言，笔者认为首先要做的就是全民免费医疗。关注弱势群体的生活状况，完善社会救助设计，健全救助体系，让大病患者即使没钱也能得到及时治疗是国家的责任。如果公民患大病后要么无奈等死，要么乞求社会捐助，则说明我们的医疗制度还缺乏人道。', '26', '0');
INSERT INTO `article` VALUES ('5', '世界各地私立医院什么样', '梅奥国际', '1453874049843', '新闻', '美国：85%是私立医院\r\n\r\n　　美国大多数医院包括私立医院，都是非营利性的。据美国医院协会统计，目前美国医院公立医院仅占15%，69%是非营利性私立医院，营利性私立医院为16%。大多数规模最大、设施最好、医疗水平最高的医院都属于非营利性私立医院。\r\n\r\n　　非营利性医院享受免税政策，不得对个人分配资产\r\n\r\n　　美国法律对私立非营利性医院有严格的认定标准，即：属于非个人利益性机构;不得参与和医院业务无关的集团活动，接受政治性捐款;不得进行资产分配和支付额外工资;关闭时不得对私人分配资产。\r\n\r\n　　同时，非营利性医院享有税收豁免，其捐助者也可以享受税收减免待遇。\r\n\r\n　　按照美国税法规定，非营利性医院在申请注册成功后，可向联邦税务局申请免税资格，且申请程序极为简单，90%以上的申请能得到批准。申请成功即可享受免纳公司所得税、州政府的销售税、地方政府财产税。此外，当非营利性医院从债券市场筹集资金时，其发行的债券也免税。\r\n\r\n　　德国：60%多是私立医院\r\n\r\n　　德国目前大约有2200家医院，其中综合医院大约有1900家。在综合医院中，公立医院不足40%，私立非营利性医院稍微多一些，基本上占40%，其余20%多一点则是私立营利性医院。\r\n\r\n　　无论是在数量上还是在床位数上，私立非营利性和营利性医院都有逐年增多之势。\r\n\r\n　　任何人都可以在德国开办医院，但审批很严格\r\n\r\n　　根据德国《行业条例》第30条规定，只要获得德国官方许可并满足相关条件，任何人包括外国人都可在德国设立医院或私人医疗机构，相关事务由各联邦州主管部门审批。\r\n\r\n　　当然，话虽如此，在德国开办医院的条件相当高。\r\n\r\n　　根据德国《医院融资法》规定，投资商提交的投资方案必须为相关州所接受。\r\n\r\n　　德国的社区医院基本上是私人诊所，而私人诊所不是谁想开就能开的。开诊所的审批过程和德国人做其他事情是一样的，非常的严谨和慎重。\r\n\r\n　　在德国每个城市，每个社区，每个地方按区域面积大小，人口密度等等来计算，应该有几家医院，应该有什么样的诊所，都是非常科学和严格审批的，绝对不会多批。\r\n\r\n　　而开私人诊所的医生，都可以说是名医，要在大医院里有一定的资历，也就是说要有一定的级别和年限，这样在大医院工作多年，或有了口碑才可以出来自己开诊所，不然没人会光顾你。\r\n\r\n　　但符合技术条件后，还要等待机会。因为社区诊所也是按需科学设置的，基本上处于饱和状态。所以，必须等到某地方的诊所，由于种种原因关门了，才有可能去代替它。如果该社区已经有了一家私人诊所，就不会审批第二家了。\r\n\r\n　　日本：83%是私立医院\r\n\r\n　　日本大多数医院是私立医院，一共有9000多家，而公立医院只有1800多家。而诊所更多，一般诊所超过9.8万家，牙科诊所近6.8万家，几乎都是私人开办。\r\n\r\n　　过去，日本也曾出现过患者全部集中到大型公立医院的“看病难”现象，而现在，“有病先去诊所”已经成了大多数日本人的常识。1994年，日本政府修改了《医疗法》，推出一项旨在将患者从大型医院向小型诊所分流的制度，规定原则上如果患者没有诊所医生出具的介绍信直接到大型医院就诊，就要缴纳一定的费用，甚至被院方拒绝。这项制度推出后，彻底改变了大医院人满为患的现象。\r\n\r\n　　日本实行全民健康保险制度，所有在日本生活的人包括外国人都必须强制加入，病人可持证在任何医院看病，包括私人诊所。\r\n\r\n　　公立医院经营惨淡，私立医院生意“红火”\r\n\r\n　　在日本的公立医院，由于医护人员拿国家额定的薪水，医生一天看多少病人、开多少药，都不影响自己的工资待遇，因此全国80%的公立医院都处于亏损状态，要靠税收来填补赤字。而私立医院的住院条件和服务质量、水平普遍较好，能为患者提供优质个性化服务，因此大受患者欢迎。尤其是高端患者，至少20%的人都会选择去私立医院。\r\n\r\n　　由于日本所有医院的药品、医疗器械、检查费用、手术费等都是全国统一的。私立医院要盈利，就得动脑筋了，降低成本，减少医疗费用是最主要的手段。\r\n\r\n　　私立医院是趋势，未来唐山的私立医院也应该越来越规范!\r\n\r\n　　澳大利亚：外国人也可以投资医院\r\n\r\n　　澳大利亚是一个高福利国家，公民可以享受基本的免费医疗服务，持卡者可免费在全国任何社区诊所和公立医院得到一系列免费的服务。\r\n\r\n　　澳大利亚的医疗机构分为三类：第一类是私人诊所，主要诊治一般病症;第二类是专科诊所，如牙科、眼科诊所等，也主要由私人开办;第三类是公立医院和私立医院，主要诊治需要住院的病人，是澳大利亚医疗保健体系的主要组成部分，担负着筹资和提供医疗卫生保健服务的任务。\r\n\r\n　　近些年来，澳大利亚公立医院人满为患，不堪重负，于是越来越多的人选择私立医院或私人医生。当然，私立医院或私人医生的收费一般都高于公立医院。但是，政府通过所谓“医疗保障计划”，对私人医疗服务的支出提供一定比例的补偿，个人只需要支付医疗费与“医保”补偿之间的差价。如果购买了商业医疗保险，那么商业医疗保险还可以帮助再承担一部分费用。\r\n\r\n　　此外，澳大利亚政府将医疗服务行业作为普通产业对待，任何人包括外国人都可以投资医院，准入条件没有区别。而且小项目无需政府审批，只有新建项目总投资超过1000万澳元或购买现有股份超过5000万澳元才需要联邦政府审批。因此，澳大利亚很多私立医院是外商投资的。由于大量缺乏医护人员，澳大利亚政府鼓励外国医护人员到澳大利亚工作。不过，外籍医生要想获得在澳大利亚医疗从业资格，必须经过严格的考试、认证与注册。\r\n\r\n　　印度：鼓励私人资本参与医院\r\n\r\n　　印度整体卫生状况并不理想，但印度的医疗水平却不仅在发展中国家名列前茅，在国际医学界也享有较好声誉。\r\n\r\n　　印度政府积极鼓励社会资本参与医疗保健行业，如1983年印度政府出台的《国家卫生政策》，就明确提出了通过发展私立医院增加医院供给;1990年后更是推出了一系列扶持政策。数据显示，1992年印度7300家医院中1300家为私营医院，占比18%;2005年这一比例已上升到66%;而2010年私营医院的比例达到78%。\r\n\r\n　　为鼓励私立医院担负一定的社会责任，印度政府陆续出台包括提供廉价土地、鼓励外商投资、引入私人保险、促进医疗器械进口、开放医疗旅游、减免医院税收等政策。如阿波罗医院由政府提供15公顷的土地，政府持有26%的股份。阿波罗医院可给穷人提供200张免费床位、免费诊断、免费使用手术室，免费膳食、免费用药等服务。\r\n\r\n　　由于印度私立医院很多医生持有西方著名医学院校颁发的高级资质证书，且价格相对低廉，这吸引了大批西方国家的患者。\r\n\r\n　　同时，一系列制药企业进入医院产业也成为印度私立医院发展的一大特点。根据国泰君安研报，自1990年起，大量制药企业争先进入医院市场，尤其是具有资源和渠道优势的制药企业。\r\n\r\n　　英国：私立医院定位高端\r\n\r\n　　英国是典型的全民福利医疗体制模式，公立医疗系统服务覆盖了99%的人群，医疗消费占全国医疗消费总量的比重超过80%。尽管英国公立医院十分盛行，但私立医院由于定位高端服务人群，医疗消费占全国医疗消费总量的约15%。\r\n\r\n　　英国政府对私立医院也是大力扶持，如政府鼓励私有资金投入医院建设，特设立了私有资金投入项目(PFI)。政府明确规定，凡承担英国公民基本医疗和保障任务，尤其是为减轻公立医院压力、分流病人和缩短预约就诊时间等任务的医疗机构(包括私立医院)，都能享受减免税收或根据服务性质交纳低额税费的优惠政策;对接纳公立医院转来的病人，政府NHS基金会将支付所有的经费。\r\n\r\n　　另外，英国政府还允许私立医院自主收费，自主聘用医生。私立医院可根据医院的设施设备、病人的风险程度及病人的服务需求制订收费标准。政府允许公立医院的医生去私立医院兼职工作。由于收入高，大量的公立医院医务人员尤其是有一定社会知名度的专家、专科医生到私立医院兼职。\r\n\r\n　　不过，英国私立医院存在人才流动大，医师队伍不够稳定的问题。一些兼职医务人员尤其是手术医生、专科医生大多通过电话预约，有时难以保证随叫随到。', '36', '0');
INSERT INTO `article` VALUES ('6', '全面解析美国医院的最佳医疗服务', '梅奥国际', '1457834794398', '新闻', '美国医院尽善尽美以病人为中心\r\n\r\n　　麻省总医院因其服务和技术水平，吸引了世界各地的病人，医院特设专门部门负责解决不同国家人的语言、生活习惯等问题。医院里有一个理发店，里面有人在编织假发，他们告诉我：肿瘤病人化疗后会慢慢脱头发，病人对此感到恐惧，甚至会拒绝治疗，我们在化疗前做好他们的思想工作，告诉他们化疗结束后头发会长好的，可以先把头发剃光，戴上假发，一样漂亮!连病人这样的心理变化他们都会顾及。\r\n\r\n　　美国孩子为何不怕去医院\r\n\r\n　　在很多美国小朋友眼中，去医院就像去游乐场。以费城儿童医院为例，医院墙上挂满了五颜六色的卡通画。医院里随处可见各种玩具，孩子可以随便玩。即将要手术的小朋友直到进入手术室，接受麻醉前，都可以一直抱着自己心爱的玩具。除了这些人性化的细节，美国医生对孩子那种恰到好处的关爱，也值得中国同行学习。\r\n\r\n　　一家见不到“白大褂”的美国医院\r\n\r\n　　医院处处体现着人文关怀，在Mayo你根本看不到“白大褂”。为消除患者紧张情绪，男医师着西服，女性着雅致套装，成为该医院独特的传统。病房有影碟、患者图书室。患者可带自己喜爱的玩具进手术室。医院甚至允许牧师到病床前祷告，为患者过生日、办婚礼。还有象征着节日气氛的洁白雪花、圣诞老人、小南瓜、黑蜘蛛……温馨场面随处可见。\r\n\r\n　　美国医院的良好护理环境\r\n\r\n　　美国医院环境优美，医疗秩序良好。在门前、走廊、电梯等处均有统一着装的礼宾服务人员，他们微笑服务，欢迎来医院的所有人员。医院的总服台设在敝明亮的会客大厅中央，有身穿职业套装人员(男士身穿西服，女士身穿西服套裙)耐心解答病人及家属的有关问题。会客大厅有各种沙发、茶几、台灯、鲜花和地毯，给人以清新、明快的感觉。\r\n\r\n　　医疗服务》》》\r\n\r\n　　好医生秘诀：把患者当邻居\r\n\r\n　　我曾问霍普金斯医院的一位医者：“为何这里的每个工作人员都那么善意，让人觉得亲切?”他说：“因为医院要把维护病人的利益作为首要任务，把维护员工的利益作为重要目标。只有善待员工，才能善待病人，因此每个员工都将服务对象当做邻居一样对待。”门卫和工作人员总把灿烂的笑容和“我能帮助您吗”挂嘴上。\r\n\r\n　　进诊室前，美国医生已熟悉患者资料\r\n\r\n　　前不久，我在北京协和医院青年学科骨干培训资金的资助下，赴美国田纳西大学医学院神经科进行了为期3个月的访问学习。在这个医院，患者进门登记后在候诊室等候，病历会调到护士站。护士们拿到病历后测量病人体重、血压、脉搏，将病人引导到各诊室，再进行简单的询问，填写目前用药信息，然后通知医生接诊。\r\n\r\n　　学习美国加州大学医学院的医疗服务\r\n\r\n　　美国医生除了在学术上一丝不苟之外，日常工作中点点滴滴的小事都体现了他们对病人隐私权的尊重。比如，不管时间多紧，医生与医学生都要向病人自我介绍，如果要旁观，也一定要先征求病人的同意。在给病人查体时，要求绝对不许另一个病人在场。行HIV检查前要先征得病人的同意，否则医生无权检查。即使不提病人的姓名，医护人员也从来不在有旁人在场的情况下讨论病人的病情。\r\n\r\n　　美国医生为何腰间常挂BP机\r\n\r\n　　在赴美国哈佛大学进行为期15天的学术访问与交流。在美丽的校园里，我们除了聆听美国哈佛大学医学院附属医院(Brigham & Women\'s Hospital 简称BWH)为我们精心准备的各种讲座，参加病例讨论、见习门诊和放射科工作外，也对它的先进管理模式充满了兴趣。医院管理是一门高深的学问，尽管短期内我们无法触及它的实质，但医院里每个医生腰间挂着的一个中国人多年前常用的寻呼机，却引起了我们的好奇。Simon教授介绍说，这里的医生之所以还在用BP机，一个很重要的原因是：医院里的医疗设备很多，为了减少手机信号对设备的干扰，不少地方都对手机信号作了屏蔽，如在放射科等。所以医院为医生们提供BP机，并设立了服务台。\r\n\r\n　　护理服务》》》\r\n\r\n　　美国医院护理管理的基本模式\r\n\r\n　　美国医院大体有5种管理形式，即公立医院、私立医院、教学医院、教会医院和财团法人管理的医院，医院的最高领导机构是董事会，由董事会聘任医院院长，并由院长聘任担负日常管理工作的医疗、护理、行政、财务副院长。护理管理的最高领导是护理副院长，下设一名助理副院长，6名总护士长，6名值班护士长和17名科室护士长。护理管理机构调用5个办公室，即质量评估、职员招聘与保留、护理信息、值班护士长和职员办公室。\r\n\r\n　　美国优秀护士应拥有的十大能力\r\n\r\n　　在美国，护士每天的工作量也非常大，对护士的要求也会很高。在美国，我们经常说要有Critical thinking 的能力。所以作为护士，并非只是发发药片，医生让做什么做什么。对病人的病情的了解，观察以及及时的解决问题的能力都非常重要。独立的思考能力，可以帮助医生发现很多医生所忽略的事情。在美国的护士，每天上班第一件事就是对自己的病人做全身体检，并完成体检报告。一次在体检中，护士发现病人身上有个菜花状的结节(和入院诊断无关)，提醒主管医生，后经病理检查，证实是皮肤癌。\r\n\r\n　　美国巴塞克中心医院的护理管理模式\r\n\r\n　　位于美国新泽西州的巴塞克中心医院是美国东方心脏病研究所所在地，以诊治冠心病为主要特色。医院有病床302张，雇员1400余名。作为一家中等规模的医院，其各级护理管理者主要的管理内容是对本部门宏观上的控制和计划，包括本部门的预算(人员、物资、设备、消耗、工资)及如何创造一个促进员工职业发展的氛围，以便能把最优秀的护理人员留在自己周围，并促进个体的价值体现。', '2364', '0');
INSERT INTO `article` VALUES ('7', '基本药物目录拟调整：卫生部冲刺“整体版”', '21世纪经济报道', '1475383874387', '新闻', '基本药物目录已经进入了三年调整周期。\r\n\r\n在10月12日举行的卫生部新闻发布会上，卫生部药政司司长郑宏透露，目前正在考虑对现有目录进行梳理，以确定类似鱼精蛋白的药品，并通过遴选定点生产企业保证临床供应。\r\n\r\n卫生部医管司医院运行监管处处长钟东波表示，目前看来，支付方式的改革相对较好，同时解决了医院和医生两个主体的激励问题。\r\n\r\n基药目录调整启动\r\n\r\n按照《国家基本药物目录管理办法（试行）》的规定，我国的基本药物目录需要三年调整一次。\r\n\r\n目前我国实行的基本药物目录于2009年颁布实行，共涵盖了307种基本药物。按照三年调整一次的要求，现行的基本药物目录需要在2012年完成调整。\r\n\r\n郑宏表示，基本药物目录中药品的种类和剂型一直是广受关注的问题，主要原因是307种基本药物无法满足基层的需求。\r\n\r\n针对这一问题，此前采取的解决方案是由地方根据各自的需求在目录中增补必需的品种。以成都市为例，经过先后两批增补目录后，基本药物的品种已经达到了481种。\r\n\r\n但即便如此，仍没有满足基层医疗机构的需求。\r\n\r\n但基本药物的目录一旦无限制的扩展下去，又失去本来的意义。\r\n\r\n“本来应该是明确医疗服务中基本和非基本的问题，但我们现在的问题是基本医疗就等同于基层医疗了。把医疗机构的划分作为医疗服务的区分，这也造成了现在基本药物制度中存在的问题，”中国药促会执行会长宋瑞霖如是说。\r\n\r\n实际上，在基本药物目录制定之初，考虑到全国的情况，先出台了一个基层版指导意见。然后在此基础上出台整体版，应用到全国。不过直到三年过后，“新医改”即将接近尾声之际，基本药物目录的整体版仍未出台。\r\n\r\n郑宏表示，此次基本药物目录调整将“充分调研各地基本用药的使用情况”，“同时跟重大公共卫生项目里面的一些用药相衔接，因此，这个目录应该是一个整体版，应该在品种的数量上、在剂型上会有所增加。”\r\n\r\n支付方式改革受肯定\r\n\r\n据记者了解，目前我国医疗机构当中的药占比大致在40%-50%之间，而欧美等发达国家的这一比例则基本上在20%以下。\r\n\r\n钟东波透露，卫生部经过梳理大致总结了四种模式：改革支付方式、基层医疗机构收支两条线、药房从医院中独立以及药品零差率。\r\n\r\n不过，这其中的有些模式在实施的过程当中遇到了一些问题。例如芜湖在把药房从医院独立出来以后发现，对于药品安全质量的控制存在风险。现在已经将药房合并回去，并开始探索其它方式。\r\n\r\n“实现医药分开，关键不是机构上的分开，而是机制的分开，切断医药之间的利益链条，”钟东波说，“另外，解决以药补医的问题，不一定非要实行零差率。再有，必须同时兼顾医院和医生这两个主体。”\r\n\r\n但目前由于医生的薪酬待遇等激励机制方面存在的问题，大处方和过度医疗的问题仍然存在。这也是导致目前医患之间矛盾日益突出的重要因素。\r\n\r\n钟东波表示，从目前推行的效果来看，支付方式改革的效果相对较好。\r\n\r\n“因为支付方式改革可以同步解决两个主体，医院和医生的激励机制，”钟东波说，“对于医院来讲是控制成本，对于医生来讲滥用药会增加医院的成本，医院也会对医生的行为加以规范控制。”', '257', '0');
INSERT INTO `article` VALUES ('8', '公立医院住院费五年来首次下降', '北京晨报', '1472846843998', '新闻', '在公立医院住院，每位病人的平均医药费用为7101.8元，住院费用有所下降，但是门诊费用略有上升，同比上涨0.3%。昨天，卫生部公布今年上半年我国二级及以上公立医院费用控制的情况，结果显示，公立医院门诊和住院费用在持续4年每年上涨5%之后，5年来首次下降。不过由于受物价、医疗技术服务价格等因素影响，今年下半年医药费仍有可能上涨。\r\n\r\n上半年药费占比重下降\r\n\r\n据卫生部统计信息中心副主任王才有介绍，公立医院门诊费用小幅上升，人均医药费用为187.2元，同比上涨0.3%；人均药费97.5元，同比下降0.5%。住院费用方面，住院病人人均医药费用7101.8元，同比下降0.1%；人均药费3033.6元，同比下降2.1%。\r\n\r\n统计信息显示，今年上半年以来，药费占医药费用比重下降。公立医院门诊药费占医药费用的52.1%，药费比重同比下降0.4%；住院药费占医药费用的42.7%，药费比重同比下降0.9%。\r\n\r\n王才有表示，公立医院门诊和住院费用在持续4年每年上涨5%之后，今年上半年门诊费用上涨0.3%，住院费用下降0.1%，说明公立医院费用控制初见效果。不过他同时表示，由于物价上涨导致运行成本增加和医疗技术服务价格调整等因素影响,依然使下半年医疗费用存在上涨可能。\r\n\r\n鱼精蛋白或纳入基本药\r\n\r\n老版本基本药物目录已实施近三年，按规定，应该三年一调。卫生部药物政策与基本药物制度司司长郑宏介绍，2012年基本药物目录才进入调整周期，因此基本药物目录的调整最晚将于明年实施，新目录将再增加药物品种的数量和剂型。\r\n\r\n不久前，心脏手术的必用药鱼精蛋白出现缺货，在昨天的新闻发布会上，郑宏也做出回应。他表示，为了避免鱼精蛋白等药品再次出现类似现象，此类药品有望纳入基本药物目录，同时确保供应。\r\n\r\n郑宏表示，基本药物的一些品种在临床上也出现短缺的情况，一些价格低廉、临床用量比较小、生产起来利润又很低的药品，按照省级招标采购的基本原则，招不到、采不到。因此基本药物目录的调整，需要对原有的目录和地方增补的目录进行梳理，看看哪些药品是属于类似鱼精蛋白的药品。这些药品一旦纳入目录当中，应该确保供应。\r\n\r\n马上就访\r\n\r\n市民：减少流通环节降低药价\r\n\r\n尽管卫生部公布的7000余元的医药费用同比下降，但是对于大多数患者来说，仍是一笔不小的开支，再加上下半年费用有可能接着上涨的预计，更增加了人们对看病难的担忧。\r\n\r\n市民张先生今年上半年住了20多天的院，总计花费接近10000元；市民王小姐的爷爷前段时间病危住院，住院治疗11天，总计花费5000余元。他们均表示，卫生部公布的7000多元的医药费尚在可接受的范围之内。\r\n\r\n网友们对下半年医药费有可能还要涨怨气颇多。一位网友说：“公立医院仍然存在以药养医的严重问题，如罗红霉素分散片与头孢丙烯片对患者的疗效一样，但价格大不一样。有些医生不是考虑给患者节省医疗开支，一般不开10片7.50元的罗红霉素分散片，而是开出10片46.2元的头孢丙烯片。”\r\n\r\n另有网友建议减少供应环节，以降低医疗费用，“现在药品从药厂到病人的中间环节太多，每个环节除了正常交易费用外，还有数不清的灰色开销，如此，医药费用焉能不高。”', '120', '0');
INSERT INTO `article` VALUES ('9', '苹果公司公布前CEO乔布斯的死因及细节', '凤凰网', '1454784387432', '新闻', '凤凰网讯北京时间10月11日消息，据彭博社报道，美国加州圣何塞市圣克拉拉县公共卫生部周一公布的死亡证明，苹果联合创始人、前任CEO史蒂夫·乔布斯(Steve Jobs)于当地时间10月5日下午3点在其帕洛阿尔托(Palo Alto)的家中病逝，死因是胰腺肿瘤导致的呼吸骤停。\r\n\r\n在死亡证明的职业栏中，所填的是高科技行业的企业家。\r\n\r\n苹果于10月5日宣布乔布斯辞世，享年56岁，但未提供死亡时间和地点等具体细节。乔布斯于2003年被查出患有神经内分泌瘤，是一种罕见的胰腺癌，他于2009年接受肝脏移植手术。\r\n\r\n乔布斯于10月7日下葬于何塞市圣克拉拉县一处非宗派墓地。乔布斯死亡证明填写人的名字已被抹去。\r\n\r\n截至目前，苹果拒绝对此事置评。', '23454', '0');
INSERT INTO `article` VALUES ('10', '美死于李斯特菌感染的人数升至21人 109人染病', '中国新闻网', '1457837994378', '新闻', '中新网10月8日电据外电报道，美国卫生官员7日称，因食用受李斯特菌污染的甜瓜而死亡的人数升至21人。这是美国十几年来爆发的最严重的一次食源性疾病疫情。\r\n\r\n美国疾病控制预防中心说，全美已有24个州报告了李斯特菌感染病例，死亡人数21人，感染人数升至109人。\r\n\r\n美卫生官员称，李斯特菌可潜伏长达2个月，人们即使吃下染菌食物也未必实时发病。因生病特征不会立即出现，李斯特菌的染病和死亡个案在整个十月份仍会增加。\r\n\r\n通常感染李斯特菌的多为老人、孕妇或免疫系统不良者，5名患者中平均有一人死亡。当局追查下发现，李斯特菌源头是科罗拉多州霍利市真森农场出产的Rocky Ford品牌甜瓜。该农场的甜瓜样本曾被当局验出有李斯特菌，真森农场本月初已宣布回收出事甜瓜。但由7月29日至9月10日，这些甜瓜已销售到美国25个州。', '32466', '0');
INSERT INTO `article` VALUES ('11', '中国科学家首获美医学大奖 研究挽救数百万生命', '京华时报', '1456873873874', '新闻', '本报讯(记者商西)2011年度“拉斯克奖”颁奖典礼北京时间昨天凌晨在美国纽约隆重举行。拉斯克基金会将临床医学研究奖授予81岁的中国中医研究院研究员屠呦呦，以表彰其在治疗疟疾的青蒿素研究中的贡献。这是“拉斯克奖”设立65年来首次颁予中国科学家，也是中国生物医学界迄今获得的世界级最高大奖。\r\n\r\n挽救数百万生命\r\n\r\n拉斯克奖评审委员会认为，屠呦呦教授领导的团队将一种古老的中医疗法转化为最强有力的抗疟疾药，使现代技术与传统中医师们留下的遗产相结合，将其中最宝贵的内容带入21世纪，在全球特别是发展中国家挽救了数百万人的生命。\r\n\r\n“在人类的药物史上，一项能缓解数亿人疼痛和压力，并挽救上百个国家数百万人生命的发现的机会并不常有。”斯坦福大学教授、拉斯克奖评审委员会成员露西·夏皮罗在讲述青蒿素发现的意义时说。夏皮罗表示，青蒿素这一高效抗疟疾药的发现很大程度上归因于屠呦呦及其团队的“洞察力、视野和顽强信念”，屠教授的工作为世界提供了过去半个世纪里最重要的药物干预方案。\r\n\r\n灵感来源于中医\r\n\r\n“在人类征服疾病的努力中，青蒿素的发现只是一小步。”屠呦呦昨天在获奖感言中表示，青蒿素的发现是中国传统医学给人类的一份礼物，在研发的最关键时刻，是中医古代文献给予她灵感和启示，提醒生命科学工作者不要忘记中医药这座传统宝库。\r\n\r\n“我想这个荣誉不仅仅属于我个人，也属于我们中国科学家群体。”屠呦呦还特别感谢在此项研究中作出重要贡献的同事们。她表示，这个项目属于中医药集体发掘的一个成功范例，是中国科学事业、中医中药走向世界的一个荣誉。\r\n\r\n据了解，拉斯克奖由“现代广告之父”美国广告经理人拉斯克于1946年创立，以表彰在医学研究领域作出突出贡献的在世科学家、医学研究者和公共服务人员或机构。自创立以来，共有300多位科学家获奖，其中80位最后获诺贝尔奖。拉斯克奖素有“美国诺贝尔奖”之称。', '23444', '0');
INSERT INTO `article` VALUES ('12', '北京儿童5年均增0.7颗虫牙 离世卫目标相差甚远', '新京报', '1487437426894', '新闻', '本报讯（记者温薷）与5年前相比，平均每个北京孩子多长了0.7颗虫牙，5岁儿童乳牙龋齿患病率高达65%，离世界卫生组织提出的“实现5岁儿童90%没有龋齿”的目标相差甚远。\r\n\r\n今天是第23个“全国爱牙日”。昨日，市卫生局发布统计数据，目前北京儿童的龋齿率正逐年上升。据北京市2010年口腔健康流行病学调查结果显示，5岁儿童乳牙龋齿患病率高达65%，平均每个儿童有3.26颗龋齿；8岁儿童龋齿患病率最高，达71%，也就是说超过七成的孩子有“虫牙”。\r\n\r\n相关负责人分析，儿童龋齿患病率的上升，与生活水平的提高和饮食结构的改变以及行为习惯，特别是糖的消耗量增加都有着很大关系。一项调查显示，只有49%的家长知道含氟牙膏，仅9%的家长能够每天帮孩子刷牙。\r\n\r\n“在发达国家，提倡到80岁仍有20颗有咀嚼功能的牙齿。”该负责人表示，今年市政府启动了“生命全周期口腔卫生保健健康促进行动”，将通过多部门协作，为居民提供从生命孕育期、婴幼儿及学龄前期、学龄期、青少年及成年人期，直到老年期整个生命全过程的口腔保健教育等服务。', '3270', '0');
INSERT INTO `article` VALUES ('13', '网信办：百度商业推广信息禁超页面30%', '新京报', '1442798459875', '新闻', '新京报讯 （记者李丹丹）昨日下午，国家互联网信息办公室对外发布联合调查组对百度搜索在“魏则西事件”中存在问题的调查结果。国家网信办称，调查组要求百度公司改变竞价排名机制。\r\n　　国家网信办5月2日会同国家工商总局、国家卫生计生委和北京市有关部门成立联合调查组进驻百度公司，集中围绕百度搜索在“魏则西事件”中存在的问题、搜索竞价排名机制存在的缺陷进行了调查取证。\r\n　　调查组认为，百度搜索相关关键词竞价排名结果客观上对魏则西选择就医产生了影响，百度竞价排名机制存在付费竞价权重过高、商业推广标识不清等问题，影响了搜索结果的公正性和客观性，容易误导网民，必须立即整改。\r\n　　国家网信办称，搜索引擎是网民获取信息的重要渠道，具有很强引导作用。国家网信办将于近期在全国开展搜索服务专项治理，加快出台《互联网信息搜索服务管理规定》，促进搜索服务管理的法治化、规范化；会同相关部门严厉打击网上传播医疗、药品、保健品等事关人民群众生命健康安全的虚假信息、虚假广告等违法违规行为。国家工商总局将加快出台《互联网广告管理暂行办法》，进一步规范互联网广告市场秩序。\r\n　　昨日，百度搜索公司总裁向海龙表示，百度坚决拥护调查组的整改要求，深刻反思自身问题，绝不打一丝折扣。\r\n　　调查组对百度提三点整改要求\r\n　　●立即全面清理整顿医疗类等事关人民群众生命健康安全的商业推广服务。即日起，对医疗、药品、保健品等相关商业推广活动，进行全面清理整顿，对违规信息一经发现立即下线，对未获得主管部门批准资质的医疗机构不得进行商业推广。\r\n　　●改变竞价排名机制，不能仅以给钱多少作为排位标准。立即调整相关技术系统，在2016年5月31日前，提出以信誉度为主要权重的排名算法并落实到位；对商业推广信息逐条加注醒目标识，并予以风险提示；严格限制商业推广信息比例，每页面不得超过30%。\r\n　　●建立完善先行赔付等网民权益保障机制。畅通网民监督举报渠道，提高对网民举报的受理、处置效率；对违法违规信息及侵害网民权益行为，一经发现立即终止服务；建立完善相关机制，对网民因受商业推广信息误导而造成的损失予以先行赔付。\r\n　　解读1\r\n　　百度推广是否属于广告？\r\n　　中国政法大学传播法中心研究员朱巍表示，调查组将搜索引擎竞价排名法律性质定性为“商业推广服务”，是因为我国现有法律并未对其进行明确定义，现行广告法无法将其有效涵盖在内，在立法层面对竞价排名的法律性质出现了空白。\r\n　　他认为，在未来即将出台的工商总局《互联网广告暂行管理办法》和国家网信办《互联网信息搜索服务管理规定》，必将对竞价排名的商业推广服务性质做出进一步明确定性。\r\n　　朱巍表示，同时，调查组要求搜索引擎平台必须对“未获得主管部门批准的医疗机构”，不得进行商业推广服务。这实际是明确了搜索平台对医疗类广告的审核责任范畴，一方面，医疗推广的主体必须是医疗机构，相关下属“科室”、“中心”、“部门”或“野鸡医院”等都不能成为推广对象。\r\n　　他表示，另一方面，并非所有的医疗机构都可以做商业推广，必须事先得到医疗主管部门的“批准”。所以，平台的审核责任就要集中在两大块：一是医疗机构主体资格的审核，二是主管部门的事先批准。实际上，这也是将虚假信息的责任主体进行了分类明确：搜索引擎的传播者责任、主管部门的行政审核责任、医疗机构的广告主责任以及医疗机构网站维护者的广告商责任。\r\n　　解读2\r\n　　医疗推广如何进行监管？\r\n　　全国政协委员、南京中医药大学信息技术学院院长王旭东此前对新京报记者表示，百度上不经审批，随意发布的医疗广告，其最基本特点就是“虚假”。\r\n　　他举例称，诸如糖尿病、肝炎、白血病、癌症等慢性疑难病症，在当前的医学技术水平下，尚属无法治愈或疗效很差的疾病，但在网上却充斥着“彻底治愈”等严重违背医学常识的夸张宣传。王旭东呼吁把百度推广作为广告行为进行管理。\r\n　　朱巍认为，魏则西事件中，广告发布者是涉事医院自己的网站，其内容制定和选择都是广告主决定。百度推广在审核完相关资质真实性后，将选择的关键词用户引流至这个具有三甲资质的医院网站。对该涉事医院网站的所有信息，百度既不能删减，也无法核实信息的真实性，而只能做到形式审核。\r\n　　他表示，虽然搜索引擎的推广法律性质不是广告，但具有一定广告特征，应予以一定监管和规制。百度需要加强用户的资格审核力度，保证形式审核的真实性。具体来说，是要严格审查医疗机构的资质，如果形式审查合格，按照相关的法律规定，一级医疗机构将对商业推广服务带来的相应后果承担主体责任。\r\n　　解读3\r\n　　整改影响竞价排名盈利模式？\r\n　　南京中医药大学信息技术学院院长王旭东此前对新京报记者表示，互联网搜索引擎所实行的医疗广告竞价排名，一直是民间和业界所诟病的行为。\r\n　　朱巍表示，这就要求搜索平台在商业排名中，不能单纯追求商业利益，“给钱多少”不应成排名唯一标准，否则，失去信誉度和群众性的搜索结果就是“杀鸡取卵”，不仅对社会利益和群众根本利益造成损害，而且也会影响平台的商业信誉和发展前途。\r\n　　朱巍称，商业推广信息的标识问题是个大问题，很多用户不了解“推广”的商业性含义，易引起误导。建议在商业推广时加上“商业推广”字样，并转换颜色显著标记。最后，商业推广页面的显示每页不超过百分之三十，其严格程度实际超过谷歌ad words的现行标准，充分反映出我国政府为保护用户知情权和选择权对搜索引擎提出的更高要求。\r\n　　相比过去医疗关键词下架等举措，有行业人士称百度整改措施堪称“重拳”、“断臂”，也有观点认为整改措施其实没有动摇竞价排名——百度的基本商业模式。互联网实验室创始人方兴东指出，“作为扭曲信息之源的竞价排名模式应该休止”。\r\n　　解读4\r\n　　先行赔付后如何追偿？\r\n　　调查组要求百度建立完善机制，对网民因受商业推广信息误导而造成的损失予以先行赔付。\r\n　　其实，“先行赔付”的机制在多个互联网领域已建立起来。去年3月，工商总局曾发文鼓励电商企业建立先行赔付制度。\r\n　　朱巍表示，先行赔付制度本质，就是只要消费者能够证明自己因商业排名的误导造成了实际损害，同时，能够证明这些损害与商业排名信息传播之间的“因果关系”即可。先行赔付制度要求搜索平台承担更高的注意义务，这是与其商业推广服务的盈利性相适应的。\r\n　　他表示，从制度设计上看，平台一旦承担了先于赔偿责任后，即取得对虚假信息广告主的最终追偿权，从这个角度讲，平台责任不是最终责任，而是我国侵权责任法规定的“替代责任”形式，平台的最终追偿权将追溯到虚假广告主本身。\r\n　　回应\r\n　　百度 下线2518家医疗机构1.26亿条推广信息\r\n　　昨日，国家网信办会同国家工商总局、国家卫生计生委成立的联合调查组向社会公布了调查结果。百度搜索公司总裁向海龙表示，百度坚决拥护调查组的整改要求，深刻反思自身问题，绝不打一丝折扣。“百度应该提供更加优质、可靠的搜索服务。”“则西同学不幸离世，在社会上引起了巨大反响，也给百度带来极大触动，引发百度全员重新审视作为一家搜索引擎公司的责任。”\r\n　　据介绍，在调查期间，百度公司在联合调查组监督下，已对全部医疗类(含医疗机构、医药器械、药品等)机构的资质进行了重新审核，对2518家医疗机构、1.26亿条推广信息实现了下线处理。百度将在5月31日之前，落实以上整改要求，并接受监管部门和广大网民的后续监督。\r\n　　据介绍，百度将根据调查组的整改要求，从六个方面全面落实：\r\n　　●立即全面审查医疗类商业推广服务，对未获得主管部门批准资质的医疗机构坚决不予提供商业推广，同时对内容违规的医疗类推广信息(含药品、医疗器械等)及时进行下线处理。并落实军队有关规定，即日起百度停止包括各类解放军和武警部队医院在内的所有以解放军和武警部队名义进行的商业推广。\r\n　　●对于商业推广结果，改变过去以价格为主的排序机制，改为以信誉度为主，价格为辅的排序机制。\r\n　　●控制商业推广结果数量，对搜索结果页面特别是首页的商业推广信息数量进行严格限制，每页面商业推广信息条数所占比例不超过30%。\r\n　　●对所有搜索结果中的商业推广信息进行醒目标识，进行有效的风险提示。\r\n　　●加强搜索结果中的医疗内容生态建设，建立对医疗内容的评级制度，联合卫计委、中国医学科学院等机构共同提升医疗信息的质量，让网民获得准确权威的医疗信息和服务。\r\n　　●继续提升网民权益保障机制的建设，增设10亿元保障基金，对网民因使用商业推广信息遭遇假冒、欺诈而受到的损失经核定后进行先行赔付。\r\n　　新京报记者 刘夏', '342', '0');

-- ----------------------------
-- Table structure for article_collection
-- ----------------------------
DROP TABLE IF EXISTS `article_collection`;
CREATE TABLE `article_collection` (
  `phone` varchar(255) character set utf8 NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article_collection
-- ----------------------------
INSERT INTO `article_collection` VALUES ('17826833457', '2');
INSERT INTO `article_collection` VALUES ('17826833457', '3');
INSERT INTO `article_collection` VALUES ('17826833457', '4');
INSERT INTO `article_collection` VALUES ('17826833457', '5');
INSERT INTO `article_collection` VALUES ('17826833457', '6');
INSERT INTO `article_collection` VALUES ('17826833457', '8');
INSERT INTO `article_collection` VALUES ('17826833457', '9');
INSERT INTO `article_collection` VALUES ('17826833457', '10');
INSERT INTO `article_collection` VALUES ('17826833457', '11');
INSERT INTO `article_collection` VALUES ('17826833457', '12');
INSERT INTO `article_collection` VALUES ('17826833461', '2');
INSERT INTO `article_collection` VALUES ('17826833461', '8');
INSERT INTO `article_collection` VALUES ('17826833461', '9');
INSERT INTO `article_collection` VALUES ('17826833464', '6');
INSERT INTO `article_collection` VALUES ('13656688476', '4');
INSERT INTO `article_collection` VALUES ('13654343232', '3');
INSERT INTO `article_collection` VALUES ('13654343232', '3');
INSERT INTO `article_collection` VALUES ('13654343232', '9');
INSERT INTO `article_collection` VALUES ('17826833442', '2');
INSERT INTO `article_collection` VALUES ('17843787298', '5');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `token_user` varchar(50) default NULL,
  `token_article` varchar(50) NOT NULL,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`token_article`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for departi
-- ----------------------------
DROP TABLE IF EXISTS `departi`;
CREATE TABLE `departi` (
  `s_depid` int(5) default NULL,
  `s_aid` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of departi
-- ----------------------------
INSERT INTO `departi` VALUES ('12', '1');
INSERT INTO `departi` VALUES ('11', '2');
INSERT INTO `departi` VALUES ('10', '3');
INSERT INTO `departi` VALUES ('9', '4');
INSERT INTO `departi` VALUES ('8', '5');
INSERT INTO `departi` VALUES ('7', '6');
INSERT INTO `departi` VALUES ('6', '7');
INSERT INTO `departi` VALUES ('5', '8');
INSERT INTO `departi` VALUES ('4', '9');
INSERT INTO `departi` VALUES ('3', '10');
INSERT INTO `departi` VALUES ('2', '11');
INSERT INTO `departi` VALUES ('1', '12');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `depid` int(5) NOT NULL auto_increment,
  `name` varchar(100) character set utf8 default NULL,
  PRIMARY KEY  (`depid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '外科');
INSERT INTO `department` VALUES ('2', '内科');
INSERT INTO `department` VALUES ('3', '神经科');
INSERT INTO `department` VALUES ('4', '脑外科');
INSERT INTO `department` VALUES ('5', '消化科');
INSERT INTO `department` VALUES ('6', '儿科');
INSERT INTO `department` VALUES ('7', '泌尿科');
INSERT INTO `department` VALUES ('8', '耳鼻科');
INSERT INTO `department` VALUES ('9', '口腔科');
INSERT INTO `department` VALUES ('10', '皮肤科');
INSERT INTO `department` VALUES ('11', '眼科');
INSERT INTO `department` VALUES ('12', '内分泌科');

-- ----------------------------
-- Table structure for depdis
-- ----------------------------
DROP TABLE IF EXISTS `depdis`;
CREATE TABLE `depdis` (
  `s_id` int(5) default NULL,
  `s_disid` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of depdis
-- ----------------------------

-- ----------------------------
-- Table structure for disarti
-- ----------------------------
DROP TABLE IF EXISTS `disarti`;
CREATE TABLE `disarti` (
  `s_disid` int(5) default NULL,
  `s_aid` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of disarti
-- ----------------------------

-- ----------------------------
-- Table structure for disease
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(100) character set utf8 default NULL,
  `intro` varchar(1000) character set utf8 default NULL,
  `part` varchar(50) character set utf8 default NULL,
  `cause` varchar(5000) character set utf8 default NULL,
  `prevent` varchar(5000) character set utf8 default NULL,
  `nurse` varchar(5000) character set utf8 default NULL,
  `click` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of disease
-- ----------------------------
INSERT INTO `disease` VALUES ('1', '谢顶', 'hello', '外科', '遗传', '有前科', '外科', '2');
INSERT INTO `disease` VALUES ('2', '耳鸣', '123', '耳鼻喉科', '神经性', '有前科', '外科', '34');
INSERT INTO `disease` VALUES ('3', '喉咙痛', '234', '耳鼻喉科', '感冒', '有前科', '耳鼻喉科', '4545');
INSERT INTO `disease` VALUES ('4', '肌肉痛', '4322', '外科', '运动过度', '有前科', '外科', '4343');
INSERT INTO `disease` VALUES ('5', '牙疼', '4332', '口腔科', '蛀牙', '有前科', '口腔科', '432');
INSERT INTO `disease` VALUES ('6', '鼻炎', '322', '耳鼻喉科', '气温', '有前科', '耳鼻喉科', '432');
INSERT INTO `disease` VALUES ('7', '失明', '432', '眼科', '用眼过度', '有前科', '眼科', '432');
INSERT INTO `disease` VALUES ('8', '拉肚子', '322', '消化科', '吃坏东西', '有前科', '消化科', '223');
INSERT INTO `disease` VALUES ('9', '脚气', '43432', '皮肤科', '足浴店按摩', '有前科', '皮肤科', '4343');
INSERT INTO `disease` VALUES ('10', '头痛', '4343', '脑外科', '运动过度', '有前科', '脑外科', '4334');
INSERT INTO `disease` VALUES ('11', '破伤风', '422', '外科', '划伤', '有前科', '外科', '8787');
INSERT INTO `disease` VALUES ('12', '流鼻血', '4333', '外科', '碰撞', '有前科', '外科', '4357');
INSERT INTO `disease` VALUES ('13', '感冒', '322', '内科', '受凉', '有前科', '内科', '424');

-- ----------------------------
-- Table structure for dm
-- ----------------------------
DROP TABLE IF EXISTS `dm`;
CREATE TABLE `dm` (
  `city` varchar(50) character set utf8 default NULL,
  `name` varchar(100) character set utf8 default NULL,
  `sexd` varchar(5) character set utf8 default NULL,
  `sexa` varchar(5) character set utf8 default NULL,
  `allergen` varchar(200) character set utf8 default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dm
-- ----------------------------

-- ----------------------------
-- Table structure for doc_collection
-- ----------------------------
DROP TABLE IF EXISTS `doc_collection`;
CREATE TABLE `doc_collection` (
  `phone` varchar(255) character set utf8 default NULL,
  `token` varchar(255) character set utf8 default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doc_collection
-- ----------------------------
INSERT INTO `doc_collection` VALUES ('13654343232', '17826833457456789');
INSERT INTO `doc_collection` VALUES ('13783878799', '17826833460123456');
INSERT INTO `doc_collection` VALUES ('13784587437', '17826833463123456');
INSERT INTO `doc_collection` VALUES ('13858438727', '17826833449123456');
INSERT INTO `doc_collection` VALUES ('13654354343', '17826833461123456');
INSERT INTO `doc_collection` VALUES ('13784587943', '17826833442123456');
INSERT INTO `doc_collection` VALUES ('17826833449', '13656688476123456');
INSERT INTO `doc_collection` VALUES ('13783878799', '17826833461123456');
INSERT INTO `doc_collection` VALUES ('13784587387', '17826833461123456');
INSERT INTO `doc_collection` VALUES ('13784584393', '17826833461123456');
INSERT INTO `doc_collection` VALUES ('13784587943', '17826833461123456');
INSERT INTO `doc_collection` VALUES ('13654343232', '17826833442123456');
INSERT INTO `doc_collection` VALUES ('13784587437', '17826833442123456');
INSERT INTO `doc_collection` VALUES ('13783878799', '17826833442123456');
INSERT INTO `doc_collection` VALUES ('17843787322', '17826833442123456');
INSERT INTO `doc_collection` VALUES ('17843787298', '17826833461123456');

-- ----------------------------
-- Table structure for guide
-- ----------------------------
DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `name` varchar(100) character set utf8 default NULL,
  `time` varchar(50) character set utf8 default NULL,
  `fre` varchar(50) character set utf8 default NULL,
  `pre` varchar(100) character set utf8 default NULL,
  `pro` varchar(1000) character set utf8 default NULL,
  `sta` varchar(1000) character set utf8 default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guide
-- ----------------------------
INSERT INTO `guide` VALUES ('感冒', '1478347376', '56', '病情诊断', '合格', '体温');

-- ----------------------------
-- Table structure for ofchatlogs
-- ----------------------------
DROP TABLE IF EXISTS `ofchatlogs`;
CREATE TABLE `ofchatlogs` (
  `MESSAGEID` int(11) NOT NULL,
  `SESSIONJID` varchar(30) character set utf8 default NULL,
  `SENDER` varchar(30) character set utf8 default NULL,
  `RECEIVER` varchar(30) character set utf8 default NULL,
  `CREATEDATE` varchar(30) default NULL,
  `LENGTH` int(11) default NULL,
  `CONTENT` varchar(255) character set utf8 default NULL,
  `DETAIL` text character set utf8,
  `STATE` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofchatlogs
-- ----------------------------
INSERT INTO `ofchatlogs` VALUES ('30', 'admin@bill-think/XX', 'admin', 'test', '2016-04-19 15:46:19', '4', '[呲牙]', '<message id=\"TPHT7-5\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>[呲牙]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('32', 'test@bill-think/XX', 'test', 'admin', '2016-04-19 15:46:22', '4', '[调皮]', '<message id=\"47V8S-6\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>[调皮]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('34', 'admin@bill-think/XX', 'admin', 'test', '2016-04-19 16:29:15', '4', '[呲牙]', '<message id=\"TPHT7-15\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>[呲牙]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('36', 'test@bill-think/XX', 'test', 'admin', '2016-04-19 16:29:32', '4', '[呲牙]', '<message id=\"Heb4g-5\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>[呲牙]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('38', 'test@bill-think/XX', 'test', 'admin', '2016-04-19 16:29:36', '4', '[呲牙]', '<message id=\"Heb4g-6\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>[呲牙]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('40', 'admin@bill-think/XX', 'admin', 'test', '2016-04-19 16:29:39', '4', '[调皮]', '<message id=\"TPHT7-18\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>[调皮]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('42', 'admin@bill-think/XX', 'admin', 'test', '2016-04-19 16:29:49', '4', '[呲牙]', '<message id=\"TPHT7-19\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>[呲牙]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('44', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 20:55:30', '3', '123', '<message id=\"ojjch-10\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>123</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('46', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 20:57:25', '3', 'Tyg', '<message id=\"m54bY-6\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Tyg</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('48', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 20:57:31', '2', '黄赣', '<message id=\"ojjch-12\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>黄赣</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('50', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 20:57:35', '2', '硅谷', '<message id=\"m54bY-8\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>硅谷</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('52', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:30:52', '2', '点点', '<message id=\"ojjch-28\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>点点</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('54', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:30:55', '2', '好好', '<message id=\"m54bY-24\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>好好</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('56', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:35:58', '5', '。苹果公司', '<message id=\"m54bY-26\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>。苹果公司</body><x xmlns=\"jabber:x:delay\" stamp=\"20160420T13:36:25\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-20T13:36:25.416Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('58', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:36:03', '2', '方法', '<message id=\"ojjch-31\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>方法</body><x xmlns=\"jabber:x:delay\" stamp=\"20160420T13:37:00\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-20T13:37:00.401Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('60', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:36:07', '2', '好好', '<message id=\"m54bY-33\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>好好</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('62', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:41:04', '2', '往往', '<message id=\"ojjch-49\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>往往</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('64', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:41:07', '2', '好好', '<message id=\"m54bY-41\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>好好</body><x xmlns=\"jabber:x:delay\" stamp=\"20160420T13:41:35\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-20T13:41:35.542Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('66', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:41:12', '2', '点点', '<message id=\"ojjch-51\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>点点</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('68', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:44:40', '3', '恩嗯嗯', '<message id=\"ojjch-58\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>恩嗯嗯</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('70', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:44:54', '2', '点是', '<message id=\"ojjch-59\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>点是</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('72', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:45:00', '4', '广告公司', '<message id=\"m54bY-49\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>广告公司</body><x xmlns=\"jabber:x:delay\" stamp=\"20160420T13:45:18\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-20T13:45:18.710Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('74', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:45:00', '2', '寒假', '<message id=\"m54bY-50\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>寒假</body><x xmlns=\"jabber:x:delay\" stamp=\"20160420T13:45:33\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-20T13:45:33.724Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('76', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:45:08', '2', '是是', '<message id=\"ojjch-62\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>是是</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('78', 'test@bill-think/XX', 'test', 'admin', '2016-04-20 21:57:35', '2', '是是', '<message id=\"ojjch-69\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>是是</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('80', 'admin@bill-think/XX', 'admin', 'test', '2016-04-20 21:57:37', '3', 'v很好', '<message id=\"m54bY-64\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>v很好</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('82', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 16:53:58', '2', '呵呵', '<message id=\"nhe49-5\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>呵呵</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('84', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 16:54:05', '2', '方法', '<message id=\"JcIDk-6\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('86', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 16:54:15', '2', '音乐', '<message id=\"JcIDk-7\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>音乐</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('88', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 19:07:16', '3', '哈哈哈', '<message id=\"uuC27-5\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>哈哈哈</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('90', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 19:07:18', '2', '方法', '<message id=\"rno6h-6\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('92', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 19:31:16', '2', '是点', '<message id=\"CLvQu-5\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>是点</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('94', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:16:56', '3', 'Ss ', '<message id=\"4THdv-26\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Ss </body><x xmlns=\"jabber:x:delay\" stamp=\"20160421T12:17:28\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-21T12:17:28.946Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('96', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:17:06', '4', '黄赣更改', '<message id=\"iIi9I-31\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>黄赣更改</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('98', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:17:15', '4', '忍辱负重', '<message id=\"iIi9I-38\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>忍辱负重</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('100', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:17:24', '3', 'Re ', '<message id=\"4THdv-44\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Re </body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('102', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:17:37', '2', '托福', '<message id=\"iIi9I-51\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>托福</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('104', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:17:43', '3', 'Dd ', '<message id=\"4THdv-53\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Dd </body><x xmlns=\"jabber:x:delay\" stamp=\"20160421T12:18:15\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-04-21T12:18:15.029Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('106', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 20:19:21', '2', 'Ff', '<message id=\"66IqX-8\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Ff</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('108', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:19:26', '3', '黄花岗', '<message id=\"iIi9I-65\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>黄花岗</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('110', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 20:19:30', '5', 'Rddf ', '<message id=\"66IqX-10\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Rddf </body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('112', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:20:18', '2', '方法', '<message id=\"iIi9I-67\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('114', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 20:20:20', '3', 'Gh ', '<message id=\"66IqX-12\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Gh </body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('116', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 20:20:41', '2', '方法', '<message id=\"66IqX-13\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('118', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:20:44', '2', '点人', '<message id=\"iIi9I-70\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>点人</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('120', 'admin@bill-think/XX', 'admin', 'test', '2016-04-21 20:20:52', '2', '官方', '<message id=\"66IqX-15\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>官方</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('122', 'test@bill-think/XX', 'test', 'admin', '2016-04-21 20:20:55', '2', '方法', '<message id=\"iIi9I-72\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('124', 'test@bill-think/XX', 'test', 'admin', '2016-04-22 15:17:19', '3', 'Ghh', '<message id=\"U3kHl-24\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Ghh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('126', 'test@bill-think/XX', 'test', 'admin', '2016-04-22 15:17:34', '3', 'Hhh', '<message id=\"U3kHl-25\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Hhh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('128', 'admin@bill-think/XX', 'admin', 'test', '2016-04-22 15:17:48', '2', 'Dd', '<message id=\"6vpN7-10\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Dd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('130', 'test@bill-think/XX', 'test', 'admin', '2016-04-22 15:17:50', '2', 'Gh', '<message id=\"U3kHl-27\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Gh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('132', 'admin@bill-think/XX', 'admin', 'test', '2016-04-23 22:07:35', '2', '分都', '<message id=\"AlQN5-5\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>分都</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('133', 'test@bill-think/XX', 'test', 'admin', '2016-04-23 22:07:37', '2', 'Hh', '<message id=\"xLd9A-6\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>Hh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('134', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 11:16:27', '2', 'Dd', '<message id=\"IY7RA-13\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Dd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('135', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 11:16:40', '2', '都都', '<message id=\"jeUu1-6\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>都都</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('136', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 11:16:47', '2', 'Hh', '<message id=\"IY7RA-15\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Hh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('137', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 11:16:50', '2', '让人', '<message id=\"jeUu1-8\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>让人</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('138', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 11:16:52', '2', 'Gh', '<message id=\"IY7RA-17\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Gh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('139', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 11:17:41', '2', 'Ff', '<message id=\"IY7RA-18\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Ff</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('140', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 11:24:00', '2', 'Dd', '<message id=\"IY7RA-19\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Dd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('141', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 11:24:15', '2', 'Ff', '<message id=\"IY7RA-20\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Ff</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('142', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 11:24:23', '2', '语言', '<message id=\"jeUu1-13\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>语言</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('143', 'aaa@bill-think/Spark', 'aaa', 'admin', '2016-04-24 11:31:21', '3', 'nij', '<message id=\"dVlwc-34\" to=\"admin@bill-think\" from=\"aaa@bill-think/Spark\" type=\"chat\"><body>nij</body><thread>kq8X2w</thread><x xmlns=\"jabber:x:event\"><offline/><composing/></x></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('144', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 21:06:59', '2', '都都', '<message id=\"FN3Wy-5\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>都都</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('145', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 21:07:23', '2', 'Ds', '<message id=\"2ar1i-5\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Ds</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('146', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 21:07:30', '2', '更改', '<message id=\"FN3Wy-7\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>更改</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('147', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 21:07:33', '3', 'Fd ', '<message id=\"2ar1i-7\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Fd </body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('148', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 21:07:37', '3', '要好好', '<message id=\"FN3Wy-9\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>要好好</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('149', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 21:07:40', '3', 'Gf ', '<message id=\"2ar1i-9\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>Gf </body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('150', 'admin@bill-think/XX', 'admin', 'lili', '2016-04-24 21:07:45', '4', '[流汗]', '<message id=\"FN3Wy-11\" to=\"lili@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>[流汗]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('151', 'lili@bill-think/XX', 'lili', 'admin', '2016-04-24 21:07:49', '4', '[偷笑]', '<message id=\"2ar1i-11\" to=\"admin@bill-think\" type=\"chat\" from=\"lili@bill-think/XX\"><body>[偷笑]</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('152', 'admin@bill-think/XX', 'admin', 'admin', '2016-05-01 21:50:47', '3', 'Ddd', '<message id=\"XO8bh-5\" to=\"admin@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Ddd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('153', 'admin@bill-think/XX', 'admin', 'admin', '2016-05-01 21:51:01', '2', 'Dd', '<message id=\"XO8bh-7\" to=\"admin@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Dd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('154', 'admin@bill-think/XX', 'admin', 'admin', '2016-05-01 21:51:04', '1', 'F', '<message id=\"XO8bh-9\" to=\"admin@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>F</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('155', 'test@bill-think/XX', 'test', 'admin', '2016-05-01 21:56:17', '3', 'zsx', '<message id=\"gKp1u-5\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>zsx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('156', 'admin@bill-think/XX', 'admin', 'test', '2016-05-01 21:56:23', '2', 'Dd', '<message id=\"XO8bh-12\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Dd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('157', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 16:03:09', '2', 'zx', '<message id=\"KkEUC-5\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>zx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('158', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 16:03:19', '2', '更改', '<message id=\"2153J-7\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>更改</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('159', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 16:05:07', '2', '黄赣', '<message id=\"2153J-8\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>黄赣</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('160', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 16:34:44', '4', ' bvc', '<message id=\"KkEUC-10\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body> bvc</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('161', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 16:43:07', '2', 'ff', '<message id=\"KkEUC-11\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>ff</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('162', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 16:57:48', '3', 'bbd', '<message id=\"KkEUC-13\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>bbd</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('163', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 16:59:26', '3', '分更改', '<message id=\"0WtoK-5\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>分更改</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('164', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 16:59:30', '2', '更改', '<message id=\"0WtoK-6\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>更改</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('165', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 17:00:03', '3', 'ggv', '<message id=\"KkEUC-17\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>ggv</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('166', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 17:58:58', '3', 'fcx', '<message id=\"KkEUC-33\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>fcx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('167', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 18:38:10', '3', 'fgt', '<message id=\"KkEUC-43\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>fgt</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('168', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 18:39:53', '3', 'hhj', '<message id=\"KkEUC-44\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>hhj</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('169', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 18:41:04', '5', '几句话都吧', '<message id=\"WUJSk-5\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>几句话都吧</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('170', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 19:04:24', '3', 'vcx', '<message id=\"KkEUC-53\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>vcx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('171', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 20:10:03', '4', 'hvzv', '<message id=\"KkEUC-67\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>hvzv</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('172', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 20:10:12', '4', 'ggcs', '<message id=\"KkEUC-68\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>ggcs</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('173', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 20:10:45', '2', '方法', '<message id=\"5eiL7-5\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('174', 'admin@bill-think/XX', 'admin', 'test', '2016-05-02 20:17:58', '4', '是计算机', '<message id=\"5eiL7-6\" to=\"test@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>是计算机</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('175', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 20:17:59', '3', 'ycx', '<message id=\"KkEUC-71\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>ycx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('176', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:19:11', '4', '1234', '<message id=\"pHL3H-5\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>1234</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('177', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:22:38', '4', '1234', '<message id=\"9Aw4H-5\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>1234</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('178', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:24:07', '3', '现成的', '<message id=\"Wrqtx-5\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>现成的</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('179', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:24:13', '3', '当饭吃', '<message id=\"Wrqtx-6\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>当饭吃</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('180', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:24:27', '3', '犯法的', '<message id=\"Wrqtx-7\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>犯法的</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('181', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:24:30', '2', '大大', '<message id=\"Wrqtx-8\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>大大</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('182', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:24:36', '3', '嘟嘟嘟', '<message id=\"Wrqtx-9\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>嘟嘟嘟</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('183', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 20:26:38', '4', 'hvxx', '<message id=\"KkEUC-80\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>hvxx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('184', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:32:15', '4', '宝贝心肝', '<message id=\"jr292-5\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>宝贝心肝</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('185', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 20:32:23', '4', 'gvxx', '<message id=\"KkEUC-82\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>gvxx</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('186', 'admin@bill-think/Smack', 'admin', 'test', '2016-05-02 20:34:03', '3', '你不发', '<message id=\"SxIdO-5\" to=\"test@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>你不发</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('187', 'test@bill-think/XX', 'test', 'admin', '2016-05-02 20:34:05', '3', 'bvc', '<message id=\"KkEUC-84\" to=\"admin@bill-think\" type=\"chat\" from=\"test@bill-think/XX\"><body>bvc</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('188', 'admin@bill-think/Smack', 'admin', '17826833549', '2016-05-02 22:00:43', '3', '给发给', '<message id=\"rP7BG-5\" to=\"17826833549@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>给发给</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('189', 'admin@bill-think/Smack', 'admin', '17826833549', '2016-05-02 22:01:04', '3', '在现代', '<message id=\"rP7BG-6\" to=\"17826833549@bill-think/xx\" type=\"chat\" from=\"admin@bill-think/Smack\"><body>在现代</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('190', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-02 22:01:30', '5', '铁人浮生记', '<message id=\"178Ne-7\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>铁人浮生记</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('191', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-02 22:09:43', '3', '他都都', '<message id=\"178Ne-8\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>他都都</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('192', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 15:37:26', '2', '方法', '<message id=\"5l6X0-5\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('193', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 15:37:34', '3', 'Vhh', '<message id=\"VVsPQ-6\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Vhh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('194', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 15:37:48', '3', '发发发', '<message id=\"5l6X0-7\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>发发发</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('195', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 15:37:51', '3', 'Ggg', '<message id=\"VVsPQ-8\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Ggg</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('196', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:01:00', '4', '风风光光', '<message id=\"5l6X0-29\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>风风光光</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('197', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:01:44', '2', '方法', '<message id=\"5l6X0-36\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('198', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 16:02:16', '3', 'hh ', '<message id=\"VVsPQ-10\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>hh </body><x xmlns=\"jabber:x:delay\" stamp=\"20160503T08:01:03\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-05-03T08:01:03.422Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('199', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 16:02:16', '3', 'Yyh', '<message id=\"VVsPQ-11\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Yyh</body><x xmlns=\"jabber:x:delay\" stamp=\"20160503T08:01:24\"/><delay xmlns=\"urn:xmpp:delay\" stamp=\"2016-05-03T08:01:24.397Z\"/><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('200', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 16:02:21', '2', 'Gg', '<message id=\"4c9nf-5\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Gg</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('201', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:02:25', '2', '恩哦', '<message id=\"5l6X0-40\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>恩哦</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('202', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:02:50', '3', '人方法', '<message id=\"5l6X0-41\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>人方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('203', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 16:02:56', '3', 'Ggg', '<message id=\"4c9nf-8\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Ggg</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('204', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:03:02', '2', '都都', '<message id=\"5l6X0-43\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>都都</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('205', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:04:42', '2', '方法', '<message id=\"5l6X0-44\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('206', '17826833549@bill-think/XX', '17826833549', 'admin', '2016-05-03 16:05:08', '2', '方法', '<message id=\"5l6X0-45\" to=\"admin@bill-think\" type=\"chat\" from=\"17826833549@bill-think/XX\"><body>方法</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');
INSERT INTO `ofchatlogs` VALUES ('207', 'admin@bill-think/XX', 'admin', '17826833549', '2016-05-03 16:05:11', '2', 'Hh', '<message id=\"4c9nf-17\" to=\"17826833549@bill-think\" type=\"chat\" from=\"admin@bill-think/XX\"><body>Hh</body><request xmlns=\"urn:xmpp:receipts\"/></message>', '0');

-- ----------------------------
-- Table structure for ofextcomponentconf
-- ----------------------------
DROP TABLE IF EXISTS `ofextcomponentconf`;
CREATE TABLE `ofextcomponentconf` (
  `subdomain` varchar(255) NOT NULL,
  `wildcard` tinyint(4) NOT NULL,
  `secret` varchar(255) default NULL,
  `permission` varchar(10) NOT NULL,
  PRIMARY KEY  (`subdomain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofextcomponentconf
-- ----------------------------

-- ----------------------------
-- Table structure for ofgroup
-- ----------------------------
DROP TABLE IF EXISTS `ofgroup`;
CREATE TABLE `ofgroup` (
  `groupName` varchar(50) NOT NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`groupName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofgroup
-- ----------------------------

-- ----------------------------
-- Table structure for ofgroupprop
-- ----------------------------
DROP TABLE IF EXISTS `ofgroupprop`;
CREATE TABLE `ofgroupprop` (
  `groupName` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY  (`groupName`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofgroupprop
-- ----------------------------

-- ----------------------------
-- Table structure for ofgroupuser
-- ----------------------------
DROP TABLE IF EXISTS `ofgroupuser`;
CREATE TABLE `ofgroupuser` (
  `groupName` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `administrator` tinyint(4) NOT NULL,
  PRIMARY KEY  (`groupName`,`username`,`administrator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofgroupuser
-- ----------------------------

-- ----------------------------
-- Table structure for ofhistory
-- ----------------------------
DROP TABLE IF EXISTS `ofhistory`;
CREATE TABLE `ofhistory` (
  `username` varchar(64) character set utf8 NOT NULL,
  `messageID` int(11) NOT NULL,
  `creationDate` varchar(64) character set utf8 NOT NULL,
  `messageSize` int(11) NOT NULL,
  `stanza` text NOT NULL,
  PRIMARY KEY  (`username`,`messageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofhistory
-- ----------------------------

-- ----------------------------
-- Table structure for ofid
-- ----------------------------
DROP TABLE IF EXISTS `ofid`;
CREATE TABLE `ofid` (
  `idType` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY  (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofid
-- ----------------------------
INSERT INTO `ofid` VALUES ('18', '56');
INSERT INTO `ofid` VALUES ('19', '88');
INSERT INTO `ofid` VALUES ('23', '1');
INSERT INTO `ofid` VALUES ('25', '20');
INSERT INTO `ofid` VALUES ('26', '2');
INSERT INTO `ofid` VALUES ('52', '512');
INSERT INTO `ofid` VALUES ('501', '44');
INSERT INTO `ofid` VALUES ('502', '6');
INSERT INTO `ofid` VALUES ('503', '11');

-- ----------------------------
-- Table structure for ofmucaffiliation
-- ----------------------------
DROP TABLE IF EXISTS `ofmucaffiliation`;
CREATE TABLE `ofmucaffiliation` (
  `roomID` bigint(20) NOT NULL,
  `jid` text NOT NULL,
  `affiliation` tinyint(4) NOT NULL,
  PRIMARY KEY  (`roomID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucaffiliation
-- ----------------------------

-- ----------------------------
-- Table structure for ofmucconversationlog
-- ----------------------------
DROP TABLE IF EXISTS `ofmucconversationlog`;
CREATE TABLE `ofmucconversationlog` (
  `roomID` bigint(20) NOT NULL,
  `sender` text NOT NULL,
  `nickname` varchar(255) default NULL,
  `logTime` char(15) NOT NULL,
  `subject` varchar(255) default NULL,
  `body` text,
  KEY `ofMucConversationLog_time_idx` (`logTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucconversationlog
-- ----------------------------

-- ----------------------------
-- Table structure for ofmucmember
-- ----------------------------
DROP TABLE IF EXISTS `ofmucmember`;
CREATE TABLE `ofmucmember` (
  `roomID` bigint(20) NOT NULL,
  `jid` text NOT NULL,
  `nickname` varchar(255) default NULL,
  `firstName` varchar(100) default NULL,
  `lastName` varchar(100) default NULL,
  `url` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `faqentry` varchar(100) default NULL,
  PRIMARY KEY  (`roomID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucmember
-- ----------------------------

-- ----------------------------
-- Table structure for ofmucroom
-- ----------------------------
DROP TABLE IF EXISTS `ofmucroom`;
CREATE TABLE `ofmucroom` (
  `serviceID` bigint(20) NOT NULL,
  `roomID` bigint(20) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `naturalName` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `lockedDate` char(15) NOT NULL,
  `emptyDate` char(15) default NULL,
  `canChangeSubject` tinyint(4) NOT NULL,
  `maxUsers` int(11) NOT NULL,
  `publicRoom` tinyint(4) NOT NULL,
  `moderated` tinyint(4) NOT NULL,
  `membersOnly` tinyint(4) NOT NULL,
  `canInvite` tinyint(4) NOT NULL,
  `roomPassword` varchar(50) default NULL,
  `canDiscoverJID` tinyint(4) NOT NULL,
  `logEnabled` tinyint(4) NOT NULL,
  `subject` varchar(100) default NULL,
  `rolesToBroadcast` tinyint(4) NOT NULL,
  `useReservedNick` tinyint(4) NOT NULL,
  `canChangeNick` tinyint(4) NOT NULL,
  `canRegister` tinyint(4) NOT NULL,
  PRIMARY KEY  (`serviceID`,`name`),
  KEY `ofMucRoom_roomid_idx` (`roomID`),
  KEY `ofMucRoom_serviceid_idx` (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucroom
-- ----------------------------

-- ----------------------------
-- Table structure for ofmucroomprop
-- ----------------------------
DROP TABLE IF EXISTS `ofmucroomprop`;
CREATE TABLE `ofmucroomprop` (
  `roomID` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY  (`roomID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucroomprop
-- ----------------------------

-- ----------------------------
-- Table structure for ofmucservice
-- ----------------------------
DROP TABLE IF EXISTS `ofmucservice`;
CREATE TABLE `ofmucservice` (
  `serviceID` bigint(20) NOT NULL,
  `subdomain` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `isHidden` tinyint(4) NOT NULL,
  PRIMARY KEY  (`subdomain`),
  KEY `ofMucService_serviceid_idx` (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucservice
-- ----------------------------
INSERT INTO `ofmucservice` VALUES ('1', 'conference', null, '0');

-- ----------------------------
-- Table structure for ofmucserviceprop
-- ----------------------------
DROP TABLE IF EXISTS `ofmucserviceprop`;
CREATE TABLE `ofmucserviceprop` (
  `serviceID` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY  (`serviceID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofmucserviceprop
-- ----------------------------

-- ----------------------------
-- Table structure for ofoffline
-- ----------------------------
DROP TABLE IF EXISTS `ofoffline`;
CREATE TABLE `ofoffline` (
  `username` varchar(64) NOT NULL,
  `messageID` bigint(20) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `messageSize` int(11) NOT NULL,
  `stanza` text NOT NULL,
  PRIMARY KEY  (`username`,`messageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofoffline
-- ----------------------------
INSERT INTO `ofoffline` VALUES ('admin', '39', '001462712389401', '146', '<message id=\"meLvA-81\" to=\"admin@bill-think\" type=\"chat\" from=\"kobe@bill-think/XX\"><body>Ggy </body><request xmlns=\"urn:xmpp:receipts\"/></message>');
INSERT INTO `ofoffline` VALUES ('admin', '49', '001462881880673', '123', '<message from=\"bill-think\" to=\"admin@bill-think\"><body>A server or plugin update was found: Openfire 4.0.2</body></message>');
INSERT INTO `ofoffline` VALUES ('admin', '78', '001463105531148', '123', '<message from=\"bill-think\" to=\"admin@bill-think\"><body>A server or plugin update was found: Openfire 4.0.2</body></message>');

-- ----------------------------
-- Table structure for ofpresence
-- ----------------------------
DROP TABLE IF EXISTS `ofpresence`;
CREATE TABLE `ofpresence` (
  `username` varchar(64) NOT NULL,
  `offlinePresence` text,
  `offlineDate` char(15) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpresence
-- ----------------------------
INSERT INTO `ofpresence` VALUES ('1234567890', null, '001463120793400');
INSERT INTO `ofpresence` VALUES ('12345678998', null, '001462934641700');
INSERT INTO `ofpresence` VALUES ('17826833442', null, '001462919650685');
INSERT INTO `ofpresence` VALUES ('17826833461', null, '001463134807056');
INSERT INTO `ofpresence` VALUES ('17826833549', null, '001462263937792');
INSERT INTO `ofpresence` VALUES ('17826833570', null, '001463134447985');
INSERT INTO `ofpresence` VALUES ('17843787298', null, '001463134307565');
INSERT INTO `ofpresence` VALUES ('admin', null, '001462710730020');
INSERT INTO `ofpresence` VALUES ('jordan', null, '001461380610024');
INSERT INTO `ofpresence` VALUES ('kobe', null, '001462712688623');

-- ----------------------------
-- Table structure for ofprivacylist
-- ----------------------------
DROP TABLE IF EXISTS `ofprivacylist`;
CREATE TABLE `ofprivacylist` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isDefault` tinyint(4) NOT NULL,
  `list` text NOT NULL,
  PRIMARY KEY  (`username`,`name`),
  KEY `ofPrivacyList_default_idx` (`username`,`isDefault`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofprivacylist
-- ----------------------------
INSERT INTO `ofprivacylist` VALUES ('aaa', 'block', '0', '<list xmlns=\"jabber:iq:privacy\" name=\"block\"><item action=\"deny\" order=\"1\" type=\"group\" value=\"block\"><message/><presence-in/><presence-out/><iq/></item></list>');
INSERT INTO `ofprivacylist` VALUES ('admin', 'block', '1', '<list xmlns=\"jabber:iq:privacy\" name=\"block\"><item action=\"deny\" order=\"1\" type=\"group\" value=\"block\"><message/><presence-in/><presence-out/><iq/></item></list>');
INSERT INTO `ofprivacylist` VALUES ('ddd', 'block', '1', '<list xmlns=\"jabber:iq:privacy\" name=\"block\"><item action=\"deny\" order=\"1\" type=\"group\" value=\"block\"><message/><presence-in/><presence-out/><iq/></item></list>');
INSERT INTO `ofprivacylist` VALUES ('jordan', 'block', '1', '<list xmlns=\"jabber:iq:privacy\" name=\"block\"><item action=\"deny\" order=\"1\" type=\"group\" value=\"block\"><message/><presence-in/><presence-out/><iq/></item></list>');

-- ----------------------------
-- Table structure for ofprivate
-- ----------------------------
DROP TABLE IF EXISTS `ofprivate`;
CREATE TABLE `ofprivate` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `namespace` varchar(200) NOT NULL,
  `privateData` text NOT NULL,
  PRIMARY KEY  (`username`,`name`,`namespace`(100))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofprivate
-- ----------------------------

-- ----------------------------
-- Table structure for ofproperty
-- ----------------------------
DROP TABLE IF EXISTS `ofproperty`;
CREATE TABLE `ofproperty` (
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofproperty
-- ----------------------------
INSERT INTO `ofproperty` VALUES ('admin.authorizedJIDs', 'admin@bill-think,tomcat@bill-think');
INSERT INTO `ofproperty` VALUES ('adminConsole.port', '9090');
INSERT INTO `ofproperty` VALUES ('adminConsole.securePort', '9091');
INSERT INTO `ofproperty` VALUES ('archive.enabled', 'true');
INSERT INTO `ofproperty` VALUES ('connectionProvider.className', 'org.jivesoftware.database.DefaultConnectionProvider');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.connectionTimeout', '1.0');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.driver', 'com.mysql.jdbc.Driver');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.maxConnections', '25');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.minConnections', '5');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.password', '86b0bccaff1c44a3a5ce306d4d658537835308ce30a03d75');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.serverURL', 'jdbc:mysql://localhost:3306/openfire?useUnicode=true&characterEncoding=utf8');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.testAfterUse', 'false');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.testBeforeUse', 'false');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.testSQL', 'select 1');
INSERT INTO `ofproperty` VALUES ('database.defaultProvider.username', '9d2333aa9856bfc3adba43e9c39a45fbeeeda6cc2a289242');
INSERT INTO `ofproperty` VALUES ('locale', 'zh_CN');
INSERT INTO `ofproperty` VALUES ('locale.timeZone', 'GMT');
INSERT INTO `ofproperty` VALUES ('passwordKey', 'E1HbtOqr6y0SAYh');
INSERT INTO `ofproperty` VALUES ('provider.admin.className', 'org.jivesoftware.openfire.admin.DefaultAdminProvider');
INSERT INTO `ofproperty` VALUES ('provider.auth.className', 'org.jivesoftware.openfire.auth.DefaultAuthProvider');
INSERT INTO `ofproperty` VALUES ('provider.group.className', 'org.jivesoftware.openfire.group.DefaultGroupProvider');
INSERT INTO `ofproperty` VALUES ('provider.lockout.className', 'org.jivesoftware.openfire.lockout.DefaultLockOutProvider');
INSERT INTO `ofproperty` VALUES ('provider.securityAudit.className', 'org.jivesoftware.openfire.security.DefaultSecurityAuditProvider');
INSERT INTO `ofproperty` VALUES ('provider.user.className', 'org.jivesoftware.openfire.user.DefaultUserProvider');
INSERT INTO `ofproperty` VALUES ('provider.vcard.className', 'org.jivesoftware.openfire.vcard.DefaultVCardProvider');
INSERT INTO `ofproperty` VALUES ('sasl.scram-sha-1.iteration-count', '4096');
INSERT INTO `ofproperty` VALUES ('setup', 'true');
INSERT INTO `ofproperty` VALUES ('stream.management.active', 'true');
INSERT INTO `ofproperty` VALUES ('stream.management.requestFrequency', '5');
INSERT INTO `ofproperty` VALUES ('update.lastCheck', '1463105532473');
INSERT INTO `ofproperty` VALUES ('xmpp.auth.anonymous', 'true');
INSERT INTO `ofproperty` VALUES ('xmpp.domain', 'bill-think');
INSERT INTO `ofproperty` VALUES ('xmpp.session.conflict-limit', '0');
INSERT INTO `ofproperty` VALUES ('xmpp.socket.ssl.active', 'true');

-- ----------------------------
-- Table structure for ofpubsubaffiliation
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubaffiliation`;
CREATE TABLE `ofpubsubaffiliation` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `affiliation` varchar(10) NOT NULL,
  PRIMARY KEY  (`serviceID`,`nodeID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubaffiliation
-- ----------------------------
INSERT INTO `ofpubsubaffiliation` VALUES ('pubsub', '', 'bill-think', 'owner');

-- ----------------------------
-- Table structure for ofpubsubdefaultconf
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubdefaultconf`;
CREATE TABLE `ofpubsubdefaultconf` (
  `serviceID` varchar(100) NOT NULL,
  `leaf` tinyint(4) NOT NULL,
  `deliverPayloads` tinyint(4) NOT NULL,
  `maxPayloadSize` int(11) NOT NULL,
  `persistItems` tinyint(4) NOT NULL,
  `maxItems` int(11) NOT NULL,
  `notifyConfigChanges` tinyint(4) NOT NULL,
  `notifyDelete` tinyint(4) NOT NULL,
  `notifyRetract` tinyint(4) NOT NULL,
  `presenceBased` tinyint(4) NOT NULL,
  `sendItemSubscribe` tinyint(4) NOT NULL,
  `publisherModel` varchar(15) NOT NULL,
  `subscriptionEnabled` tinyint(4) NOT NULL,
  `accessModel` varchar(10) NOT NULL,
  `language` varchar(255) default NULL,
  `replyPolicy` varchar(15) default NULL,
  `associationPolicy` varchar(15) NOT NULL,
  `maxLeafNodes` int(11) NOT NULL,
  PRIMARY KEY  (`serviceID`,`leaf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubdefaultconf
-- ----------------------------
INSERT INTO `ofpubsubdefaultconf` VALUES ('pubsub', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', 'publishers', '1', 'open', 'English', null, 'all', '-1');
INSERT INTO `ofpubsubdefaultconf` VALUES ('pubsub', '1', '1', '5120', '0', '-1', '1', '1', '1', '0', '1', 'publishers', '1', 'open', 'English', null, 'all', '-1');

-- ----------------------------
-- Table structure for ofpubsubitem
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubitem`;
CREATE TABLE `ofpubsubitem` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `payload` mediumtext,
  PRIMARY KEY  (`serviceID`,`nodeID`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubitem
-- ----------------------------

-- ----------------------------
-- Table structure for ofpubsubnode
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubnode`;
CREATE TABLE `ofpubsubnode` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `leaf` tinyint(4) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  `parent` varchar(100) default NULL,
  `deliverPayloads` tinyint(4) NOT NULL,
  `maxPayloadSize` int(11) default NULL,
  `persistItems` tinyint(4) default NULL,
  `maxItems` int(11) default NULL,
  `notifyConfigChanges` tinyint(4) NOT NULL,
  `notifyDelete` tinyint(4) NOT NULL,
  `notifyRetract` tinyint(4) NOT NULL,
  `presenceBased` tinyint(4) NOT NULL,
  `sendItemSubscribe` tinyint(4) NOT NULL,
  `publisherModel` varchar(15) NOT NULL,
  `subscriptionEnabled` tinyint(4) NOT NULL,
  `configSubscription` tinyint(4) NOT NULL,
  `accessModel` varchar(10) NOT NULL,
  `payloadType` varchar(100) default NULL,
  `bodyXSLT` varchar(100) default NULL,
  `dataformXSLT` varchar(100) default NULL,
  `creator` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `language` varchar(255) default NULL,
  `name` varchar(50) default NULL,
  `replyPolicy` varchar(15) default NULL,
  `associationPolicy` varchar(15) default NULL,
  `maxLeafNodes` int(11) default NULL,
  PRIMARY KEY  (`serviceID`,`nodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubnode
-- ----------------------------
INSERT INTO `ofpubsubnode` VALUES ('pubsub', '', '0', '001460725672965', '001460725672965', null, '0', '0', '0', '0', '1', '1', '1', '0', '0', 'publishers', '1', '0', 'open', '', '', '', 'bill-think', '', 'English', '', null, 'all', '-1');

-- ----------------------------
-- Table structure for ofpubsubnodegroups
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubnodegroups`;
CREATE TABLE `ofpubsubnodegroups` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `rosterGroup` varchar(100) NOT NULL,
  KEY `ofPubsubNodeGroups_idx` (`serviceID`,`nodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubnodegroups
-- ----------------------------

-- ----------------------------
-- Table structure for ofpubsubnodejids
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubnodejids`;
CREATE TABLE `ofpubsubnodejids` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `associationType` varchar(20) NOT NULL,
  PRIMARY KEY  (`serviceID`,`nodeID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubnodejids
-- ----------------------------

-- ----------------------------
-- Table structure for ofpubsubsubscription
-- ----------------------------
DROP TABLE IF EXISTS `ofpubsubsubscription`;
CREATE TABLE `ofpubsubsubscription` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `state` varchar(15) NOT NULL,
  `deliver` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL,
  `digest_frequency` int(11) NOT NULL,
  `expire` char(15) default NULL,
  `includeBody` tinyint(4) NOT NULL,
  `showValues` varchar(30) default NULL,
  `subscriptionType` varchar(10) NOT NULL,
  `subscriptionDepth` tinyint(4) NOT NULL,
  `keyword` varchar(200) default NULL,
  PRIMARY KEY  (`serviceID`,`nodeID`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofpubsubsubscription
-- ----------------------------

-- ----------------------------
-- Table structure for ofremoteserverconf
-- ----------------------------
DROP TABLE IF EXISTS `ofremoteserverconf`;
CREATE TABLE `ofremoteserverconf` (
  `xmppDomain` varchar(255) NOT NULL,
  `remotePort` int(11) default NULL,
  `permission` varchar(10) NOT NULL,
  PRIMARY KEY  (`xmppDomain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofremoteserverconf
-- ----------------------------

-- ----------------------------
-- Table structure for ofroster
-- ----------------------------
DROP TABLE IF EXISTS `ofroster`;
CREATE TABLE `ofroster` (
  `rosterID` bigint(20) NOT NULL,
  `username` varchar(64) NOT NULL,
  `jid` varchar(1024) NOT NULL,
  `sub` tinyint(4) NOT NULL,
  `ask` tinyint(4) NOT NULL,
  `recv` tinyint(4) NOT NULL,
  `nick` varchar(255) default NULL,
  PRIMARY KEY  (`rosterID`),
  KEY `ofRoster_unameid_idx` (`username`),
  KEY `ofRoster_jid_idx` (`jid`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofroster
-- ----------------------------
INSERT INTO `ofroster` VALUES ('1', 'admin', 'test', '0', '0', '-1', null);
INSERT INTO `ofroster` VALUES ('2', 'test', 'admin@bill-think', '3', '-1', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('3', 'admin', 'test@bill-think', '3', '-1', '-1', 'test');
INSERT INTO `ofroster` VALUES ('6', 'admin', '741150372@qq.com', '0', '0', '-1', 'Bao');
INSERT INTO `ofroster` VALUES ('11', 'test', 'kobe@qq.com', '0', '0', '-1', 'kobe');
INSERT INTO `ofroster` VALUES ('16', 'kobe', 'test@qq.com', '0', '0', '-1', 'test');
INSERT INTO `ofroster` VALUES ('21', 'aaa', 'admin@example.com', '0', '0', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('22', 'aaa', 'admin@bill-think', '1', '-1', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('23', 'admin', 'aaa@bill-think', '2', '-1', '-1', 'aaa');
INSERT INTO `ofroster` VALUES ('26', 'jordan', 'www', '0', '0', '-1', null);
INSERT INTO `ofroster` VALUES ('27', 'www', 'jordan@bill-think', '3', '-1', '-1', 'jordan');
INSERT INTO `ofroster` VALUES ('28', 'jordan', 'www@bill-think', '3', '-1', '-1', null);
INSERT INTO `ofroster` VALUES ('31', 'admin', 'www@qq.com', '0', '0', '-1', 'www');
INSERT INTO `ofroster` VALUES ('32', 'www', 'admin@example.com', '0', '0', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('33', 'tomcat', 'admin@example.com', '0', '0', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('34', 'admin', 'tomcat@qq.com', '0', '0', '-1', 'tomcat');
INSERT INTO `ofroster` VALUES ('36', '17826833549', 'admin@example.com', '0', '0', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('41', 'lili', 'admin@example.com', '0', '0', '-1', 'admin');
INSERT INTO `ofroster` VALUES ('42', 'admin', 'lili@qq.com', '0', '0', '-1', 'lili');
INSERT INTO `ofroster` VALUES ('46', 'aaa', 'ddd@bill-think', '3', '-1', '-1', 'ddd');
INSERT INTO `ofroster` VALUES ('47', 'ddd', 'aaa@bill-think', '3', '-1', '-1', null);
INSERT INTO `ofroster` VALUES ('51', 'kobe', '17826833442@qq.com', '0', '0', '-1', '');
INSERT INTO `ofroster` VALUES ('52', '17826833442', 'kobe@qq.com', '0', '0', '-1', '');

-- ----------------------------
-- Table structure for ofrostergroups
-- ----------------------------
DROP TABLE IF EXISTS `ofrostergroups`;
CREATE TABLE `ofrostergroups` (
  `rosterID` bigint(20) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  PRIMARY KEY  (`rosterID`,`rank`),
  KEY `ofRosterGroup_rosterid_idx` (`rosterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofrostergroups
-- ----------------------------
INSERT INTO `ofrostergroups` VALUES ('2', '0', 'Friends');
INSERT INTO `ofrostergroups` VALUES ('3', '0', 'Friend');
INSERT INTO `ofrostergroups` VALUES ('22', '0', 'Friends');
INSERT INTO `ofrostergroups` VALUES ('23', '0', '');
INSERT INTO `ofrostergroups` VALUES ('27', '0', 'Friends');
INSERT INTO `ofrostergroups` VALUES ('46', '0', 'Friends');

-- ----------------------------
-- Table structure for ofsaslauthorized
-- ----------------------------
DROP TABLE IF EXISTS `ofsaslauthorized`;
CREATE TABLE `ofsaslauthorized` (
  `username` varchar(64) NOT NULL,
  `principal` text NOT NULL,
  PRIMARY KEY  (`username`,`principal`(200))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofsaslauthorized
-- ----------------------------

-- ----------------------------
-- Table structure for ofsecurityauditlog
-- ----------------------------
DROP TABLE IF EXISTS `ofsecurityauditlog`;
CREATE TABLE `ofsecurityauditlog` (
  `msgID` bigint(20) NOT NULL,
  `username` varchar(64) NOT NULL,
  `entryStamp` bigint(20) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `node` varchar(255) NOT NULL,
  `details` text,
  PRIMARY KEY  (`msgID`),
  KEY `ofSecurityAuditLog_tstamp_idx` (`entryStamp`),
  KEY `ofSecurityAuditLog_uname_idx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofsecurityauditlog
-- ----------------------------
INSERT INTO `ofsecurityauditlog` VALUES ('1', 'admin', '1460782016333', 'uploaded plugin archive.jar', 'BILL-THINK', null);
INSERT INTO `ofsecurityauditlog` VALUES ('2', 'admin', '1460782025217', 'reloaded plugin archive', 'BILL-THINK', null);
INSERT INTO `ofsecurityauditlog` VALUES ('3', 'admin', '1460804096269', 'uploaded plugin chatLogs.jar', 'BILL-THINK', null);
INSERT INTO `ofsecurityauditlog` VALUES ('4', 'admin', '1460804225352', 'reloaded plugin chatlogs', 'BILL-THINK', null);
INSERT INTO `ofsecurityauditlog` VALUES ('5', 'admin', '1460899659318', 'enabled db profiling', 'BILL-THINK', null);
INSERT INTO `ofsecurityauditlog` VALUES ('6', 'admin', '1461238403033', 'created new user bao', 'BILL-THINK', 'name = Bao, email = 741150372@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('7', 'admin', '1461239128390', 'created new user kobe', 'BILL-THINK', 'name = kobe, email = kobe@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('8', 'admin', '1461241824235', 'created new user bill', 'BILL-THINK', 'name = bill, email = bill@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('9', 'admin', '1461306675395', 'created new user tomcat', 'BILL-THINK', 'name = tomcat, email = tomcat@qq.com, admin = true');
INSERT INTO `ofsecurityauditlog` VALUES ('10', 'admin', '1461330679125', 'created new user jordan', 'BILL-THINK', 'name = Jordan, email = Jordan@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('11', 'admin', '1461332915026', 'created new user www', 'BILL-THINK', 'name = www, email = www@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('12', 'admin', '1461333057542', 'created new user aaa', 'BILL-THINK', 'name = aaa, email = aaa.qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('13', 'admin', '1461333794714', 'created new user ddd', 'BILL-THINK', 'name = ddd, email = ddd@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('14', 'admin', '1461420569066', 'created new user 17826833549', 'BILL-THINK', 'name = 17826833549, email = 17826833549@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('15', 'admin', '1461420837596', 'created new user lili', 'BILL-THINK', 'name = lili, email = lili@qq.com, admin = false');
INSERT INTO `ofsecurityauditlog` VALUES ('16', 'admin', '1461467528892', 'enabled db profiling', 'BILL-THINK', null);
INSERT INTO `ofsecurityauditlog` VALUES ('17', 'admin', '1461467582902', 'updated time zone to GMT', 'BILL-THINK', 'sun.util.calendar.ZoneInfo[id=\"GMT\",offset=0,dstSavings=0,useDaylight=false,transitions=0,lastRule=null]');
INSERT INTO `ofsecurityauditlog` VALUES ('19', 'admin', '1462711235004', 'created new user 17826833550', 'BILL-THINK', 'name = 17826833550, email = 17826833550@qq.com, admin = false');

-- ----------------------------
-- Table structure for ofuser
-- ----------------------------
DROP TABLE IF EXISTS `ofuser`;
CREATE TABLE `ofuser` (
  `username` varchar(64) NOT NULL,
  `storedKey` varchar(32) default NULL,
  `serverKey` varchar(32) default NULL,
  `salt` varchar(32) default NULL,
  `iterations` int(11) default NULL,
  `plainPassword` varchar(32) default NULL,
  `encryptedPassword` varchar(255) default NULL,
  `name` varchar(100) character set utf8 default NULL,
  `email` varchar(100) default NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  `sex` varchar(5) character set utf8 default NULL,
  `area` varchar(50) character set utf8 default NULL,
  `address` varchar(50) character set utf8 default NULL,
  `school` varchar(50) character set utf8 default NULL,
  `head` varchar(100) character set utf8 default NULL,
  `token` varchar(50) default NULL,
  `content` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`username`),
  KEY `ofUser_cDate_idx` (`creationDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofuser
-- ----------------------------
INSERT INTO `ofuser` VALUES ('1234567890', null, null, null, null, '123456', null, '无', null, '0', '0', '男', '北京', '无', '清华大学', '', '1234567890123456', null);
INSERT INTO `ofuser` VALUES ('12345678998', null, null, null, null, '123456', null, '测试版', null, '0', '0', '男', '北京', '一号楼一号', '清华大学', '', '12345678998123456', null);
INSERT INTO `ofuser` VALUES ('13432748748', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13574872957', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13654343232', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13654354342', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13654354343', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13743286633', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13743483693', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13747839838', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13758373894', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13758436483', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13783878799', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13784584393', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13784587387', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13784587437', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13784587943', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13784732898', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13838295743', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13848398294', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('13858438727', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833442', null, null, null, null, '123456', '214a8d5c4f6aa81a3d1e6bb92bed012070a2f4ecc7d5c5d2', '123', null, '0', '0', '男', '123', '123', '123', '1', '17826833442123456', null);
INSERT INTO `ofuser` VALUES ('17826833448', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833449', null, null, null, null, '123456', null, '中国', null, '0', '0', '男', '浙江省杭州市', '学源街258号', '中国计量大学', null, '17826833449123456', null);
INSERT INTO `ofuser` VALUES ('17826833455', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, '17826833455123456', null);
INSERT INTO `ofuser` VALUES ('17826833457', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, 'C:\\Users\\包启明\\Workspaces\\MyEclipse 10\\.metadata\\.me_tcat\\webapps\\HelloServer\\head/17826833457.jpg', '17826833457123456', null);
INSERT INTO `ofuser` VALUES ('17826833458', null, null, null, null, '123456', null, '倪称', null, '0', '0', '男', '天津', '天津港', '南开大学', null, '17826833458123456', null);
INSERT INTO `ofuser` VALUES ('17826833459', null, null, null, null, '456789', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833460', null, null, null, null, '123456', null, '任务', null, '0', '0', '男', '河北', '某县', '中国人民武装警察部队学院', null, '17826833460123456', null);
INSERT INTO `ofuser` VALUES ('17826833461', null, null, null, null, '123456', null, '你好呀', null, '0', '0', '男', '内蒙古', '地址', '内蒙古工业大学', 'C:\\Users\\包启明\\Workspaces\\MyEclipse 10\\.metadata\\.me_tcat\\webapps\\HelloServer\\head/17826833461.jpg', '17826833461123456', null);
INSERT INTO `ofuser` VALUES ('17826833462', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833463', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833464', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833549', null, null, null, null, null, '214a8d5c4f6aa81a3d1e6bb92bed012070a2f4ecc7d5c5d2', '17826833549', '17826833549@qq.com', '001461420568497', '001461420568497', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833550', null, null, null, null, null, 'd7a7c91ec73b641acf092728117ee9c3a4a7b93a6f32c08d', '17826833550', '17826833550@qq.com', '001462711234907', '001462711234907', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17826833570', null, null, null, null, '123456', null, '阿猫', null, '0', '0', '男', '北京', '你还', '清华大学', '', '17826833570123456', null);
INSERT INTO `ofuser` VALUES ('17843787294', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787295', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787296', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787297', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787298', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, '17843787298123456', null);
INSERT INTO `ofuser` VALUES ('17843787299', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787300', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787301', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787302', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787303', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787304', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787305', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787306', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787307', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787308', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787309', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787310', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787311', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787312', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787313', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787314', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787315', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787316', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787317', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787318', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787319', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787320', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787321', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787322', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787323', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787324', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787325', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787326', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787327', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787328', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787329', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787330', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787331', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787332', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787333', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787334', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('17843787335', null, null, null, null, '123456', null, null, null, '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('aaa', null, null, null, null, null, '92e062eccf5cde235b154bd4c92604e6075100d927872cf3', 'aaa', 'aaa.qq.com', '001461333057514', '001461333057514', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('admin', null, null, null, null, 'admin', null, 'Administrator', 'admin@example.com', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('bao', null, null, null, null, null, '5de7abf9af8f559c9c85d44fed7fdb974b4f3c5bce55a2e4', 'Bao', '741150372@qq.com', '001461238402847', '001461238402847', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('ddd', null, null, null, null, null, '14ff80a38f8c1dcd39360e3ceea0796f0289a612925d51d3', 'ddd', 'ddd@qq.com', '001461333794679', '001461333794679', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('kobe', null, null, null, null, '123456', '9cededb3025616b64380b4f6ab79d9a3503af85a6e1c0419', 'kobe', 'kobe@qq.com', '001461239128370', '001461239128370', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('lili', null, null, null, null, null, 'e92797f6b8c7b9785f78a81cc17540d8de4f8b3171cde8d9', 'lili', 'lili@qq.com', '001461420837578', '001461420837578', null, null, null, null, null, null, null);
INSERT INTO `ofuser` VALUES ('test', 'pnovwZp9VhYz/gKBvz6ijg0HqyA=', '8v/W810HMtQo20N/x0JhMbYCOMg=', 'hIC5Yauyr8/HtzfPke3ek7m0QH+K7YHW', '4096', null, 'b46de4d8c3955e0254541fca7d06e14de7801f0690ce858b', null, null, '0', '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for ofuserflag
-- ----------------------------
DROP TABLE IF EXISTS `ofuserflag`;
CREATE TABLE `ofuserflag` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `startTime` char(15) default NULL,
  `endTime` char(15) default NULL,
  PRIMARY KEY  (`username`,`name`),
  KEY `ofUserFlag_sTime_idx` (`startTime`),
  KEY `ofUserFlag_eTime_idx` (`endTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofuserflag
-- ----------------------------

-- ----------------------------
-- Table structure for ofuserprop
-- ----------------------------
DROP TABLE IF EXISTS `ofuserprop`;
CREATE TABLE `ofuserprop` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY  (`username`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofuserprop
-- ----------------------------

-- ----------------------------
-- Table structure for ofvcard
-- ----------------------------
DROP TABLE IF EXISTS `ofvcard`;
CREATE TABLE `ofvcard` (
  `username` varchar(64) NOT NULL,
  `vcard` mediumtext NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofvcard
-- ----------------------------

-- ----------------------------
-- Table structure for ofversion
-- ----------------------------
DROP TABLE IF EXISTS `ofversion`;
CREATE TABLE `ofversion` (
  `name` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofversion
-- ----------------------------
INSERT INTO `ofversion` VALUES ('archive', '2');
INSERT INTO `ofversion` VALUES ('openfire', '22');

-- ----------------------------
-- Table structure for symarti
-- ----------------------------
DROP TABLE IF EXISTS `symarti`;
CREATE TABLE `symarti` (
  `s_sid` int(5) default NULL,
  `s_aid` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of symarti
-- ----------------------------
INSERT INTO `symarti` VALUES ('12', '1');
INSERT INTO `symarti` VALUES ('11', '2');
INSERT INTO `symarti` VALUES ('10', '3');
INSERT INTO `symarti` VALUES ('9', '4');
INSERT INTO `symarti` VALUES ('8', '5');
INSERT INTO `symarti` VALUES ('7', '6');
INSERT INTO `symarti` VALUES ('6', '7');
INSERT INTO `symarti` VALUES ('5', '8');
INSERT INTO `symarti` VALUES ('4', '9');
INSERT INTO `symarti` VALUES ('3', '10');
INSERT INTO `symarti` VALUES ('2', '11');
INSERT INTO `symarti` VALUES ('1', '12');

-- ----------------------------
-- Table structure for symdis
-- ----------------------------
DROP TABLE IF EXISTS `symdis`;
CREATE TABLE `symdis` (
  `s_id` int(5) default NULL,
  `s_disid` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of symdis
-- ----------------------------

-- ----------------------------
-- Table structure for symptom
-- ----------------------------
DROP TABLE IF EXISTS `symptom`;
CREATE TABLE `symptom` (
  `symid` int(5) NOT NULL auto_increment,
  `name` varchar(100) character set utf8 default NULL,
  PRIMARY KEY  (`symid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of symptom
-- ----------------------------
INSERT INTO `symptom` VALUES ('1', '脱发');
INSERT INTO `symptom` VALUES ('2', '头痛');
INSERT INTO `symptom` VALUES ('3', '拉肚子');
INSERT INTO `symptom` VALUES ('4', '胃痛');
INSERT INTO `symptom` VALUES ('5', '破伤风');
INSERT INTO `symptom` VALUES ('6', '皮炎');
INSERT INTO `symptom` VALUES ('7', '肌肉痛');
INSERT INTO `symptom` VALUES ('8', '精神犹豫');
INSERT INTO `symptom` VALUES ('9', '头晕');
INSERT INTO `symptom` VALUES ('10', '低血糖');
INSERT INTO `symptom` VALUES ('11', '焦虑');
INSERT INTO `symptom` VALUES ('12', '空虚');

-- ----------------------------
-- Table structure for tab_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_comment`;
CREATE TABLE `tab_comment` (
  `phone` varchar(255) character set utf8 default NULL,
  `content` varchar(255) character set utf8 default NULL,
  `date` varchar(50) character set utf8 default NULL,
  `token` varchar(255) character set utf8 NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_comment
-- ----------------------------
INSERT INTO `tab_comment` VALUES ('17826833457', 'v发的深V', '1462276193223', '17826833457456789', '1');
INSERT INTO `tab_comment` VALUES ('17826833457', '热辐射儿', '1462276190323', '17826833457456789', '2');
INSERT INTO `tab_comment` VALUES ('17826833457', 'hello你好', '1462276684656', '17826833457456789', '3');
INSERT INTO `tab_comment` VALUES ('17826833457', '张守祥', '1462277185126', '17826833457456789', '4');
INSERT INTO `tab_comment` VALUES ('17826833457', '怎么办', '1462277439560', '17826833457456789', '5');
INSERT INTO `tab_comment` VALUES ('17826833457', '哥哥大V分', '1462276190454', '17826833457456789', '6');
INSERT INTO `tab_comment` VALUES ('17826833457', '天热是否v的事', '1462274348752', '17826833457456789', '7');
INSERT INTO `tab_comment` VALUES ('17826833457', '吃饭的声音', '1462278989883', '17826833457456789', '8');
INSERT INTO `tab_comment` VALUES ('17826833457', '评论', '1462441158436', '17826833457456789', '9');
INSERT INTO `tab_comment` VALUES ('17826833457', '锯齿刀', '1462450774387', '17826833457456789', '10');
INSERT INTO `tab_comment` VALUES ('17826833457', '富荣大厦', '1462459887474', '17826833457456789', '11');
INSERT INTO `tab_comment` VALUES ('17826833457', '放入粉丝', '1462467993749', '17826833457456789', '1');
INSERT INTO `tab_comment` VALUES ('13656688476', 'cdshuihc', '1462468738837', '13656688476123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833442', 'cvhufihvu', '1462598749857', '17826833442123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833449', 'iufyhvui', '1462599893747', '17826833449123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833458', 'vhyduhvs', '1462674837334', '17826833458123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833460', 'chsyuich', '1462687483743', '17826833460123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833461', 'hciudhcu', '1462738743979', '17826833461123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833462', 'hcudihvc', '1462864376438', '17826833462123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833463', 'hcyudsihvcy', '1462897387488', '17826833463123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833464', 'fhvidsuhv', '1462973784783', '17826833464123456', '1');
INSERT INTO `tab_comment` VALUES ('17826833464', '嘘嘘', '1462715441231', '17826833464123456', '6');
INSERT INTO `tab_comment` VALUES ('17826833464', 'vfdc ', '1468493847229', '17826833464123456', '12');
INSERT INTO `tab_comment` VALUES ('17826833464', 'vdesvfs', '1469473844539', '17826833464123456', '4');
INSERT INTO `tab_comment` VALUES ('17826833460', 'cesfes', '1469894387422', '17826833460213456', '4');
INSERT INTO `tab_comment` VALUES ('17826833442', '你好', '1462821380519', '17826833442123456', '6');
INSERT INTO `tab_comment` VALUES ('13654343232', '你好', '1462851994618', '13654343232123456', '9');
INSERT INTO `tab_comment` VALUES ('13654343232', '好不好', '1462852074035', '13654343232123456', '9');
INSERT INTO `tab_comment` VALUES ('17826833461', '文章不错', '1462933727957', '17826833461123456', '12');
INSERT INTO `tab_comment` VALUES ('17826833461', '文章很不错', '1462933936607', '17826833461123456', '12');
INSERT INTO `tab_comment` VALUES ('17826833461', '好文章', '1462940530176', '17826833461123456', '12');
INSERT INTO `tab_comment` VALUES ('17826833461', '好文章', '1462940893306', '17826833461123456', '12');
INSERT INTO `tab_comment` VALUES ('17826833461', '好文章', '1463130707347', '17826833461123456', '12');
INSERT INTO `tab_comment` VALUES ('17843787298', '好文章', '1463134108590', '17843787298123456', '5');
INSERT INTO `tab_comment` VALUES ('17843787298', '好文章', '1463134137188', '17843787298123456', '5');

-- ----------------------------
-- Table structure for tab_doc
-- ----------------------------
DROP TABLE IF EXISTS `tab_doc`;
CREATE TABLE `tab_doc` (
  `phone` varchar(20) character set utf8 default NULL,
  `password` varchar(50) default NULL,
  `head` varchar(100) character set utf8 default NULL,
  `name` varchar(20) character set utf8 NOT NULL,
  `hospital` varchar(20) character set utf8 default NULL,
  `department` varchar(20) character set utf8 default NULL,
  `position` varchar(20) character set utf8 default NULL,
  `sex` varchar(50) character set utf8 default NULL,
  `area` varchar(50) character set utf8 default NULL,
  `token` varchar(255) character set utf8 NOT NULL,
  `state` int(5) default NULL,
  PRIMARY KEY  (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_doc
-- ----------------------------
INSERT INTO `tab_doc` VALUES ('13432748748', '123456', 'HelloServer/head/13432748748.jpg', '黄芳菲', '浙江省第一人民医院', '口腔颌面科', '主治医师', '女', '杭州', '13432748748123456', '0');
INSERT INTO `tab_doc` VALUES ('13574872957', '123456', 'HelloServer/head/13574872957.jpg', '王猛', '杭州市中医药医院', '口腔颌面科', '助理医师', '男', '杭州', '13574872957123456', '0');
INSERT INTO `tab_doc` VALUES ('13654343232', '123456', 'HelloServer/head/13654343232.jpg', '王堂军', '浙江省第一人民医院', '妇科', '主治医师', '男', '杭州', '13654343232123456', '0');
INSERT INTO `tab_doc` VALUES ('13654354342', '456789', 'HelloServer/head/13654354342.jpg', '王开始', '浙江省第一人民医院', '外科', '医师', '男', '杭州', '13654354342456789', '0');
INSERT INTO `tab_doc` VALUES ('13654354343', '456789', 'HelloServer/head/13654354343.jpg', '李明凯', '浙江省第一人民医院', '口腔颌面科', '医师', '男', '杭州', '13654354343456789', '0');
INSERT INTO `tab_doc` VALUES ('13743286633', '456789', 'HelloServer/head/13743286633.jpg', '范华兰', '杭州市第二医院', '内科', '医师', '女', '杭州', '13743286633456789', '0');
INSERT INTO `tab_doc` VALUES ('13743483693', '123456', 'HelloServer/head/13743483693.jpg', '李国华', '浙江省邵逸夫医院', '口腔颌面科', '主治医师', '男', '杭州', '13743483693123456', '0');
INSERT INTO `tab_doc` VALUES ('13747839838', '456789', 'HelloServer/head/13747839838.jpg', '华明', '杭州市第二医院', '眼科', '医师', '男', '杭州', '13747839838456789', '0');
INSERT INTO `tab_doc` VALUES ('13758373894', '123456', 'HelloServer/head/13758373894.jpg', '黄祝建', '杭州市第一人民医院', '口腔颌面科', '医师', '男', '杭州', '13758373894123456', '0');
INSERT INTO `tab_doc` VALUES ('13758436483', '123456', 'HelloServer/head/13758436483.jpg', '王刚', '杭州市第一人民医院', '口腔颌面科', '主任', '男', '杭州', '13758436483123456', '0');
INSERT INTO `tab_doc` VALUES ('13783878799', '456789', 'HelloServer/head/13783878799.jpg', '方名山', '浙江省新华医院', '男科', '主治医师', '男', '上海', '13783878799456789', '0');
INSERT INTO `tab_doc` VALUES ('13784584393', '456789', 'HelloServer/head/13784584393.jpg', '启明', '浙江省人民医院', '精神心理科', '主治医师', '男', '杭州', '13784584393456789', '0');
INSERT INTO `tab_doc` VALUES ('13784587387', '456789', 'HelloServer/head/13784587387.jpg', '章丘市', '浙江省第二医院', '耳鼻咽喉科', '主治医师', '女', '北京', '13784587387456789', '0');
INSERT INTO `tab_doc` VALUES ('13784587437', '456789', 'HelloServer/head/13784587437.jpg', '王凯', '杭州市第七人民医院', '皮肤科', '主治医师', '男', '杭州', '13784587437456789', '0');
INSERT INTO `tab_doc` VALUES ('13784587943', '456789', 'HelloServer/head/13784587943.jpg', '赵都', '浙江省中医药医院', '骨伤科', '医师', '女', '上海', '13784587943456789', '0');
INSERT INTO `tab_doc` VALUES ('13784732898', '123456', 'HelloServer/head/13784732898.jpg', '王建国', '杭州市第二人民医院', '口腔颌面科', '主任', '男', '杭州', '13784732898123456', '0');
INSERT INTO `tab_doc` VALUES ('13838295743', '123456', 'HelloServer/head/13838295743.jpg', '汪军华', '杭州市新华医院', '口腔颌面科', '助理医生', '男', '杭州', '13838295743123456', '0');
INSERT INTO `tab_doc` VALUES ('13848398294', '456789', 'HelloServer/head/13848398294.jpg', '张华', '杭州市第三医院', '营养科', '医师', '女', '杭州', '13848398294456789', '0');
INSERT INTO `tab_doc` VALUES ('13858438727', '456789', 'HelloServer/head/13858438727.jpg', '李光明', '浙江省第二医院', '口腔颌面科', '医师', '男', '杭州', '13858438727456789', '0');
INSERT INTO `tab_doc` VALUES ('17826833449', '123456', 'HelloServer/head/17826833449.jpg', '黄开明', '杭州市第一人民医院', '营养科', '主治医师', '男', '杭州', '17826833449123456', '0');
INSERT INTO `tab_doc` VALUES ('17826833457', '456789', 'HelloServer/head/17826833457.jpg', '杨明', '浙江省第一医院', '耳鼻咽喉科', '外科医师', '男', '杭州', '17826833457456789', '0');
INSERT INTO `tab_doc` VALUES ('17843787294', '123456', 'HelloServer/head/17843787294.jpg', '黄一红', '杭州市第一人民医院', '口腔颌面科', '医师', '女', '杭州', '17843787294123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787295', '123456', 'HelloServer/head/17843787295.jpg', '周红', '杭州市第一人民医院', '妇科', '医师', '女', '杭州', '17843787295123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787296', '123456', 'HelloServer/head/17843787296.jpg', '潘美', '杭州市妇产科医院', '妇科', '主任', '女', '杭州', '17843787296123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787297', '123456', 'HelloServer/head/17843787297.jpg', '高丽丽', '杭州市第二医院', '妇科', '助理医生', '女', '杭州', '17843787297123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787298', '123456', 'HelloServer/head/17843787298.jpg', '赵莉', '杭州市邵逸夫医院', '妇科', '主任', '女', '杭州', '17843787298123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787299', '123456', 'HelloServer/head/17843787299.jpg', '江珊', '浙江省第一人民医院', '妇科', '主任', '女', '杭州', '17843787299123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787300', '123456', 'HelloServer/head/17843787300.jpg', '章冬萍', '浙江省第二人民医院', '妇科', '医师', '女', '杭州', '17843787300123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787301', '123456', 'HelloServer/head/17843787301.jpg', '赵国伟', '浙江省第一人民医院', '男科', '医师', '男', '杭州', '17843787301123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787302', '123456', 'HelloServer/head/17843787302.jpg', '孙贤平', '杭州市阿波罗男子医院', '男科', '医师', '男', '杭州', '17843787302123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787303', '123456', 'HelloServer/head/17843787303.jpg', '罗霞', '杭州市第一人民医院', '男科', '医师', '男', '杭州', '17843787303123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787304', '123456', 'HelloServer/head/17843787304.jpg', '王伟', '杭州市第二人民医院', '男科', '主任', '男', '杭州', '17843787304123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787305', '123456', 'HelloServer/head/17843787305.jpg', '齐炬', '杭州市邵逸夫医院', '男科', '主任', '男', '杭州', '17843787305123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787306', '123456', 'HelloServer/head/17843787306.jpg', '赵旭平', '杭州市第一人民医院', '外科', '主任', '男', '杭州', '17843787306123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787307', '123456', 'HelloServer/head/17843787307.jpg', '李鹏飞', '杭州市邵逸夫医院', '外科', '主任', '男', '杭州', '17843787307123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787308', '123456', 'HelloServer/head/17843787308.jpg', '赵耀', '杭州市中医药医院', '外科', '主任', '女', '杭州', '17843787308123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787309', '123456', 'HelloServer/head/17843787309.jpg', '王浩', '杭州市新华医院', '外科', '医师', '男', '杭州', '17843787309123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787310', '123456', 'HelloServer/head/17843787310.jpg', '王凡', '浙江省第一人民医院', '内科', '医师', '男', '杭州', '17843787310123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787311', '123456', 'HelloServer/head/17843787311.jpg', '姚帅', '杭州市第一人民医院', '内科', '主任', '男', '杭州', '17843787311123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787312', '123456', 'HelloServer/head/17843787312.jpg', '吴晓婷', '杭州市第二人民医院', '内科', '主任', '女', '杭州', '17843787312123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787313', '123456', 'HelloServer/head/17843787313.jpg', '张广义', '浙江省邵逸夫医院', '内科', '医师', '男', '杭州', '17843787313123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787314', '123456', 'HelloServer/head/17843787314.jpg', '李明', '杭州市第一人民医院', '皮肤科', '医师', '男', '杭州', '17843787314123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787315', '123456', 'HelloServer/head/17843787315.jpg', '魏书忠', '杭州市第二人民医院', '皮肤科', '医师', '男', '杭州', '17843787315123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787316', '123456', 'HelloServer/head/17843787316.jpg', '王伦军', '杭州市新华医院', '皮肤科', '医师', '男', '杭州', '17843787316123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787317', '123456', 'HelloServer/head/17843787317.jpg', '王秀丽', '杭州市中医院', '皮肤科', '主任', '女', '杭州', '17843787317123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787318', '123456', 'HelloServer/head/17843787318.jpg', '王军', '杭州市第一人民医院', '骨伤科', '主任', '男', '杭州', '17843787318123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787319', '123456', 'HelloServer/head/17843787319.jpg', '罗勇', '杭州市第二人民医院', '骨伤科', '医师', '男', '杭州', '17843787319123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787320', '123456', 'HelloServer/head/17843787320.jpg', '顾勇强', '杭州市第一人民医院', '骨伤科', '医师', '男', '杭州', '17843787320123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787321', '123456', 'HelloServer/head/17843787321.jpg', '李文', '浙江省第一医院', '骨伤科', '医师', '男', '杭州', '17843787321123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787322', '123456', 'HelloServer/head/17843787322.jpg', '张铭', '浙江省第一人民医院', '精神心理科', '主任', '男', '杭州', '17843787322123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787323', '123456', 'HelloServer/head/17843787323.jpg', '张英发', '浙江省邵逸夫医院', '精神心理科', '主任', '男', '杭州', '17843787323123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787324', '123456', 'HelloServer/head/17843787324.jpg', '周娟', '杭州市第一人民医院', '精神心理科', '医师', '女', '杭州', '17843787324123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787325', '123456', 'HelloServer/head/17843787325.jpg', '周彩君', '杭州市第二人民医院', '精神心理科', '医师', '女', '杭州', '17843787325123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787326', '123456', 'HelloServer/head/17843787326.jpg', '赵树根', '杭州市中医院', '眼科', '医师', '男', '杭州', '17843787326123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787327', '123456', 'HelloServer/head/17843787327.jpg', '吴斌', '杭州市第一人民医院', '眼科', '主治医师', '男', '杭州', '17843787327123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787328', '123456', 'HelloServer/head/17843787328.jpg', '何海滨', '浙江省邵逸夫医院', '眼科', '主治医生', '男', '杭州', '17843787328123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787329', '123456', 'HelloServer/head/17843787329.jpg', '徐怀诚', '杭州市第一人民医院', '眼科', '医师', '男', '杭州', '17843787329123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787330', '123456', 'HelloServer/head/17843787330.jpg', '徐鹰', '杭州市第一人民医院', '耳鼻咽喉科', '医师', '男', '杭州', '17843787330123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787331', '123456', 'HelloServer/head/17843787331.jpg', '魏乾土', '浙江省邵逸夫医院', '耳鼻咽喉科', '主任', '男', '杭州', '17843787331123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787332', '123456', 'HelloServer/head/17843787332.jpg', '胡玉萍', '浙江省第一人民医院', '耳鼻咽喉科', '主任', '女', '杭州', '17843787332123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787333', '123456', 'HelloServer/head/17843787333.jpg', '蔡小熊', '浙江省第一人民医院', '营养科', '主任', '男', '杭州', '17843787333123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787334', '123456', 'HelloServer/head/17843787334.jpg', '吕鑫', '杭州市第一人民医院', '营养科', '医师', '男', '杭州', '17843787334123456', '0');
INSERT INTO `tab_doc` VALUES ('17843787335', '123456', 'HelloServer/head/17843787335.jpg', '郭爽', '杭州市第二人民医院', '营养科', '医师', '男', '杭州', '17843787335123456', '0');

-- ----------------------------
-- Table structure for tab_doc_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_doc_comment`;
CREATE TABLE `tab_doc_comment` (
  `phone` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `time` varchar(50) default NULL,
  `token` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_doc_comment
-- ----------------------------
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '点赞', '1462276193223', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '我有个问题', '1462276190323', '13656688476123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', 'hello你好', '1462276684656', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '医生好', '1462277185126', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '医生辛苦了', '1462277439560', '17826833459123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '久仰', '1462276190454', '17826833458123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '您的态度很好', '1462274348752', '17826833460123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '大夫很给力', '1462278989883', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '医生很棒', '1462441158436', '17826833462123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '会推荐给其他朋友', '1462450774387', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '医生好', '1462459887474', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('13654354342', '医生，我最近不舒服，待会私聊下', '1462598749857', '17826833549123456');
INSERT INTO `tab_doc_comment` VALUES ('13654354343', '点赞', '1462599893747', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13743286633', '棒棒哒', '1462674837334', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13747839838', '白衣天使', '1462687483743', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13783878799', '患者的福音', '1462738743979', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13784584393', '很有经验', '1462864376438', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587387', '很感谢', '1462897387488', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587437', '感谢医生帮助', '1462973784783', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587943', '已康复，谢谢', '1462715441231', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13848398294', '强烈推荐', '1462274348752', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13858438727', '态度很好', '1462278989883', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('17826833457', '很满意', '1462450774387', '17826833449123456');
INSERT INTO `tab_doc_comment` VALUES ('17826833457', '医生很负责', '1462459887474', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17826833457', '会详细解答患者问题', '1462467993749', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587387', '感谢帮助', '1463985743789', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587387', '当代白求恩', '1478437427853', '17826833460123456');
INSERT INTO `tab_doc_comment` VALUES ('17826833457', '继续帮助更多患者', '1478378297593', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17826833457', '已痊愈', '1479737658379', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13858438727', '已康复', '1489473987593', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13858438727', '医生很好', '1489377583739', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13848398294', '负责的天使大大', '1478753874839', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13848398294', '感谢帮助', '1484738287898', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587943', '医德很高', '1478758479383', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13784587943', '令人尊敬', '1475937476832', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587437', '舍己为人的好医生', '1487974743989', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13784587437', '好医生', '1487984784378', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587387', '很给力', '1489648972956', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13784587387', '感谢帮助', '1489648745932', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13784584393', '感恩', '1489378795379', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13784584393', '就诊环境好', '1439857847832', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13783878799', '医生素质高', '1439857837483', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13783878799', '以后生病都来找您', '1489537493749', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13747839838', '太感谢了', '1439874374953', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13747839838', '点赞', '1439573875374', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13743286633', '好医生', '1475937539849', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13743286633', '好人有好报', '1474387482376', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13654354343', '好辛福', '1434738749833', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13654354343', '给力', '1472844682483', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13654354342', '完美的解除了我的病痛', '1453947397432', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13654354342', '很感谢', '1439847328495', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787294', '谢谢医生', '1427837247925', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787294', '很负责', '1493875943749', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787294', '有耐心', '1439479359873', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('17826833449', '很有爱', '1475874328942', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('17826833449', '好医生', '1489865498738', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17826833449', '大夫就和家人一样', '1478547458737', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587943', '医生很好', '1462867801295', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587943', '你怎么看', '1462867838452', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13432748748', '点赞', '1475847738933', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13432748748', '给力', '1489449853378', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13432748748', '棒棒的', '1478357875387', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13574872957', '没白来', '1474875873873', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13574872957', '中国好医生', '1474875783983', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('13574872957', '感谢在这款app上遇见你', '1467484784783', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13743483693', '完美的解答了我们疑问', '1457387437843', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13743483693', '中国好医生', '1457847583743', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13743483693', '常青树', '1465485783368', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('13758373894', '救死扶伤', '1476847873823', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13758373894', '医德高', '1468958749753', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13758373894', '强烈推荐', '1437857879475', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13758436483', '好医生', '1473847837578', '17826833461123456');
INSERT INTO `tab_doc_comment` VALUES ('13758436483', '酒香不怕巷子深', '1475875873298', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13758436483', '真好', '1478364887787', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13784732898', '真心赞', '1475857836873', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13784732898', '感恩', '1478357658378', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('13784732898', '开心', '1438632547843', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('13838295743', '医生好', '1428437875887', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13838295743', '我有问题', '1432847834738', '17826833459123456');
INSERT INTO `tab_doc_comment` VALUES ('13838295743', '医生在吗', '1478324686483', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('13848398294', '电视上看到过您', '1462902335419', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13654354342', '好厉害', '1462902413797', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13743286633', '给力', '1462909900766', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787295', '宝宝很健康', '1437857837487', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787295', '谢谢医生', '1478478738778', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787295', '感谢医生的科普知识', '1498478758373', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787296', '医生好漂亮', '1467587684484', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787296', '医生很耐心', '1468747584798', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787296', '推荐朋友来', '1448977487937', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787297', '医生很会聊天', '1445783784788', '17826833464123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787297', '医生态度很好', '1437853874892', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787298', '好医生', '1438797434793', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787298', 'nice doctor', '1434783787685', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787298', '很感谢', '1437487384378', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787299', '感恩', '1438498739487', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787299', '感谢和医生交流的交流', '1475878437788', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787299', '医生很好', '1473878478378', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787300', '点赞', '1439874398748', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787300', '很满意', '1437847387489', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787300', '家的感觉', '1483294893849', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787297', '人很nice', '1443784783749', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787301', '给力', '1498324839943', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787301', '棒', '1454985948594', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787301', '赞', '1483948934893', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787302', '给力', '1434873843748', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787302', '医生好', '1478374837483', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787302', '好医生', '1439487374378', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787303', '给力', '1437847837483', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787303', 'good job', '1434738748374', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787303', 'nice', '1437847834783', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787304', '加油', '1437848374837', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787304', '给力', '1439489384983', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787304', '棒', '1473827437483', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787305', '好样的', '1439489348993', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787305', '给力', '1483274837489', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787305', '赞', '1437847837483', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787306', '给力', '1437847834773', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787306', '加油', '1434877384733', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787306', '好医生', '1438947834735', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787307', '中国好医生', '1473847437873', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787307', '感谢医生', '1473284747532', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787307', '感恩', '1483948737734', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787308', '好医生', '1478374837487', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787308', '感谢', '1438473748373', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787308', '点赞', '1473847834734', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787309', '好医生', '1473847837483', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787309', '点赞', '1473847837437', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787309', '棒棒的', '1438478374983', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787310', '好样的', '1483947837537', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787310', '赞', '1483943974837', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787310', '好的', '1474328648432', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787311', '好棒', '1438943748797', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787311', '赞', '1482938478374', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787311', '好的', '1483984937498', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787312', '好棒', '1483948934879', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787312', '好的', '1483924879387', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787312', '赞', '1489348938989', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787313', '好的', '1438947837487', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787313', '赞', '1473847837483', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787313', '厉害', '1478347837484', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787314', '好的', '1474387837839', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787314', '医生很好', '1487374377338', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787314', '赞', '1473847384788', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787315', '好的', '1483478374433', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787315', '很好', '1483294873948', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787315', '医生好', '1483948394983', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787316', '好的', '1438478374373', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787316', '医生好', '1487347837432', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787316', '很棒', '1483984934787', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787317', '很好的', '1483748374878', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787317', '加油', '1439847834783', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787317', '赞', '1439874837483', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('13432748748', '哈哈哈哈和', '1462917911003', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13574872957', '哈哈哈哈', '1462917958808', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13784587437', '哈哈哈', '1462919664136', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787318', '好的', '1475837587385', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787318', '好医生', '1438449875395', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787318', '很好', '1478375837439', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787319', '真好', '1473847387483', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787319', '好医生', '1483948774388', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787319', '真棒', '1483948743879', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787320', '好的', '1475847584739', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787320', '好医生', '1478374748748', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787320', '感谢医生', '1437847837483', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787321', '感谢医生', '1473874384788', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787321', '谢谢', '1475837483787', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787321', '很好', '1473847837483', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787322', '很好', '1474837483743', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787322', '加油', '1474384783738', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787322', '好医生', '1475875874387', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787323', '好医生', '1478378743874', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787323', '加油', '1443894893849', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787323', '感谢', '1483984938478', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787324', '好医生', '1487394793778', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787324', '好棒', '1483948938998', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787324', '好的', '1478738478374', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787325', '好医生', '1473484783478', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787325', '好的', '1478374737878', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787325', '加油', '1487594734993', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787326', '好医生', '1478474397937', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787326', '好的', '1474387487388', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787326', '加油', '1484398378538', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787327', '好医生', '1473874837447', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787327', '好的', '1476857845873', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787327', '加油', '1483948938499', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787328', '好医生', '1438948938498', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787328', '好的', '1478273873827', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787328', '加油', '1439483987473', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787329', '好医生', '1473847837487', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787329', '很棒', '1457843758475', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787329', '感谢', '1478478748578', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787330', '好医生', '1483984938496', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787330', '好的', '1498485347877', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787330', '加油', '1486594754874', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787331', '好医生', '1454787584748', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787331', '好的', '1475487584743', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787331', '加油', '1447857487438', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787332', '好医生', '1434783748784', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787332', '感恩', '1483984934893', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787332', '好的', '1474837483787', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787322', '发广告', '1462929305399', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('13654343232', '华海', '1462929381758', '17826833442123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787333', '好医生', '1434784738478', '17826833459456789');
INSERT INTO `tab_doc_comment` VALUES ('17843787333', '好的', '1487344783478', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787333', '加油', '1437847387438', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787334', '好医生', '1483949374788', '17826833463123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787334', '好的吧', '1437847347878', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787334', '感谢', '1457384783746', '17826833459123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787335', '好医生', '1483747834787', '17826833459123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787335', '加油', '1437847834787', '17826833448123456');
INSERT INTO `tab_doc_comment` VALUES ('17843787335', '感谢', '1474875487587', '17826833463123456');

-- ----------------------------
-- Table structure for tab_judge
-- ----------------------------
DROP TABLE IF EXISTS `tab_judge`;
CREATE TABLE `tab_judge` (
  `phone` varchar(255) character set utf8 default NULL,
  `content` varchar(255) character set utf8 default NULL,
  `date` varchar(255) character set utf8 default NULL,
  `token` varchar(255) character set utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_judge
-- ----------------------------
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833457', '太容易错的人', '2065542', '17826833457456789');
INSERT INTO `tab_judge` VALUES ('17826833461', '错了', '1462871055226', '17826833461123456');

-- ----------------------------
-- Table structure for tab_list_article
-- ----------------------------
DROP TABLE IF EXISTS `tab_list_article`;
CREATE TABLE `tab_list_article` (
  `title` varchar(30) character set utf8 NOT NULL,
  `kind` varchar(30) character set utf8 default NULL,
  `browse` int(30) default NULL,
  `id` int(30) default NULL,
  `date` varchar(50) character set utf8 default NULL,
  `state` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_list_article
-- ----------------------------
INSERT INTO `tab_list_article` VALUES ('患上食管癌 烫、辣、酒是”帮凶“', '内科', '780', '1', '1462599893747', '0');
INSERT INTO `tab_list_article` VALUES ('导致食道癌疾病的因素', '消化科', '2432', '2', '1452599893747', '0');
INSERT INTO `tab_list_article` VALUES ('百度将下线2518家医疗机构1.26亿条推广信息', '其他', '678', '3', '1489879843874', '0');
INSERT INTO `tab_list_article` VALUES ('上海16家医院组成\"儿科医疗联合体\"', '儿科', '322', '4', '1457838743873', '0');
INSERT INTO `tab_list_article` VALUES ('有必要建立大病免费医疗制度', '内科', '4334', '5', '1498743745873', '0');
INSERT INTO `tab_list_article` VALUES ('世界各地私立医院什么样', '其他', '43243', '6', '1457685387383', '0');
INSERT INTO `tab_list_article` VALUES ('全面解析美国医院的最佳医疗服务', '其他', '4432', '7', '1447843874383', '0');
INSERT INTO `tab_list_article` VALUES ('基本药物目录拟调整：卫生部冲刺“整体版”', '其他', '3424', '8', '1465987743782', '0');
INSERT INTO `tab_list_article` VALUES ('公立医院住院费五年来首次下降', '其他', '3244', '9', '1468945874387', '0');
INSERT INTO `tab_list_article` VALUES ('苹果公司公布前CEO乔布斯的死因及细节', '内科', '4323', '10', '1476953874387', '0');

-- ----------------------------
-- Table structure for tab_topic
-- ----------------------------
DROP TABLE IF EXISTS `tab_topic`;
CREATE TABLE `tab_topic` (
  `id` int(255) NOT NULL auto_increment,
  `head` varchar(100) character set utf8 default NULL,
  `title` varchar(50) character set utf8 default NULL,
  `content` varchar(50) character set utf8 default NULL,
  `time` varchar(50) default NULL,
  `state` int(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_topic
-- ----------------------------
INSERT INTO `tab_topic` VALUES ('1', 'HelloServer/head/17826833448.jpg', '大学生应该多去户外运动', '现在，越来越多的大学生对身体不重视', '1462276193223', '0');
INSERT INTO `tab_topic` VALUES ('2', 'HelloServer/head/Chrysanthemum.jpg', '为什么会运动过度？', '越来越多的大学生过量的运动', '1457847743839', '0');
INSERT INTO `tab_topic` VALUES ('3', 'HelloServer/head/Desert.jpg', '为什么大学生会感到迷茫', '你的大学迷茫吗', '1475487583875', '0');
INSERT INTO `tab_topic` VALUES ('4', 'HelloServer/head/Lighthouse.jpg', '该不该熬夜？', '大家都在讲下你们几点睡？', '1478728377286', '0');
INSERT INTO `tab_topic` VALUES ('5', 'HelloServer/head/Penguins.jpg', '早上起不来怎么办？', '就说大家早上几点起？', '1457343453454', '0');
INSERT INTO `tab_topic` VALUES ('6', 'HelloServer/head/Hydrangeas.jpg', '早饭不吃有多危险？', '早饭你们都吃什么？', '1473274832648', '0');
INSERT INTO `tab_topic` VALUES ('7', 'HelloServer/head/17826833448.jpg', '学习压力大吗？', '大家都来晒下自己的课表吧', '1462343443452', '0');
INSERT INTO `tab_topic` VALUES ('8', 'HelloServer/head/Chrysanthemum.jpg', '学习没有兴趣怎么办？', '越来越多的大学生过量的运动', '1457842445353', '0');
INSERT INTO `tab_topic` VALUES ('9', 'HelloServer/head/Desert.jpg', '为什么大学生会感到迷茫', '你们都迷茫吗？', '1475487535353', '0');
INSERT INTO `tab_topic` VALUES ('10', 'HelloServer/head/17826833448.jpg', '我想开心一点', '现在压力好大，不开心', '1462275325435', '0');

-- ----------------------------
-- Table structure for tab_topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_topic_comment`;
CREATE TABLE `tab_topic_comment` (
  `id` int(100) default NULL,
  `phone` varchar(50) default NULL,
  `content` varchar(100) character set utf8 default NULL,
  `time` varchar(50) character set utf8 default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_topic_comment
-- ----------------------------
INSERT INTO `tab_topic_comment` VALUES ('1', '12345678998', '好医生', '1462276193223');
INSERT INTO `tab_topic_comment` VALUES ('1', '13656688476', '好文章', '1487947879847');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833442', '好日子', '1476984787887');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833448', '感谢', '1478478578789');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833458', '好的', '1478478753739');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833459', '非常好', '1468948985989');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833460', '加油', '1484975487787');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833461', '满意', '1465958797437');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833462', '好棒的', '1487987577873');
INSERT INTO `tab_topic_comment` VALUES ('1', '17826833463', '恢复了', '1478475843787');
INSERT INTO `tab_topic_comment` VALUES ('2', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('2', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('2', null, null, null);
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('2', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('3', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('3', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('3', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('4', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('4', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('4', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('5', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('5', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('5', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('8', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('8', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('7', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('7', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('7', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('6', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('6', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('6', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('8', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('8', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('8', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('9', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('9', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('9', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES ('10', '12345678998', '好医生', '1478478437689');
INSERT INTO `tab_topic_comment` VALUES ('10', '13656688476', '好文章', '1437846866876');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833442', '好日子', '1478437584378');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833448', '好棒的', '1478783787832');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833458', '感谢', '1438748374879');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833459', '加油', '1453846376469');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833460', '满意的', '1476844682678');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833461', '好医生', '1437843674376');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833462', '邦德', '1437847837478');
INSERT INTO `tab_topic_comment` VALUES ('10', '17826833463', '加油的', '1437843676827');
INSERT INTO `tab_topic_comment` VALUES (null, null, null, null);

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `phone` varchar(20) character set utf8 NOT NULL,
  `password` varchar(30) character set utf8 NOT NULL,
  `nickname` varchar(12) character set utf8 default NULL,
  `sex` varchar(2) character set utf8 default NULL,
  `area` varchar(50) character set utf8 default NULL,
  `address` varchar(50) character set utf8 default NULL,
  `school` varchar(50) character set utf8 default NULL,
  `head` varchar(255) character set utf8 default NULL,
  `token` varchar(30) character set utf8 default NULL,
  `content` longtext character set utf8,
  `state` int(11) default NULL,
  PRIMARY KEY  (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_user
-- ----------------------------
INSERT INTO `tab_user` VALUES ('1234567890', '123456', '无', '男', '北京', '无', '清华大学', 'HelloServer//head//1234567890.jpg', '1234567890123456', null, '0');
INSERT INTO `tab_user` VALUES ('12345678998', '123456', '测试版', '男', '北京', '一号楼一号', '清华大学', '', '12345678998123456', null, '0');
INSERT INTO `tab_user` VALUES ('13656688476', '123456', '经济师', '男', '浙江', '很健康', '中国计量学院', 'HelloServer//head//13656688476.jpg', '13656688476123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833442', '123456', '大熊', '男', '北京', '一号路一号', '华清大学', 'HelloServer//head//17826833442.jpg', '17826833442123456', '广告', '0');
INSERT INTO `tab_user` VALUES ('17826833448', '123456', '中国', '男', '浙江省杭州市', '学源街258号', '中国计量大学', 'HelloServer//head//17826833448.jpg', '17826833448123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833458', '123456', '倪称', '男', '天津', '天津港', '南开大学', 'HelloServer//head//17826833458.jpg', '17826833458123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833459', '456789', null, null, null, null, null, 'HelloServer//head//17826833459.jpg', '17826833459456789', null, '0');
INSERT INTO `tab_user` VALUES ('17826833460', '123456', '任务', '男', '河北', '某县', '中国人民武装警察部队学院', 'HelloServer//head//17826833460.jpg', '17826833460123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833461', '123456', '你好呀', '男', '内蒙古', '地址', '内蒙古工业大学', 'HelloServer//head//17826833461.jpg', '17826833461123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833462', '123456', null, null, null, null, null, 'HelloServer//head//17826833462.jpg', '17826833462123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833463', '123456', null, null, null, null, null, 'HelloServer//head//17826833463.jpg', '17826833463123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833464', '123456', '怎么去昵称', '男', '北京', '人民广场', '中国人民大学', 'HelloServer//head//17826833464.jpg', '17826833464123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833549', '123456', '小熊', '女', '浙江省杭州市', '下沙高教园区', '浙江理工大学', 'HelloServer//head//17826833549.jpg', '17826833549123456', null, '0');
INSERT INTO `tab_user` VALUES ('17826833570', '123456', '阿熊', '男', '北京', '你还', '清华大学', 'HelloServer//head//17826833570.jpg', '17826833570123456', null, '0');
INSERT INTO `tab_user` VALUES ('admin', 'admin', 'admin', null, null, null, null, null, 'admin', null, '0');

-- ----------------------------
-- Table structure for thas
-- ----------------------------
DROP TABLE IF EXISTS `thas`;
CREATE TABLE `thas` (
  `sid` int(5) default NULL,
  `id` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of thas
-- ----------------------------

-- ----------------------------
-- Table structure for tnas
-- ----------------------------
DROP TABLE IF EXISTS `tnas`;
CREATE TABLE `tnas` (
  `sid` int(5) default NULL,
  `id` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tnas
-- ----------------------------
