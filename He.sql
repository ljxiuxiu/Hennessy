轩尼诗世家：
	
	历史，风华人物
	历史数据表
创意特饮：
	
	轩尼诗创意特饮
	特饮介绍
	调酒表
	调酒师表

create database Hennessy character set utf8;
use Hennessy;

DROP TABLE IF EXISTS `TALENTS`;
create table `TALENTS`(
   `tid` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `title` varchar(300) CHARACTER SET utf8 NOT NULL,
   `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
   `tphoto` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `photob` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `photos1` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `tphotos2` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `stitle1` varchar(300) CHARACTER SET utf8 NOT NULL,
   `stitle2` varchar(300) CHARACTER SET utf8 NOT NULL,
   `content1` varchar(2000) CHARACTER SET utf8 NOT NULL ,	
   `content2` varchar(2000) CHARACTER SET utf8 NOT NULL 	 
);

INSERT INTO TALENTS VALUES ('1','LAURENT PERNOT： 过去、现在、永恒','以皮影戏糅合光与暗的特色，Pernot的项目表达时间的流逝、两代人之间的知识传承，以及轩尼诗的永恒传统和价值。','public/images/jhj_pic1.jpg','public/images/jhj_picB1.jpg','public/images/jhj_pics11.jpg','public/images/jhj_pics12.jpg','揭示无形概念','轩尼诗250週年卓越之旅委托项目 - 超越时间','Laurent Pernot在1980年出生于巴黎，曾就读于法国弗雷斯诺国家当代艺术中心（Le Fresnoy National Studio of Contemporary Arts），现于巴黎工作。自2000年代初，他便参与多项国际工作和展览，其作品打破单一媒体的限制，充满实验性元素，给人以身临其境的感觉，在国际间享负盛名。 Pernot玩味有形和无形，以及时间和记忆的无形概念。他喜欢对比意念：各种身份、起源和生命的极限，都是其作品反复出现的主题，以批评现代和大众文化的观念。他的作品涉及个人和社会，并希望藉此与观赏者交流，因为对他而言，这种关系赋予作品重大的意义。','Pernot的“共同文化遗产项目”（Common Heritage Project）探讨自然与人类、过去和现在，以及代代相传的文化遗产和技艺，与轩尼诗世家的传奇故事互相呼应。为此，他选择了一个屏幕投影，当中结合无数图像及皮影戏传统，以及充满永恒和宇宙意境的现代感。在屏幕上，海洋、阳光与葡萄都并合起来，创造出Pernot不断进化和重演的创作空间。在这个装饰作品里，两个男士的剪影分享着恒久的传统和演化的奥秘。这件极具象征意义的作品，代表着自然和她的工匠之间的和谐氛围，以图案唤起轩尼诗历代的文化遗产。');
INSERT INTO TALENTS VALUES ('2','杨泳梁：流动的时间和感觉','从一个不断变化的抽象作品中，这位中国艺术家探索轩尼诗的不同流体形态，深入一杯干邑中揭示世纪传承。','public/images/jhj_pic2.jpg','public/images/jhj_picB2.jpg','public/images/jhj_pics21.jpg','public/images/jhj_pics22.jpg','现代的错觉','轩尼诗250周年卓越之旅委托项目 - 流动的万花筒 ','在1980年生于上海的杨泳梁，自幼学习中国传统艺术，毕业于中国美术学院，这些经历都反映在他的作品之中。他与传统美学有着密切的关系：他探讨祖传的中国艺术形式，如山水景观，令观赏者醉心于充满幻想错觉的奇异世界。然而，他的作品往往洋溢着强烈的后现代主义。摄影、绘画、影片，甚至装置艺术，都被用以挑战传统，批判现代、大规模城市化和工业化带来的破坏性影响。他的作品获得国际艺术团体的好评，并曾于莫斯科双年展、大都会博物馆和尤伦斯当代艺术中心展出。','杨泳梁的项目“流动的万花筒”（Kaleidoscopic Fluid）描绘一幅由液体反映出来的图案，令人犹如置身万花筒中。从一方面来看，作品着眼于观众的感官反应，与一杯干邑带来的感官享受互相呼应。然而，一旦潜入玻璃杯中，就会发现一切超越味道、颜色和气味：作品还谈及经历时间流逝，仍然屹立不倒的文化传统。液体的展开和变化，就像轩尼诗的历史传承，如水扩张，令世界连为一体，将文化代代相传。');
INSERT INTO TALENTS VALUES ('3','DINEO SESHEE BOPAPE： 一次视觉体验','艺术家以创新手法，利用经典的轩尼诗酒瓶拍摄影片，透过轩尼诗玻璃瓶的角度展现世界面貌，间接彰显轩尼诗的精髓。','public/images/jhj_pic3.jpg','public/images/jhj_picB3.jpg','public/images/jhj_pics31.jpg','public/images/jhj_pics32.jpg','探求自我概念','轩尼诗250週年卓越之旅委托项目 - 不确定性','Dineo Seshee Bopape于1981年在南非出生。她在德班学习油画及雕塑，2007年毕业于阿姆斯特丹De Ateliers学院，其后在纽约哥伦比亚大学完成艺术硕士课程。 虽然她的作品多涉猎不同范畴，但整体结构完美配合：影片、绘画、油画及表演等，全部融合成为极富张力、元素丰富及颜色鲜明的装置艺术与观赏者交流，以表达强烈的政治及社会信息。对这位艺术家而言，自我概念非常重要，当中性别、种族、性及心理学等，都是她探索的议题。','Dineo Seshee Bopape为轩尼诗准备了一个视觉体验的项目。影片透过一个酒瓶从高空拍摄风景地貌。Bopape利用Go-Pro相机（即在酒瓶内装上针孔摄影机）拍摄，以求突出作品的实验感，在极少操控的情况下，让作品自然流露真实风貌。');
INSERT INTO TALENTS VALUES ('4','OLGA KISSELEVA：追寻历史中的故事','透过拍摄静物组成的影片玩味传统， Kisseleva展现俄罗斯和轩尼诗世家之间长达一个世纪的共同历史和友谊。','public/images/jhj_pic4.jpg','public/images/jhj_picB4.png','public/images/jhj_pics41.jpg','public/images/jhj_pics42.jpg','传统新面貌','轩尼诗250週年卓越之旅委托项目 - 舞动灵魂','1965年出生于圣彼得堡的Olga Kisseleva，在前苏联学习绘画达八年之久。她现居于巴黎，并与Daniel Buren在巴黎高等学院（Institut des Hautes Etudes）共事。她主力拍摄影片、相片及表演制作。她广泛使用空间来表达其前卫激进的艺术作品，既具实验性质又发人深省，当中亦质疑常规、性别、政治及历史。然而，她的学术背景深深影响她的工作。她最著名的摄影作品之一结合了20世纪历史和学术传统，透过颠覆静物，挑战观赏者对形体和符号的看法。不管方法如何，她的整体作品都发人深省，这一点绝不能忽视。','Kisseleva的“共同文化遗产项目”：（Common Heritage Project）集合一系列相片，拍成一段三分钟的影片，讲述自1918年以来，轩尼诗与俄罗斯之间的关系。受17世纪艺术丰富的叙事特色所启发，Kisseleva的作品使用传统绘画静物的方法，凝聚成说事的力量。 Kisseleva从每个物件背后的符号找出含义，以及其与整体的关系。因此，整个艺术品透过连系轩尼诗与俄罗斯的物件，叙述了两者的关系。历史和美学的象征构成复杂且多重的含义，其中心思想莫过于轩尼诗世家和俄罗斯之间长久且多方面的合作伙伴关系。');
INSERT INTO TALENTS VALUES ('5','CONSTANCE GUISSET：结合多元文化遗产','法国设计师在展场中心设置一个圆形平台，透过几位艺术家的表演和影片，展现轩尼诗世家如何表现自我。','public/images/jhj_pic5.jpg','public/images/jhj_pic57.jpg','public/images/jhj_pics51.jpg','public/images/jhj_pics52.jpg','光影世界的舞台 ','轩尼诗250週年卓越之旅委托项目 - 琥珀','生于1976年的Constance Guisset于巴黎生活和工作，她放弃修读商科而选择了工艺和设计，在2007年毕业于Les Ateliers工业设计学院（ENSCI - Les Ateliers School of Industrial Creation），并于同年成立了自己的工作室。她喜欢探索不同的艺术形式：物件和舞台设计、建筑和影片，及以光影动画组成优雅而流动的作品。她的作品旨在创造惊喜和隐世意念，因此常仔细安排其场景布置。','Guisset为轩尼诗设计了一个互动而且可调校的圆形舞台，作为整个展览场地的核心作品。她的作品以“传递”为主题，既是现场表演场地，亦是投射影片的平台，使整个展览连成一体，成为展示当地人才和国际艺术家的舞台 。从早到夜，该装置让舞蹈员、表演者及讲者透过他们各自的作品以及整体合作，表达出轩尼诗在五大洲的多元文化特质。中场期间，舞台会被屏幕盖起，令平台变成酒桶形状，投影各个艺术家的短片。');
INSERT INTO TALENTS VALUES ('6','PIERRICK SORIN： 置身于历史文化遗产之中','彷佛在施展魔法，这艺术家兼错觉大师将轩尼诗变成一个“视觉剧场”，并出现其中。','public/images/jhj_pic6.jpg','public/images/jhj_picB6.jpg','public/images/jhj_pics61.jpg','public/images/jhj_pics62.jpg','立体照相艺术家','轩尼诗250週年卓越之旅委托项目 - 轩尼诗','录像艺术家Pierrick Sorin于1960年在法国南特出生，他的短片和视觉装置常常嘲笑艺术创作的过程，甚至人类的存在。由于他热爱独个儿拍摄，他自己往往是故事的唯一演员。然而，这位艺术家也是一个错觉大师：他创造了光影剧场，融合低保真度（lo-fi）和自制的新技术，让他在真实物件之间，以细小的立体照相形式出现，彷如施了魔法一样。','Sorin为轩尼诗巡展设计的项目，是一个灵感源自微型剧场的录像装置。这是一个结合物理元素和立体电影的当代作品，其中使用最新的Aliscopic技术，将古老传统的工艺和技术联系在一起。在他的微型舞台上，Sorin投射简短片段，亲身上演在充满幻想又奇异的世界当中，与历史文化遗产交流。从外太空品尝轩尼诗，到一个放满轩尼诗手工艺品的柜子，Sorin以轻松有趣的手法展现传统，令有形和无形的概念变得模糊。');
INSERT INTO TALENTS VALUES ('7','TOM DIXON 重新诠释轩尼诗X.O','轩尼诗自豪地宣布其与英国著名设计师Tom Dixon的创新合作：Tom Dixon为轩尼诗X.O THE ORIGINAL带来全新设计。','public/images/jhj_pic7.jpg','public/images/jhj_picB7.jpg','public/images/jhj_pics7.jpg','public/images/jhj_pics7.jpg','连续性','珍品','Tom Dixon是一位先锋原创人物，在对创新设计、制造的承诺，以及“燃亮并塑造未来”愿景下，他创作了大量经典作品：镜球灯（Mirror Ball）、黄铜吊灯（Copper Shade）、Beat Light系列和挡风椅（Wingback Chair）。 除了充满现代感，Tom Dixon的作品又带有明确一贯的连续性。轩尼诗X.O与Tom Dixon从2012年开启了成功的合作之门，Tom通过全新视角重新诠释轩尼诗X.O背后的世界。','Tom Dixon以独特的视角重新诠释轩尼诗X.O，其灵感源于对博物馆如何陈列展示各种珍品的研究与着迷。 Dixon独具匠心地将轩尼诗X.O的酒樽安置于一个平面的、近似机械观感的支架中，使酒樽成为整个视觉的焦点，让人联想到那些用于镶嵌珍稀宝石的爪镶底座。 Dixon表示：“我对珍品以及它们在不同环境中的展示方式情有独钟。”他还强调，要确保一件珍品得到世人全方位的理解和欣赏，陈列展示的方式至关重要。 设计师将酒樽安置于金属支架中，使之成为瞩目焦点，X.O酒樽如同一颗珍稀宝石镶嵌其中，向Dixon的设计天赋及轩尼诗X.O与生俱来的丰富底蕴致敬。');
INSERT INTO TALENTS VALUES ('8','OS GEMEOS兄弟为轩尼诗设计瓶身：多彩之作','如果不是成长于圣保罗，就不会有今天这对艺术家，正类似如果没有法国轩尼诗干邑的历史传承，就不会有轩尼诗世家。','public/images/jhj_pic8.jpg','public/images/jhj_picB8.jpg','public/images/jhj_pics81.jpg','public/images/jhj_pics82.jpg','关于OS GEMEOS兄弟','轩尼诗与OS GEMEOS兄弟','Os Gemeos兄弟是出生于巴西的街头艺术新星，他们色彩丰富且多层面的作品主要从其家乡汲取灵感。Os Gemeos兄弟的艺术深深根植于圣保罗。这对孪生兄弟说，今天他们之所以能成为艺术家，正是因为这座城市。“我们在街头嬉戏中长大，并从那段时光中学到很多。在那种环境中，我们只能即兴创作。” Os Gemeos兄弟解释说。这对兄弟亲密无间、志同道合，这或许是促使他们成长为艺术家的最重要因素。Leonard McGurr、aka Futura—此前轩尼诗Very Special限量版的合作伙伴—是首批被推荐与这一干邑品牌合作的巴西当代艺术家。对工艺技能的专注投入与空间感是轩尼诗与Os Gemeos兄弟的作品共有的艺术纽带。','“我们喜欢尝试。对我们而言，这个项目是一种新的创作媒介—我们可以通过它将传统的东西以更现代、更多彩的形式展现出来。” Os Gemeos兄弟说道。在了解轩尼诗的历史以及融合艺术形式对品牌的重要性之后，这对孪生兄弟找到了酒瓶标签灵感，他们将其描述为一幅“快乐、多彩、万物和谐共荣的风景画”。Os Gemeos兄弟在深入了解轩尼诗的干邑世界后认为他们与轩尼诗有不少共通之处。他们解释，“轩尼诗的一切，都关乎激情与时间。”“百闻不如一见，眼见为实才能迸发出想象的火花。”他们最后总结道。');
INSERT INTO TALENTS VALUES ('9','轩尼诗V.S.O.P干邑的细腻时尚风貌','克里斯·班格（Chris Bangle）的丰富经验告诉他，唯有极细腻的设计手法，才能打造V.S.O.P全新时尚完美造型。','public/images/jhj_pic9.jpg','public/images/jhj_picB9.jpg','public/images/jhj_pics9.jpg','public/images/jhj_pics92.jpg','','','三十年来，美籍汽车设计师克里斯·班格一直是车坛的风云人物，曾为欧宝、菲亚特等品牌献艺，更是BMW宝马集团首席设计师。轩尼诗V.S.O.P干邑全新时尚酒瓶是他在汽车领域之外初试啼声的杰作。克里斯认为所有的产品都是有生命的，其性能和美学仅居其次，因此，在设计之前，他先揣摩V.S.O.P干邑的个性。','轩尼诗V.S.O.P干邑全新时尚酒瓶是划时代的巨作。克里斯想保存酒瓶的和谐比例及平衡感，以便体现瓶中干邑的柔顺特质。他略为突显了瓶身两侧的曲线线条，继而赋予瓶身向上拉伸的修长感及增厚但凹底的底座。在V.S.O.P干邑酒瓶金字塔动线引领下，观者的视线上升至轩尼诗家族传奇战斧浮雕，回归知名干邑的传统。');
INSERT INTO TALENTS VALUES ('10','XAVIER VEILHAN，现代角度','Xavier的项目是通过经典的雕塑方式，诠释“现代”这个主题。对于这位艺术家而言，La Fusée属于现代，且是21世纪最重要的人类创举。','public/images/jhj_pic10.jpg','public/images/jhj_picB10.jpg','public/images/jhj_pics101.jpg','public/images/jhj_pics102.jpg','XAVIER VEILHAN','轩尼诗250周年卓越之旅作品 - 火箭（LA FUSÉE）雕塑 ','Xavier Veilhan出生于1963年。目前在巴黎居住和工作，他认为艺术是“一种展现视野的工具，必须透彻了解才可明白我们的过去，现在和未来。”他的3D作品主要由塑料制成，展现了他喜欢在经典雕塑中融合现代感的表达方式。他对流行的视觉作品作出了自己的诠释，经常玩味它们的设计，涉猎人所共知以至异想天开的对象。他曾创造了不少精彩的装置，特别是2009年在凡尔赛宫、2010年在纽约路易·威登大厦和2011年在东京展出的装置。今年，大家期待已久的Architectones项目即将推出，同时发行一本书和一部纪录片，组成整个系列。','La Fusée 是个激动人心的雕塑，而且对Veilhan有重大意义。对他而言，阿波罗11号的航空事迹是近代最令人印象深刻及最具影响力的政治和经济事件之一，对人们如何看待周围的空间，影响深远。他以火箭雕塑表达了这概念，它既易于辨认，同时富现代感；它是一支细长、带菱角的火箭而不仅是一个航天模型。最重要的是，Veilhan认为这件作品是进步和乐观的写照。');
INSERT INTO TALENTS VALUES ('11','DANIEL ARSHAM：艺术、建筑与表演','DANIEL ARSHAM从历史角度阐释轩尼诗。DANIEL ARSHAM以来自五位国际艺术家的录影片段和艺术作品，阐释轩尼诗与美国的渊源，并透过探索文物般的不同物件，向我们讲述轩尼诗在美国文化中所占的地位。','public/images/jhj_pic11.jpg','public/images/jhj_picB11.jpg','public/images/jhj_pics111.jpg','public/images/jhj_pics112.jpg','让建筑风格别树一帜','轩尼诗250周年卓越之旅作品 - 无题','Daniel Arsham毕业于纽约市库伯联盟学院（Cooper Union）建筑专业，2003年荣获Gelman Trust奖学金奖。 Arsham以令人意想不到的方式将建筑物呈现眼前，并总是寻找机会颠覆人们对空间和造型的认识，例如仿若被风吹动、帷幔般遮盖着一个人的墙身。 在大量作品中，他大胆运用引人注目的影像表现运动和时间，不断挑战观众的第一印象。时间的流逝亦通过衰败或损毁等概念得以传达——相机和电话等不朽物品，因被Arsham以压缩晶体和岩石粉制作而出现了石化或侵蚀。','Arsham为“从这里到那里”制作了一个3分钟的视频，用以展现品牌与美国的深厚渊源。他的短片以五位国际艺术家为轩尼诗250周年卓越之旅特别打造的艺术品为主角，诠释了轩尼诗与美国强烈且深厚的渊源。这种关系就如同美国对于生于斯长于斯的Arsham而言一样重要。展望未来，Arsham回顾我们的历史遗产，如以冰块雕刻而成的时钟、相机、电视等各种物品，仿佛从冰冻的驾驶舱中浮出。他的短片令人们反思在轩尼诗美国冒险之旅中重复出现的主题：时间、历史和美国文化。这同时亦是品牌坚持至今的核心价值。');
INSERT INTO TALENTS VALUES ('12','轩尼诗与JEAN-MICHEL OTHONIEL携手，重现巴洛克的富丽华美。','为了庆贺轩尼诗家族领军人物Killian Hennessy百年诞辰，法国当代艺术家Jean-Michel Othoniel用现代艺术手法全新诠释传统酒箱，礼赞百年禧丽干邑的“世纪之美”。','public/images/jhj_pic12.jpg','public/images/jhj_picB12.jpg','public/images/jhj_pics121.jpg','public/images/jhj_pics122.jpg','艺术家JEAN-MICHEL OTHONIEL创作的“百年禧丽”酒箱','致敬干邑总艺师YAN FILLIOUX ','神秘之奁，百宝之箱，Jean-Michel Othoniel用华美的巴洛克语言，热情颂歌轩尼诗的荣耀。百年禧丽以自由创意，诠释对卓越工艺的敬意。酒箱的制作过程凝聚了十多项传世工艺。 散发着白色光晕的玻璃镜面，是琉璃大师的杰作，也唯有他们才能重现大教堂玻璃的流光。箱体由融化铝金属构造而成，上面装饰精美圆圈，圆形是艺术家Jean-Michel Othoniel的标志符号。顶端冠有两颗Salviati 工坊吹制的穆拉诺琉璃珠，高贵的琥珀色泽暗示着酒箱内的珍贵干邑。','轻轻推动下方的一把铜制钥匙，便可开启酒箱。 酒箱开启后，按动隐秘按钮即可呈现整套品鉴组合：巴拉克水晶干邑瓶，装在由法国知名品牌娇兰打造铝制网状套瓶中，四个穆拉诺琉璃杯内饰金叶。 “ 百年禧丽”（Beauté du Siècle）也是该款干邑的名字，酿酒总艺师Yann Fillioux曾经与Killian Hennessy共事多年，他用这款干邑，表达自己的深沉敬意。总艺师精心挑选了品牌自1907年以来的100多种“生命之水”精萃调配成的百年禧丽，堪称轩尼诗干邑中的巅峰之作。');




DROP TABLE IF EXISTS `DRINKS`;
create table `DRINKS`(
   `did` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `dtitle` varchar(300) CHARACTER SET utf8 NOT NULL,
   `dphoto` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `photobs` varchar(300) CHARACTER SET utf8 NOT NULL ,
    `way` varchar(200) CHARACTER SET utf8 NOT NULL ,
    `op1` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op2` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op3` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op4` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op5` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op6` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op7` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `des1` varchar(3000) CHARACTER SET utf8 NOT NULL,
    `des2` varchar(3000) CHARACTER SET utf8 NOT NULL
);

INSERT INTO DRINKS VALUES ('1','轩尼诗蜂蜜特饮','public/images/drinks1.jpg','public/images/drinksB1.jpg','配方','4厘升轩尼诗','0.5厘升槐花蜂蜜','4厘升热水','1片柠檬','','','',' 在酒杯中加入轩尼诗、蜂蜜和热水。搅拌至蜂蜜溶解。饰以一片柠檬','');
INSERT INTO DRINKS VALUES ('2','轩尼诗TASTY JULEP特饮','public/images/drinks2.jpg','public/images/drinksB2.jpg','','在julep酒杯中倒入：','– 5厘升轩尼诗Classivm','– 3颗马拉斯加酸樱桃酒渍樱桃','– 2长勺白糖','– 10片薄荷叶','– 1厘升青柠汁','– 1滴巧克力苦酒','将上述原料捣碎。','加入碎冰。以一枝薄荷和一颗马拉斯加酸樱桃酒渍樱桃作点缀。');
INSERT INTO DRINKS VALUES ('3','轩尼诗杏子美味特饮','public/images/drinks3.jpg','public/images/drinksB3.jpg','','在调酒器中倒入：','– 5厘升Fine de Cognac ','– 4片杏干','– 1长勺白糖,','– 1厘升清水','','','将上述原料摇匀后，加入冰块再次摇匀。','将酒液过滤至事先冷藏的飞碟杯中以一颗切成扇面状的杏干作点缀。');
INSERT INTO DRINKS VALUES ('4','轩尼诗酸味特饮','public/images/drinks4.jpg','public/images/drinks1B4.jpg','','在调酒器中倒入：','– 4厘升轩尼诗Pure White','– 1.5厘升黄色柠檬榨汁','– 2厘升蔗糖','– 2厘升格雷伯爵茶','– 1厘升蛋白','',' 将上述原料摇匀后，加入冰块再次摇匀。','将酒液过滤至事先冷藏的飞碟杯中,以少许一份格雷伯爵茶作点缀。');
INSERT INTO DRINKS VALUES ('5','轩尼诗清新茶香特饮','public/images/drinks5.jpg','public/images/drinksB5.jpg','','在装满冰块的“鱼缸”杯中倒入：','– 4厘升轩尼诗Pure White','– 3厘升格雷伯爵茶','– 2厘升榨汁橙汁','– 2厘升蔗糖糖浆','','','使用搅拌勺将上述原料均匀搅拌。','以半颗金橘作点缀。');
INSERT INTO DRINKS VALUES ('6','轩尼诗红莓特饮','public/images/drinks6.jpg','public/images/drinksB6.jpg','原料','1 ½份轩尼诗干邑','3 ½ 份红莓汁','','','','','','将轩尼诗干邑倒入高杯中，加入冰块（装满杯），在其上浇上红莓汁。点缀以青柠檬角。','');
INSERT INTO DRINKS VALUES ('7','轩尼诗红茶特饮','public/images/drinks7.jpg','public/images/drinksB7.jpg','','在装满冰块的平底玻璃酒杯中倒入：','– 5厘升Hennessy Black','– 1.5厘升百里香利口酒','– 1.5厘升马鞭草茶','– 3厘升苏打水','– 2滴安哥斯图娜苦酒','','用搅拌勺将上述原料均匀搅拌。','以一枝百里香作点缀。');
INSERT INTO DRINKS VALUES ('8','轩尼诗汤力水特饮','public/images/drinks8.jpg','public/images/drinksB8.jpg','原料','2份轩尼诗干邑','3份苏打水','','','','','','将所有原料倒入装有冰块的高杯中。','');
INSERT INTO DRINKS VALUES ('9','轩尼诗冬季烈酒特饮','public/images/drinks9.jpg','public/images/drinksB9.jpg','配方','4厘升轩尼诗','4厘升热水','0.5厘升蔗糖糖浆','2片柠檬（柠檬片去皮、经络和外皮）','1片薄生姜片','1条螺旋状橙皮' ,'','在酒杯中倒入轩尼诗、糖、柠檬和生姜。搅拌。加入热水并以螺旋状橙皮作点缀。','');

DROP TABLE IF EXISTS `SDRINKS`;
create table `SDRINKS`(
   `sdid` int(11) NOT NULL AUTO_INCREMENT,
   `did` int(11) NOT NULL,
   `sdphotos` varchar(300) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (`sdid`),
    KEY `ddid` (`did`),
    CONSTRAINT `ddid` FOREIGN KEY (`did`) REFERENCES `DRINKS` (`did`)
);

INSERT INTO SDRINKS VALUES ('1','1','public/images/small-1.jpg');
INSERT INTO SDRINKS VALUES ('2','2','public/images/small-2.jpg');
INSERT INTO SDRINKS VALUES ('3','3','public/images/small-3.jpg');
INSERT INTO SDRINKS VALUES ('4','4','public/images/small-4.jpg');
INSERT INTO SDRINKS VALUES ('5','5','public/images/small-5.jpg');
INSERT INTO SDRINKS VALUES ('6','6','public/images/small-6.jpg');
INSERT INTO SDRINKS VALUES ('7','7','public/images/small-7.jpg');
INSERT INTO SDRINKS VALUES ('8','8','public/images/small-8.jpg');
INSERT INTO SDRINKS VALUES ('9','9','public/images/small-9.jpg');


DROP TABLE IF EXISTS `mixter`;
create table `MIXTER`(
   `mid` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `mtitle` varchar(300) CHARACTER SET utf8 NOT NULL,
   `mcountry` varchar(300) CHARACTER SET utf8 NOT NULL,
   `mdescription` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
   `mphoto` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `mphotob` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `content1` varchar(2000) CHARACTER SET utf8 NOT NULL,
   `content2` varchar(2000) CHARACTER SET utf8 NOT NULL,
   `content3` varchar(2000) CHARACTER SET utf8 NOT NULL,
   `content4` varchar(2000) CHARACTER SET utf8 NOT NULL
);


INSERT INTO MIXTER VALUES ('1','BEN BELMANS','BEN的酒吧顾问公司 | 安特卫普 | 比利时','Belmans是酒吧顾问同时拥有自己的餐饮公司，一向重视品质，因此而与轩尼诗气味相投。','public/images/mixter1.png','public/images/mixterB1.png','在Ben Belmans的眼中，服务和质量是调酒师素质的关键所在。他说：“作为一名调酒师，必须兼具大厨的创意和大堂经理的服务意识。”','优雅不应被忽视，“尽管调配出了极佳的鸡尾酒，但如果服务不带笑容，那还是无济于事。”','Ben Belmans作为调酒师和顾问历时10年，是比利时鸡尾酒文化变更的见证人，“调酒师的社区正在不断壮大。”','“一个新时代正在降临，它无疑是一个属于干邑的时代。”');
INSERT INTO MIXTER VALUES ('2','YVES VITRANT','K2 | 高雪维尔 | 法国','Yves Vitrant对酒精饮料的喜好让他爱上了调酒师这一职业。他现在在法国高雪维尔K2酒店工作。','public/images/mixter2.png','public/images/mixterB2.png','Yves Vitrant在结识了一位著名调酒师后，在25岁时离开了护理职业，步入酒吧职业生涯。','Yves Vitrant在伦敦、柏林或巴黎的流行趋势中汲取创作“超前”鸡尾酒饮品的灵感。近年来，在法国各大城市的独立小酒吧里，鸡尾酒越来越流行，Yves Vitrant对这种现象深感欢心：“这些小酒吧鸡尾酒的流行趋势充分体现着法国的风尚潮流。”','Yves Vitrant特别喜爱干邑，特别是具有峻厉个性的干邑，他因轩尼诗的品质而极为推崇，轩尼诗不仅仅是一款酒品，它真正代表的是一种精神境界。','');
INSERT INTO MIXTER VALUES ('3','MARINE CHABAUD','佛陀酒吧 | 巴黎 | 法国','在洋溢着一派异国情调的巴黎佛陀酒吧中，玛琳为来宾打造独家原创的鸡尾酒。','public/images/mixter3.png','public/images/mixterB3.png','玛琳从18岁起就开始从事调酒工作。起初，调酒只不过是她打季节性短工的工作内容，但很快就变成了她热衷的职业。她在游历了希腊和美国等国家后，三年前她终于在巴黎佛陀酒吧落下了脚。','“干邑是不凡的烈酒”，她说道，“它饱含众多的灵魂”。当她在调配轩尼诗鸡尾酒时，她所希望的是让客人对干邑有一种全新的体验。她说：“我想让人们特别是女性对轩尼诗产生不同的感受，这就是为什么我喜欢调配适合每个人口味富有创意的鸡尾酒。”','对玛琳来说，调酒是为了分享一份额外的乐趣。她的理念：“认真工作，绝不自以为是。”','');
INSERT INTO MIXTER VALUES ('4','JEFFREY MCGLYNN','汤普森酒店 | 多伦多 | 加拿大','对于每个调酒师来说，“每一天都是在做耐力测试”，但汤普森酒店的首席调酒师Jeffrey McGlynn绝对不会因此而改变自己的职业选择。','public/images/mixter4.png','public/images/mixterB4.png','早在大学就学时，Jeffrey即利用课余时间，开始从事调酒工作。他加班加点地忙碌着，终于爱上了调酒师这一职业，并移居到大城市，正式开始了调酒师的职业生涯。他表示：“这个职业与我的个性互补”。','作为一个干邑爱好者，他非常欣赏轩尼诗的多变性。“这款干邑口味非常独特，你可以把它调成甜或不甜的鸡尾酒，带有新鲜水果味的鸡尾酒，它具有令人大跌眼镜的许多口味。”但他的喜好之最是经典配方：“我喜欢在调制Sidecars鸡尾酒时选用轩尼诗。”','','');
INSERT INTO MIXTER VALUES ('5','调合的艺术，GEORGES MATZARIDIS','HAKKASAN餐厅 | 伦敦 | 英国','轩尼诗向您介绍Georges Matzaridis，一位将调酒升华为生活艺术的酒吧调酒师。','public/images/mixter5.png','public/images/mixterB5.png','来自希腊的 Georges Matzaridis在70年代跟随父母移居瑞典，并在瑞典度过了童年时光。之后，他求学伦敦，并一眼爱上了这个多元化的、各种人群混居的城市，因而定居下来…… 可以说，他很早就表现出对混合的喜爱。','他的职业生涯起源了家族餐馆的吧台，Georges经常呆在吧台与吧员聊天、讨论。之后，他时常更换鸡尾酒装饰，使其更精美，以遵循“一致性与延续性”，这两个他认为至关重要的调酒原则。','','');


DROP TABLE IF EXISTS `PARTS`;
create table `PARTS`(
   `pid` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `logo` varchar(100) CHARACTER SET utf8 NOT NULL
);
INSERT INTO PARTS VALUES ('1','XVIII');
INSERT INTO PARTS VALUES ('2','XIX');
INSERT INTO PARTS VALUES ('3','XX');
INSERT INTO PARTS VALUES ('4','XXI');

DROP TABLE IF EXISTS `SPIRIT`;
create table `SPIRIT`(
   `sid` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `country` varchar(100) CHARACTER SET utf8 NOT NULL,
   `syear` varchar(100) CHARACTER SET utf8 NOT NULL
);
INSERT INTO SPIRIT VALUES ('1','英国','1765');
INSERT INTO SPIRIT VALUES ('2','美国','1794');
INSERT INTO SPIRIT VALUES ('3','俄国','1818');
INSERT INTO SPIRIT VALUES ('4','印度','1819');
INSERT INTO SPIRIT VALUES ('5','澳洲','1855');
INSERT INTO SPIRIT VALUES ('6','中国','1859');
INSERT INTO SPIRIT VALUES ('7','马来西亚','1867');
INSERT INTO SPIRIT VALUES ('8','捷克共和国','1925');
INSERT INTO SPIRIT VALUES ('9','','');
INSERT INTO SPIRIT VALUES ('10','','');
INSERT INTO SPIRIT VALUES ('11','','');


DROP TABLE IF EXISTS `HISTORY`;
create table `HISTORY`(
   `hid` int(11) NOT NULL AUTO_INCREMENT,
   `pid` int(11) NOT NULL,
   `sid` int(11) NOT NULL,
   `hphoto` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `hyear` int(11) NOT NULL ,
   `hdescription` varchar(2000) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (`hid`),
    KEY `ppid` (`pid`),
    KEY `ssid` (`sid`),
    CONSTRAINT `ppid` FOREIGN KEY (`pid`) REFERENCES `parts` (`pid`),
    CONSTRAINT `ssid` FOREIGN KEY (`sid`) REFERENCES `spirit` (`sid`)
);

INSERT INTO HISTORY VALUES ('1','1','1','public/images/h-p1.jpg','1765','1765年：爱尔兰籍的李察·轩尼诗在路易十五的御林军中担任军官，他观察到生命之水出口的潜力。他的宏愿是建立世界上最大的生命之水出口公司。');
INSERT INTO HISTORY VALUES ('2','1','2','public/images/h-p2.jpg','1794','1794年：轩尼诗干邑在17年前刚刚独立的美国日益深入人心。');
INSERT INTO HISTORY VALUES ('3','2','3','public/images/h-p21.jpg','1817','1817年：VSOP等级干邑首次被用来评定干邑的品质。英国王储乔治四世是干邑鉴赏行家，他要求轩尼诗为其设计一款“Very Superior Old Pale”(淡雅琥珀色的极上等陈年干邑)，此后V.S.O.P便成为整个干邑业内的参照标准。');
INSERT INTO HISTORY VALUES ('4','2','4','public/images/h-p22.jpg','1818','1818年：俄罗斯收到首批轩尼诗发送的干邑。沙皇亚历山大一世的母亲玛丽亚·费多罗芙娜要求轩尼诗特别调配一款极品干邑，作为其儿子的生日礼物。此后，罗曼诺夫皇室家族定期向轩尼诗订购干邑。');
INSERT INTO HISTORY VALUES ('5','2','5','public/images/h-p23.jpg','1856','1856年：轩尼诗家族传奇战斧成为品牌的象征物，手中紧握战斧是为了纪念创始人李察·轩尼诗在法国的12年戎军生涯，他因此而荣幸成为法国公民。');
INSERT INTO HISTORY VALUES ('6','2','6','public/images/h-p24.jpg','1859','1859年：轩尼诗干邑首次运往中国。');
INSERT INTO HISTORY VALUES ('7','2','7','public/images/h-p25.jpg','1865','1865年：创始人李察·轩尼诗的曾孙莫理斯∙轩尼诗决定创建干邑分类等级。他使用不同的星数来标明不同品质的干邑，将轩尼诗干邑提升至三星级，如今名为VS (Very Special)。此一分类标准不久也为整个干邑行业所采用。');

INSERT INTO HISTORY VALUES ('8','3','8','public/images/h-p31.jpg','1947','1947年：法国贵族Gerald de Geoffre de Chabrignac设计出经典别致的XO酒樽。');
INSERT INTO HISTORY VALUES ('9','3','9','public/images/h-p32.jpg','1979','1979年：酿酒大师顏·费尔沃（Yann Fillioux）采用上百种优质生命之水调制出独特无比的Paradis轩尼诗百乐廷干邑。');
INSERT INTO HISTORY VALUES ('10','3','10','public/images/h-p33.jpg','1996','1996年：酿酒大师顏·费尔沃（Yann Fillioux）调酿出一款和谐平衡的轩尼诗李察干邑。该款干邑专为真正的鉴赏家而作，乃稀罕而杰出的干邑佳作，是250年的历史、天才、知识、技艺与热情的结晶。酒瓶以水晶制作，手工吹制，标有独立编号。');
INSERT INTO HISTORY VALUES ('11','4','11','public/images/h-p4.jpg','2011','酿酒大师顏·费尔沃（Yann Fillioux）受轩尼诗1818年为俄国沙皇亚历山大一世创制的一款罕贵干邑所启发，调酿出Paradis Impérial轩尼诗皇禧干邑。该款干邑以多种源自轩尼诗19世纪珍藏的生命之水，匠心独具地调酿出一款精致优雅的干邑。');

DROP TABLE IF EXISTS `FILTER`
create table `FILTER`(
   `fid` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `ftitle` varchar(300) CHARACTER SET utf8 NOT NULL
);
INSERT INTO FILTER VALUES ('1','Europe');
INSERT INTO FILTER VALUES ('2','Asia');
INSERT INTO FILTER VALUES ('3','South America');
INSERT INTO FILTER VALUES ('4','North America');
INSERT INTO FILTER VALUES ('5','Africa');

DROP TABLE IF EXISTS `FILTERS`
create table `FILTERS`(
   `fsid` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `fstitle` varchar(300) CHARACTER SET utf8 NOT NULL
);
INSERT INTO FILTERS VALUES ('1','Soda');
INSERT INTO FILTERS VALUES ('2','Spice');
INSERT INTO FILTERS VALUES ('3','Fruit');



DROP TABLE IF EXISTS `DRINKS`;
create table `DRINKS`(
   `did` int(11) NOT NULL AUTO_INCREMENT,
   `fsid` int(11) NOT NULL ,
   `dtitle` varchar(300) CHARACTER SET utf8 NOT NULL,
   `dphoto` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `photobs` varchar(300) CHARACTER SET utf8 NOT NULL ,
    `way` varchar(200) CHARACTER SET utf8 NOT NULL ,
    `op1` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op2` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op3` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op4` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op5` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op6` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `op7` varchar(2000) CHARACTER SET utf8 NOT NULL,
    `des1` varchar(3000) CHARACTER SET utf8 NOT NULL,
    `des2` varchar(3000) CHARACTER SET utf8 NOT NULL,
     PRIMARY KEY (`did`),
     KEY `ffsid` (`fsid`),
     CONSTRAINT `ffsid` FOREIGN KEY (`fsid`) REFERENCES `FILTERS` (`fsid`)
);
    PRIMARY KEY (`hid`),
    KEY `ppid` (`pid`),
    KEY `ssid` (`sid`),
    CONSTRAINT `ppid` FOREIGN KEY (`pid`) REFERENCES `parts` (`pid`),
    CONSTRAINT `ssid` FOREIGN KEY (`sid`) REFERENCES `spirit` (`sid`)
);


