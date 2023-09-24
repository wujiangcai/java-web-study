/*
 Navicat Premium Data Transfer

 Source Server         : mysql80
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : javaweb

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 20/09/2023 20:35:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书\r\n名',
  `cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封\r\n⾯图',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作\r\n者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES (1, 'Java 8实战', 'https://mqxu-upload.oss-cn-hangzhou.aliyuncs.com/book/6.jpeg', '陆明刚');
INSERT INTO `t_book` VALUES (2, '深⼊理解Java虚拟机', 'https://mqxu-upload.oss-cn-hangzhou.aliyuncs.com/book/5.jpeg', '周志明');
INSERT INTO `t_book` VALUES (3, 'JavaScript⾼级程序设计', 'https://i1.100024.xyz/2023/02/18/icvttm.webp', '[美] ⻢特·弗⾥斯⽐');
INSERT INTO `t_book` VALUES (4, 'Effective Java中⽂版', 'https://mqxu-upload.oss-cn-hangzhou.aliyuncs.com/book/4.jpeg', '[美] Joshua Bloch');
INSERT INTO `t_book` VALUES (5, 'Java核⼼技术', 'https://mqxu-upload.oss-cn-hangzhou.aliyuncs.com/book/1.jpeg', '[美] 凯 S.霍斯特曼');
INSERT INTO `t_book` VALUES (6, 'Web前端开发技术', 'https://i1.100024.xyz/2023/02/18/i79iyv.webp', '储久良');
INSERT INTO `t_book` VALUES (7, '微信⼩游戏开发', 'https://i1.100024.xyz/2023/02/18/iatoul.webp', '李艺');
INSERT INTO `t_book` VALUES (8, 'Go程序员⾯试笔试宝典', 'https://i1.100024.xyz/2023/02/18/id6nnx.webp', '饶全成');
INSERT INTO `t_book` VALUES (9, '算法训练营', 'https://i1.100024.xyz/2023/02/18/ie6lrz.webp', '陈⼩⽟');
INSERT INTO `t_book` VALUES (10, 'HTTP/2 in Action', 'https://i1.100024.xyz/2023/02/18/ifjai9.webp', '[美] Barry，Pollard');

-- ----------------------------
-- Table structure for t_song
-- ----------------------------
DROP TABLE IF EXISTS `t_song`;
CREATE TABLE `t_song`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌名',
  `singer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌手姓名',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '歌曲文件路径',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `lyric` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '歌词',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_song
-- ----------------------------
INSERT INTO `t_song` VALUES (1, '倔强', '五月天', '五月天 - 倔强.mp3', 'song1.jpg', '當 我和世界不一樣\r\n那就讓我不一樣\r\n堅持對我來說\r\n就是以剛克剛\r\n我 如果對自己妥協\r\n如果對自己說謊\r\n即使別人原諒\r\n我也不能原諒\r\n最美的願望\r\n一定最瘋狂\r\n我就是我自己的神\r\n在我活的地方\r\n我和我最後的倔強\r\n握緊雙手絕對不放\r\n下一站是不是天堂\r\n就算失望不能絕望\r\n我和我驕傲的倔強\r\n我在風中大聲的唱\r\n這一次為自己瘋狂\r\n就這一次\r\n我和我的倔強\r\n對 愛我的人別緊張\r\n我的固執很善良\r\n我的手越骯髒\r\n眼神越是發光\r\n你 不在乎我的過往\r\n看到了我的翅膀\r\n你說被火燒過\r\n才能出現鳳凰\r\n逆風的方向\r\n更適合飛翔\r\n我不怕千萬人阻擋\r\n只怕自己投降\r\n我和我最後的倔強\r\n握緊雙手絕對不放\r\n下一站是不是天堂\r\n就算失望不能絕望\r\n我和我驕傲的倔強\r\n我在風中大聲的唱\r\n這一次為自己瘋狂\r\n就這一次 我和我的倔強\r\n我和我最後的倔強\r\n握緊雙手絕對不放\r\n下一站是不是天堂\r\n就算失望不能絕望\r\n我和我驕傲的倔強\r\n我在風中大聲的唱\r\n這一次為自己瘋狂\r\n就這一次 我和我的倔強\r\n就這一次\r\n讓我大聲唱啦啦啦...\r\n就算失望\r\n不能絕望啦啦啦...\r\n就這一次\r\n我和我的倔強', '2023-09-20 20:24:47');
INSERT INTO `t_song` VALUES (2, '罗刹海市', '刀郎', '刀郎 - 罗刹海市.mp3', 'song2.jpg', '罗刹国向东两万六千里\r\n\r\n过七冲越焦海三寸的黄泥地\r\n\r\n只为那有一条一丘河\r\n\r\n河水流过苟苟营\r\n\r\n苟苟营当家的叉杆儿唤作马户\r\n\r\n十里花场有浑名\r\n\r\n她两耳傍肩三孔鼻\r\n\r\n未曾开言先转腚\r\n\r\n每一日蹲窝里把蛋来卧\r\n\r\n老粉嘴多半辈儿以为自己是只鸡\r\n\r\n那马户不知道他是一头驴\r\n\r\n那又鸟不知道他是一只鸡\r\n\r\n勾栏从来扮高雅\r\n\r\n自古公公好威名\r\n\r\n打西边来了一个小伙儿他叫马骥\r\n\r\n美丰姿 少倜傥 华夏的子弟\r\n\r\n只为他人海泛舟搏风打浪\r\n\r\n龙游险滩流落恶地\r\n\r\n他见这罗刹国里常颠倒\r\n\r\n马户爱听那又鸟的曲\r\n\r\n三更的草鸡打鸣当司晨\r\n\r\n半扇门楣上裱真情\r\n\r\n它红描翅 那个黑画皮 绿绣鸡冠 金镶蹄\r\n\r\n可是那从来煤蛋儿生来就黑\r\n\r\n不管你咋样洗呀那也是个脏东西\r\n\r\n那马户不知道他是一头驴\r\n\r\n那又鸟不知道他是一只鸡\r\n\r\n岂有画堂登猪狗\r\n\r\n哪来鞋拔作如意\r\n\r\n它红描翅 那个黑画皮 绿绣鸡冠 金镶蹄\r\n\r\n可是那从来煤蛋儿生来就黑\r\n\r\n不管你咋样洗呀 那也是个脏东西\r\n\r\n爱字有心心有好歹\r\n\r\n百样爱也有千样的坏\r\n\r\n女子为好非全都好\r\n\r\n还有黄蜂尾上针\r\n\r\n西边的欧钢有老板\r\n\r\n生儿维特根斯坦\r\n\r\n他言说马户驴又鸟鸡\r\n\r\n它红描翅 那个黑画皮 绿绣鸡冠金镶蹄\r\n\r\n可是那从来煤蛋儿生来就黑\r\n\r\n不管你咋样洗呀 那也是个脏东西\r\n\r\n爱字有心心有好歹\r\n\r\n百样爱也有千样的坏\r\n\r\n女子为好非全都好\r\n\r\n还有黄蜂尾上针\r\n\r\n西边的欧钢有老板\r\n\r\n生儿维特根斯坦\r\n\r\n他言说马户驴又鸟鸡\r\n\r\n到底那马户是驴还是驴\r\n\r\n是又鸟鸡那驴是鸡\r\n\r\n那个鸡是驴那鸡是驴那个驴\r\n\r\n那马户又鸟\r\n\r\n是我们人类根本的问题', '2023-09-20 20:26:58');
INSERT INTO `t_song` VALUES (3, '座右铭', '吴雨霏', '吴雨霏 - 座右铭.mp3', 'song3.jpg', '很信命，当我每次哭\r\n\r\n亦只有吉他声，喃喃自语数星星\r\n\r\n孤单也像注定，祈求被爱的温馨\r\n\r\n呼天都不应，已经很适应\r\n\r\n我心事，谁又会在意想听\r\n\r\n很冷静，知道我爱的\r\n\r\n定把我当布景，平凡像我这一种\r\n\r\n今天要认了命，才能学会不贪心\r\n\r\n碰不到恋爱，也毫无反应\r\n\r\n单恋双恋失恋，说穿了尽是陷阱\r\n\r\n放手，得我有这本领\r\n\r\n一个自爱也好，越对我好\r\n越需要控制我反应，对未来没信心\r\n\r\n怎张开眼睛，花花世界太过美\r\n\r\n哪有我踪影，怕有天放心后\r\n\r\n才给我最爱抛弃，我要谨守\r\n\r\n我座右铭，很信命\r\n\r\n不信有美好，幸福过更冷清\r\n\r\n同情没法把不安，驱走以是确定\r\n\r\n原来避免输不起，退出的方法\r\n\r\n叫遗忘本性，不甘不忍不想\r\n\r\n我只有越坐越静，我的快乐就像泡影\r\n\r\n一个自爱也好，越对我好\r\n\r\n越需要控制我反应，对未来没信心\r\n\r\n怎张开眼睛，花花世界太过美\r\n\r\n哪有我踪影，怕有天放心后\r\n\r\n才给我最爱抛弃，我要谨守\r\n\r\n我座右铭，派对满布爱情\r\n\r\n来临的风景，独自妒忌别人\r\n\r\n谁能够高兴，注定无人来示爱\r\n\r\n我都不作声，即使一个自爱也好\r\n\r\n越对我好，越需要控制我反应\r\n\r\n对未来还没信心，怎张开眼睛\r\n\r\n花花世界太过美，哪有我踪影\r\n\r\n有更心跳选择，而比我远远优胜\r\n\r\n如何专一都想转性，与情人齐眉白发\r\n\r\n问谁可保证', '2023-09-20 20:29:17');
INSERT INTO `t_song` VALUES (4, '嘿，抬头！ (live版)', '贰佰', '贰佰 - 嘿，抬头！ (live版).mp3', 'song4.jpg', '我有一个朋友，三年前认识他的时候。\r\n\r\n他还不像现在这样消瘦，他总是低着头。\r\n\r\n翻一翻手机里过去的相片，发几条微博记录着自己的生活。\r\n\r\n他总是一个人过着，没事就听一听安静的歌。\r\n\r\n在每一个孤独的夜晚，他总是喝多了酒。\r\n\r\n有时候他会想起那些远在远方的老朋友，也经常想起那些曾经的爱情和他一起牵过的手。\r\n\r\n他不会像大部分的男人一样过着平庸的生活，在每个灿烂的星空下。\r\n\r\n他总说，嘿，抬头！\r\n\r\n哎我的这个朋友，他说在他年轻的时候。\r\n\r\n也像我一样奋不顾身的为了爱情和自由，他总是抽着烟。\r\n\r\n向别人诉说他失败的婚姻，和那些值得让他骄傲的曾经和过去。\r\n\r\n他热爱现在这样的生活，不会在碌碌无为中度过。\r\n\r\n愿我在四十岁的年纪，也能像他一样牛逼。\r\n\r\n有时候他会想起那些远在远方的老朋友，也经常想起那些曾经的爱情和他一起牵过的手。\r\n\r\n我会不会像他一样，在不惑之年的时候。\r\n\r\n一个人穿过拥挤的人流，错过了就别回头。\r\n\r\n有时候我也会想起那些远在远方的老朋友，也经常怀疑到底会有什么样的爱情能永垂不朽。\r\n\r\n我不会像大部分的男人一样过着平庸的生活，在每个灿烂的星空下。\r\n\r\n对自己说，嘿，抬头！\r\n\r\n', '2023-09-20 20:31:48');
INSERT INTO `t_song` VALUES (5, '夜机', '陈慧娴 ', '陈慧娴 - 夜机.mp3', 'song5.jpg', '回头再看 微微灯光\r\n无止境 寂寥不安\r\n藏身於 无人机舱\r\n心跟你道晚安\r\n离离细雨 茫茫星光\r\n明朝早 别来惊慌\r\n投奔於 遥遥他方\r\n愿遗忘某寄望\r\n原谅今宵我告别了\r\n活泼的心像下沉掉\r\n梦里有他又极微妙\r\n情怎可料\r\n怀念当初你太重要\r\n但你始终未尽全力\r\n让这颗心静静逃掉\r\n情也抹掉\r\n今天起的每晚\r\n纵有星光灿烂\r\n可惜心灰已冷\r\n情途更暗淡 路更弯\r\n今天起的每晚\r\n你要珍惜岁月\r\n不必感叹\r\n情缘或会某日再返\r\n原谅今宵我告别了\r\n活泼的心像下沉掉\r\n梦里有他又极微妙\r\n情怎可料\r\n全是你一生轻佻\r\n无情地把我当玩笑\r\n让这颗心静静逃掉\r\n情也抹掉', '2023-09-20 20:33:10');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `account` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账\r\n号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密\r\n码',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account`(`account`) USING BTREE COMMENT '账号唯⼀索引'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'mqxu@qq.com', '698d51a19d8a121ce581499d7b701668', '陶然然', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/avatar/me.png', '江苏南京', '2023-02-17 17:22:27');
INSERT INTO `t_user` VALUES (2, 'aaa@qq.com', '698d51a19d8a121ce581499d7b701668', '⽤户aaa', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/avatar/1.jpg', '浙江杭州', '2023-02-17 15:32:31');
INSERT INTO `t_user` VALUES (3, '1', '1', '1', NULL, NULL, '2023-09-13 22:06:27');