INSERT INTO DRINKS VALUES ('1','1','轩尼诗蜂蜜特饮','public/images/drinks1.jpg','public/images/drinksB1.jpg','配方','4厘升轩尼诗','0.5厘升槐花蜂蜜','4厘升热水','1片柠檬','','','',' 在酒杯中加入轩尼诗、蜂蜜和热水。搅拌至蜂蜜溶解。饰以一片柠檬','');
INSERT INTO DRINKS VALUES ('2','2','轩尼诗TASTY JULEP特饮','public/images/drinks2.jpg','public/images/drinksB2.jpg','','在julep酒杯中倒入：','– 5厘升轩尼诗Classivm','– 3颗马拉斯加酸樱桃酒渍樱桃','– 2长勺白糖','– 10片薄荷叶','– 1厘升青柠汁','– 1滴巧克力苦酒','将上述原料捣碎。','加入碎冰。以一枝薄荷和一颗马拉斯加酸樱桃酒渍樱桃作点缀。');
INSERT INTO DRINKS VALUES ('3','3','轩尼诗杏子美味特饮','public/images/drinks3.jpg','public/images/drinksB3.jpg','','在调酒器中倒入：','– 5厘升Fine de Cognac ','– 4片杏干','– 1长勺白糖,','– 1厘升清水','','','将上述原料摇匀后，加入冰块再次摇匀。','将酒液过滤至事先冷藏的飞碟杯中以一颗切成扇面状的杏干作点缀。');
INSERT INTO DRINKS VALUES ('4','1','轩尼诗酸味特饮','public/images/drinks4.jpg','public/images/drinks1B4.jpg','','在调酒器中倒入：','– 4厘升轩尼诗Pure White','– 1.5厘升黄色柠檬榨汁','– 2厘升蔗糖','– 2厘升格雷伯爵茶','– 1厘升蛋白','',' 将上述原料摇匀后，加入冰块再次摇匀。','将酒液过滤至事先冷藏的飞碟杯中,以少许一份格雷伯爵茶作点缀。');
INSERT INTO DRINKS VALUES ('5','2','轩尼诗清新茶香特饮','public/images/drinks5.jpg','public/images/drinksB5.jpg','','在装满冰块的“鱼缸”杯中倒入：','– 4厘升轩尼诗Pure White','– 3厘升格雷伯爵茶','– 2厘升榨汁橙汁','– 2厘升蔗糖糖浆','','','使用搅拌勺将上述原料均匀搅拌。','以半颗金橘作点缀。');
INSERT INTO DRINKS VALUES ('6','3','轩尼诗红莓特饮','public/images/drinks6.jpg','public/images/drinksB6.jpg','原料','1 ½份轩尼诗干邑','3 ½ 份红莓汁','','','','','','将轩尼诗干邑倒入高杯中，加入冰块（装满杯），在其上浇上红莓汁。点缀以青柠檬角。','');
INSERT INTO DRINKS VALUES ('7','2','轩尼诗红茶特饮','public/images/drinks7.jpg','public/images/drinksB7.jpg','','在装满冰块的平底玻璃酒杯中倒入：','– 5厘升Hennessy Black','– 1.5厘升百里香利口酒','– 1.5厘升马鞭草茶','– 3厘升苏打水','– 2滴安哥斯图娜苦酒','','用搅拌勺将上述原料均匀搅拌。','以一枝百里香作点缀。');
INSERT INTO DRINKS VALUES ('8','1','轩尼诗汤力水特饮','public/images/drinks8.jpg','public/images/drinksB8.jpg','原料','2份轩尼诗干邑','3份苏打水','','','','','','将所有原料倒入装有冰块的高杯中。','');
INSERT INTO DRINKS VALUES ('9','1','轩尼诗冬季烈酒特饮','public/images/drinks9.jpg','public/images/drinksB9.jpg','配方','4厘升轩尼诗','4厘升热水','0.5厘升蔗糖糖浆','2片柠檬（柠檬片去皮、经络和外皮）','1片薄生姜片','1条螺旋状橙皮' ,'','在酒杯中倒入轩尼诗、糖、柠檬和生姜。搅拌。加入热水并以螺旋状橙皮作点缀。','');

DROP TABLE IF EXISTS `TALENTS`;
create table `TALENTS`(
   `tid` int(11) NOT NULL AUTO_INCREMENT,
   `fid` int(11) NOT NULL ,
   `title` varchar(300) CHARACTER SET utf8 NOT NULL,
   `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
   `tphoto` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `photob` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `photos1` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `tphotos2` varchar(300) CHARACTER SET utf8 NOT NULL ,
   `stitle1` varchar(300) CHARACTER SET utf8 NOT NULL,
   `stitle2` varchar(300) CHARACTER SET utf8 NOT NULL,
   `content1` varchar(2000) CHARACTER SET utf8 NOT NULL ,
   `content2` varchar(2000) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (`tid`),
    KEY `ffid` (`fid`),
    CONSTRAINT `ffid` FOREIGN KEY (`fid`) REFERENCES `FILTER` (`fid`)
);



INSERT INTO TALENTS VALUES ('1','3','LAURENT PERNOT： 过去、现在、永恒','以皮影戏糅合光与暗的特色，Pernot的项目表达时间的流逝、两代人之间的知识传承，以及轩尼诗的永恒传统和价值。','public/images/jhj_pic1.jpg','public/images/jhj_picB1.jpg','public/images/jhj_pics11.jpg','public/images/jhj_pics12.jpg','揭示无形概念','轩尼诗250週年卓越之旅委托项目 - 超越时间','Laurent Pernot在1980年出生于巴黎，曾就读于法国弗雷斯诺国家当代艺术中心（Le Fresnoy National Studio of Contemporary Arts），现于巴黎工作。自2000年代初，他便参与多项国际工作和展览，其作品打破单一媒体的限制，充满实验性元素，给人以身临其境的感觉，在国际间享负盛名。 Pernot玩味有形和无形，以及时间和记忆的无形概念。他喜欢对比意念：各种身份、起源和生命的极限，都是其作品反复出现的主题，以批评现代和大众文化的观念。他的作品涉及个人和社会，并希望藉此与观赏者交流，因为对他而言，这种关系赋予作品重大的意义。','Pernot的“共同文化遗产项目”（Common Heritage Project）探讨自然与人类、过去和现在，以及代代相传的文化遗产和技艺，与轩尼诗世家的传奇故事互相呼应。为此，他选择了一个屏幕投影，当中结合无数图像及皮影戏传统，以及充满永恒和宇宙意境的现代感。在屏幕上，海洋、阳光与葡萄都并合起来，创造出Pernot不断进化和重演的创作空间。在这个装饰作品里，两个男士的剪影分享着恒久的传统和演化的奥秘。这件极具象征意义的作品，代表着自然和她的工匠之间的和谐氛围，以图案唤起轩尼诗历代的文化遗产。');
INSERT INTO TALENTS VALUES ('2','2','杨泳梁：流动的时间和感觉','从一个不断变化的抽象作品中，这位中国艺术家探索轩尼诗的不同流体形态，深入一杯干邑中揭示世纪传承。','public/images/jhj_pic2.jpg','public/images/jhj_picB2.jpg','public/images/jhj_pics21.jpg','public/images/jhj_pics22.jpg','现代的错觉','轩尼诗250周年卓越之旅委托项目 - 流动的万花筒 ','在1980年生于上海的杨泳梁，自幼学习中国传统艺术，毕业于中国美术学院，这些经历都反映在他的作品之中。他与传统美学有着密切的关系：他探讨祖传的中国艺术形式，如山水景观，令观赏者醉心于充满幻想错觉的奇异世界。然而，他的作品往往洋溢着强烈的后现代主义。摄影、绘画、影片，甚至装置艺术，都被用以挑战传统，批判现代、大规模城市化和工业化带来的破坏性影响。他的作品获得国际艺术团体的好评，并曾于莫斯科双年展、大都会博物馆和尤伦斯当代艺术中心展出。','杨泳梁的项目“流动的万花筒”（Kaleidoscopic Fluid）描绘一幅由液体反映出来的图案，令人犹如置身万花筒中。从一方面来看，作品着眼于观众的感官反应，与一杯干邑带来的感官享受互相呼应。然而，一旦潜入玻璃杯中，就会发现一切超越味道、颜色和气味：作品还谈及经历时间流逝，仍然屹立不倒的文化传统。液体的展开和变化，就像轩尼诗的历史传承，如水扩张，令世界连为一体，将文化代代相传。');
INSERT INTO TALENTS VALUES ('3','5','DINEO SESHEE BOPAPE： 一次视觉体验','艺术家以创新手法，利用经典的轩尼诗酒瓶拍摄影片，透过轩尼诗玻璃瓶的角度展现世界面貌，间接彰显轩尼诗的精髓。','public/images/jhj_pic3.jpg','public/images/jhj_picB3.jpg','public/images/jhj_pics31.jpg','public/images/jhj_pics32.jpg','探求自我概念','轩尼诗250週年卓越之旅委托项目 - 不确定性','Dineo Seshee Bopape于1981年在南非出生。她在德班学习油画及雕塑，2007年毕业于阿姆斯特丹De Ateliers学院，其后在纽约哥伦比亚大学完成艺术硕士课程。 虽然她的作品多涉猎不同范畴，但整体结构完美配合：影片、绘画、油画及表演等，全部融合成为极富张力、元素丰富及颜色鲜明的装置艺术与观赏者交流，以表达强烈的政治及社会信息。对这位艺术家而言，自我概念非常重要，当中性别、种族、性及心理学等，都是她探索的议题。','Dineo Seshee Bopape为轩尼诗准备了一个视觉体验的项目。影片透过一个酒瓶从高空拍摄风景地貌。Bopape利用Go-Pro相机（即在酒瓶内装上针孔摄影机）拍摄，以求突出作品的实验感，在极少操控的情况下，让作品自然流露真实风貌。');
INSERT INTO TALENTS VALUES ('4','2','OLGA KISSELEVA：追寻历史中的故事','透过拍摄静物组成的影片玩味传统， Kisseleva展现俄罗斯和轩尼诗世家之间长达一个世纪的共同历史和友谊。','public/images/jhj_pic4.jpg','public/images/jhj_picB4.png','public/images/jhj_pics41.jpg','public/images/jhj_pics42.jpg','传统新面貌','轩尼诗250週年卓越之旅委托项目 - 舞动灵魂','1965年出生于圣彼得堡的Olga Kisseleva，在前苏联学习绘画达八年之久。她现居于巴黎，并与Daniel Buren在巴黎高等学院（Institut des Hautes Etudes）共事。她主力拍摄影片、相片及表演制作。她广泛使用空间来表达其前卫激进的艺术作品，既具实验性质又发人深省，当中亦质疑常规、性别、政治及历史。然而，她的学术背景深深影响她的工作。她最著名的摄影作品之一结合了20世纪历史和学术传统，透过颠覆静物，挑战观赏者对形体和符号的看法。不管方法如何，她的整体作品都发人深省，这一点绝不能忽视。','Kisseleva的“共同文化遗产项目”：（Common Heritage Project）集合一系列相片，拍成一段三分钟的影片，讲述自1918年以来，轩尼诗与俄罗斯之间的关系。受17世纪艺术丰富的叙事特色所启发，Kisseleva的作品使用传统绘画静物的方法，凝聚成说事的力量。 Kisseleva从每个物件背后的符号找出含义，以及其与整体的关系。因此，整个艺术品透过连系轩尼诗与俄罗斯的物件，叙述了两者的关系。历史和美学的象征构成复杂且多重的含义，其中心思想莫过于轩尼诗世家和俄罗斯之间长久且多方面的合作伙伴关系。');
INSERT INTO TALENTS VALUES ('5','1','CONSTANCE GUISSET：结合多元文化遗产','法国设计师在展场中心设置一个圆形平台，透过几位艺术家的表演和影片，展现轩尼诗世家如何表现自我。','public/images/jhj_pic5.jpg','public/images/jhj_pic57.jpg','public/images/jhj_pics51.jpg','public/images/jhj_pics52.jpg','光影世界的舞台 ','轩尼诗250週年卓越之旅委托项目 - 琥珀','生于1976年的Constance Guisset于巴黎生活和工作，她放弃修读商科而选择了工艺和设计，在2007年毕业于Les Ateliers工业设计学院（ENSCI - Les Ateliers School of Industrial Creation），并于同年成立了自己的工作室。她喜欢探索不同的艺术形式：物件和舞台设计、建筑和影片，及以光影动画组成优雅而流动的作品。她的作品旨在创造惊喜和隐世意念，因此常仔细安排其场景布置。','Guisset为轩尼诗设计了一个互动而且可调校的圆形舞台，作为整个展览场地的核心作品。她的作品以“传递”为主题，既是现场表演场地，亦是投射影片的平台，使整个展览连成一体，成为展示当地人才和国际艺术家的舞台 。从早到夜，该装置让舞蹈员、表演者及讲者透过他们各自的作品以及整体合作，表达出轩尼诗在五大洲的多元文化特质。中场期间，舞台会被屏幕盖起，令平台变成酒桶形状，投影各个艺术家的短片。');
INSERT INTO TALENTS VALUES ('6','4','PIERRICK SORIN： 置身于历史文化遗产之中','彷佛在施展魔法，这艺术家兼错觉大师将轩尼诗变成一个“视觉剧场”，并出现其中。','public/images/jhj_pic6.jpg','public/images/jhj_picB6.jpg','public/images/jhj_pics61.jpg','public/images/jhj_pics62.jpg','立体照相艺术家','轩尼诗250週年卓越之旅委托项目 - 轩尼诗','录像艺术家Pierrick Sorin于1960年在法国南特出生，他的短片和视觉装置常常嘲笑艺术创作的过程，甚至人类的存在。由于他热爱独个儿拍摄，他自己往往是故事的唯一演员。然而，这位艺术家也是一个错觉大师：他创造了光影剧场，融合低保真度（lo-fi）和自制的新技术，让他在真实物件之间，以细小的立体照相形式出现，彷如施了魔法一样。','Sorin为轩尼诗巡展设计的项目，是一个灵感源自微型剧场的录像装置。这是一个结合物理元素和立体电影的当代作品，其中使用最新的Aliscopic技术，将古老传统的工艺和技术联系在一起。在他的微型舞台上，Sorin投射简短片段，亲身上演在充满幻想又奇异的世界当中，与历史文化遗产交流。从外太空品尝轩尼诗，到一个放满轩尼诗手工艺品的柜子，Sorin以轻松有趣的手法展现传统，令有形和无形的概念变得模糊。');
INSERT INTO TALENTS VALUES ('7','2','TOM DIXON 重新诠释轩尼诗X.O','轩尼诗自豪地宣布其与英国著名设计师Tom Dixon的创新合作：Tom Dixon为轩尼诗X.O THE ORIGINAL带来全新设计。','public/images/jhj_pic7.jpg','public/images/jhj_picB7.jpg','public/images/jhj_pics7.jpg','public/images/jhj_pics7.jpg','连续性','珍品','Tom Dixon是一位先锋原创人物，在对创新设计、制造的承诺，以及“燃亮并塑造未来”愿景下，他创作了大量经典作品：镜球灯（Mirror Ball）、黄铜吊灯（Copper Shade）、Beat Light系列和挡风椅（Wingback Chair）。 除了充满现代感，Tom Dixon的作品又带有明确一贯的连续性。轩尼诗X.O与Tom Dixon从2012年开启了成功的合作之门，Tom通过全新视角重新诠释轩尼诗X.O背后的世界。','Tom Dixon以独特的视角重新诠释轩尼诗X.O，其灵感源于对博物馆如何陈列展示各种珍品的研究与着迷。 Dixon独具匠心地将轩尼诗X.O的酒樽安置于一个平面的、近似机械观感的支架中，使酒樽成为整个视觉的焦点，让人联想到那些用于镶嵌珍稀宝石的爪镶底座。 Dixon表示：“我对珍品以及它们在不同环境中的展示方式情有独钟。”他还强调，要确保一件珍品得到世人全方位的理解和欣赏，陈列展示的方式至关重要。 设计师将酒樽安置于金属支架中，使之成为瞩目焦点，X.O酒樽如同一颗珍稀宝石镶嵌其中，向Dixon的设计天赋及轩尼诗X.O与生俱来的丰富底蕴致敬。');
INSERT INTO TALENTS VALUES ('8','4','OS GEMEOS兄弟为轩尼诗设计瓶身：多彩之作','如果不是成长于圣保罗，就不会有今天这对艺术家，正类似如果没有法国轩尼诗干邑的历史传承，就不会有轩尼诗世家。','public/images/jhj_pic8.jpg','public/images/jhj_picB8.jpg','public/images/jhj_pics81.jpg','public/images/jhj_pics82.jpg','关于OS GEMEOS兄弟','轩尼诗与OS GEMEOS兄弟','Os Gemeos兄弟是出生于巴西的街头艺术新星，他们色彩丰富且多层面的作品主要从其家乡汲取灵感。Os Gemeos兄弟的艺术深深根植于圣保罗。这对孪生兄弟说，今天他们之所以能成为艺术家，正是因为这座城市。“我们在街头嬉戏中长大，并从那段时光中学到很多。在那种环境中，我们只能即兴创作。” Os Gemeos兄弟解释说。这对兄弟亲密无间、志同道合，这或许是促使他们成长为艺术家的最重要因素。Leonard McGurr、aka Futura—此前轩尼诗Very Special限量版的合作伙伴—是首批被推荐与这一干邑品牌合作的巴西当代艺术家。对工艺技能的专注投入与空间感是轩尼诗与Os Gemeos兄弟的作品共有的艺术纽带。','“我们喜欢尝试。对我们而言，这个项目是一种新的创作媒介—我们可以通过它将传统的东西以更现代、更多彩的形式展现出来。” Os Gemeos兄弟说道。在了解轩尼诗的历史以及融合艺术形式对品牌的重要性之后，这对孪生兄弟找到了酒瓶标签灵感，他们将其描述为一幅“快乐、多彩、万物和谐共荣的风景画”。Os Gemeos兄弟在深入了解轩尼诗的干邑世界后认为他们与轩尼诗有不少共通之处。他们解释，“轩尼诗的一切，都关乎激情与时间。”“百闻不如一见，眼见为实才能迸发出想象的火花。”他们最后总结道。');
INSERT INTO TALENTS VALUES ('9','5','轩尼诗V.S.O.P干邑的细腻时尚风貌','克里斯·班格（Chris Bangle）的丰富经验告诉他，唯有极细腻的设计手法，才能打造V.S.O.P全新时尚完美造型。','public/images/jhj_pic9.jpg','public/images/jhj_picB9.jpg','public/images/jhj_pics9.jpg','public/images/jhj_pics92.jpg','','','三十年来，美籍汽车设计师克里斯·班格一直是车坛的风云人物，曾为欧宝、菲亚特等品牌献艺，更是BMW宝马集团首席设计师。轩尼诗V.S.O.P干邑全新时尚酒瓶是他在汽车领域之外初试啼声的杰作。克里斯认为所有的产品都是有生命的，其性能和美学仅居其次，因此，在设计之前，他先揣摩V.S.O.P干邑的个性。','轩尼诗V.S.O.P干邑全新时尚酒瓶是划时代的巨作。克里斯想保存酒瓶的和谐比例及平衡感，以便体现瓶中干邑的柔顺特质。他略为突显了瓶身两侧的曲线线条，继而赋予瓶身向上拉伸的修长感及增厚但凹底的底座。在V.S.O.P干邑酒瓶金字塔动线引领下，观者的视线上升至轩尼诗家族传奇战斧浮雕，回归知名干邑的传统。');
INSERT INTO TALENTS VALUES ('11','3','DANIEL ARSHAM：艺术、建筑与表演','DANIEL ARSHAM从历史角度阐释轩尼诗。DANIEL ARSHAM以来自五位国际艺术家的录影片段和艺术作品，阐释轩尼诗与美国的渊源，并透过探索文物般的不同物件，向我们讲述轩尼诗在美国文化中所占的地位。','public/images/jhj_pic11.jpg','public/images/jhj_picB11.jpg','public/images/jhj_pics111.jpg','public/images/jhj_pics112.jpg','让建筑风格别树一帜','轩尼诗250周年卓越之旅作品 - 无题','Daniel Arsham毕业于纽约市库伯联盟学院（Cooper Union）建筑专业，2003年荣获Gelman Trust奖学金奖。 Arsham以令人意想不到的方式将建筑物呈现眼前，并总是寻找机会颠覆人们对空间和造型的认识，例如仿若被风吹动、帷幔般遮盖着一个人的墙身。 在大量作品中，他大胆运用引人注目的影像表现运动和时间，不断挑战观众的第一印象。时间的流逝亦通过衰败或损毁等概念得以传达——相机和电话等不朽物品，因被Arsham以压缩晶体和岩石粉制作而出现了石化或侵蚀。','Arsham为“从这里到那里”制作了一个3分钟的视频，用以展现品牌与美国的深厚渊源。他的短片以五位国际艺术家为轩尼诗250周年卓越之旅特别打造的艺术品为主角，诠释了轩尼诗与美国强烈且深厚的渊源。这种关系就如同美国对于生于斯长于斯的Arsham而言一样重要。展望未来，Arsham回顾我们的历史遗产，如以冰块雕刻而成的时钟、相机、电视等各种物品，仿佛从冰冻的驾驶舱中浮出。他的短片令人们反思在轩尼诗美国冒险之旅中重复出现的主题：时间、历史和美国文化。这同时亦是品牌坚持至今的核心价值。');
INSERT INTO TALENTS VALUES ('12','4','轩尼诗与JEAN-MICHEL OTHONIEL携手，重现巴洛克的富丽华美。','为了庆贺轩尼诗家族领军人物Killian Hennessy百年诞辰，法国当代艺术家Jean-Michel Othoniel用现代艺术手法全新诠释传统酒箱，礼赞百年禧丽干邑的“世纪之美”。','public/images/jhj_pic12.jpg','public/images/jhj_picB12.jpg','public/images/jhj_pics121.jpg','public/images/jhj_pics122.jpg','艺术家JEAN-MICHEL OTHONIEL创作的“百年禧丽”酒箱','致敬干邑总艺师YAN FILLIOUX ','神秘之奁，百宝之箱，Jean-Michel Othoniel用华美的巴洛克语言，热情颂歌轩尼诗的荣耀。百年禧丽以自由创意，诠释对卓越工艺的敬意。酒箱的制作过程凝聚了十多项传世工艺。 散发着白色光晕的玻璃镜面，是琉璃大师的杰作，也唯有他们才能重现大教堂玻璃的流光。箱体由融化铝金属构造而成，上面装饰精美圆圈，圆形是艺术家Jean-Michel Othoniel的标志符号。顶端冠有两颗Salviati 工坊吹制的穆拉诺琉璃珠，高贵的琥珀色泽暗示着酒箱内的珍贵干邑。','轻轻推动下方的一把铜制钥匙，便可开启酒箱。 酒箱开启后，按动隐秘按钮即可呈现整套品鉴组合：巴拉克水晶干邑瓶，装在由法国知名品牌娇兰打造铝制网状套瓶中，四个穆拉诺琉璃杯内饰金叶。 “ 百年禧丽”（Beauté du Siècle）也是该款干邑的名字，酿酒总艺师Yann Fillioux曾经与Killian Hennessy共事多年，他用这款干邑，表达自己的深沉敬意。总艺师精心挑选了品牌自1907年以来的100多种“生命之水”精萃调配成的百年禧丽，堪称轩尼诗干邑中的巅峰之作。');
INSERT INTO TALENTS VALUES ('10','1','XAVIER VEILHAN，现代角度','Xavier的项目是通过经典的雕塑方式，诠释“现代”这个主题。对于这位艺术家而言，La Fusée属于现代，且是21世纪最重要的人类创举。','public/images/jhj_pic10.jpg','public/images/jhj_picB10.jpg','public/images/jhj_pics101.jpg','public/images/jhj_pics102.jpg','XAVIER VEILHAN','轩尼诗250周年卓越之旅作品 - 火箭（LA FUSÉE）雕塑 ','Xavier Veilhan出生于1963年。目前在巴黎居住和工作，他认为艺术是“一种展现视野的工具，必须透彻了解才可明白我们的过去，现在和未来。”他的3D作品主要由塑料制成，展现了他喜欢在经典雕塑中融合现代感的表达方式。他对流行的视觉作品作出了自己的诠释，经常玩味它们的设计，涉猎人所共知以至异想天开的对象。他曾创造了不少精彩的装置，特别是2009年在凡尔赛宫、2010年在纽约路易·威登大厦和2011年在东京展出的装置。今年，大家期待已久的Architectones项目即将推出，同时发行一本书和一部纪录片，组成整个系列。','La Fusée 是个激动人心的雕塑，而且对Veilhan有重大意义。对他而言，阿波罗11号的航空事迹是近代最令人印象深刻及最具影响力的政治和经济事件之一，对人们如何看待周围的空间，影响深远。他以火箭雕塑表达了这概念，它既易于辨认，同时富现代感；它是一支细长、带菱角的火箭而不仅是一个航天模型。最重要的是，Veilhan认为这件作品是进步和乐观的写照。');



create table user(
	uid int primary key auto_increment,
	uname varchar(20) not null UNIQUE,
	pwd varchar(20) not null
);

create table type(
	tid int primary key auto_increment,
	tname varchar(20)
);

insert into type values(0,"主页");
insert into type values(0,"干邑系列");
insert into type values(0,"轩尼诗世家");
insert into type values(0,"创意特饮");
insert into type values(0,"新闻");

create table list(
	tid int,
	lid int primary key auto_increment,
	lname varchar(30),
	constraint FK_tid foreign key(tid) references type(tid)
);

insert into list values(2,0,"所有系列");
insert into list values(2,0,"新点干邑");
insert into list values(2,0,"轩尼诗V.SELECT.O.P特别珍藏版");
insert into list values(2,0,"詹姆士轩尼诗 JAMES HENNESSY干邑");
insert into list values(2,0,"轩尼诗X.0");
insert into list values(2,0,"轩尼诗百乐延皇禧");
insert into list values(2,0,"轩尼诗百乐延干邑");
insert into list values(2,0,"轩尼诗李察");
insert into list values(2,0,"轩尼诗X.O MARC NEWSON限量版");
insert into list values(3,0,"匠心独运");
insert into list values(3,0,"风华人物");
insert into list values(3,0,"历史");
insert into list values(3,0,"参观轩尼诗庄园");
insert into list values(4,0,"轩尼诗创意特饮");
insert into list values(4,0,"世界各地的调酒");
insert into list values(4,0,"调酒师");
insert into list values(4,0,"地点");

create table news(
	nid int primary key auto_increment,
	title varchar(50),
	content varchar(200),
	ydgd varchar(10) default "阅读更多",
	photo varchar(100)
);

insert into news values(0,"轩尼诗X.O为丝绸之路谱写感官之旅","七名艺术家来自七个位于传奇丝绸之路的国家。他们沉醉于轩尼诗X.O展现的专业知识和精湛工艺，并以此为灵感，为其创造独一无二的艺术品。",default,"public/images/gettyimages-682278874_hr_198x353_6.jpg");
insert into news values(0,"冬季烈酒特饮","探索多款精选轩尼诗鸡尾酒，为冬季的亲朋好友聚会增添一份喜气。",default,"public/images/hennessy-winters-spirit-black-background-lr_11_12_6_2.jpg");
insert into news values(0,"由CARNOVSKY匠心打造的轩尼诗V.S.O.P限量特别珍藏版","为弘扬品牌支持艺术的传统，轩尼诗每年均会与备受尊敬的艺术家合作，推出轩尼诗V.S.O.P限量特别珍藏版。在品牌创立200周年前夕，轩尼诗V.S.O.P限量特别珍藏版透过米兰艺术设计组合Carnovsky独特的多层次构思，探索悠久历史传承。",default,"public/images/hp-v2.jpg");


create table intro(
	id int primary key auto_increment,
	tname varchar(20),
	title varchar(50),
	content varchar(100),
	pic varchar(60),
	photo varchar(60),
	idiv varchar(100),
	ih3 varchar(20),
	ip varchar(210),
	ih4 varchar(20),
	ip1 varchar(210)
);

insert into intro values(0,"第1部分","轩尼诗百乐廷皇禧干邑是如何酿造的？ ","轩尼诗百乐廷皇禧干邑蕴含令人叹为观止的甄选艺术，是历任调配总艺师不懈追求卓越的结晶。","../../public/images/preview-video-1_0.jpg","../../public/images/question-1-visu.jpg","调配总艺师的非凡技艺在于，他能准确判断“生命之水”的陈化状态，并将它们孕育至优雅的高峰。所谓“高峰”，指的正是“生命之水”达至美妙状态时那个至关重要而又稍纵即逝的微妙时刻。","七代传承的调配总艺师家族","轩尼诗百乐廷皇禧干邑是调配总艺师颜·费尔沃（Yann Fillioux）最新力作，是一款非限量版的轩尼诗佳酿。它蕴含令人叹为观止的甄选艺术，是轩尼诗专用的调配师家族——费尔沃家族集七代传承之力而成的匠心之作。","精准的甄选、陈化与调配","为创作轩尼诗百乐廷皇禧干邑，调配总艺师充分施展其非凡技艺与过人才华，首先对“生命之水”进行严苛的甄选：在每个特定年份的10,000种“生命之水”中，平均仅有10种可被甄选用于轩尼诗百乐廷皇禧干邑的调配。继而，调配总艺师要决定将各种“生命之水”调配成轩尼诗百乐廷皇禧干邑的美妙时机——只有当精细与力量达到平衡，才是可遇不可求的优雅高峰。");
insert into intro values(0,"第2部分","轩尼诗百乐廷皇禧干邑的口感如何？  ","这是一款优雅的干邑杰作，带给你非凡的感受。","../../public/images/preview-video-2_2.jpg","../../public/images/question-2-visu.jpg","轩尼诗百乐廷皇禧干邑的淡雅色泽，预示它是一款清新愉悦的佳酿。个中绽放的花香，让人联想起纯净、清爽的春日。","出乎意料的淡雅色泽","很少能有一款高年份的“生命之水”能呈现柔和如瓷般润泽的浅金色。这是因为“生命之水”被储藏在单宁含量特别低的古老橡木桶中进行陈化，橡木仅对其产生细微的影响，可以尽量保留它原有的精妙特质。","生机勃勃的口感","淡雅的色泽预示着轩尼诗百乐廷皇禧干邑是一款清新愉悦的佳酿。徐徐而来的花香让人联想起纯净、清爽的春日。每一次浅酌，茉莉、橙花的馨香以及微妙的烟熏、香料气息层层绽放、相互唱和。直至饮尽最后一滴，优雅的香气依然缱绻于口腔之中，余韵不尽。予人非同寻常的美妙感受。");
insert into intro values(0,"第3部分","轩尼诗百乐廷皇禧干邑的价格如何？ ","轩尼诗百乐廷皇禧的价值在于其所蕴含的珍稀的“生命之水”。","../../public/images/preview-video-3_0.jpg","../../public/images/question-3-visu.jpg","对“生命之水”的严苛甄选与悉心孕育，需要非凡的技艺与过人的才华。","价值源于珍罕","轩尼诗百乐廷皇禧干邑的价值在于其所蕴含的“生命之水”的珍罕：其中不乏轩尼诗窖藏中最为宝贵的“生命之水”调配而成。 ","万中取十","对于每个特定年份而言，10,000种上佳的“生命之水”中，平均仅有10种有潜质在日后被甄选用于轩尼诗百乐廷皇禧干邑的调配。对“生命之水”的严苛甄选与悉心孕育，需要非凡的技艺与过人的才华。");
insert into intro values(0,"第4部分","我应如何品赏轩尼诗百乐廷皇禧干邑？ ","品赏轩尼诗百乐廷皇禧干邑的方式是将其盛载于郁金香形状的水晶高脚杯中纯饮。","../../public/images/preview-video-4.jpg","../../public/images/question-4-visu.jpg","正因轩尼诗百乐廷皇禧干邑是调配总艺师甄选艺术的体现，在品饮时选择与之相得益彰的氛围与同伴，共同品鉴这款干邑杰作的精妙之处，本身也是一门艺术。","最纯粹的品赏方式","在室温下，将20至40毫升的酒液倒入郁金香形状的水晶高脚杯中纯饮。这是对于轩尼诗百乐廷皇禧干邑最纯粹的品赏方式。","历久难忘的体验","由于轩尼诗百乐廷皇禧干邑是调配总艺师甄选艺术的体现，因此，选择与之相得益彰的氛围与同伴，共同品鉴这款干邑杰作的精妙之处，本身也是一门艺术。与其他鉴赏家共享这美妙的臻赏体验吧。为使这款干邑杰作的精妙特质得以完全展现，建议您在12°至14°的室温下，搭配口感清爽、微酸的开胃菜享用。");
insert into intro values(0,"第5部分","我应如何储藏轩尼诗百乐廷皇禧干邑？ ","密封的酒瓶可更好地保存轩尼诗百乐廷皇禧干邑的珍罕品质，使之历久不变。","../../public/images/preview-video-5.jpg","../../public/images/question-5-visu.jpg","干邑与葡萄酒的区别在于，它拥有历久不变的储藏潜力。一旦从橡木桶被移至玻璃瓶中，“生命之水”陈化过程将中止，多年前因蒸馏而产生的蓬勃香气亦由此被封存在酒液中。","永无止境的升华","与葡萄酒类似，干邑会随岁月流逝越发醇香。历经在橡木桶内的陈酿后，干邑在空气、“生命之水”与橡木的共同作用下焕发活力，优雅细腻的特质得以逐步展现。但是，干邑与葡萄酒的区别在于，它拥有历久不变的储藏潜力。当“生命之水”从橡木桶被移至玻璃瓶中后，陈化过程将终止，馥郁酒香由此被妥善封存在这些多年前蒸馏而出的“生命之水”里。因此，密封的酒瓶可更好地保存轩尼诗百乐廷皇禧的珍罕品质，使之历久不变。","正确储藏以延续臻赏体验","将酒瓶直立储藏在室温或18至22℃的阴暗环境中。在开启一瓶轩尼诗百乐廷皇禧干邑后，鉴于这款产品的口感是如此精妙，建议在一年内饮用完毕。");