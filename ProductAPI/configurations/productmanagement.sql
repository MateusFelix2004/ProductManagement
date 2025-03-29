-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: productmanagement
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` int(11) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produto` (`produto`),
  CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `produto` (`produtoId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (9,10,0),(10,11,0);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `padrao`
--

DROP TABLE IF EXISTS `padrao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `padrao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `padrao`
--

LOCK TABLES `padrao` WRITE;
/*!40000 ALTER TABLE `padrao` DISABLE KEYS */;
INSERT INTO `padrao` VALUES (1,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0X\0\0X\0\0\0¾f˜Ü\0\0\0	pHYs\0\0Ä\0\0Ä•+\0\0\03tEXtComment\0xr:d:DAFIdQpz64A:7,j:32420639338,t:22080813g27è\0\0/’IDATxœìÖÁ	\0 À0uÿÏ%\n‚$ôÙ=3³\0\0Èœ×\0\0¿1X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\03X\0\01ƒ\0»\0\0\0ÿÿìİíOç\ZÀá›\"bİÒH	EjChT›øÁ¾Ÿ©/µ¡}™ÃKXÁ=\Z{NsZË.³<3³×•ô[yöÖhûË=³3\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 g\0 gR\0y8>>Øİİƒƒƒ8<<Œ¾¾¾ŒË—/Çğğp¦€.!°(µ·oßÆÊÊJ<şü_ÿİ«W¯Æ—_~ç0\0İ¬§Ùl6SíØßß‡ÆÁÁAK?7;;š\n\0%µµµ=Š“““¶~~rr2fffr\n\0şà&wJgooïLq±¶¶?Îq*\0ø/E©Åıû÷ÏWïÔëõX\\\\Ìa*\0ø+E©,--E£ÑÈí¼,Ël²\0ÈÀ¢4ö÷÷£^¯ç~®M\0yX”F\'âê›,\0ò$°(­­­_¯×E\0¹X”Æşş~Ç?CdE)äycû¿Y\0œ•À¢Ş¾}{®ŸçÆw\0ÎB`Q\n)ŞèÆw\0Ú%°(¾¾¾sÿL›,\0Ú!°(?ş8ÉçÚdĞ*EiŒŒŒ$ûl›,\0Z!°(±±±èïïOöù6Y\0œ–À¢4>øàƒ˜N:ƒM\0§!°(•‰‰‰˜ššJ:ƒM\0ÿF`Q:ÓÓÓqóæÍ¤3Ødğ>‹Rúì³Ïl²\0(,EiMOOÇäädÒ¼V€¿#°(µ™™‘@á,Joff&®]»–t‘ÀÿXTÂ_|IgY\0¼#°¨ŒÙÙY‘@!,*evv6ÆÆÆ’Î ²\0XTÎüü¼È ©©€N˜ŸŸf³ëëëÉf¨×ëÑÓÓsssÉfˆˆØİİo¿ı6“ÎA9D­V‹>úèÏ€Öõ4›Ífê! S¾ûî»¤‘1>><²öööbaaAdÑ–ÑÑÑO>ù$õ(P\Z‹Ê{ôèQlll$AdQCCCqóæÍä—à¡•w||ß|óMò°(Bd¹\\H†‡‡cnn.S…%°¨´xüøq¤%\"\"ÆÆÆb~~>é6Yä¡··7¦§§ãúõë©GBXTÖO?ı?üğCê1şO6Y\"‹¼ŒÆ­[·R…#°¨¤gÏÅ/¿ü’zŒd“E•áÏ3ç`Q9OŸ>-t\\Eüñ‡ÅÅÅ¤3\\¹r%¾şúë¸pÁÓZ8›\"üy†¢XTÊÊÊJüúë¯©Ç8•,Ë’ÿOéÊ•+qçÎ‘Å™eYO<I=†À¢2Ö××ãÇL=FKŠYµZMd‘‹ß~û­ğÛc8/‹J8::Š§OŸ¦£-E‰,—ÉÃ³gÏâÕ«W©Ç€ä•ğäÉ“Rß¬eYòwº\'‹¼|ÿı÷©G€ä¥÷âÅ‹ØÚÚJ=Æ™áFa‘E¶··+ñwÎB`QzE|ÖU»l²¨Š•••Ô#@R‹RË²¬r÷{ØdQ;;;±³³“zHF`QjY–¥¡#l²¨‚z½zHF`QZF#¶··SÑ1EÙdy„íZ__O=$#°(­ÍÍÍÔ#t\\Qá ²hG£ÑˆıııÔc@‹Òê–û;ŠY.Ò—/_¦’X”ÖîînêÎ{²(+,º•À¢´ºí?ÜîÉ¢Œªö-_8-E)5\ZÔ#$Q„M–Ë…´âğğ0õ„À¢”Ş¼y“z„dêõzòÈr¹ÓXt+E)œœ¤!)—ŠM`QJÍf3õÉ¹\\HYøûJ7XPb.“À‚’Y\0Å#° D@±,¨‘P*DdƒÀ‚ŠY\0é	,¨ ‘–À‚ŠY\0é,¨0‘†À‚ŠY\0çO`AY\0çK`A—Y\0çG`A)Rdõöö& “t‘ĞyºP\"«V«‰, ²t)‘Ğ9º˜Èè]NdäO`\" gˆ‘\'üIdäC`!²\0ÎÎû*€ÿS¯×£§§\'æææ’Íğ.²âää$Ù)ôööÆèèhŒÆ¥K—b`` zzzâğğ0^¿~±¾¾Şu¿/P&ø[Y–E³ÙŒùùùd3t[dõ÷÷Ç7âúõë»½\Z\ZŠ¡¡¡‰Ï?ÿ<~şùçX]]F£‘`Zà}\\\"ş‘Ë…ç§V«Å½{÷bjjêT¿ÖŞŞŞ˜ššŠ{÷îE­V;‡	V,à½êõz,..&¡ê‘522wïŞ¾¾¾–¶¯¯/îŞ½W¯^íÀd@»ğ¯²,³ÉêË—/ÇW_}uæsnİºCCC9LäA`§b“Õ·oßÎå×ÓÛÛ·oßÎa\" 85›¬|İ¸q#.]º”ÛyCCCqíÚµÜÎÚ\'°€–Ødågjj*÷3?ıôÓÜÏZ\'°€–Ùdİğğpô÷÷ç~îÀÀ@|øá‡¹Ÿ´F`m±É:›N~ëÏ7\n!=´Í&«};Û·	!=œI‘6Y.”çå/^ìØÙƒƒƒ;8œYQ6YwîÜ)Í&ëøø¸cgwÃk… è¯ÕiÍááaÇÎ>::êØÙÀé, 7\"ëôööö:vöîînÇÎNG`¹Y§óâÅ‹½±±Ñ±³ÓX@îŠtã{Q#ëøø8677s?wkk+Ş¼y“û¹@kĞE¹ñ½È‘µ´´TŠ3Ö	, cl²ŞïÕ«W±ººšÛy«««ñûï¿çvĞ>t”MÖû---Åööö™Ïyùò¥íˆÀ:Îïï÷ğáÃØÚÚjûç777ãÁƒ9Nœ•ÀÎ…Ë…ÿìää$îß¿ÏŸ?oé!¡\'\'\'±²²<ğpQ(˜ò¼W(½,Ë\"\"bnn.Ùï\"kaa¡pQ²¼¼kkk199ãããÿø¾ÂƒƒƒÈ²,ÖÖÖ|c\nJ`çJd½_£ÑˆåååX^^Z­ƒƒƒqñâÅèéé‰ÃÃÃxıúuGR\näC`ç.Ë²h6›1??Ÿl†\"GÖ;»»»Ê%å, 	7¾U&°€dDPUÿ\0\0ÿÿìİíO[åÀñ{JW(ÔNyh\0©lCFÚÒÿÿ·\Z“eÆÄ™ÌdÄÅ‡l£C~/3ùe›ƒrÚû¾ŸÏ[¶Ó«1¸oÎÃu•ÈªH`Ñ‰, j‘T‰À’!²€ªX@RDPHÈr\'°€$‰, gH–Èr%°€¤‰, GHÈr#°€,ˆ, \'È†Èr!°€¬ˆ, ÈÈR\'°€,‰, eÈ–ÈR%°€¬‰, EÈÈR#°€JY@JP\"H…À*Ed)X@åˆ, 6T’ÈbX@e‰, TšÈbX@å‰,`Öp-ˆ,`–pmˆ,`Vp­ˆ,`T\\£Ñëëë¡Ûí†Û·o‡¹¹¹Ø#E÷ìÙ³ğèÑ£¨3¬¬¬„££#ÿ= ¢üfCE5\Z0Âòòò?ûá‡ÂãÇ#L•ñxB¡×ëE›¡Õj…£££ğÕW_…W¯^E›(Ÿ3XPAõz=|şùço«Bèv»¡ßïÏxªôŒÇcg²€©XPA£Ñ(,,,üçŸÙØØ{{{3š(]ãñ8‰{²Ü“\"° bB³Ù¼ĞŸİÙÙ	NgÊ¥Ïï@ÙTH§Ó	›››—ú;½^/¬¬¬Li¢|ˆ, L*¢ÙlN|Ãöh4\nõz½ä‰ò#²€²,¨€¹¹¹0\'şûµZ-<xğÀ?êAdåXP‡‡‡áÖ­[W:ÆÒÒR8<<,i¢¼‰,àªdnww7Ü¾}»”c}ôÑGáŞ½{¥+w\"¸\nk·ÛáÎ;¥³Ûí†õõõR™+‘LJ`A¦êõzS9ö`0­Vk*Ç¾Œ[·nE_#‘ÒkuDäC`A¦†Ãa¨ÕjS=~ì\'‡Ãaèõzacc#ê),#mµZÎdAFdèşıûï|\rNYb?YØëõş]˜Úï÷£G–Ë…Àe,ÈÌÚÚZØÚÚšÉg---Eygáæææ—EVAdAddqqqâe¢“Z]]\rwïŞÙç5›ÍpppğÖŸ‰¬‚È‚ô	,ÈÄÍ›7Ãh4Šòê§Ÿ~:“\'/²0UdD¤M`A&ƒAh4\ZQ?Úï,¼èÂT‘UY.èv»áã?=FFaaaa*Ç¾ìÂT‘UY&‰k·ÛÉlWŸÖ“…“.LY‘éX°Z­–Üû›Íf©OÖëõ+}G‘UY	‡a~~>öoX]]-í=e|G‘UY‰úì³Ï’x]Í»ìîî^ùÉÂ2¦Š¬‚È‚4,HĞÚÚZøä“Obñ^ƒÁàßmë—ÕétJ_˜*²\n\"âX˜ËD¯âÁƒ—~²pšßQdDÄ%° !1—‰NjaaáRO¾şÓ$²\n\"âX^¯u™è¤.ódá¬¦Š¬‚È‚8$bgg\'¬­­Åcby²pÖSEVAdÁì	,H@«Õ\n{{{±Ç¸²İİİ°ººúÖŸµZ­(SEVAdÁl	,ˆ¬V«½÷Ç9é÷ûo<Yû;Š¬‚È‚ÙXÙp8µZ-ö¥¹yóæO¦ğEVAdÁl,ˆhoo/ée¢“zıdai-LY‘Ó\'° ’µµµ°³³{Œ©i6›á‹/¾Hnaj¿ßN\'êÏ==Š:ÃÊÊJ8::Y0%\"h4\ZY-ÔÊÊJìŞª×ëE?“5£ŸÉjµZÎdÁ”,˜±—‰V‘Ë…—a:ÌX¯×‹‹‹±Ç ˆ¬×D”O`Ámoog½L´ŠDVAdA¹ÌÈòòrØßß=o!²\n\"Ê#°`æçç+µL´ŠDVAdA9ÌÀááa¨×ë±Çà=DVAdÁÕ	,˜²İİİĞn·cÁÙ“U°\'®F`Á-,,„;wîÄƒK²\'«`OLN`ÁmooÇ	9“Up&&#°`ŠšÍfì¸g²\nÎdÁå	,˜¢>ğ+–;7¾Üø—ãÿş0E§§§±G \"« ²àâLÑÉÉIì(‰{²\nîÉ‚‹X0E/_¾?şøcì1(I¯×‹Yãñ8zdµZ-‘ï!°`Ê¾ùæ›p||{J\"²\n\"ş›À‚øöÛoÃÃ‡ÃóçÏÃü{®HdD¼Û\\ìàº899qO¥\ZÇáüü<ôûıh3¼^áğå—_†³³³hs@jœÁÈ˜§!M s\"Ò#°\0*@dAZ@Eˆ,H‡À¨‘iX\0#² >E–nÜ¸{HZJ¯ÕñûÊu$°ÈÒùùyì yãñ8ú™¬V«õó!Pa)\\.„ëH`TœÈ‚ÙX\0×@\n÷dÁu\"°È’\'“àòR¸\'®E–LÆåB˜\rE–æççc\0Ùr¹¦O`‘¥¹¹¹P«ÕbÙr¹¦K`‘­¥¥¥Ø#@ÖœÉ‚éXd«İnÇ²çLL‡À\"[ÊáL”O`‘­?üĞ}XPg² \\‹¬mllÄ*Ã\n(À\"kÛÛÛ±G€JYPEÖ\ZFX__=TŠÈ‚«Xdïîİ»±G€ÊYp5‹ì5\ZĞívc•#²`r‹J¸wï^X\\\\Œ=TÈ‚É,*c4\Z…¹¹¹Øc@åØ“—\'°¨ŒF£†Ãaì1 ’ìÉ‚ËXTJ»İ½^/öPIÎdÁÅİ8???=”í§Ÿ~\n_ıuì1 ’666B¿ß=$M`QY§§§ááÃ‡á÷ß=\nTÈ‚ÿ&°¨¼ï¿ÿ><yò$öP9NÇ%yxÅµpzz\Z?~~şùçØ£@¥ˆ,x;ÅµòâÅ‹ğôéÓğüùóğ÷ßÇ*AdÁ›×ÒÙÙYøå—_Â‹/ÂË—/Ã¯¿ş\Z{$ÈšÈ‚ÿ\'°à¿ıö[xõêUì1`\"\'\'\'áøø8ê[[[áşıûQg€TX{\rÿX^^=L¬İn‡7n„§OŸF›áøø84›Í°µµmH…E£\0±¿¿677£Îğİwß…¿şú+êP!a{{;ÚçŸY‹A`TÎşş~ÔÈ\ZÇÑ>R!°\0*(fdıùçŸáôô4ÊgC*ş\0\0ÿÿìİéW\ZKúğ/Ğ,*\"n¸\\\\.Æ¸eîU3çŞ3ïæÏwsî9É$7¹‰qÜ¢ÆpQlùé/JĞP,â÷sN^¤º»¤—§«ªb€EDÔ¢\Zd1À¢çQkT•Édê¾O¢fÂ\0‹ˆ¨ÅMMMatt´®ûä˜rôÜ1À\"\"zÂá0B¡Pİöçt:ë¶/¢fÄ\0‹ˆè™˜œœ¬[M–ËåªË~ˆš,\"¢g¤^5Y~¿¿æû jf°ˆˆ™ÉÉIŒÕlûİİİĞ4ÎÄFÏ,\"¢gèçŸ®YMV½ê‰š,\"¢gjrrJ·éóùĞÓÓ£t›DO,\"¢gl||“““J¶åt:177§d[DOÉ‰ˆ¹»¦ÂõõõŠ·ÑÑÑùùyÏ@ô,†a>\"\"j¼ããc|şü¹\\ÎÔ÷\0æçç™ØNôXDDtïææÛÛÛ888@>Ÿ/úYÇƒ±±1ôõõÕéèˆXDDTàöö±X±X©T\nét\Z‡mmmğz½@WWW£“¨i1À\"\"\"\"RŒ½‰ˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RLkôİ¹¹¹¹ÿgµZáp8ĞÖÖMãiÚ¬òù<Òé4t]G6›…İn‡Óé„Ëå‚ÅbiØq†T*u\\š¦Án·£½½6›­aÇEê†L&ƒ››ÜŞŞBÓ´û{†Õú4ëZ±LÏŸ\\M&‘H`yy¹ìÏ[­Öû‡‡ÇãAww7ü~Y·ìïï—µ›ÍMÓàt:ÑÙÙ	ŸÏ‡îîî²S&™Lâàà\0gggH§ÓÂÏtvv\"`xxmmmeoû¯¿şÂÅÅEYŸµÛí°ÛíhkkC €ßï7Øaee¥`¹×ëÅÜÜ\\ÙÛ‰ÅbX__/Xî÷û1==\r\0ˆF£ØØØ({›fƒALLLıL.—ÃÁÁNNNH$Ïç>c·ÛáóùĞ××‡š«è¸‰Dpyy‰\\.Wğ‹Å·ÛŞŞ^Ãét–Ü®™ó¨”p8Œşşşûÿ—º‡‡‡1::ZÑ¾°½½-]_Îo]Œ™ûG9~ÿı÷²‚ßh4Šh4Šx<ÛÛÛ‚õV«^¯÷şQê:nôõtw*ËDÍ¿R“ÉårÒ@£”ÓÓS\0€ËåÂÈÈB¡PÑ@ëöö¶¢}Åb1\0@GGB¡†††Lo#Nc}}ı~[Å\\^^âòò»»»D8.ësssSvù~üÜÁÁ¬V+†††066VÖCXö»™	 ›Í\n·sssSò3*èº^tışş>¶¶¶Èíí-b±b±¶··‡ÑÓÓ£òP8<<ÄÆÆFÉã7ãş|ÚÙÙA(ÂÄÄDÑëÄÌyTJ6›}ğÿR×àááaÅÖÑÑQÑm‹äfTzÿ1£èúx<õõõ’Án>ŸG<G<Ç·oß0::ŠP($ı|#¯§Z•‰šë[P&“ÁÆÆŞ¾}[³\0¤R)¬¬¬àİ»wb‰Ş¼ySVpõ£|>ıı}¼yó×××f×ô¾öööğïÿ‘H¤¦ûz\nÃÀòò2şûßÿ–®»ººÂÇ±µµU³ãúòåKÉ‡Ùcù|ÛÛÛxûö­©ó·R©.//M/“Éàüü¼GÔ{{{xÿş½éšD]×±¾¾?\nk4©ËD1ÀjaÉdïŞ½3ı@4+ãİ»we]ìgggxÿş½é‡áR©Ş¾}‹T*Uñ6Ê•ËåğùóglnnÖ|_ÍÊ0|øğGGGUmãë×¯X]]UxdÀêêjUÇ|¿NŞ¿_²¥Q*)_$iÚò˜µµµ…ÕÕÕªÊs||ŒwïŞ	›³¡ËD…ØDøDhš·Û]°<ŸÏß\'†‹¤Ói|şü‹‹‹eïËårÁår=Xv×&{Ó¿¸¸Àææ&^¼x!İn&“ÁçÏŸ¥7„ööv¸\\.äóy\\__ãôôTŒéº¿şúÿûßM\'-»İî‚&F]×‘N§¥7¼íím8NŒŒŒ˜ÚW-8Nx½Ş¢ŸI&“Â²”ú^{{{Á²ûæçÇ¬V+ü~?<4Mƒ®ëH$Òıïíí¡³³³¢fåÇâñ¸4HÓ4ô÷÷ÃëõÂn·#›Í\"™L\"\Z\nÏ§d2‰Œ•½ÑyTJ9ÍÍÅb1LNNšúN4\Z5½UD÷rˆšiONNŠÖ|vuuÁçóÁáp ›Íâââñx\\ø²—L&±²²‚ÙÙÙËë}=Õ£LÔ`=XZZ’®¿¸¸Àêêª°Y #‹¡¯¯¯¬}ƒAüüóÏË\rÃ@4\ZÅÚÚšğ!µ··‡±±18áveÍ8V«/^¼ÀğğpÁº|>ÍÍM|ûö­`İÕÕÖÖÖî“¿Ë555ŸÏW°<›Íâàà\0[[[Â@rmm\r§äMµÖzzzJæ3ıë_ÿŞL¤‰DBø·€îînÌÎÎ\nóÌÎÏÏ±¼¼,lÊ]]]…ßï7ŸöØîî®py{{;òwçõ§OŸ„ã]nK¹½eç‘jét\ZçççeŸw©TJYR~%d÷³²Ù,¾|ù\"l\\.fgg…ÿL&ƒ••áo|tt„@ ğ ãE=¯§z•‰š›[„ÇãÁââ\"ººº„ëªŞ‡ÅbÁÀÀ\0…7Ã0p||,ün\"‘ÀÙÙ™pİÜÜœ0¸¾_“““Ò8‡‡‡ÊòÌ4MC(Âë×¯…5\r†a{øµ²¯_¿\n—{½^,,,Hƒ$¯×‹¥¥%áú|>¯$Kv>MOOKkP4MÃ«W¯„ëoooÇ«>®Z0“Xm“i³øöí›ğ…Ìáp`qqQ\ZÜº\\.üòË/Âõ[[[\rk>mÅ2‘¬rW$’H$”]€n·[ú¶”L&…Ëwvv„ËƒÁ`Y5kãããÂ7xÃ0¤5,•r»İ˜ŸŸÖdœŸŸK›ËZÍ]ÓÄcV«333%Çåq:xùò¥pİÑÑQUyxº®k4M+Y«d³Ù¤çÜÕÕUÅÇTKf:„˜í<ÒŒÃ6ÿ†ÃaaÓÛ,fgga·ÛÖ¥R)é‹`-µb™¨8X-Æëõ\nk_r¹2™ŒÒıˆˆš†a ‘H?o&çEöÙZ<İİİÆ+úQ#ó[êéääD¸¼··em#Àãñ,7£¡ªÇãÓé,ø×¬µ\0777Ò\Z»]\\\\Ô¥óG­%“Iá½Äår!–µ\r‡Ã!ı¬ìÜ®¥V,Ç¬ät:…Iïº®W÷rÇl(§Éív—ı ¾çJØíö‚ñ{®¯¯‘N§••íÎĞĞ°i¦œ]+5—•›Ëw§¿¿_˜tvvVöƒå1‡Ã‹ÅRe³Yœœœ”Ì©	ƒï»GÁÃ8‰Àï÷ı¨yPtÍ4;YğİÓÓcj†€`0(ÌÕkDSp+–‰Šc\rV’\r— rô_Ù8T¢ GöYQÍF)¦§\ZİİİÂ@2“É4í¸I*ÉrÛÌ&ùË>_ío&›I`yyùÉ¿Í÷õõ<tONNJÖ°‰šŸbò³ìÜ“å˜ÊtvvJ¯áz×V¶b™¨8X-æööVúàª¤‹¸ˆaÒ¤ÛŞŞŞ‚e²\\›JGöZŒõe±Xêº¿f#«õ0û»ÉÎ«­U‘\rõp{{‹>àÏ?ÿ|²oõv»½ ¶J×õ¢Íªñx¼ \rÀëõV4dB£©ºgX,aÎ’au¯ÕkÅ2Qql\"l1²Ş$Jj°t]ÇÊÊŠ0¸»»[:üH%“îÊ¾S«‹ìo¦ëº©æÍ§Æ0áïf³ÙLOâ,ûVû›\ràèèH\ZtœâôôèïïÇÀÀ€Òßlmm­ìkjbbÂôÁ`° l‘HDÚü)zéhÈhßfjRDç“ìQÉ=¬Ø5,R¦Z±LT¬²³³ƒ½½=á:3y3ggg7ƒ»FÏÏÏ……º\\.é¤Æ*«­Í>Ükµ?VÅ7‡W¯^áãÇEóâR©¶¶¶°µµußvxxXX`†™)l*é1Ù××MÓ\\‹\'\'\'Èçó=8EC¤X­VƒA¥2—c{{»è$Ó?²Ùløç?ÿY°¼×W½¯áV,Ç\0ë‰Èd2Â¡òù<2™ÎÎÎ¤müN§ÓÔÄ ÉdR:Ü‚ˆ×ëÅüüü“lŠ §Íf³á×_ÅÎÎ¶¶¶JNruu…ÍÍMloochhJsU²Z­èíí}¸Ífq||\\ĞÃU4ãA hÚ²=¼úˆt:\rÓß³X,˜®¨9®£££‡Ã5Ù6Q9,ÆÆÆñõëWD\"‘’V.—Ãîî.\"‘^¾|iºgd½ƒÁ‚Ñh´ À56s/I¢ç€V³ÙlxùòeÉ.ëÕØÙÙA2™ÄË—/[:\'‰šŸËåÂÌÌÂá0ö÷÷‰DJ	u7§e8Æèè¨©ı9’ƒ­Ş©ôÇï÷Ãår=H^?==E.—»ßf>Ÿ/è5i·Û…Nˆ¨~`µ¨®®.LOOK‡5P)ãÍ›7XXX0İå˜H5‡ÃññqŒãòò‘H±X¬è°p:¦j}æççë2aÿƒÙ\nr¹b±Øı±Æb±‚œIÑ0õÒÙÙYö}§V5ëåhÔß§–Z±LO¬a±XĞÑÑ¯×‹ÁÁÁª&$…B£¦çóy¤ÓiÄb1ìïïôLÊf³øôéşñ\\ä²<Jz7ÉzâT›°lv­ŞSÇb±Àf³üF¥šŞDTö2ëîa‡Ç±½½-Mˆ___GoooÓå-ƒÁ‚é ¢Ñè}€%j¬Ç¡	õôôT=Ù³Ê{†ì;µºgÈ´b™¨¸æº“”ÇãÁôôtÁr«Õ\n»İ»İ^vsE)wÛ|ÌétÂëõ¢¯¯ïŞ½+xØ¦ÓiD\"‘‚Z\0Y0RIÏ*Y×şZ<†aHÇ»R5¦X¹\Zñfj·Ûnäw3å—ı\rë¤ú|>ø|>ìííamm­ Ç•®ëˆÅb\r\rNDî‚Ä{-şØÓ÷qÀØÖÖVÕV3•Œ?WÏ{F1­X&*>6›\r§àŸÛí†ÓéT\\•ÃëõbxxX¸N4‚¶l\n3İÜK}Gõ49wûÕ¾8‚\0TöæhvÄ÷FÖö<&ëj¦‡)\0á49@uAêÅÅÅı8W?ş+§†mddD:ºy³Nƒôøxóù<\"‘¢ÑhA™ŸâÈíÉÎ=Ù¹$“J¥„×”Óé¬ûKK+–‰Šc€E‘õº’\r@*\n\0///MM@}~~.|Ûs:5I°?88.åİÈ‚³l×z~3dSÑ˜†æñøLwªÉ_ÚÜÜÄŸşYğ¯Ü‰ey«œ]¥`0XğğŒF£M×<¨ŠìÜ0;A¸hê @~n×R+–‰Šc€E‘ÕÉFÿ5Y†!œ´TæqÊRàVâêêJ8q.\0a¯Ì¶¶6a-“®ë8??/{¿²›­Ûí.{ªáòh4Zvóîåå¥tºšjz·ÊjË­\rÕ6ë@N§³àH$H$,ëêêB{{{=­&|>Ÿ0>•J•àçóyéKR-î¥´b™¨8XTY“¤ì522\"\\¾»»[V“S,“¾¹ıôÓO%¿o†®ëøôé“0‘´££CØc±X¤o¨›››eíw_Xƒe±X\ZÒåŞçó	{ƒe³Y¬¬¬”ü~>ŸÇÊÊŠğœèéé©ªYWÖKMöğyìq`r§™sXŸw†aüm[¡yø~‘ÕÄ­®®–5ÍÒÆÆ†pğe‡ÃÑ¿S+–‰Šc€EuÑ××\'|(\Z†>”7\ZbyyY¸®§§GÙqâíÛ·Â¦Nàûœr²<ÙÍ3cyy¹h~P$ÁÚÚšp]#{¶—cyyYÚ›I×u|üøQ\Z<OLLTu\\²&êóós¬®®­‰º¼¼”Ö†6srxÑa\rî¦ÆicccÂò¦Ói¼ÿ^:s…aØØØÖ6lxˆV,É±!U¤’.Ç333øÏşSğ]×ñşı{ûš\rÃ0p}}X,V´¶ajjÊô±ïììàğğğÁ²ÛÛÛ’9a###ÒÜà{ äóù„ÁâÑÑâñøı\Z‡¹\\———ˆF£Ò2Z­Ö†”ß××‡şş~D£Ñ‚uwe\Z€Çãİn‡®ëH$ˆF£Ò7òP(TuPÜŞŞŞŞ^a~×ŞŞÎÎÎáõzïó×®¯¯qzzŠÃÃCáyj6@G¥ƒÁŠ›rl6zzz„¿ğ½‰¨•ºé;N„Ãa¬®®¬»¸¸Àüşş~ø|>8Nd³ÙûqÏd¹Œ^¯Wy·­X&’c€E±Z­Âq’r¹ÜƒQ¦äñx055…/_¾¬3\'\'\'eç\"X,ÌÍÍUÔÌd6©ø<½xñ¢äçfffğöí[a2~&“ÁÖÖ–©ıNMM5<§fffWWWÂZ=Ù™2~¿_YÀøòåKœŸŸóÁR©TÙM³wÆÇÇMu&¨ä<òx<UåÊƒAi€ÕJµWwFFFL&…ù¹\\‡‡‡e¹.—¯^½jxO»V,‰±‰*&z[6£hNÕàà fgg«\ZVÂn·ã×_­KRçİ<wûÛßÊº‰µµµaaa¡ê‰¯-¦¦¦044TÕvT°ÙlXZZªº—R__~ùåe§Ó‰×¯_+¢chh¨`pİf„ybš¦µìÔ8333ÒÎr¹İn,--5¤7®H+–‰\n1À¢ŠÉ¦Å)õö±¸¸XÑ4>>Ÿ¯_¿®Kpå÷û±´´dzTj·Ûßÿ½â¤S·Û×¯_W}VÉn·caa?ıô“éàXÓ4„Ãa¼zõJùxmíííøí·ß022RQàf·Û155%Ä·Y,a3u___]ÇÂ«§»—ééiÓ,•âª´b™¨›©b¡P\'\'\'ÉÛGGGvó¾ç\rüöÛo8::ÂÑÑ‰„4	\\Ó4twwcdd¤è6«¡i\Zìv;ÚÚÚàóùĞÛÛ[Õ<š¦anncccØİİÅÉÉIÑ›5M»ÀµYk\"¬V+^¼xP(„œœœH“rïboo/B¡PMsƒ4MÃÔÔB¡F‹Î;xwl\Z\Zjêƒ\"ƒƒƒØÛÛ{°¬›\Z\ZÂÀÀ\0vww‹Åpyy)íÌàr¹à÷û1::ÚÔ“Ğ·b™èÿYŒfø…•\\.‡d2‰››èº‹Å‡Ã—Ë…®®®–È1¸¾¾ÆÕÕt]G6›…ÍfƒİnG{{;:;;Ÿd—Én·Ãáp ³³³êfÒjÜŞŞŞçgİÍ¦iÚıùÔló\r’yº®ãââº®C×uhš‡Ãööö†Œ§B+–é9c€EDDD¤Xk6Ú5,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤,\"\"\"\"Å`)Æ\0‹ˆˆˆH1XDDDDŠ1À\"\"\"\"RŒ‘b°ˆˆˆˆc€EDDD¤Øÿ\0\0\0ÿÿíÖ±\0\0\0\0À ëIì,Š\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì\0`&X\0\03Á\0˜	\0ÀL°\0\0f‚\00,\0€™`\0Ì‹ˆÖääş./\0\0\0\0IEND®B`‚'),(2,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0\\r¨f\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0à\0\0àb·ÖÁ\0\0\0tEXtSoftware\0www.inkscape.org›î<\Z\0\0ãIDATxœíİkPTçÁğgç°7XYwÁx‰HR­Ò1ÑC5’!“:Ö¤‰N§M36iûÁÉ¤ÆéØ	IƒikŒ£ˆk;¢¤‰QoTñ‚FW]–Û..ì…={öı`ú¦o^“¨ìÙg÷<ÿßwáï²Ïÿ<ç9ç<GE)!\0À$v\0\0 \0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0\0\0ÃP\0\0C\00\0À0v\0\nŸV«õäççsS§N˜8q\"Ïówÿô:.Òív«Õ:ÚŞŞî»råŠïË/¿TB\"éF†`@(øôÓO“•+WFÍ˜1C—’’2N¯×!1ğ3<^¯wĞjµ·µµ\r:tèÎŸşô\'Ãá@)(ŒŠRB;ŒÁ`ğ¾ùæ›Q¥¥¥†ÔÔTÇq±2ü\Z¯Ãáè=uêTï–-[>Ì‘»ßc(€ğ%ıüç?xùå—Ç§§§gB4ÁüåÇúÙgŸİ~å•Wú;::„`şn@˜áyŞ÷î»ïjW¯^­ÓéŒ´óBF¯_¿nşõ¯İ½gÏÚYà¡\0ÂÏóşêêj]EEE– ñ´óÜƒ¿»»»ã§?ıé­O>ùW—Â\n ¬^½ÚW]]«Óé¡å>HmmmmO=õ”åÚµkXdq(€f0Ä/¾øÂ”ŸŸŸG‰ çAH’4²{÷î‹N‚ûMB\n Dığ‡?ô8p`ªZ­N¢e,nÌŸ?¿ãòåËaU`¬@3‡ÿÎ;…úúúùá>ø	!$>>>ıüùó…7nÄ%Ã„@h‘Nœ8STT4‹vHõõõg/^ì$¸ d \0B„F£ñµ··\'>òÈ#Sig‘Ó•+W®äççw‹¢ˆÙgÀ!h4\ZÉl6g(}ğBH^^^ÙlNáyŞG; \0¨ãy^4›Í&“É”I;K°$\'\'g£B\n€.ÿ•+WL&“i2í Á–œœœÓÖÖ6\"ÑÎÂ2\0E\r\r\rã²²²?íÿ6éééyMMMãhç`\n€’7ß|Ó?wîÜ´sĞöØcÍªªªÂ=”à*\0………¾\'Nq§§%Dx–,YÒxğàA‚d<Ïûúûûóbbb&ĞÎJœNgO|||«ÛíÆl ˆĞ¸AvàÀhşÿO§Ó™=š@;kP\0AôÄOøJKKóiçU………SŸ}öY\\\Z\"œ¿··7İh4fĞÊ‡eÜ¸qm§ À‡$ë×¯÷ÆtÚ9B]tttÊ»ï¾ÔíÍX†@pH###Y:.•vpàñxlQQQgEQÄ‚ Ì0‚ßıîw<ÿıS«Õ†êêj-í,À@~~›Í6166ğ\0\\.Wÿ¸qã.Š¢ˆG‡e„€Ì–.]*ÆÆÆ¦ĞÎn´ZmÂÆ±§ Ì0Ykk«qòäÉShçGm)))]´s(f\02Šsss™yÌ7Ğ’““ÓSSSEÚ9” £×^{MÍq³ğöÛoãiA¡\0d´råÊP|GX™?şxÚ” ç}iiiXù#“É”‹MCd‚Éücã¸(Ú9@½fÍ\ZÜ(€LV¬Xgı¤¤¤ë(2AÈdæÌ™1´3(EVVe‚‰ÉdÂ³í’˜˜ˆS)™ \0d ‚[Ì\0$::Z „øiçP\"€JJJ\"!¸5@¾º—ÂK;‡¡\0dğØcaÕ:°4‚  \0d€ANNN$í\n£2\ZØ*L(\0Fld`:k\02@È **\n`z=n«\n@z½`z½3\0 \0d I>×\0Ã@ø¢ÊÀëõbÁ*ÀFFFhGP$€Ün7\n ÀFFF°7 P\02¸sçÎW3\0y \0dpëÖ-íJãt:1\n@.\\pÓÎ 0ş¾¾>ÜZ-€\Z±‘e`9½^¯@;„¡\0dpéÒ%â¢C)$Ir<\\%€<x‡ÃÑG;„R\r\r’»ï°€\0CÈ¤­­ÍN;ƒRÜ¸qãíJ…ICCƒƒv¥8şüíJ…É;ï¼3BÁ\rAP[[ë¤A©ğn@ŒŒLÔétx1èx½Ş¾ÈÈÈKk\0²À@F\'Nœ°ÒÎî.\\¸ĞE0øeƒÑæÍ›ïlf9&o½õSe„S\0™İ¹sgbtt4NÂĞĞĞíØØØk´s(f\02«©©±ĞÎ®vïŞİE;ƒÒa 3Fã™ƒ÷>Qï†æááa¤d„Wfn·;âèÑ£m´s„›Ã‡_Åà—f\0A`4\Z}·oß.âyûZİQF£ñŒİnGÈpôõõEÔÕÕa1ë>}øá‡W0øƒ3€ ‰õ÷ôôÌT«Õxgàw¶\Z†Ë¢(âÚDBÒi‡`ÛíVñ<ßSRR’FpcË·‘~ö³Ÿ5777ãó	Ì\0‚¬££ã‘ÌÌÌlÚ9BQKKKËŒ3pãOá<+È/^Ü%Š\"v¸ü—ËÕÿä“OÒÎÁ\ZœÙàà é^¼xq\nAÿÇèŠ+š[ZZğyN(9|ø°vÑ¢Eshçş;v¯¬¬Ä£Ó \0èñ_½z5)\'\'\'—všÎ;wvæÌ™C£T \0(ây^êêêJ?~<“‹‚mQ1õ§<E¢(rYYYf‡Ãa¦%ØÌÙÙÙü”áÃ§ÌápD¦¥¥µÜ %XìvûŒŒŒv·Ûïeø„\0›Í&¤¤¤´[­Ö+´³È­»»»=55µÃápàE!\0\"\\.Ÿœœ|Ûl6_¢E.—/_nMMMµ8ÚYà.@E1\"33³¯¶¶¶‰â¥\'€Äıû÷Ÿœ2eJ/îñ-(€Ğ£zöÙgG×¬YsÚãñ„ı»<}Íš5Meeen‚K}!—CXRR’tôèÑ„ììì©$üÊÚßŞŞŞ>oŞ¼Îün_*¦twws999ƒ•••_8ÎnÚyî—ÇãÚ´iScvvvhÃ Lğ</íÚµK[^^Ãq\\<í<÷\"Š¢§¾¾şÚªU«úív;~@„­VëıË_ş¢+//Ÿ$Bí<„Ü}}wsssÇªU«úÚÛÛiÇ€S<Ïûªªª4«W¯~D¯×§\n§s.—ËV__ëå—_°X,8C(€ğç/..}ë­·Œ³fÍJ!NÎ_&I’½­­ívUUUUU•`e?¬¡\0”Å÷Â/¨şùØ©S§\ZcbbŒ„Í~Ûår9{zzl.\\°ïŞ½{hïŞ½~rw	P\0€‚ñ<ï+,,Tegg“I“&©L&“ Ñh¤ˆˆˆÿ}_¡J¥Rùı~¿ÕjN§ª§§Çg6›¹“\'Oz­Vk!·ì*\n\0€aX¸`\n\0€a(\0\0†¡\0\0†\0`\n\0€a(\0\0†¡\0\0†\0`\n\0€a(\0\0†ñ´€ì$AF\'NœÈ¥¥¥EBˆ ¢J¥òÇÆÆúõz=ßÙÙ)ùı~•Åbñ‰¢HˆÕjå!‘û*\Z\n@¢££}O=õ”P\\\\¬ÉËËÓL˜0A¯×étZµZIÑ>Ä	!N§Óéq:›Íæloowœ>}zäã?v_ºt‰#øş„=<\rf4\Z¿¬¬Œ[¾|yT~~~ŒÉdŠÕjµügô‡‡Íb±8N:5ôŞ{ï\r777GœV†@è“ÊÊÊHee¥¡°°Ğh4\ZÇsI;Ô½H’ÔwóæÍŞıë_¶wŞygäâÅ‹8…q(€Äó¼íÚµ‘Ï=÷œ±  À¤V«ÇÑÎôü§ïßÿşw×¦M›úëêê0;A(€Ğá///—ŞxãÄÉ“\'§ó<E;P\0ù½^o÷ñãÇ»~ûÛßÚ\Z\Z°ËPˆ@Pf0|[·n)++KŠŠ2ÑÎş¡¡¡î}ûöY6lØàp8XH¤@Éœ9sÄêêjã´iÓ²9ÓÑÎCƒ$IÓ§O·ıä\'?hmmÅ¬€@ıà?ª««³²²&\\Fû±³³Óüê«¯vÖÔÔ`Ñ0ˆP\0A²dÉ’Ñ>ø =)))‹`1ìÛø»ººn¾øâ‹×?ùä|FA€YnnîèŒYYYÓø÷Ëwıúõöòòò®sçÎ¡d„Itt´wÿşı†L%c{9ËFÏœ9Ó^VVfíììÄ©Ğ®\'mß¾]388X´`Á‚G	ÿXDÎ={²Ùlóşûïk!şïığ@0 3fHœh2™ÒhgQ¢¾¾¾[Ï<óL{SS\\‚20üÛ¶mS777?†Á/£Ñ˜ÚĞĞğÄ¾}ûô„‰v%À`ŒüqéÀãââ0ğƒ¨¯¯ïÖ’%K:Îœ9ƒµ1ˆ „¤Ó®^}õÕˆ]»vêt:#í,¬Ñëõ1/¼ğ‚Ië‘#G0xH˜<©®®N[ZZZHğªlÚ¤ÆÆÆ–’’»(Š8¥}@(€ç¹|ùrZbbb.í,ğµ¾¾¾›EEEm×¯_Ç½\0ù\0,Xàëéé™ÁzŒFcÚ—_~9ã™g¡%¬`\rà>­\\¹RÜ¿Ïóq´³À½EDDè–/_ät:o755áû€¸6lğ|ğÁO¨T*%=£¯H*•Š_´hÑ„øøø[uuu¸Bğ=°ğ=¶nİêZ¿~ı“wô…ßŞ½{¯X±3ï€øUUU—^zéIrw{l?Ò¡C‡NıèG?rìMxO(€oñÑGù+**æ\\æwş£G-))qĞŠpàŞÿ}OEEÅ<‚Á¯ªâââYŸ~ú©vP„ø†M›69×®]û$Á³ûŠ²páÂY»wïÆ÷ıpà¿¬Y³fôí·ß.&XğS\"Õ´iÓ’5\ZMçgŸ}†…Á¯ \0¾²lÙ2ßÎ;W©TLnĞÉnîÜ¹&‹ÅÒuîÜ9ÚYB	!3gÎô:uªçùhÚY@~’$,\\¸ğô‘#G˜¿2À|hµZoN§K¦‚Çårõ§¥¥ïëëcz¡—õEkkk?{´ZmBsssa|›1¦`×®]šŒŒŒ©´s\0©©©“÷îİû0¯NWf+**¸ßüæ7s®õ3mÊ”)‰7oŞ´´´´ĞB“k\0F£Q²X,3Õju,í,@ŸÇã±eddœíîîfî`Àä)À±cÇ0øá?ÔjµáØ±c‰´sĞÀ\\¬[·Î—››;…v-YYYS~ñ‹_ĞtLh4\ZŸİnŸ¦V«ÇÓÎ¡ÇãñôÆ–^YÎÔàøñãñüğmÔjuB}}½v`b¦\0~úiqÖ¬YÓhç€ĞVTT”¿lÙ2íÁÂÊ)€pp0Å`0dÑ¡ohhÈÛF8@*ş?H!¿úÕ¯|ƒa\"íbbbR~ÿûß´s3\0ßÈÈHN§›@;„ÇÓu^EEß øÀöíÛ5üğ ÔjuÂ‡~¨øÛ„=ˆöÌ7ıÀ“$ÉĞl³Ù{YPÑ3€?şØ€Á‹ã¸ØšššÚ9ä¤Ø€ÑhôõôôÌá8/ó€‡&I’3==ı„ÅbQäZ€bg\0µµµqü0VÇévîÜ™@;‡\\9HJJ’:;;‹8Ãş~0f’$¹ÒÓÓ›”8Pä`Ï=	ü(Çi?úè£xÚ9ä ¸@JJŠïÆOp‡­½!`$Ir%\'\'7)mÏ\0ÅÍ\0º»»U­­­Whç\0eéèè°Øl6Åí\"¬¸E‘ËÏÏ·ÿıïo\"„H´ó@Øó755]ÌÉÉér»İŠ/JİPU[[ë3·‹ŠŠ’öıƒ‡#îØ±ãÔÒ¥K‡‰Bß.¬Ô „rèĞ!Éjµv•––Æs‡W|Ã}“$iøÅ_<ùúë¯+úÑ`Å-ŞËœ9sÄÏ?ÿ|ŠN§K¢BŸÓéì[´hÑ…ÆÆFÅÏ™(\0B1âùóçSRRR&ÑÎ¡«···}úôé7•¶Úÿm·¨ñml6ŸššÚõé§Ÿ6B=­ƒ‡\">}º911‘™ÁOˆÂ×\0îAµsçNŸJ¥º1şüD•JÅÄ¦ğİ$IrmÙ²¥qÅŠ^ÂĞA‘†N¾iñâÅ¾¿ıíoSu:“ûÁÃ]N§³»´´ôRCC“f€»Û„Ÿ:uÊŸŸ?0Öü@üf³¹µ   ‡¥mÀ¿‰é/½Ûí(((¸³qãÆ#’$Ùiçà$idëÖ­G333ûXü„0>øo“&Mò666fÆÇÇcóP¸Q\\\\ÜÖÚÚÊä”ÿ›˜ü·«W¯\n			7kkk›%I\Z¥Îµoß¾			×1ø¿†À=Ì=[úÇ?ş‘œ”””C;Œİààà­eË–];~ü8ÓÓı{ÁàÎœ9ÃM˜0¡kóæÍ\r^¯kaJ’$ç;šâããÛ1øï\r3€ï7Z__?~Ö¬YS	!ø…¿Ùl¾¾téRË¥K—hg	i˜|ÁÁÁÈG}Ô¾téÒ&«ÕÚE;|·¡¡¡®ÊÊÊ#™™™ü÷µ;Úµk×ü[¶lğx<]?ş¸ B4íLğ5Ç3ô×¿şõìÜ¹s­çÏŸÇí>áàáø6oŞÌmØ°a² ¸“\"Qõõõí«V­²ÛívE>³/\'Àğ</½÷Ş{ÚÊÊÊ\\A˜z¯<m¢(º;v­¼¼¼ßf³1óğN ¡\0@£ÑHşóŸõË—/ÏÁH;’y½ŞÁşóŸ××®]{§¯¯Sı1B–ïµ×^‹øå/™—Jº\rÃÃÃİ5557^yå—÷æ£ ÿóÏ?ñúë¯›2333!¸óìáx:::Ì›7o¶nÛ¶M\"(Ô€CÈ,55Õ[UU5náÂ…YZ­V‘/—4§ÓÙ{ğàÁ[ë×¯·ß¾}÷^È<ş—^z)rİºuñyyy©xsÑÿåõzÏ=ÛµuëÖ={öø	öA @£ÑHo¼ñ†zåÊ•‰iiiX-I’l/^´üñØ¾}»ŸàÆ´ CPÆó¼´víZõêÕ«\rãµZ­bßDKñºİîÎ“\'OlÛ¶Í^SS£\"xgU(€ĞâŸ>}ºwİºuQsçÎÍÎÎÿê²b¸GNgïÕ«Wíuuu¶?üáÃZÚ¡àk(€ĞæOMMŸ{î9aŞ¼yQ“&M\Zg2™bÕju<	½#§gxxøNWW—½¥¥e¨®®îÎŞ½{}.—W@B\n iµZoqq±jŞ¼yêiÓ¦iÓÒÒ¢uÑÑÑ\ZN§%„D‘À/¢ù!NI’\\v»}´··×ÙÑÑ1|îÜ9ççŸî:rä!¸ÜvP\0Ê#iµZ_AA››+L˜0Óëõ’Ñhä´Z­J§ÓEBˆ ’$I^Çã#„ŸÏ§r»İÄápŒ:b·Û}İİİ~»İÎ]»vÍ×ÖÖæ\'„D<­((\0\0†…ëâ\0\0\n\0€a(\0\0†¡\0\0†\0`\n\0€a(\0\0†¡\0\0†\0`\n\0€a(\0\0†¡\0\0†\0`\n\0€a(\0\0†¡\0\0†\0`\n\0€a(\0\0†¡\0\0ö?Szšë7…\0\0\0\0IEND®B`‚');
/*!40000 ALTER TABLE `padrao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao`
--

DROP TABLE IF EXISTS `permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao`
--

LOCK TABLES `permissao` WRITE;
/*!40000 ALTER TABLE `permissao` DISABLE KEYS */;
INSERT INTO `permissao` VALUES (1,'Adicionar usuÃ¡rios, adicionar, remover e editar produtos e o estoque.'),(2,'Adicionar e editar produtos e o estoque.'),(3,'Editar o estoque.');
/*!40000 ALTER TABLE `permissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `produtoId` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `foto` mediumblob DEFAULT NULL,
  PRIMARY KEY (`produtoId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (9,'geladeira 1',2500.00,'RIFF¸—\0\0WEBPVP8 ¬—\0\00‹*ÆÄ>I\"E¢¢!!$R[@P		glíÎ\\kÁWÌÆ\':T»¹.ÒÿåÜóæ®ğÖ~0‹‰aú?˜ÆfİY´•\0<y‘ÏÛş¥‡ç<öš`1}J®¾ºMîXİ›_¸÷­ÿÇìoõ§°¯ì¨¯È‡ßÚ=\"şêú›ô™GêÉô=é¯ı×ô€Ô¶ùş;ß>ûŸáß’û«ş;åÿù<åûçù>gıµşW¬ÿìÿíÿó\'åOúãÿ&~E=µş×ûÏ±ïâ÷ãìßï¿õÿ°ö ö“íó¿Âÿ¤ı˜øRü¯ùŞ“ş§ØõËş‡°ÿö<‘?ÿ;÷à#ùï÷OúŸè?Ô~ì}B£ÿÇıÿå¾ÿ×¿ÛÿğÿWğ1ıü_şO^Oÿşğ¿uÿû¸~ì—C‚cñ (Øñ{¯\rœgY\0ÊØfîXÏ&ù4<Oh‰ª_Õ·üÏ‚Ûbnk*(cÏ@êø(ºBË`ëQ7AÌ\n\nQgíÌktÌ‹o¦„Î¡ES×l”e\Zz!(%Œ¯-0=’ı÷èİ[7+ŠÕf[¸\"=8Ë±yYf|Mr–Æ¾ğ¦¦Vë!ÀwDş÷¸È|rn¿¨°Îºà!ÁÁÛÖİQ¶x¯µğ«*ÿÙ|[Óíi‘Ä2§/\nr³ï¼_Ûp#KöîHèS’v”¯±%‰ŸKp‹Î_ÑÛ&‰&óŸàÑg\\]ÊRÄu©ŒÜh¼ä§pg‚ìÉqÿvWÿ¯8å®cBÏ®DÌ+4ÿùÀÍ‘€ÑğäòçÅfú•.* ğŞı,äÑB¦N•’*ş?sŒ·@E )©F£\Z“ºkoŞĞ™<SöºJŒO6`%ñ\n%7š~ÛØãWfüól‘†jßŒØ£I^‘İ›ÙaíÊl¥\"Oók¿‰¹T}fk­Çõs0e™oGÊx8Ú†,NŞ*Û	AÏ´/u~4ˆë›‡’Ä {t>´\'§Öz^P½b?ádğøƒúâiæIü	«³Ã‹(Â=£fäş^;æèî²5\\Ñ¼7§&U¿³/€—qzq¶9ŒĞÈÍj¥ÙØ¡ô4¿™§t˜`,T÷©iYÍäè=¯€ôQâËÌÃ»\Z‡ÃœİĞÚ^Êh‰¿ÆcŞ^3ò!²ÏŞúÖªr,yUC\r…YNÕ×u{)ƒæ„ãd\\s–\0[æÄrÏ·ıùMjßX¦](eIs–\"Ğz‘å˜K<¬è$TÊµ‹ö#/ºV—>¼\rÉp˜j-ÃÚfÖ«·ÜLî}lP	šªN#ê¿F£Èæháõ.D¾+‰rE\nûdL¯R–fëç}RPÔQ‚´@s·(+Oì‚Â^£Lt>çôAzşÚ)rHp·[¤Ø4åÃ\0Ròâ£(ò=›À;Ö¯¥üáİ\"±+¯çõ¡ˆƒ½ßC\"À†Iy)Ø%7?$>æ]K@Ú‚T\\ªíÚbGyç%\"a1_ßË\rÑ«’>¤<c5¥;ƒjMíš9›xÅ‹é0CrÊF6¼Õš¨i\niã(Fm¢Ç{íEª–AÍ§Ø(@@}+óÂ*Q\'çï0ËFØe@TVŒ)ÿHï\"gå¿Ä¦À-ºÀì‰çmCÄ«!	q}n\nM}4¡ØÃ–ÆjŒıÛS“ ®Vui0+ên&H„òİYóı.?3BB‘.Êš•ÆãH«…,\Zu{Us•Ä’V€¼©;\n€ñœOT9ğÊ–W]æCˆˆÎÛïlÎÇøP Z†)ƒ+­­hwúó\nœ©•eŒò\'a¬Yó>`\'ß3‘;…»®£jÕïÙ!iş¥¥¶Š–WïWËÀàJ²œ:U=4^5ÔœP²Ğ…8g¶fò!ìó5dPÈ¨SĞİ\'œ‘VšG,Şı¥Ï^GñKãª/ªW0¤“5—A(´²Ÿ/[\rïóïŠC¬d²ˆã¤¥Oi-\Z]–I®òxªzNÊHnüÚÍoeU–V1ƒw57Ïì»Ç›¯6ˆØÈ9û{Z³—.ÒbjæùVIkèGxUFŠò¬vÒè#ÑÓØÂcì§\n‘\\«¹{\0×š9œŸß!ó•föj˜ã#æ*äK÷.rCë0p¨‹ªU–!dgcƒ3n„\nP‹°az¼«MjSJ™Ç‚Öb<zxmx…çD9À,³ío}KzÛé/š«P‡Ñÿ£„”\'ì•mBkhgÙKÛMÿ˜ÜÙç(¡Ğ¡Ü\rmR³™ì\nÿ‰”²°Ò\nıÖ\r\'¨}ÒÂ˜ß²²jšPƒÍxJ·æ‘Œ\',ày•Ìî»N2è\"=KL¬ò÷©ŒáM 2+³ìÂ¾t²¿ªèßjÊ’ûNBµÑú‹>ûlmÂ¨ıy¸pçxlñ¸†î8.¦W÷Oz ÂQ<yËr„_]sc‘ŞÈ÷(ŠÍÒ¼Bérw¡\0	­i¬‹$¤À[+ªÔ›Ošn¥álÅù0ğªËüÃûzüxÃÚ…f ï…Êîu“¯È2iÊïç!áSÚCjFxKš{î?Ä$ÑÂªKgw­¾®Mcí„Å:aP_Ú‡µ.WÇ~ch–Ú8Ğ¬ŞÕÁ…Xl	xñá.‚\0‰Ï¯G™€6%jn~€JRøk¾îŒöŒpæLâù?$Œ¼Z¹Ùå$\r±Û¡WtşJWäì\"hjúQ€ÊÃ½–2 a™ŸÅ·c_z¾£®– ¨¿\r&·T‘5ÆÂ>QWÿ9… ¸?›×u\0³nƒw=A¨GP;Õ8qTÂ‰ı®ì1-17åip,–Pj^ÉğŞ9V]oh$‡4;÷e“Ìå’‹†«\0. ¬xeã£à	?NÇÃÈİy^Q\0UÁÓJ½½<L[x\Z¡‘ë•Ú¡õ¨.ƒTÄ³âW/WšbfV¨,ñó,¢ÄL1³í·[éÆıs*¥ôñ|k\"lı]ÍÿuÍ\"àJ)³Á2¹WgÏIEâÆâœœ­‹Br$,áÀqÌaû÷qzÕ¹Ê™íş~\Z© ‹-|ÊŸBw³î±ÏˆÕ\n´…m—\nË¿q‹kÁN˜^ŞpÑèòNa¬‡‹õ³{C¦E,Âz³Ó01¹‹şÓ\\•)Ç\'¯›Å+¶ğ<7M¶ó^5h„åÀëíÀ‘tÓğj&q%yTÍ2Vîúğ3ˆÛ4¥Y—Ñèìk×eóå=ÙÚŞ¼Â{PßƒÍ\Z1ÚÑü~G3&oIH,uÖ–çÄñ¤€#ëæ­ÿvÄØşè%w]ƒD\nœÄ\n®;½lcÿ’xœ:®ö}	¡f¸Ì»å†ùnaËŒ¦èÚE¶Ÿ 4]¡‹vº¤²ĞqÚèÜq—%Ú€ù«c\ny8GZ›«»•¦Èl”(ÑÂ–iIiM.×ü1½ÓÒ¨Ûõ×}ÆÏc#$äŒRÆÌÈ\\}]ûR åG;ğT´¢0]}ybÈÃkÔSEBÔ¥\'á&õñ3İ|&ÉäFH½Øˆ“È=R3ç‘\\˜qA@8Á[>ÏP7¦Óù:6«°@`^qææè%ø†Ä8‚W3€1fœQò`w\0w=ŸH•‚i1ŒIŠÈ¼ÍN…R3zzl˜eÕÑ§Ÿ\r¹^Zg Oæ3»™b%_<Û.îød5:‘ÄPc­5lNØãjÌœsûlŸ· ã>Ú?/G;‡ç0ÅªŞI§¦¦Ÿµe+\'şW|ÌqÈU\ZJ‡Ns‚™‚O–PRtğ^…ÇD$óhâœ–)täŞœÚ>r—Éc-ãôKÂMŠr¯G²QHÎv¬ÚÊåéê\nw\n!\roşş>$ûİduÄoœÔ,åE¨M¨oDÌóFIÑ´êËmÑÑU,Ææ^AqÓ†¬ÈúAíld:ó´¾„Ú&tJ(ÒoUşÌà­>ÁÇSã´€¦çô|k®ßGÑ³\Zà½)ñÙãÑ¿ï>!ˆe8{NÓoÍöÜDœİ;K/Ñ?/ö£,z4ï°ß§WqƒèÌÀÁ,ì\'ƒëß·t¹ó%bé7Nbs†é4‘=eŠ\"ÀúÿıfgJuº øæ¼c¢÷ÈÎ.kåw\"øÄõÍ2àcD<rxÊj™Âÿ„!jaÖ\0áîãK¥ N6£¹[½È,>ÀrÅô·Øá”O(©Y¼-rÄºe”3·–Ğ4Ù\Z!SÑ~&¨‰ßÂÅâÖXhŒØ×“Û\ZVJÀàU\"™âQ6HçSXiì†ÃïZ#L¹1üŞ•5Óœ¬¨2\r-8‘7f-¯ktN\"×½‡ıÈüKĞ²sa¹SœYÍªB2½CTU¹ [Õf‰gÚİÿ¸°c =Ï•]*½Êõ@!=3mÃß3Ñİäy_ú‚ÜÔa˜c©6€Ôù-ë\'£¡2n94äøuÁ³œ2¿%ß™Kb~Ç€*æÜˆğˆ¯È/Ålä…ù”ƒ°Øq·_3šT…\'l“:£rR]<}×’Êßï¿üíªÆe0à‚Ã!\rªÁ¢jĞZD\nÕ ûuî\rw¯bˆ¦ç•“]{2K&å$«-ğ ç	\'<£ÃÇ,úèuùp…“Î¥Òı:õö¨ ŒÂÑó³A|LDOÆ½UõL™âmSQçw÷Ëio<9†täÄå\rÍÎ‚P¡EKºå\n×ğ^ÊyQä\0ŠàdÈE*ÿ”\"GÿTe×óÉKğ\\Šâ\nË‚ıCÒ•/—‚ç6#C\nUdH•¿_ÁñîÅ+±ıFıZ‡RïÇ³¦Tgëœ*êßÖãiOoÉ\nOIú+ã.è£í¼5gRÓN(…—KŸ–¡ı§|mZ˜åÔÛávñ\0ª;‡Fu+yæURx\\»¤=¨Ö¦Úøs˜Ä‘®’’~&n0TX˜ö\nÓi¥C´È\0‹o<Üê4ƒ‡rbÈZ½?¡O\0ŒJMoN‘*pİ´.îµÆœ†ã}Êh?işQ¶Ã«/Yš•åæô/~\\LmDâav\"`\"¢\nî.;ì¯ä3tS%…®‡A¸{\"ó5œ83×Lİ³¨Za¿ÄÕ1¬¬Ë.# …ÖSº®U;•[HRõ©B:öÕó6úæë£0Ã¿†MH+ú],õ&›áWaH‹Co0Ôµ9~¨iáI×\r‚­œúLªd3C2¤?\0›³º{çÚ’Ÿ^ÆJt	—†ÉÈ!yRšl€6•Y“í.µ~µØ!&Òqv)>1¡j1Ğå‡‘H~Îù¡JönØ’ï-RÜLc»›Iu7OğKº~Vİ`\ro-Ma¦ŞÏ³îbyT÷9Õ|6ç†ã½+8Ï„çìÎ¤DnGºrH¯×v¦É§:Ö°ÄB‘¼\Zé]j¯i*\0ç­z\0GæS_SBŸ7àø\\òà{cCF¿‘kx}$ø‰ÚI?ıÌË0ü¢ñzB½§¼80•‘z²„S?ù¡…|Y\'¯Á ûMC>Jë`¥0é©-í&!Šy&¯§ò~‡ÄhfÎ¨Gıõİ©!Aö¼ûÌyÀ^(=f0j}v™i¿•Ò#Yzéì}ú×*‹\rtÂ-øÀ:‘ïuFS{Mµš™ä°O‘o~nã\'Ø”ìBÍ´nüá»ª8Û—YÈ@f\r$‡¦êt/¤ñ$>äÉ4u’”Ã>¹ü˜”#LñiÚğDdÃŒì É±¼0f!ÈÓ7ìP4uÁ}½¶tb£QVé\\=Ë‚÷şjşğì­©?œhçD \r[á„!–]†°ÑœÑs¥C	„!o«\rÕòõ´ºeX£Û	şö¾”~ñûl$Êª˜º\nØ¬±ÿP™ÿ«Z’Û3ù]A—éJI‹o [B\\JÑç[Wíe…İ?l®½\nçø•Ä{° nÃÉ¿\\³H³yÇ»dbc|Ú¶g£»˜Ì„—A§»>Ú§–H[pE•š™Ê›Ö¾iJ0·ĞÿoF\nÎhát\Z-¾’o[–\Z›Ü!=&6º…¯qª‡‹¸K	y‚üÇİ¢H\nWÎ/Ñzš‘¢m œHûC¥%Ó9—ŸßD%ù­½ì†I³7I>a6¿b–@.vnŠIUƒ…1ßQâlúÜn]ôŸ —à@şº²GÎ=› RTg >DüÁceŒğ¡á‰Ş\0ãô‡²¯´,!æˆÅËƒ# ‹¿½/\\Ò>Ïé-5{­‚^–|ZÜW°šGrLäu\Z!¡à{,üÒûêÎ§\\\0ø™õ7·—5Ú’¸=ìá[›¹y×5ŠíØÏeÕ${æ]Ç(ÿèTÖpª‰e-éôö¥35ÿå/÷Ú´\\A=ï;ü]RÆSv*Z·Œ+–‚z¸´Zˆãòè¸²$X9‰)ÀşrîI?§9ã„àœuQ†AŞõ@Ò¼ĞTø†#çÉßÊn‚\'M¿àÅtÊ—œo¾ÔÛrSíİp]¦L®$³ºéS›<;ƒáRš§ĞËUMÿÕ§‡/zæµNúRÖíÿT¤ıkiBç¿İ[L³·ïØ\0“zİÃv\"¯]wƒƒ°b¯£ «1µr.\\İèÇü\nëÜVÇ)`„¢K¶\\³Ô—pŞ_ôÑ¬92ql¼Õeúf°Á‡·:—ÖH7‘­)Õ‡oëhITÇï¦L¨üÀnÈßœ€®VeŸ\"¶*©Úù¦–°i=şÊf‚µƒÉ/‚À¾Ÿ	Ãb´L\"<u-\"åòi%‡%ÂóSW/Ôå\rn€yHİË!=C†1	I&:Kçà¼œëv7(xé€F\'3aş¥ä8cè¦T+ÃÕ!wø+(f+eÀ	öŒ\\iF=2/=cuíî.Áš×íL\'è-@7$Û7A^û_oËes¢Œ†¼’î*\r–;j—\'æ‰ş¯6àÙa%ä¥påRBo_??ùß3ÛÆ0–â®hSU[ğa·ìÀ\0üNùşûñøŞ_öcå—¼L˜¤”ÙFÍ}kò@Ò+„¸Ö1Ø\ZRÕË²+~r#8M»ot_¾K›¬+rèÃ«‚½İá\Z3@Û3<F\0+Ş\'›ë•èT»àŒŠE¯±ÒÇP¾Z\'©hÁ¥Ä\\Ä¦Õç9IoŞÏã&ãK¼d`kxŒ]ÅÊé¯KTûöb-Sò¢€³ö·Q­Ìí[‚±Aè˜;TĞÓ¿;áS©Äí§	¬¶Ù]hw½0Í>Gä0¸p_şå!Ğjj,,O63)vòèĞØ­!Û	²Jf$-\\¤„?}×vçÓ$ÿìBÉò3µŒ+ıhĞF‡ÿU$¬luä%™Õ^,ëg³éZ\"Ïì¨zyğó„2ˆ‡\ZoÒ\"`;iG]SĞ±–kŠMQ…ïP¬—7ZW:R´2§ùÚD¸†Öœ¯¿Ã7;cr ÄŞg<CÖùWşm`à#\n›ß)Z:ôÛOe‘¯Ùr‚©PÛì\nÑgòğéw· îF5ççMFÙ\"ÍplRYğ,I‡økü“]»PÓÊ™AşÜrùçÁÚŠJP%h¯Ï\"EÛR¦2ÍgU Ñbx½‰¬G!Z/MüÉK§­ô±UŠçß-]Mv¤úíÿşµÌ‚Ó½4\\ QùM\rÒÁzÖ×Gšİ„¦[lºèwçş$ñV¨×­\\rÄ\'X€J¤eIKï20÷ÁU\'øf\rıá$	3_2m©†!›úÌôõ‚$Mö°¥-¿4&aFßRƒıJJ~Ú©VÖ¤áB¬Àé»‚”è\\¡\'àéeíŸN8©–Ï‹8šòó@Ïe\0pÆ÷˜M SÇh©Äòwœ)Ì·¡:öÃÎ²,µÒ²«~µûì‚·b:d¶£íÑÛ°ôH9H›^xÇ‹}ş=bŸÅâØ@”Ş‡]	‡ï1¡ŞH‘o˜äš°7ÿõ›§ê]rà‡áÜ&o)¨§U$X+ßş™ÿ7aºc³6AvYhÑ´ğ†¿õ¿Å?ZìÖ—EI¦Èr©Œ’úŞ@B¿c ¾4•^wÆéeª¿%2ôöIÛÛ!X£«9kkµq¥7-jºû_¯Œ4jVD=™KI.Nq/ñÿ‚\\Ò#¸€?‘\'±Dbİ¼X¿äÒ‡Ÿ.kšyí}²\nÏíS–¼MZ‚~Z’–rÃ°øiàüeÈ?]4T°Ä÷3=˜Q^ƒşZ/ÚÁ¿ÓÕWä\nLm‘”;ÏÇÙœ4‹o~?8½Ì!•x¶>é l\0®—ØûKEóº&Ğ»ƒü\Z}Œ¹ã )Øş> R-‡HLÿ²ÂCv»Ëí{o§;owÉ¯p¯F¤¿‡>\0w$„Æ ¯ö=ü.àKB„[“D‰j´F/\\¬Ê¢Á®eãÆ2ƒ†Ë«B?œñL0²/@ªÇäŒÈº†ÙzSvíÄœ;çÿ•´¿¦Ø½«3¼j7öÕã§M»œæÓ6<ä[74Ü,V2s1!½äÇ€ü=ÓßeàÃ‘¼’;u?iÓ&\nmíSz;V¿3ú+¾û,ä¿GdZ‰ŞOúœ¾\'”·ÅÈ3!„©7¨Æ\"uı€»6.Ş£5 “K”‘G6ÚAÎKjrævõ@)™$BnuFjİc’”áı<Ëÿä¬¹Lı( §ÜşÕ\r8\\Ñ#Cp5_:vÏÀ§Ÿ­!gIÀ@qş@áÅĞHğëİ˜2gïÑVâ£ıLG(qWû}½_è=G>»læXe*vU¸$$\'Ÿëß:oaJ€úkHFÅ­T„|Í¿´¬È:¦›¨7ZVìUnxz¯»LWšÍBhôÏÃSLÎæ7U—/®âÏE!ÌÆ#ÀGÂ[ —½tş=V­“A~,ø\"5åÀÎCÌÇò¿Q\\˜¾õ¨ê“œ—JVêšËJ‡:®Á€­@[³‹|`-6îô¼®çqàÃr¿Ë•óÇ‡O”9‰Ö\\¿\ZFµàñoá«áR[2a›¹ªK,to‚\'ÿÁÄz9‡çÈÖw˜%ÊdĞ§.n·}:¶¾ß¿¦Änb”ÔcXVŞÓ¿¿hñÖÓì.<ğ£«çõÕyb,+§û3Ä(¹®@$¿öZé¶î]É¥,Òøª…Ä ğC	ÿÜ¬×&{69½kPòè¼!b¦ğŒ¬À°\raÄÆ©€ÌT¿XKØø€+BàD½T7¥†´F—É¸à¡iÂL“/–t8/§â˜ã©\"ähÔ‘­µÒTH%VèX;:vêFŠPÍ~sõ09‘ŒcC¿GU\rLÄ•ñırrüôaùÃ¸\Z{¦Œ\'äÿ>Sk¦¼¦ØîLu*ÔTlá¶Øİh/B9:ñ›£Şù-á£a©ŸÀç…WsP¼iKÌ\0/ãìäĞüKõv¯÷¶2^T8,><¡ÕÏí¸6gÜ?Kğn4ŸôÂAßÌ˜¶«5Ôµy­¬:¬§¸B„oìtGİÚOÃÒg”-öï›³ÍV„béè:ÁW³Cîîµ¤êO»ñ%\rÖ	ÿ\0¿e¡}‚=-×grû}ÉÇÁ²Ä¼Æ HIvB©ÿÂrÀ-, 3a\\İMí|¥4ttê;ÒêümÙSêúl²Ú¬¢ƒ??2<èi½{Â:(´7ëm›ÁW¸­‰!ĞÉ¡7gx²ºµ>eLaB›šók–qß™oŞÊ.\"§Ãl!é­ï4Äk8š¡aÒéµs,µ¹ñŒíÉR)0­¬!‡</#~e4ÿ\rQÑ8øÌ„yZfg@‡Wh‰ı}Ó‹±„@Ó¦Oèû½s?ÁÄ‘èÑãOZñJP°j-šGËæÿªÂmi»v*Pİäİf\nzŸÆ´yêëÃQËÇO©’ÊbCaè\'±çº,Ã{<&±ë\rÅ·l³“éáÄ÷n§¤\\êˆÒFÈÎ˜#oûäR3Nås:“ÈLÄ[|­–—(UT±l	Ş7Wbn.”«T¶ùëx#¶Pª™¯ñİ•\nt«…´%DZ™[²•ŠTÈL±>%V¡éæiÎ‰23V˜\"‘ªª_.ˆ-ñuĞÂHqÏI.ñª´îmºÃ¸U,ô›˜’y˜$ŞåÒ>@•©$ä]Íşmô[v”lX/©œ\0€İ+ÔÆdLŒD/Ü._NvÁğÖóU_˜•æ4—·Ìİ³˜·7”Â{J%¸¹ŸÔéº1Ø:=Ù3ÜşªR\r0Å†Ír³¿äÃÂ>?Ğ®m	æ“ø(xºLÚPèšå!İİ¥·Ú56ÛCET&î·Ê¡£)3¸\n‚µtò«¬p^ß?¯Ìb_(*Î€zÁ¼Š²†z®`4©r¡µ·Öà&ø@{§š=°6:„÷ÿf/R–¬<FU7³R­c5WÅƒ\r‚|w”¡2H…¥¼%‚^‰Ú÷Ÿ›û±öº\0k›4f/,\0^„–Û}¯}‚½™-ë´*Ztl­ÇÀÂÿñf_Ïwõr+dI³\'¨>~²6±{ä<	î¨÷!wiDş~Ês¹¹p\0Êe­°GoP“y£jÍÊ@€F\0ÓÁN\nõG\\îG3IÌÄğ”&:=ÊÍB[ù£]ÚŞAcoÔJÌ:g,P\\šÍæÃ¬zJ„õ¸¤R…hEÈ×ã¯Jxİvù¥­\n§Èäu\\‹,“™lÀãÔ­`À\0peşÙsÇÉ§8Î#Ô¢zDÌ†Ÿæ™A¥mßå’9ĞFa–Ä{×½YKgø3“mµ_ÑôgV3Ô»™Ö©¢U¶ ½™ŒW†A,‘.ŠZ×‚Øá^l[góİëåmGÖì”q¨¾êÿ·{–F†õlÙÌˆYÓ¥¯Œhp²ËoÒ§¡¥I¬)¬ËÀWŞe¿–ë5±¸ê>³>¦ÚÔ 26ç–FtW@/)ƒA9P­±ıö*L’9]ÑsA¨aó‚•\\Ì•¬ô8A|QİczÆZq¡ ™Ú`›Q:`0–­údGé± x©\'ÿ‹€DndØï1Û,ü7°yõÃ^ŠÛ;º“¦NÀçÀŠs5ÿÔ¶~¬€ó½ÚqR\0º(\"sˆ÷\n®K%B›?\0lÀø€Œ7ª;¡0­ÕP0kúE*!©ä0d»šÀ%Wß¶sFÚDÌœ#z		yHr%\rù­Hn£0¢P\'Şƒ¼h³ô·öY‰tÏãÇQ\\È‡î³\'æ¯Äs4a{JÊh	ôXˆÒü$÷¬±ãAÍƒ\'X€¿{/&»&J‚ıİóeŞR$¯ŸÈÖ†«/j§9Ó¦	lWOW<¥Å>ØÆË2q`V½bòß«Æ–BÆÄğ\"èaL	ü%R?\0ÿ ş™1mñ¼4ÌİI²Ã*øNÎhi>>g ®s¢fÔè€=§1¬ —Œ\0Å	ï®µÉN\r\'ªÎ<]•„l—	Ö{ÔÂg‹¤NÇô~9fÉnHâ¸Ú[ñ7¦&_kÿåüœ5\nªğåÜÀŠØ?8éàÄ±JÓ¨ü\r“¬Ó,Êƒ¿?s/ËòÖ–$, \"××3¾3^7¶€¨İ¼E«\nG†0Ívu±û6!*iÊà|°ui¾ËáA/î®âˆˆü¦¨)%fß÷­8ùzOíö±¨O=A.;†ÓÌ²lûÜ¸ûKh­2æÛ­=ªé‡:\n²=!¼é€”7O xª~»NêÏ¾	eQŞ‡àÊË-	IX@>«ZËQA©,cÍvÖ¿.Ñéwë±2Ä˜6²¹÷ÁxTD§]R¬íÔÆói‚€(Zqß11…Æ4Ú–µíyz=³ßX¯Ø÷GÍ•K:™¸…•ÎÂáŒr42à ÌÇ‰zÙ–ì…Ae”qJ	çñòòd	¸™Eç¸b\rÂpI‚µEGõË–Ïz¼°@4„¹RµÇsÎùcÏˆ`¢|.äıÒu!%odR“u¬iÙ:jiÓdÖ®‡!àmÉ³ğÆİÆ²ãòõwøøD~Bò&«ğèCw/|!+|ÊLáÓ/¡Gy6]sa4ö×g±¦°rrZ«á=ï\n¡cdëxøîœŞÊYU`ÚÉC:§©ùs±¾l	uXÓ½6ÀQ	«ä\"Ä×œûÄ€¤#øG‰`t·«MQ¢ï°Êö=-$0İÎ•(½ŠT2èÓÇâs®C×Bè†¢Üz&äÌ?ä^¢qyÀƒş¯kƒ]¥Ã¾úc¶ûH+!é\0$0œô­¾³+ÊrõúNRİçÈœm=Õv5©İõmç4“ïg®Yò\Zñ>\0ö¬ú¬½ÍUi{w\\=×§‡ßd¬zÇÀÀ¡‘Z×ŒÏÁd¦ŞŠS.#dğîô‹J{3ì’±T¿8«=\0¶!ÛÓI:éñ+ÏqDZ·ZËŒCî*å™âE*Ö£#L\\mª óÊØsÅPš\'\"ª}|wåoBÏ&>r®°È}‘ş)1pÌˆY²Ï#wÁÇbÕe“ÓÔ#¿ÎÇosÒü;S‰ÙlI³+£¦JÀôÉú)çÃP,Ò~ºRc/9İĞG\0.eÿáD}adaÚÖÇ\'dÂ$şŸzûLá½Û/‰ı™PÆU“€d”ƒ7uvwnÆ;R3·oI}ƒóæé íÑQ^Kw\n5}ˆ+æFÀ…ºëy»«¨Ø–D¯ğæ¢TpšÙ3)Ãq\rVå²çc!Ôª—óïÃœ<i¸€;Gö…“\'6õ¡6xÙ\ZT0ÏJ»ÈìIà(îâœŠ©ğ¿”6Ä§`U®c6`x¨Ü`Ÿ ^şK‚&ZEIË šÙPÕfH‡:SÕ]øe±|*1„‹X!ÇŠÑve¤¡*ßœËÁïÓ!£=5îIDX¾ÆÒåGÿ nû0jb¼şR¢Ö³‹:›Å¬HB3Är†î%¹Ö*1“j€hœe\0³,ïÒ¦ªIb¬å_g°9BˆtJa¹Ì~\\\Z`ìˆSº’}ĞyÚ\'Şî Ò}fcº6M1w)²;j„:fmæè±5­ŒÎ“J½JË‹Ñ^¿ğÕ9ªá>Ó©{o	Fi)éfX«©\rµÔö¹Â6e8ÓøàÌ_éöê\"°z´/jIŸ® |æøÏ¨ŞvdİU,†Ac×ã„í÷44Éğ…HuŒÈˆ•ãşµâ·q$˜Û3àÂğú—åçUS7ï	TÇEÎ>¼gzN0Ñ•“}˜\"‚`ÄœËmQîdH>;ÊßòrÉü8.ªvã^íùö_O>ƒĞæºXŒšP¯RB™±çˆ	ÁnU†N]Še{xxÑÜOúĞ2Cü¯‰¡m™ì®×†À5.øÀ=ŞÛsŒúü“®wˆcS_4’‰;òä§í¨Şä?—–Ñ ´Ú4¿E+ÎINÂnI&Ìò\ZdÚ«Gåwâèå“xÛİ™Éİò\r½êúrgOTkë\r?å~6PÊjË°÷^dèİuaíZ¤?°VS«Y¼±–Bçu_¯6È-Ğ-+!#dTºÀo°=ñô¢[±Íò†¬r¡=èGªÂHÍÁT7ßí%Ewç¿—v‰œÍâ0<a‚Ï$ˆS¯×¶öÈû«ª«Ô¶ÿaÈ|¤Ád9õò\Z¼äÓªIJ2zÆ’l¬v¾£#„Æ	Œ8ŞŞ\ZiHÉ;A\07\'|v6øÈ˜(æ9Âæm^‘Ç/7üÌëáº~rŒ€‰ìçÎz]ñ‰ŸX“ü|Ö«gp6(H§Ld˜}ä€¨pˆ\n5”9\'u7Ñ½Õ|ŸízûJEöòØºXY“SÛEòÚZ$™Å½>²\r\\W‹Ôa„ò&á(__<VïÅ5€‹’FIhnP’\Zãıæ¦\nvÇ’Ğ¯Àü½Õ~£œr¥“:eûéà5GŞe”Lô´3Â¸£X¼N?‰ÙÀk¦ÊV¼fÂŒj5Û\\Œ<ï\"ÛÌ_òIµÔ\"²UpC¬7åŒèúòöR0WÖ*Iyúš7®•ŞäÛmË QeÌ$KO ·2Šœâ–([~¼Ü,‘¿¥^1Qí`Bš¢~ĞŒ-7óÌz­˜İ%fd§ª>¦ó³ÙqŒ÷Wæm—Têe[üPv6~‹+M^®„äbG‡¹É¿¡F(¢…öœĞ£ê¯S9E-×/9ìì°q¤TØrI½V§‰ı\0Å¬x˜¿a¹!õîãH‚åÅP€H\rLò^œ!\nyÒ¤¼“*6&yWi[¿\0´Ş¼elò1Ûw«£k”Éï[©ãhmÔYB0@gDßŸä¬í&•¾­Ü7ÑÕ´¢Y”ùİ)½¡]#¥‚¬ëcÛpEÿY¹›°¡—ÍœE¢Íß¼‡FÍSE°}î»?aööiÛßæø¿ƒç­®ç}vĞ]I$9f`ÄÔ\"¢Q\ZB_äóPÛÜê\\Íü™Õ®üZF=`\n»–«ÿ­§qÜÜAåÒz*`YOºòWı€¨tè‘UƒÂ7SH1‘Œ¯ÔÌ¯u¤@mû’Òì8˜¡úéZX\0”`éº‡ŞGÖÍN·–ºŠâ•†)C¡ÿáôd¦B`‹^`nö24%hMÉ‰*Y^æq¸2tæ¹Ï¤)/§¥%ÖÌñÃAÌ‹‹Lw2\"¶dIZû~òŒÙ´n Ï¿ÎíÖziâyĞ<³ÕÚĞj°¾ÕãÁ\"+:ò“}$4©Á¸•\rn‰\0\0‰°qÔ«?Š¶&m¸¡%¡š>Š\n£ÑñûˆĞñç6™¹ˆ\nûrb¼Ôñ‘©1$ø™.ü‹ _ÊÜR­’D\0MoGíâxY\'ÿ|Ã³o¡¨Ø]d;Œc†²®w˜ol@9Ø;EAÈÉL®!Pf$_œš’ÿPÏÄÛ&˜VF=„~´`‡†={ùü€:ñi+ŸçÕG8çdÎ“[Õp>e\nK^a9eŸ\ZHé)â8@a÷<dÈ¶‘çÔqöeµ r]\\ëZ_s,üR	Èt¢c•\"_ô\ZŞÀ1ŠÇ“°~WPœè9’I†‹ŸÅ½å ì%w`;B/¸¬cV@o~OÇù—#êNzÙ­&ãB¢I¢èGZ‚x¡öòoãC(°İÛÑ®Æà£Ê¸I7)]Ú\ZTİÿ´V Y-ö\0©1ÚÅ¼‡ƒ‰=o(€öÕoÀ¯…ØÃ\'ÁYLÂ\ró©S†cq±ÒìşŸ–eSŒe9tòó§k®iYZ‹š~¿Âl*ü7±Õøş‘fİo`ŠKjãÅ¿nPÛ›ŒO,ßWìê¯×ÀËcñÀğpní	U¨‘\0àºCz”§¾’zo>Ä›;ø™™ƒuØï3â¦¨lW¢Ì½«İPÊ¡`ÑXTîéîj›bíöèïy~tÉZ\"j+L³í\\\"3çÇ¦²©hüVuf¸ÉºÉ@9Y|JF¼¶EL‚I½ÒèÑ8Ñ$d#óMä™oäh(ñó…9âµ€–â…/\ZØÚ0‘ÈŞe¤è&[_õÑw¬%¦#9éÔ»›zÿ]R\\ş”•éÇÉ4¾™½8x!—FÑÇa”…Ã?¯E;f¶oéò÷ÚL…ÜH_lQ­í»\\5Uµ˜;½iÄE¢ãk¨ºÙ§\'!(W1ÅBg_®g\\˜lìÛ¸a„Îé{Î;n2§¬OÉÌíå4öP¼l¸¾VâÖÁÛ¥ÌÔ/È‡»ÑÌ……·Ll ºu°¢œ;7kã¥ı‰n`)‘5œ5~L“êiúnı-ùú,ofjUŠ4ÁG©#×s3‰X†˜»_ÒT|W™ˆˆğV‡ï¦V«OÚáçÏ¬µõ¯ÆhÍ­­\"¬…ú.ÙNŸ3Gøë\\¯˜Ìk^ş¥‰—\"ıo*‘’±øğ´=¨‹^Öå!qğœln\'‡Y€Úv÷ªZ\'ÃeÜM½”]Èï\Z¼Rçvêkˆ…‡›¥Éòğ˜³ğd,ĞVfÈş|éĞÌ¶cÃ+Š­o7å<;cèPâÅºR~#!óØ_~ğxñRÓ¨b-æD´s;„1D,~½»¥ÅóEìş­¹ä²{÷U14ë¬•…ÌfÒÃwaO?ÓŒƒ\'ŞU’«_rı	yNü‡U&]9°Z¬Ä|·d(MS“¬ÈtéO¯U¾n×ƒ÷Z33z§š½‡Œ^—É²ıŞú,\"ôwÃ·¿„‹(¾ˆôS—ÔÓÿ¯Cx·†\ZÇÀßí}DïN#Ş39¨‘/òolq–¹nÌ™B½Å.ø{T:Ek÷~QO#~¾Øz)ßæ¢®®*°ÏÌ¬‰*‘ã2}ÁyôÈö.º^ÙS¸¯-Ú·#£FÈuëÆK{ÚVL_Ô.eÑïe‡pb½Ä¸sùÅä’ôĞwM;‡ÄĞûGëóNš¶ÅYïÏ=Šc†QÂ®\reÚ”wĞG7$ÓÜ4PGpB¡Çœ|),şPHI+Bºù”u\nS€Uœİ}Ù©<\'¨İ	:¾qIáˆD€Ğo…[Ì}…ÑrÌ†€İ$)Ùùj:mÉäî4mãÈº¯/¥éo“¬p`ÖŠhvYƒ+A¶¢‡8ùxyÔ3ã—<4I\'êd³Ú(:¥½ét1Qcö´xÆ)çP­û–$sxQqç|\"¾À,§ğ§™C1ÁÉ%Ã¿ƒ\"Kßg7sÈÎ†Jg‹š:w+Ô€¤˜;	tıú²ıÄb/¡ú\"V{.7Ùx¬‘›GÖƒ Øì¨ÉÅ[Ê¢RŸİgÔ7¸}Í¼ˆ„§à ‚ùH+¿;ÖÈàË*´óòPRRìÓj–ÉLHß=¹=Áç˜›¬Ü¨œøä<\ZeDĞ@wğ=å6`Ö ÓîW‘CÜÇŠø„`_ğX C_Œ’(¦\rÇaãs	m¬&0omø&\'UÈ.8Ú7úoQ÷U ©2§ÔÇÈµÄc¿EÛPŠ#+öæ÷\Z|ß8Œ¡¬®€¨0Û¿)§\'ûñGŸ7tm­ì=äçTù¼`}z› ĞªYæ~0{eå¾ç€G´¯6À¨Û[b¤mÍŸî–-¬¥éÒÖç`˜\\ Uzü„š9â-8¤™±¶yÂ/n»ö5»å‰(dæ(àg,ÀSHû®?ÖöÒ¥D:É¤Ó·”ÁùtY ÈĞÔ’kÄÅóC±âê,)şi>Á4Äğ… F‰	ïqe‚|0¤SjT\0ã½`1]´ÂÛÜÇ;Ò§hÍÈÙòH-t¤Ôî#[y¾qípP¡¯mY‹‡äÉôp`æ…&åè˜EŠ¤5ŸfÙÒY qLÃ¿â*³&SET${¢ÉÅ!£i5 Z£şk\nVÓNîw…ç ¸*´š×:û¤ŒásšëÖ(W9Ù8®0ç®a^hÄ›î a—Ö‚j¯¹è/‘UµŒÙÓnÀöBªå¹Rlu¥q†Â€ù‹bY–¥‹7sb€îì¸¢ø´jjSöøÙ‘.è\\û g>ÄÈ=I! ²$öW;ÖÈ@¤]|·›â€„á…LACFxd.¤•Œ43Ÿ™Jó•MØq‹¼Òá##‹¹Ë¦ÔbÏù¹a?Ck}oŸXÊU¾1+aTÜh ‡ùÙ€D¿İ*\n‚ùÓL‹¤Ş·™Örp§GÉ-Ìÿÿu‡Ú¦¡,Ñ,ÚÊmŞŸpàÌ7//ç.Rµ±AŸÑËi\rÉõÚı¤9…™ÿÙÈz]şŒÿÅÿt¤ˆõ~·NÊ|Öìîü<a7Š.ù¬lü<°ÑuõcŠÍgú\"q2Ï\\~ìæŸ‡ún†ÃƒÁa\r‹C¥İ§v‰l#ÏH§YÁèN¢ëMIGØt1µW¹¬jz$$ˆ™kïßåV$GıYã}àsÕ@é‰53SÅl|Ï«’pUˆíUØø3ı)jŸrÙm+¢§S,bòG_hˆFGºkŸÉ1Æçÿ…è!³ÌóàóÅr»9·>çƒ€!Mµq¥éòg\Zsc¥RXz­Ø`lË!PûÊ½@F­ØjÈëòØŒ=#Õó;ÀOü«Aåb1Á„²Ü²[ˆº’Bdíx£Üï-,ÛÂ(RdüÔóë×ĞÌòùU†?½·éŠğ•m«ï3®á&sœ¶Õ’¬ü\\;m5÷mëŠäšoğx“€ƒ›µ¨zÎÅª\'š;ÃàLŞN¼@ÎÄ\'!İA¢9-Ë!ÈÃ¤aÀ²? ?å™1›QY¼Û¢€.,ŒÁC¤}¯·ŠuäT¯®C°ØQÀòZc9æ<i!öıŸi©`ä!Ì\\´Òÿ5âá„õïŒ¥0³°‹µïyPL6€Öà?¿Ë¼za‰O÷›K¼t‰ìslç˜ªËÄ·­‡6·#X.¶[Z£	VXnœÏ*Cxåé\0¶3ŞñŒ\'Œ†.šZã±7ä¶_\' ˆZEiR9ÌÖU»õFœOık«®˜QÏúßÂ\"~	x%6şƒq$8œx[7tÀQ©wª}%uzo6	ı¨h^M‚6q¯B\"ZÖ^¬u©LRómßò‹âIªM8	öCStô*jâ²,®p]­º_ ¨pSÅèŒpí\'™ÓÈ]¹`È–ù€l‹_;…©Šƒ-ÆdF¢¼P¶^æûc—Xfi¶Ã7H{áÛöNÍûî\nì:ñ+„Ï²Ã+B`É{®éÃ¼Æ÷Ísş­5x&äêvPô†mÅÌ}$›°=C=H5ú£m3‘‚e}­*ÁCiY-éº›(ğ…´%mâ$ıwˆ:x‚|0ùÓ¨ı!Ê\0Ö­å—æBGšpy_AQ¾NÌ\rüÏ®aİ·ñÒl5¨8,QO¢pŞE	r¾‰œ¿9{–§K×NMæÜjƒ\0ŸcµÙIôùQOvşª[$èÿI,}{<wL•,V\\ä+	\\Ooã\r\\!x$‡ç&·¾\'bœ*×ô ñÂıp9Àçp^Ô9·˜¸±ù\Z­U\0fÔ–0\ZeÜòœT­=h·Ùò ©¤%V*‚	Ê†üò(	—…5uaÌ,\0ŒLd–”\0ê•Ü’\'€×]×q·(ÃP\'´R%Õ¼ø¬Úéá Uo·A`…ş2ìG£2^Ç¶‹³èrÅáÅUeOãKTÚ‡.¶ş÷ìä3MğÜÁ&0Ñ‹ïš?9ŸŠ\0¹ÓoÆŸ#×ŸÊH/¸@hÊ“F‘¤ÀÆ`‰Ü]vŒ¹ü\rP¶¦Æ÷²ÉÉÙW“ğ†Zßæw´ú÷WóÜßx€î5_÷£ÛC‘e=¦IFşm3†JÙÏ%!&d+ßH½…5\"#èë2ûˆ=\"R_–fãnGÁ,šI|ì°(’à©‡İ+s1Ãğ¼˜Í?™5a±U”ó\'bU\"œ(C(#ÊjÉĞ- ƒåKiê£NYòµI0ÚJRÊìÖ}H¿-™9®©ò.mR×(ÜæaCôö\" \ZCÓ†û˜ûÚBôÉÔ¸—Ë­ÙSNãA@CÍ­\"å†sMŠ¼ÚIÜ\0&ìí.É½‹‚³¡g14ûfK•’çF\ZÍEB©\'¾^L…ú“Š)\rT®ãP«½W±È’¯sYny¹ªš#ç¯X¤Â›ŠïÊVÄ±*+àÑÿ/JR¡cß7S:l‹W:µkWÈöÇçP8ê7/âÉëÂŠzYÏ{_’	B?MØf`r‘/Ä;ó9ÒˆÈ’wÀw×6#Ÿê=Åƒ+HÛı“ˆŒjØ¡@­>•dlIš8;·F.KÁçÑŸÍGˆ{ ïmğ²\nBïñÑéÿA›²ÅJ½»¶Äğ»Ámá¹¤¾É\"hƒú\n!ÔÜ&’Û›3I‚µ€ÜÚ©!uŞ“\"UïU\r“%á¶òƒ[WIiŒhı3U“hrøˆƒ„NÇ†S*QG--b†î¿‚8U›gGWƒ;u5zJöKÂ1„•İuVÃ£åá6?Id~X–™‡³ysŠæ‡ä%LºNÿ\\s§TV7Ú\'xh9Ÿ¡û—Îï1Ûˆ¦øÜşi\"LŞa@ä5HĞóñÓ¸ÄáO©”d-²?‹õŠ‰°3\rÌFHe‡=‡ÎSƒÖF>Aà1;´5™—äTÇóÒÂÖšÒu¹âh¤;İOÎlO¹ô¶úê‚¿!økÄ;½÷%(¶İWš50t4#ÒZß£O?]p4À,	çˆy(Pÿ¾?(VŸ¥*£Y5Î¿n§Yß\Z”iÌCéfhi½ÅØ\':Ô†òÇ\n*„„ßp‚É\0#¥`g\nl[*ufÅÔIkJª`hOªsÓÿÀàƒ»zúF•s|ÂŞ¶D7wÖ½ÁÁ44µ¬;§	èyZU`)-}«7O|¨H%êÙ0U,¥©Xõä!0TÆ9ôIäÎ7ƒú…ºL±6ÑÕx\'Ñ¸€Êe©­µò2¼~:ø/Á »õ+i²™œNÿ NšL¦%ƒÜÍx±uŞ{Å%@Ü›ì|¤³“×Pi„Ğ2v#¥ÈfĞ`\ZaÄÈvÇmÆº‹ên(ú*»§«9úäş$ÊGøv¿>@gå¹JÎM¿Õ…t-ÿ5º.”ëÜYf	;eÁ¢²\\l¿İ²w_\Zs—O›ØÃ[·\'ì\0—\\cù¢@H-«x%:û–(ªÙ“Ç±ÛÏıAå¿ TQòó¨bèÃ\0i;¨IJ8\nÕv=©ÇshÁ_ëÓ·Õto¿ŸĞ}W>×?Ã`Ò‚ûÙeâ€BûeåZ/Ù\\(’´d»-5¬,x/ÃXè„ÇÁ\'æCè•JÄ*Ğ‰	kàİG[=àãeš$Lé\næìåvLª\0l}5ÃÀçÖº†GSôë¼j1|;2÷§™»ÈØR¶DÜ]?–7êñ[\rjj)\r`Ba\\^Ôœ#$KE¤†.QBùÕ`hf{‡\\îıEÉÂééşzzê´¸gHæ‹=ğìGç²õ@ÿîpŠ±¥=Ìnö½·:É^„ÛQ,²Š†¿ÿ‰EP˜p]N­ª¹£Øí*fÜédúôB…°C¨\nÊ(/ø+ø·~«/ÕıŠ¿Ì=ìà.ÊÃ1w]û*bu¶Œ…çÖøº¶\rÇö¿p!ĞnÔ7M™Œ3Ig1¢„*¦cİTb,r,”K!•¡=¯ò@úFâ¥ŞX¿\"*§\Z\0	ÊÃŞ§0J«ÌÑÃlªU;	w¬ËŞÄ Õ²§È\\Â›ù«RÎ‹±BòúÒ×››Æÿ.¨`SKœvÏ\\âf“G½IjÁ¸hù—§vHƒÄŒ’xÃà.sDz`Ü»gèËÕE¬gÀU®¦;ı‰dÍ‰¿ürö\'îŠ¿GÏ·ÆØmi¬á—)¯\'S†NÁí°ºwËdiP¦º[kCó!Ÿ7FõH0\0µûšé¢…V¸&‚MÇÚ±öâB³¿bÓ\'ÒVxÿDÌaAÌäv›S\'òä\'ü¦F¸ƒc.7É?9“‘¬cÄ•h`[Í¡˜^ÿøJâ@8Ös¼ÒÖ—˜ÄLÒ5Zõ¬=­c^»èÖ|á›Í\r—‡R,\"…ø)Ÿ$“ıÃií­\'æÖ|=jæü¹‰¿ÁÂ™Ş}‰Ïl5’\0t |O–ğ»â“™\Z¶›cçÓîöJCñ Ï$¾˜8ÂTlÄâl‚#6“Y‘w-(Ã´Ÿ¨Ô·½ê~ ú¸e›î¯İ¾G #Ÿ‚èX×TÔëí*/^d ~¹¿» €C·eÖJ¶ `íŠ<Sü|â£ÁøÏÕµc~?Çƒw;@c¥	áRâÉI; ØyröXÚäAõ|óÓÇÿ·qL;²§1Í¿®%ÿ<B62ÆÃ£ŒgâjLjÑGk.T×‚bÁŸˆ$*‰ïÑe~©\nÀÕÂXà\'â×ø£øáùÜîgÊ$_®†‚yÜ.0•³*=Oj<´¸PiÌçAİYL²Ìñ>ãºÄù¦İË\rcï±ï¹!«üŞŸ>ö)ïœ#°¸ßwãmÀ©™f’‰”ê+¢ògİWÍÑšš‘±­üÕ¶VVæ­=}š“Yxë\"ù5¦î·Â>u«XšĞÃšÜ¡Š3ušDÏ+E4!»{×OÚ\"0keŸæú´ëÇc\rE40½ıvÏ‘ªWÓ~©ş)3$Mîg‹|LP*·Ü&dœÔ$É–¤·@\\±u–±FãGûú²îò…®ñ5È]céá¹TìôÔú¨ËKÏ2\n8HÂİ¼!ß»Rµ;2‹QvğãåFº¼äÍËúSŸQnK²Á51\0f¨uA‡ÿ°÷„9†ÄŠ­¹;uzŒŸ‰¯\Zj.(eÓ«Ñƒ`dpÚ	SSV0ùwš©ò\'˜P}¥şêÀÈ“Æ–Pñ”!b†³Çã&öwªÌÅùÛÛ`e}Q.ÿŠ›´Ûä]ı:ub*oJbZrÇ/èáüYêó„·aïø¦ÏOĞlˆï¶£(ÜìÚ®.JâZx7<Î¸i\'fæõ|A[LhñÊFRÃ€\ZI”9ê™m-6¥5Y‘¸>ÿ^EYÇInóOÂõÂ‘ ¢m¢m¶œb„uMŸ˜…I™j¢äe4Ú”Jôaş¯d-(gerèa!Á“¥¸KAŸ¹íœaÏ‰ğ/h¿2X\r§0[5b£›ºGı‚ZWO‹âş´ì#‹Ë—§‡}M8rwÆ²Ñzº§Jf·ÍË©”õø+‘Ã›ºŞ”Ÿ·M~!O\0éf\0Ìı1;ç—ª$j;R\0Öyà\'3çós¡HÁB©õjğTé?ö­îØÊÊ>Ò?4ÌµÂÕÕ™ÚÑx“É\0l=±’[W;²#?jMS|ì â¾\0^œ‘®/=ÄÁ¥Eg“ÚlO)Zÿ\"ƒˆ»³v™ rŠR÷Ê•\\RÜˆàçCCÀKU¤ªYØ$\Zá“#G²˜ôôìš	¼³+HW Weı%_ë¶”®Yü©ÊBdÀö„§wzÇoíJ9Òúp”6K×Ç0‰»	ğàÿjü^<-÷—@4Ä@ç]zŒõ<Qt«îÊ¿f÷l¢ª”•œ/,›c´÷!ál‘q:õj¦¥ÂÌ6Dç–y£¤\r$SQøäl~×/(¯«aàú™(È…,$Iãxé?W˜:Í¡£³ ½VvRä;Š™Àc¯`ªç\0íIJ%„¹ƒW³F†æçZü§€İ“ƒe0ò8ËŒc,{]§2R›Ö¶³b1k‰mÎ´aè‚®æG(âªBâ×9ÖyD}•Ä|K5\nU Im˜£ıÆöFöÖßMrˆkü3Ú¨ücİíÔP¹SEï‡EòÏX“-ógŠÎNÕ’Œ[©£ÃT½ö÷½P°od}a¡ç?4|”œÌLš±äxIÍ¿ûñ¸4FÌÕz^“¿Á¾™ã&Üyİ¦O!¬ÖŞÄ„¦i)´q‘´/_‡Ş|¶Š±s„’1ñbú™\rşDEäÚAdiÁ)é»nŸ‘âzjva´Ã!™*ëæö‚nWÓ\Z„>ÚqQ;Û®Û}î)oBƒÊ%C÷?‡U… §xÖ>\'ß9ì2M¸LÊSJ¸Â!Óé\0ÔÔ™E\"Šİ–!eëvKfœ‡»^Šò!wk¾í\"¢gCK$oSáùËÅ	¬´gº•‘:{Ì1{\ZÙÆÈ‘0y\ZÉıC+\\ù\0Ö¦©Ã>ÖœØ*¤ŞòÊ’_F$ò¡áİÕ’¯Ü…ìôâÑ3iQK¢$Ìü‰Ü~¼P(×‰¬³SXÅ¤iı­¨ÔÄëÒÈ¸&*4…µšd»ƒ÷AÑ3İß|>PÀõëÓgÕ@#­„0r¹ò•Z_®€“¸kùÈ†Ïş±3,Ï¥©•!DËÄÈŒŒ!‰éŸÈ…<wõÀàAREËËUìc\'ìxjc`ì	\"]ê½Ñ  NmËÍ[šŞææ¬$ˆ§·ŒåeôêFÖ²+ı’£€oÑæiœVOé+¾M:³Mí”Ğ/K¿xXE]>DÏ¬nl`»¬ô‰~ã5ÎÄM\08ôöq÷	ô„Ø…TKÃ×p~3)ê0âQ|áà?l–ÎaØU2µ£2&¤#r°„¦eb‰¼5_SÎ?¶¡\0FPd©ãå¹»¶¥ØƒIHìÊ 6şœsUªşç¾nkãtmøş–¾t/g €{O€›; ªùÔÎÀ˜³Â€å>ÕûŠ)Œpkd8BËsÀk|C^\Z÷e\rHø„K8?è\\l0Ò™0/rp2%Z•öHáI‹LİB‹Ó÷¡7ÅÉ!ÅÄÏ\r—²Œ!2öÏ¸q8<”¢ÆXLJ$pƒb¹a{¦-4}H³×¬F–óé´Ä,‘cæ‰ulæ=÷ØØÿ\\ÜrøúÀAcÜ€Øƒ~K/Ãİ‹mÃ|•êå[›^á?w\0LÀš×·•Ô»Ô†áw½ø#ÇáQ·^Cûôü]Š7+Á%lCËgÅÕhLaˆ}²\nd÷‹2Ë¦ÖÚ¼zJvÛŒ—öÔŒ„ÚÖx¤”ÿ[E…lU=ùkÜ±ä£ ¬UŞ8§r@´ÖÙNÈgïPén#¤ŒÛÖ\'†*´½Lv\nJş¶\0Ù~rş‚+ãIó>ÀiC:kqË}9jzìeĞ×ú®¶ OPv…Ìûæs,¢ˆ\\’[rW\"Bw‘ÚWb¢ÏÂ‚dm3RĞ-˜ó‘Œ)L+M_âvµ8HÂQƒ±‰é¾ÿ§úWbB§\'¢bÅˆ$>ëŸ7¯—>:$>TiX“1®í\'®ßF‰]%“*û£\nµ“âxŸë­)•WµÅ;âşóèëëÃ ï¯î¶”¿/\'ìÜI*Äuº÷ƒilòYºú\ZPéÜ{ó¿l¸BãfP0[?ã²PrS7~èœ+! \\\"R{ïNÒ8	{o\r¢Ä¢BIb.¸[²¥G&]úv¥\"êl•¦q‹ÙZÏ#Ìßé¸ì‹ÉgJÿtùzÎT°²Él*×Àó¥A{¦Šc,<j:Ø5n Nk’(r7~ Õ_@aTôíCB»wÛr\Zù˜.ëOÙ§OV@$ÔÈù®+lFìHŒ6·âoÜa¿İJ²vÇ~šƒmÈã°Û:ÒNˆé±p2İArÁ/\nµ0‚F\'0O%U‰?¨ÕOMv-øÍÄ ÛµíÊ‹mlzs»„,ÜùŸuÈ~±h…ÅÁ lp½$]rç5³¹×~Õ\\ÇUºrëğV_ª#.›¶®®IM1£²ş‹Š‘‹Ëı²o¯—\"0ôô˜+^¿a–Î›ô™«uÔˆf4†ÏÖFCtâ¦«¼Ó¶İ\"#ÍÇ\rDcËù_¢R?/ótıcÜ¥Š\"µqŠ8QDÕ^u)UpÓ#â@m³ø–àá\0½ëÒXYWÅÀ©d?4šwy&ó¹y§-ÍÉå­˜İ\\[ñ-|ŠÈÆ»{k7et&ÑåçÀR·I<šÔ¼P³$™¶{€%%q2t\Z\"Of~5ùR(±W’©x=Á\0Òóê›‘v-\rºbÍ·µU^ÊuÒjW1ıiÿ K“Qş§«¹¿k}·%ÎÇ‚¹=ó´\ZÇ3Ôp\\£÷µÖ°Â%ó2XkòÎ=]>Ğş÷:a\"¶_—‘{;\"ÄïäVßôÉĞoIøõÌ‡‡CÛ:‘öÑ(—bu^+—èÊÁXâã2„kPEéë…`§º¡qyˆ$Ç˜c6àÁHºìDıÌYİ¡ÆP³f-\rN¨eAŞ×]œTÌ†ìVãÈçøŒá…ëÕóóÔ‘•!´a±nÂwhÁ`üÕVŸ>SÅŒp&ìáû+\Zği^cšğ¼\r¿sŞ/îxß“kQ¹5º:¸ıPÉ-fı÷ÛÌÓQÌÀXO›ãñä²_±ÓP,b€±L¿f1M|l¶éŠÖ‘Z¼ px ´ù“†Éi`ÆîÉ®¹œ®£ÏãKTË|EK¿èô-Ü\nZ+-Kßäó²œ±pœ«@$®äG¦Lã:åÎz-–#í\'\"•f?-Ğ‘óàtŸ6USå–æ…C£Á´RM¶€k‚.V	ÏÓX¤Ã÷Öö:ğk:cô*Ø¾åPè;ÈÑ\nØ~K¨¯¤¬Hœb´\0—Â~TÏöø¹×kŸ¹OSáœ!3W‚°“½Ü[~^™RT?ìÑCÙ\0í$šM/øÕu§•2~²ÊW±9çAvû•‘Š‡ÂPŸùäËg<åæGµ\\d;·CÌW5\ZkÑs¾AO;%^-?Óí¦\'¸›ĞÍuVºtåådCü,]·,—ı2Á¡¡øTGa•§ÊOŠMá¢óîõ€Í¬sĞïªf.ÎmïX+¢73kî“fAtıÀsnPTŸ#K´9ˆçÏ1áÎx~ª…K³ÛóÍYÍÃ“—çÔú>O§[ÇŠx,àıàş3>†£Æ£ìb7I1}°\Z‰C6‡bÅ¨O©ë³ ßĞ÷qÁíª@ä:2ØSİJÒ‘ª°½”¤ç6}ıõA.¥³g$×y E;¡Ôn²öS<ó¥£UPÌYê˜C„ÊL”Ó¬ ¼yˆö‚ºÊ¯ÉIƒ†z*`î¢‘Ã£ñ=çî”³–¡ı]ƒşéJ b;i2y üœ£bÊãJÕ³ö{ì÷M†aÚ‹Tü×Z”¹n´¹úÂ- øKˆŞ±Hüd[Di.}•q/CTï­~A€2.“`jÚN(ªÏ•ª~À$Û<_fGÈÛºä­C)=Ç–2ª²RÏ(äÇŠßÛxy§bQc$…ï×—]Ni3*ıÈŞÉ³~áÎ¹­dÊKY¨	\Zß²\Z©eã¸ğRjÖ,Í7K¤š‚G`¯YÖ€î}\n	væ·jusb{:J\"{î‰Ãa5pD	\"ONì÷ˆNDå•>¬H\nw¹Œ‡\0z–·Š4BW™U@Jà¼ğo:ëü²©V~Wy¸X&ò_Óá™¯ª«w#ßj\ZôõsÊ¥L#İµ1¯ÇM¦¨ü‚*Í\réETU{ï’Øÿ|ƒRiNß‡aÜ¯‹¶4øŒk˜<¿¥‡#‰Oë3s? ;J¿Ğ£áBÃR”Û{7¥ñv•=Qb˜¦¦ŞªÁ˜ÊBÌb«a{jË¸¡•bí*Òh}Ÿo#Ëê4]]«’F0^¦=Ùşº”®ë&‡ûÃ¨€ªv¤I¹a	¬`áşSG9)± fPz]7¿•–>°%°åRJ¶rdst¢ß¶Ğ!Ñö\"¿Öâ,?,¹råš\\‘]ÚÚö½Ğ:Ô¹ƒïV¹ê	aTl#¨š¢ÿ6Ô½ît8Öa¿ÎzªXïİ÷š~;ã­•¢úaqbı’Yâïá\Z4¾&½à§.¸ûõr?ªù¦¡¾T|Í¶%U\Zµ„¯çŸV–Æ—ô¨zx¼âç”]ò=Ù…•WíêŠ”-O”%ŸÓ8¸»/\nŞ[£Ù]\nÅñR8+N)ñ9ûöñõşlM9ºïG\'ĞÑ‚ô5˜TVà‘_òl¬#µi#wª\Zİ¥ Ìm\'Ô0x:\'ã…GRZÎ±)„İî‰lñ–a;Ûtu‘ò¤÷Æ¤õèLÑ´õ¶÷ƒşÎİÄğàWT[åÅ¥ÂMŸ1éµŸˆá7a§ãqQ½Æ3‰p.ä¿šâRROo´”ô®m!òÙØş\nõVôbÔ<‚ÃsB¶ë“Å”\"«Oªğ9¸u€£­ğá(ºá»]ÿBÎÙ;#\"h}®T„aùwÅƒTR¿­Œ#éE\n‚ãò_÷Tëoä-¬-û7gR`›Í\'ñó¸‡Š,¡k3›nAL±’¨9y.µ\"Wãâ¶£°[±vøwdœß\rêúZª²nè3F?obÿÆ^ùW¨ …/pVaÀeW?ŞÌÔ³«İÿĞ\0‹PSÙ¢ĞJêãi%Æ$Ñ¬$²\no$­HQ~®ün\0\Z´ìÕeşšœF1h›ù™­ÌÌ*²6d÷ÍâÌ°™hÆ\nfßÒE%\'´L}‰ÿ¼nîîùä‚ìç)nã˜Êr¥µ6Ÿ\0±S•:F·\nÖl\rwNUšcË²é¹O½@$\\†dl!æ­Ğ­Á7%Ín{än£ÉÍùDå¹½‚½rtÓ°ÕË&üY!BU›ášªyÙr#/Ş~ÌÊ©öÁbOlá×>dE)ê§¤ê èÏ%HNJ—ÙÊ\næ]Äf²a-|í+¾15éˆÚï®ƒ…óyÄe¢v—^!+œän†°³¸ÛÎA—À5èšú=¹®‡ÄŠ‰î•kš`NÁÏ\\Ï,u¼YÃiC·šÉ?|óéëuÌ\'àãk/õw,4p9ÉşK=&Y‡2×ÄgÕâÚs»\"‘áÔ¸>¤ëL^g6gòo&(ÒXS;qÆv´CEıËM>¡„mj1â:­0u\nàòÜ›óÌ\'¯CË”˜‹8Q¢™¡Úµ/.÷@3,CğãTj’G»˜‡T:uµÁ1t¸F}‡…Q}êÏ21Óğ`;#ŠF\'Ÿä{f/Ì®&I¡:ó·hµêEà‘K¡˜4#¦‘í\'Ëyüv/e ~,<W’®õewj\'K•*¦áŒzÉVZz6 ™AB\"Ü`¼cÌ¼B\"æ·°¸u<M\'ã8yK¸S¬ÎáI¥kÔxÄyæÏUÈ² *¼|!¡›¾8!v¶?=óô˜ÿ™¾Üİ.$û\\V\'b?k®»’ò‰*Ğ+öğrrªï‚%ãB¶ÙO{İ\"6áf.—PEğ†‡·,<ò¯1åÏZUÌ®_\'N¡øã#3C±\nİşÌûğ|4@ğ8dë¾–†.ó}.ˆ– ÃCjy»y‘ÏRPø—ÅV‡à¯êwãİï2œ±¹ş:’î-GR xQã\ZL…ÿˆ__Ñ/a´Q+æ}¸y”\rc†Ÿ‡¤ã$šoYæşïÖé°ëşœåFeYa\"Ÿ>‡~!eøét3¶»ó˜(\rgˆ‡\'ÕmwÑİÇ[’\'Ú>í—JåeÅ£áçdÆt;V†”î“ O˜C†tÅä²l.ÖĞ$™Ö}²“–ÀòM~é†&…ı–İÀ\Zi¼4]¶×îè—¤®Fèó©¡f<\"‘Ú7tTşñ‘U2bs¯-ÿ\"¶oø~1Ê\rÔ´	`V¨ki6‹\nD€)ËãÌü¼æâ°X‘NFµrÕªqwÙ‘ƒÊÉUƒo:E\nÔáÉ°5ƒn„ù0‚Ä3©ÄòÑÚcÜ>æ½½Ô±êäşã»úâ$TòBEÇ4h?ŸÊ5	òOÒ\'Ä­ç\Z8|½)Aê~-–J\Z¡Ô5hü j<~5\ZKHbËJ\Z\006æ8Ú‰‚Q#\Z$EÊŠá8½˜¹”XO9<‚Y1\0 ÈŸX•5(\0g†!~ŠNs•^34ûëœÔl2´&ÊŠ–Ì7ú÷×\":s1G½|nı!2¨\nÒ“hå×£#W¥ğ~ã²oP¶ã®„•ÖŒzXÇ»#ş\'á³8R\0œDD@‚ú›«2îKh5¥ï¾­ïÇùkMkQŸGËL±!šÈo‡×úÙ}éeÌu·’“‘	º>ZbFü‹‡N`İõ;¦o•2dh‘Ñ?_§Ü˜6UV*eİ?“…<#bkÿscG¦j%ˆQÃï\'Œ|±÷œ½³n2ç·¿=¡^,ĞÅ‹¶Kà1²ì9ˆ×„œ^K*™ ›\n$Ù¶\nm¼#L]…ı½|FHÇg©éÌz‡9GıKãÆ*Yd:óO_\'hmxYºÃ‚æåŸºA¾¬&1±‹z{ÓÕrpG¥f[éï›ÕºÛá;ˆ°±Ä¤¿k/v_*Ç€n=º´-šqÎcü®ìî\rYdçÅÙMOA½D1s+¬·²XŞ»î9-Ãá‡²sià\ZÍZ«dçq9ı¨CÚ‡¥×¡ã\"Ô¾\\x\ZhÿDòSBnF‘›ÿ6™t‘êa&@şÙ–¡Ô€7|Ã¤ß{Òûiæ•Ïøä¶úÚªTÀ’RÜM¹\nHf¼ÿŸ“§xzŸ_ }³—Çíÿ z€ø\'»²ÓÅ[m®ÿÀ.Úåï3¿Í+:M/ç¬ŞÀtŠ¯ä¨Gh2Fôa»kjAÈÜã?œšëE†)^C· Í3µ½ÏÑäÒ‡†õµ:±<%eÁ/<<|èÜÉ\"Eë	¿CcK4œv@jlz)ÃM±‘W_¬AiV°·K\r¨¥±)‡0âÅ­Ğ\'‰öjb‹ÎŞG5	Åïj7}‘œÛıˆ”ıÜ‚ãi)3–Dã´éí^LE;ÏøÂéZÙ½Æ\nf™ÚleÜNá²‹5Ø,´¥½ôœHMH¬š1wbÂ?h¢\Z­\rp±“å«\n\'²œkVˆ)‡ìOAKMëŸšy1‡4+ƒùz)6¶ÎÚŸ¸´Cß\\ê5e<hÊqcwcô-ÀÕÇKr,ÛM(:âJI˜xÎñƒÒì:D¨Ğƒ.ËÖ![uzµï’+¬Øa‡uæ(±gLï´@‚¼›6ìÔ\n-1aÌş<¹/´×A×ïXÌ]…\"¦~’\r65¶4èÆšºØ\nÚWö·’r$Ùè¤î‹.Ä‰ÚGîà	)»rº-4täÂ¥i£»HÓÃÚ¡‘ç¤)«â9Æö1‹Ş{­\0_|ø\Z-q/R…ŸbYòİ5^R&—£+4®öa’ó‰wci”Ü“Pë…»È4ˆFUqÒqÈ‡îÅˆQ’E˜Æ`3¿†]ôçêĞHS¦9—Ä¥cR÷vŸƒ¯à=èÃbÈæM­4í?\rhº´ÏËÁV4¸êvÛw< ÒáQÌÒ†™Q;g€èÕ™ë%2ÒÍuP†DÆpiŞB=ÖAz§ /ÀÆ‰>z˜­,¤“Ï*¶¥¨oÂi\'1œQ	UpD¬€T\\IÀû\0J‹ÌI³aüµ+n½BX‘^”ª+ÅûÂ±vÑ+âÚYHóÅ º1\"^îÙ!FM¶úÊH\"”øíCV|Í?ÑÂO^\rŸ½NAÂÙ5#ÜZÁ’îØŠfòN>ÅÖŠ=áz‡Á’i€²pë.Ñô+ä‚#æ:µ1f¥‘šóh·¨Œ.=uµÈòÜ\Z0¼=´Ô!¤aRÄ´¦’rÁ¢½>C<©˜˜øÏ¨á¼y¡ŸùV=ÓLàÁJá£sf]ÕûQªêQšh  ¶Äš »«93•;õ©ôçÄÈ6eÎ*Ó;sÙgmKæi|W4Ëmß.\rİ[Ø£R@“ZÜmkY=Z™œ0‰©ıh÷„3é$H–Ú´ÚŒ0¥8¦](iˆ8ĞğüŒ´â¦OØÃ¼q60ıeˆŠ1cÆ‹¶\0YŸGÅêhŒYFËUR»yjMÎ«×X\'†–•#øê*’Ç‡‰ßüşo)û|Ê†Bÿ«Ÿ³ÿA¥‘ªÒç±j¥mWQûE@Û€şm»ËÃÀÊ\'¯æ\Z¸ŒEâ]NºA\rA¸O[EûûŒ¨D¢ ÅDêŒ]ÅRğµ^¡6éë2Opi”ñˆ5˜	‚?0@yb;§Å³çA0€Gı–5›”fS¼„Å-Ô™,’âÙd.+½æ†è„DØÏ«/yRã>Ã/Âƒ·\rÌëî2[_vtûôÍıÀ&*\0 xnƒm©¬7‰s’¼m\'Jš§É„¹ä/~¦‰zÅûÍ·v+Á.Ã¬öèÃK>wÖ8Jˆe“PÚ¯ßàòMåÆ?%³ÈCg}…İ=İ6pÊÙ<ŸÕ¬á´3«á$lÂ ŒAâÑÓ\Z`Ÿşw§Úª¼è„å#U4iÉX\0;pI?Û”ÌºÒÊ`Q@,ñG7[îúŸMßb”üL¡j5yî·;È—ÇI<^¥Ùî_À>|òóñVÈ}Ø4$­æô\n?›r)°v3¼ã\rü>¨ÜÆ—u•K[ßÏÓsjé¦2r¤æh$ho shˆÒ„ØŞHuÁ“İò¤‘RŞ«E3:Ğâ˜5­ûCKúšÙ·å#ÆÔªbùÏ+Qà®›KaTVrtQu¥”¾²{ÿÜÿJ¶İÒ6LQ\0Sw¨.g%ƒµ¨ˆ§ä™O\rsŠ–Ü²æzDKÊ¬\Z¶ÿ~Äç¾š¿j¾s™İ›=FÎ\\=&“ÙÍ‰IZt¾Á	¬#]IbÚ»%=kRHÉY+´*e~úldı\0R«ğé­ım—(šÚ?ä*rÔä$gNóŸähâ3\'ÁdE^øõqƒ€*=n·!-`<oA_ß¿³5üûº(;p1[mk¸øíšü«[ê\"şÍ±Ò~ò”)¢’Óù¤ÉÚ9áìÿ†èbØBY\"òãZ[ñÀe[j“RÑ[I›š¶Îèùd)âu	iş×ZP ©¬¾©¾€Ä±to€GSä@jn7ñl\nÅ\Z™!Ho“$6–@ë~¿û†çqÌå¤fÕ€Æ¾E/mM5	ìQˆ\rãK|‘9FîUÌ‘ZM‹-OÔîyÄ‡*U.éUhTÛÕoÙëÒÃ&¬’è02×k¨ê7`1\"T ß7¬¤–§\'a:Á_ä³üNvHÙ¸šØå@¢å:Â<LˆACÁÇs_•Ç·gáIÿ¥â±†Í•ºv­ŞH®ÅÁîÊ‘ë\0.DübÊš/°R‡ãõ‘]iÒÒ¸ç\Z²Í:ªT¬gY\ZwZ$|jÀb¼\'„y„mdÈÙÒ‰³ ´6Ğ©¯…Îs”]iCRd!Y¦°P0E \n²|¾o‚5\\9Y¼ûoYù<xC¢\"¡çÿu½{®„{ázTª&ºƒ’D(ê7…Aô2Twb:YIÎ­‹Ö¯*ÈUZM¯)ñÌñxö´×Ë¾2¦v™dzİç¡Ù–aømşiq;»köoBu’åPh(Ñ@«‘Én©üîR¶…û~å¡#Æª¢7ŒÌq˜.È‡¶È A÷~‡6øÜº*ÖŸu³ëCSró@’â#Ğ„Àƒzz\\5€G&ÄAäŞ—ûİÕD?ıDÓ¢ESêpÅYæöé0I¿Şj~jñ(`¸\\6eU–;Q`ÖP*¤Í\ró‚Õ$ Éö7“…\0ó=àmSÃŞùò©¬nRWWƒ†sMsf]»ˆD½Üÿ\n 4®^ÇñtRÜ[±4tÑ­8’µp¶Â‚1¶È¡3ÿÁÈÖ[ÔR¯6\\Ê¥cX}—`™èüˆ|[6uqä5Œ¦ş¸9›Æ¡\"aÀCdY4f2Ç9ïFïÌM&D4“¤­îK„ú£Kp–\'aÀ’€´R–š9CËö:j9mˆß8`AoÑ G7¼ÃY\"OeŸ}J)PR-ê\n¸¤¡àõÍ	õ6?š¬€ÈfXJúÅlìN‰ø-ø~û\')ŸPPªT¤àá+Z!_•?-Ü‡n˜A„hØ£œÃ9¡VyH,™Ê~\'\\ÔQú‡-Vµh$ÅñäÉÈ­û6æêäçÓhí’ÏáñÙET€Ã`òCòe¬ÙéDâ\nLzt»VÌÄ;(o6=ş.l+Ï=í~ÙÛ\\¶/;5†æøòú¼#ø·à\"r_âtU\0\'YÚÕ¦£5ØÔà÷‹Vd_·/,]tR¾D¾/ÜìğvĞÃ&]Uˆ>GÉCQ\"˜ÓXÅ/èÌLdüø§¥$óDcn—¾…åíâcrÅáÖå®sÊŸ\ZUà«g#²To¯½ßS§\Z<ªí\'O´èıÓÅó ¹, @wy=ü¥ğ¼ğòñ¦ã¿^ÿŒÌÉÓ>I(V7!£ÑœöĞì&ƒ„<Z…”üéµ1ÙnÊL~]ì9­M”m—rçqz= Wc(z|¬¯üaÙıì#F”9C¡_%£ï©£zIx3—dŞÎI#TRˆ(û?ù{‚–s|2öÍIªaıDÓ»èm@;qÊÇgô4ÿ¾mùAãíi‡=}œö¤£+Ş“Z&ÔÑ—¢gp†&\nÑJï?\\ SëÀ}è=@Ñ>ŸªÄ}¬çP¬õ±`cıxíêpB·¤½´(‚ iù7$R1Ô@Ç_(7ë#67WšNdÓ¦XÇÕê§À¨†1¿‘·aß§> 	—5PÃe\0ë$\'A4ñq\n‘Öó[™õ‚ßƒ…HñÖ-˜	[]*¢×*\n\"9}Umüï•¦A.¦9¹z*y¦iBĞ\'Jşı¨a·^İU<#ï£İ-	J¯SšL!*Ÿf—#–èæˆV	*ıŸ @Şhœå|ø¸Ÿº÷ïÆÅ¯D¹\Z_la¬âÁ¼DCÑÒ¥-–TÏ=YÚöóW^™#ú®ÓOÑä/:ª£9oÒ0Ë5¢FPŞ¿’rzô¡xçÔD±êh~Ö ß½iwÆvè;jü·Ò]r­)÷ØíòÊ0ÍÈŒœ¦Në#N¿ÇF^pĞË]ş_~ïmÕ`˜hù¤.³½jtõ²DO]ô=öçUŠ:DTqy%YÌR¡“\\öNbòÎãx‚Ö¯DjxÉÛÈIäø–f‡‡ßŞ]ëÂùƒ¦o}\r\r?4º#½Ânªã™??Xà‚5ÅÙ8C¼D\0y—ÈF0øÕ¹-©¡HpÌ]±Mî5Jö^E¢ÑïÜ=KöúõëtêoQi\rXÑ€ ¿ˆì	@ßÏÄ,¹Ş‹B6A¢ğj,´q{SŞì¤óñìÕfIÎûmD\"BYı—³¾÷V+K•ş-vM³2 ñ´\Zµ’—®ÆXô‹TìÙæI…°?!°–Ãl¢ûc+azç	üUğV&D6S+¢F1ÑÊ+ÑyS:³clz\ZDı:¿Q9³{Ş\\Ü¦’äÿÌ&¸s£)­šÜ§Î<¡áô«è]}´i*fR(:sêáH+±ÜR¤Î9 ÷z-÷/~óGö2–½<«Kië¯#jA€†bëÈÊ½¢d^\0‹¢ŸÊH1û6gœh¸–ÿ¬Ô®Â*¤–¬‹·ë\Z¤ï9¾ä^¦G¶p’&¥ÊÊ•ó\n#)G%Üh…Â`\"2Éõ\rš4â™Ÿ:<mähÊ2ÒhË‰i…f³¢ªH]¸„\",ûéva«ıAìŸÖÍ-Ñd6=Oq»e¶Ê‘¨0äŸŞB$x6RP¥Ù€jÊZFŠm6jN3|é^ K~Ûc/ˆˆGã™¨Ë3Ñ­å• üu—Glß¢šƒk|W~”-™ÊÚÂf	bÛ;½çŒ}Á:2¤/¤+¬éß3ØŒfÜà£ØÃ¥µıw\': Uë¿\"2ó¥°\'Ç$Nù8ÑT–h¡lsÖ¬Âc3ã9ÿËJ£\r¾D~>Ï€‡Çü|ñb‘äNqÍ÷.È4ğÚà‹?fº…Ÿ9g½êW-8Z(Ç‘éØzK|\'ÂE?êDÍGø th’{?hOL«\nÅó@Ã“ÆÿqM7;L½™+’”^|ë™BÅ‡ÆãçJ	ê0..§>LŠK£8„ys9qå_šnŒŸµ¢,Ğ+w53ÄäïQÍÈ÷Y\"+Ò¼Š•¯3bÅQø7~©ÓyF)Ñg.1 ™;ÀÂÜ»“ ğ:gí¶E±zã*\ZZEi0´…Õb©ÚÖŒj”¹.©Ÿ8£	sb‘Èí‡:˜©¥ÿ«Êãl%‡Šà§8Msß	œÜ_U#læŒ§¦m3LÉ¯ï7îì§Õ í\Z\Z\"6Å²cêÒå->ºv©\n4øõ¼í¦Ë#œ“ºˆ\\ç¨?·/…O¨>õ@Ö0È ?”SÂ\\áÄ€ªÀ­Úk@bòÔZòÙÒİ†İôıTş©³æ47àñ]î·ªîºrçÖî»–ĞZ#’cOö(ˆÜ‰lD¥Ñ¥r(Û‚“| \nçù\'Ùíg;”h\'ı¾ÿ#Ç\nˆ®”S²MÕM¬ïØ.Sš’ÚyWlÈİµÌ3ˆı§52£\nÒ2v6İÄµ FE¥ìğ-í¦uƒ.Ò	®CeZ|ÂqÀ.·Ê—QOØ\0¼U˜QT˜vû^§ßâ\0§!»5>²t›òLvolW€pCës€¨Uş8Á]ßI6—6?ÑxòÄãó Ş^¿1DÖ\'ñ÷^\\†âT	r‡\rÊsôŠÜ+ì}o2ß¯ÂÛÂ^NFçX²/¶Z:3+É0U\nxz}kËxHcãÁZg¶è$eŞ§HqA¿AšvÃS*>Â _o7[­!¾ïT<õNä¶7!5Ã}EúÑehwG\rdXy2É«øê€: &ÿ?a–!ñ÷Dª	İ& ñ¦Ò4¾ÔÿáJâb:ÊÌ²Øv$k†·âüy¯ŞsXqsŞù.\ZÍzÿ-XBÎ=¦yƒõ}MÚHÓìl.mÍqJp´ûÇÍtXXO¬ï«s0Úz}Ø­={°ï¤¡µQ«ñFOàÒ¤in ğÃê÷ª©7Ä9$/¯`WÓ˜5Ó»ãSõ|t§Ö7\"ğ2FÁÓ•„Ä„{!™M5­!\n§7Ó®U«ìîmÏ0´Í{5¢Ğ³®Áo^Œë3›Âì3¬Ù/o‹øFº©iì¥5PÇoxmJ<Ò<ıdIÏæÍ‘S-B} ¦d•4Ñš}c’ş›dÀEœ’aû±soÍMjÙMN~µÛæ7ÁÓ5TìŠq(‘ãÊ·ûs)OK\'?ÊHıïêCy+Éqìb¼Ößªòr?öü­ŒÚ§¸¹¦Jké5±Şk?5÷PxXk€‚PUXjXR<†Cr™~tGT¼7`ñ^İ&ÉgAïO`’ó¨áÌ8 AA‘8söƒ˜¿Š×İ÷Õ#¨ÌÃİC6±‘ŸrŠ°p_Œµò”¯»ò°NpxŠi¼\0ñÃºÛ\0ş‹´j€è7$Æ×\0ÑûÎ·ËÍ=¾‚5É:fÙ¥l?Ğ<AuD\0»â\'!:<tá\Z‚_t\'çM®ºÈ¥¼?$QÌLô§û\n¾àE|„Kú’¹ò~Ô9» ]Àù¿Å—Q¢ƒßtm>¥ÌC”ä^â3ü¢ÏßÂ{)lZ8³èDìüæKŠ{µû1•¼CÈA‘ÍØöQlã¤û\n¹{Ï´«#à—¾’İ©}J}E{ƒjªGxlB©qô(7SqÊÏ×Y¬D$…Ì1¹úâğ¸r5¼À‹ï«¥5\nÂĞ¡‰ÈZ‘æïË9¾§ÛíE»¨@Ø×´u\'½ÃĞÑhór$Õ»	ÄÃ±PziôlêWÚÊ¯·¥Ş“ûM†2Ó	ª*ÂšÈ±¦‹Bå’úÍQßÔıæŞªµœjOU»®ĞĞ€ö0á„qİ‘tâB$µçG?N³ß6®ˆ#1K;oXÊ^zÅD4ğgHÕÌkÔûûÊ$‹°2Ç®#>ĞåaJ–k9gÕ;\"³Ò±¤ûÓãğõQ›k6pë•¯\Z•¦5F#EˆFw;KPîÇÛ\0,·…§ÚïÂ??#D=Œf&§áWL¤¬jFL;K«Gæó=ŸEğÀöëÕámÿfq]vÑÅ¶a‰6‚çùçw²é\\e¸Za·œOÿ+€‘Õ·W±Ê(«ØÒFùÏ¥búl™Å°,”Œ\Z#\"FIÇ¼„BºÖ¬}`ê„Dâê Tô2âÿt7tO©2„„ôÕöc„Ã–f¦9×|;Ïâ¨™É.°Ø×ïû¼“4ı½Bå¢ÙO³æ¾~â\ZVÑeßSÛ}ubø<£J/Œáå‡(0ƒ=+ZÁÿ‹Õ8vF!}</9}8ûDpú=\'0?eDus.j}®}<ƒmğÉ”õu¯¤Âô\r)ûJ(_ƒ\\éÊt01øG=âKÑ9û\nmÍ›mrp–aÑ¡lQúİ\nCi]1ó/J!É‡1¶éáã¢ıØê¿ÀÈ¹d?Y}ˆ]Õ“;,eÍ$:€B¡KVÌ\"^úólèWó»/²íózócöÉˆ(¥í?T·§ş:ŒÃ.ù…}\nuU\"ø\ryXu‰¦{`©%Í¢’T½¿sgÓ.OøŠñeĞ·XƒãJB?º>©Û:€ºäkûWÒ}¬-¾Uî£Áô1‘\ZFkíÊµ©7Ph$öí\0Ş±,ÂÄÅúœŠ¬ğUÅcÖ”sG;œ\'[ÿËÉ]\ZC§ÔU—pğòÇ‡zx_†Ñ<úBağÖúİ¤¼	z›,>&S\0u,“mx ©ì”c¬æjO¸Öå²\rIç7w„&€¨Ñiêx{ºDÕ^aeƒÏÑÆz0³ÿÆÖáVÎàæøi5êqaıXôFÇ Ş˜ƒo°êehÜJ—Nò‚ç)á3Lnı¦-:Dï¡Q)Mƒ²4º®ÊË¸%âÛ,Á¬QÁl˜e¤)él\0ú?–\nÑÔı¹‚ÄW…0Ø‹/F¤½\r\0‹¢z—&°=á\rø?I„‚øªàÊ¥*­Ùß‚³¤˜¤€ŞˆÆØŸ>7áµ Q¿JìyÜr%ê×]×»aTT¸–£šw}b±u-İ’dğû·5»ÑİcÕ±Ç,³Ö½™†­\roÄÍ¼9š;NÚ\\$!âÓ#vE>À~¾]uÒ“b!Ô²İŸ{àÏañÌÅ› ¤ßUí\Z+Cr¸öãx>XLÚ4µ/N¼‹àµå˜£Ê°ô²ŒPS>óyš¯ò<¶§ŠNëÃÿÓˆŸ÷ŞVöœPPÂÕ~!B‡ å=ÙçAÈì“üaCr±á Pó~$ÊË¡WRb#ımÊ3¹:&©Mo¡ºBŒôS•OñÛqº¹Ex¾o§ç£.‘hB>x|I©/£}Ğ¡‚±â*ş¹ÿ+Í~h[ÙÃÇ)\"\ZoÑ´ç{ğâ7ó@±oø\'ˆ\"ÿx§Ög¦-â›î5à8hã³° Ü6¾N¶_¡Û\\&ıîƒÇl—HƒS”a\Z4Ú¦#œÊßû¿€k]ñ;?ê9„\0êÖ„ˆ‰‰c±`^\\Cş%-ï2¿9=rlRmD ôpPæ¾II\rEne.Gòe‡µø¥4×\'7€=İ‹ßÚU:¨$g\"%Â=šˆğ™¼’c%ÅxniD¥ÎÖ÷—úÎÈâG+6S|ŞÊçv§İãÉM9ê©·Õì)v4>÷‘„òäHüî¥’BA@¤‹3İğæzAvª!ÄY0÷óU\Zdu:yVB¯&îiÉ¾\nšâjÎÉ¨³pİ!©ÛÏUeçö>©kB‹8\\êJzxªûbŠ \nB|™HËûöNò»ùœË\"A}ã-¨³n\\a[R–EzRœÂf¦­œqs „Bğ ã±²è%ÜT«îØ¿„QÏ€\"ØmØ©†*Ñ²’Ô4AzeŠel47Í‹÷wŒ:CÇ¸r\nR±‰²>\\Ë(şFöGÓ£ğA½#¢9¤ØB·oŸ%‘ø­ç—\'¸–KŞ!ÀìšECü‘‚GëÍ4ÑËÚª \\í£àšO¬?á=÷*Ry€—Øßwİ’-fÅmÙ+¹JNƒIµH\0*×ärÿ_CS:v‡%=–½+cº\'5:nï;4•$îÍbà4å–õ_ÕÅn40añÉÁïF€9~Œs~£7ñrÄ<fÊ~+–`T¸shH™zT7[Şg»üp}Vô‰Í°™÷—†i˜‹/^éd-°o£ìèq:C%Õñ5›quG‰À´”ø4Ó?p·}şN¬¬©–óæ‚Ş{á™óv¿\\¹2Ä˜ƒšsëÛĞÚ(íÉbUQmq@ªAµ_³µ*íÖ~Ÿ•Œ´Êy*4®‘Ä7äçã:©Cùá±¶ÄÍæDä©ÃêyéqPºa&á5¯‚¿Mxß 0eƒ\'ÁbÆÅ\r=ªtù¸1cİ¥¦gFƒ¾²¢²¶® X«d	Ş4,°H‡\Z£¡È6zy”fCíq4Œb©ÿ¿ØÒ6eM3ÿı\n1§ßBeœdñ„i†ûÜy™ÈBÛ\0Â¼Íî]½{Øm’cç\nÙúW%™·+;Aˆ=}t;ˆó+Ğµ©~h$.¿xÇÔÆ0òD‘í<‚‹š\"•îLñWü¨Ø;\\¦İÇ¸]ZŒ\n#p{`vVğ£òµƒÑŸBRöÜrÆ%Ò˜Š‚f¡¸=ˆô³Yäjùxl~€å½€EA%`‰G,–—}0ÂcB­£1{‘2zùØº”.2ä½+½ÅÍPDO÷*z6k|şY#I“ªŞê5Æ°«”Uä‘q¯-ôˆ<p	ş¥A»Ï\ZPÖ%c@ü‰pØ‚öd\"ºµñ€¥”ÜƒŞ@B¨‹“ğ7\\Ïv´	© få8­S+¯ÎW…Ÿ¨³ˆ‹—ñÒòGz²ğ-Òî6|ç½ƒĞ;$õ7X†å­R§\Zv¹¤Üc\'Ñù\\ş+±»LâÀï+¤OTu“*ûu5\Z×®;a+ƒÚ«– ÷v³QûéU‡<Ì¯” €¤1#¡²F\ZMæ{7EôJ(…4W ©Ë\nFÚ4Î)O£¼­A¤=‘f\Zi•¯h6¿lEı•B-7\'yÓÉT¼a÷v¦úcÏÑÛ3ö´î?a“ˆ&—õ4ÙÆŒRß€g/©<e:ÿ2Ü-µn¿*ÈiLfyÉ¬ƒ’^|\'=ºæ\0¬oÙwJNèCüâwLÜ:„,–/†?ˆ,¾ÃGœrsy¼Œv!I Ú7\'Ü¾ĞG¶÷(î1Õàİ]Î}iQ£b¯oIÚ\n1g³8£RíĞµgÇ×°&\"Zİ»¿ÊXXŠO)ZäÊ[eÏraÿ³|^r©Ì†nFg¯um¡©2*ê—*îÛ‹ç6˜0qó“øüÒv¡Ûv„TYP%Ü8>)Rn¸ï3^P°×rë_Ñ´¯–ú~’9ÅEP”	)zÉIÂá‹ÒQ´ìèı1}y°ô.ú¥À>ÈŠM`L€C½1âKk/6Jµ^‚y%†6<ĞÜ\"GÉJ†ƒhÅ…4¥yC&ë¢îY—\\3LÜ¯ë—Xl1FGŒ¿™`Q¥ÃÅ Ëà9\0QKŸ©ì¦¹¢aâ£“TS«;Şı23O“:ZŞáÍ[mÜ,ÎC]hmÒL+†õI„é¬ÿ²ò´</öïP·Y&®M§ÏÄÇBCÉe2T¦XŞ93;2€ŸuâªSÆâÄÒØŒ†èB5qB¤}Ì¡`¡ÃÆµ§wàní¢©68n_ìj&9Î¶Ô¬í¨şÁå¹‰ ÍUÄ„¸‡²ŠF0©/‚Ì?;‡ª\0ğt‡şt#u¶œĞ\në5y÷&M/nşaÑš—{(\0áu“^ğĞƒÍ‰Lê\"s’C9ÏéÎ!Œ°Yã²ÍßáMRÜ¤Wn*$÷²Ø´Yz	`ï°<Ù„%˜{%Aêg`D3†|/\\›¸:qz÷=Ö<´}çpRŸ€ç!è¬}Ú¢ù}ZLöyµûU:XÍ\Z¶y1€:Ì4ÓŒ4Juo/ôƒ¦60Ùë.>ø€óÑ§‰3-ÕmTNÏ•Úš¿ú6”¯7|`ÛÖgáÕ®É=æÜô·‘íÌ¬ŒŠÚª/±“Å¢-§ğoÿo9×Ş:}ô@fáğc[¨ø¡‘MlŸ\0:qPFLå‘.ÀØû…i”ÖŒ+“–øÚå.ğºFÈ•öÉ/âô9ï×³@6ĞÛ—‚™&gÕû¥B\\P•\nëDıB	\\áşŞİ–ÄöÈš”šQé¥>X™i|âSÔ´4~,–½Ş²„Ín©¢dFÆTcœ»çâ°9î€0Kèzã÷çú\rd£QğpO›ª>pç,ÎÒ%ã{BfÌ|QôT¼öÓo^5Ğ¼ÑùKŠ×è\'vç8_”Ä„KìÔûOEìŠo„k‘i¤ß\'¦¢åÓÃÊ%Øÿ²î´C^Û\n8Iú?úÏàÁ¿©/·od4Õlì+ß-NX`ÄâÑBsNZtêD©ºÄÛVîZ(ÉAÚ°©ÏOÕ^écUël‘|cb’(ú³\n5,@¼NÛDB½ø¢İwô.A¹ˆÒ`-Ağíğ\\Ÿ<\'*÷bßô|ĞÕ÷ÉácĞ)3¼Š°#°SœòøFİ±Ípfn­È™G‰:šÉyhWz™É¸g6©Yâ™…	_{Èì}ø7·ÁËzé		[Xû€UG™êl­¯\"Øç*ŸOšxû$ì—æİ¿Ú}|OBß¤rEÓQy% ¦6Ùçpò\Z	j«A:$çº¤ èC³Ë®‘>ïuæí’.AÙcmO–£!4ıFLfåĞ-_\rrk¿! @™D\"C¦Òm—e²Úİ~mG	³cÉWlŠ	ÇP×.wòàSjS\'²8“®%:–ª0ml¬÷ö{5Ãåò(‰ÿ‹·T\'‹\'K£ñp\'I…V<SdW§Éú~Ú#¯{w}Šü¸FEù$;İÚÀÃÓÁŞè(NW!‡+ĞPoSĞ8`ÿ°\Z”«ôoPEş~*Ø¤Wq4a{È’õÃƒğ`°úç• ?X©„_N:1ÖB\nGãº«“[:ÓlŸ(“&‚†6ŞŒÜ}Œ˜™ÙB8d•=ëÎ=÷·µã>–$¶‹»¹¬ß¥F¨‰³„_bsˆ­†ï¹¡:Û<mä\"´ó.—xHˆC-Şx­–Ä³¥ş¯$#*DÄÃéÀ!‚ıxVæV{¶°º¦z+bm¿UX§ÅXÈç«~nû°Zi9XŸ%8ïniÙ£ùaóµm®‘Š!g‘d\'CfõŒ†=4êƒWe{İ?Ù/Rô¬£rHbŸÊY\nû©oîáãi€eòÚWg˜9‘fMñY6N^ËØºTY&‘Ø>\'DÏô1–w7Ùu&&¹=¸`¹0Ö¯\"ÃoÄGúP!zNœ·¤~ÒcnìÚØ˜ªQ4NwŞôñh/pwŒíéånÓÊ°TVVsçc4qWá›Òƒ}ŞH‡OÁºËÂ1x0‡¢ñÕÔ-^¤#ÒWÂ%IR„ğF)vÕ«§Ò+\"d!.“\ZªMoó’€iÕVFõ¡A»š…¨4‘¦R½¿¯ˆŞ¬æïÂrÎ•N«ü–=ş 6wı^qK÷¼·\'‡ÜcMÉ(ë,\'TH*t—êfä	:4?²ìj¢ıÊ’ç·;YŞne>ÉZâkÂˆgìä¿tşâ/ü|²ÌĞÚ.€éSÍüÉù±ô—Í½ğ¼<ˆ™€ë8ycÏ®ÜSòárlÜ¶ìñ‹ŸOãŸKÕ›ÔDD¸ŒdÊDHÂbE˜~1á¿CHš´8ä=®íı\0Ë€wÖˆ	ÓBb°a–j 4a0wö\\®>\ZAF§Ï¼•R\0Ù÷n\"ËV02’¡1\"?:³İƒı©°«\"õh€“÷¦ÒUë×S{d4¡²ŠìÎÖËå6ÖßZí¾Q”$Ày¤ó†Âßh,7N~¿ö\r<\'ôåmãéÙ9g«x”Ò„·¶ÌÕp¤Õd¶ØÈĞ®@†Q?ê½fÚŞUDuÅÅ±ap^‰<ôÑTdHat.	Fpr¸\\~Ò²$UKö\"g«¢È³¶¾ìf{pXÀ-‚9°!ï3ïZ{“^Å6êJ3îäI\Z3£nóhjÇo*ı1%³`aÒCÖ¡‹”İCşÉ¨;MÉéÕm>cXÒ³¹KJ2*h³ˆº’““ª9§ÿå¶æ:xÛ#1×H7=àÙ¦]oœÖûŠ<z\'rx>ÆÎ9)Â?\\[»ïO‘Š^‘±òÀ=íò´	,ë¿Ì¾an9‡Ó£Ù“¶’€LÏ$ór±Št¦*w´Áa78e®Úaíùâ›9:VjM	‡¨ôé«È‹i®Ø1ab³vœïİÏ4=IÈï¥œ‘¦ç%\r\":#¡tÍ{ìPˆ†õ*³ìrOp;»ny)Ç\rãÛÿA\0NÕ Ñc¼•à”˜ÂÕ,b¹Fˆi9İŸ,4yé\r³4Tºh®Óù¼é>¬W£ş’WÃŒ‰QV´r¯nE^€á@÷Ç¬p¶Ó†GGÒ·! Mòç,g˜‹gŒ~ˆ1U¿òçÊ¾QˆR¤üÉ½jo5³mùªs[PdÔ¯Wad*—G»NßÖæ‹Ú…i£ôTö•Ÿú]°¯QèJ×Y\'ï`43*b`À§:5·|Ö_`+é8Ûmoá¨vÛ€øˆG†cO=)ülUœ¹IÍ3‡=–€—ÀÁ‰H|D&u¡ ÿ÷°Ü`’¤vuy°ü­	¦é±s‡Zò-û,ƒã$)+¦ # Æ¼áÎ¢f€Q·$8 „EX1ıı\"¡Ø$²Fy„,obşF†2—ü\\>G¿»uF’’ª0Ò{_ŸgĞz\0›¾½¡ı¶Ñ>=kcHõSõ”É6Ãß±şi>¶Š§úh¹2ã=‰Ì)ĞX25TÙ‰Ddö>É×	i™j$ùˆ6óäP¨MW „ıéë»ÙÉÃ|LB¥H£y¨Ÿ9‹J}²NÌ?–E\\yWkY¼\\Æ²WíøP®\Z¨ZfĞÆqµú™Ú\ZX›¾ùµL›GªUÔ\\ö<ô&¡>QYú,œ³iÚuìÂD&Õ­´mDùT@‡¾%Èqb³uZ3£	²ºŠ$â\'›¤gş•ÎŸxq1Ò¬\'²ÖÜ)j›94AªL¥n[hT3K³„göé@†­èp\r¦1 ,ÍP„Ğ»ú]Bö}.…iz‘èİPæ¶‰µÄ°{¶òó¤%vÈñ×ïè@ƒ†«ä$=ê4[Ô˜LÁä‡›FSz¸ºÃHÙÈêo¦ÙWå¥ÿ‰ª“ñq’äzqR$ìå@ñBC>»ìÕ+2gş?|kh\\TSÜ“-ÕÜÅTpâr-ã%ÀoAS6¼v¿ğyŸJ{)Îi¸šÍæozuÌ-PV5oU¼úø³DZ’‹ÑŠå²Ó²—ƒ	.2Z\\ ÿq¦ğUĞ·å£-a=·ılf#P`¾k£ÔpÃŸ÷<£\rşé<Uk»¦6 ¥œÑ”\rÏ:†fMkú@áaÍ‘~ìáàÓ)šu#ZpO@!\0¨†qÈødWŠ¶îòµÏ·Œœ?øé%‡Ã–}RR9œÍ»äç†ÌÈIÍœ8N®ˆÑwLµçUO~6Á.UC \0anT:†SR˜ûú5Ûå÷ÿ÷2Û\Z>ÛN€ˆV)~·ñMø`[\'v>8$2ĞçbyçFü^L:‹Ìæ¡âš‚J˜¸‘î\rí?]¿Õ½Y¨´åÄƒiÑV„V€kÁÑXâeIİ3ÒèåP+Ó¥“³à–‚ûÌ†LÓ{¬Õ™ñ£ïœ„d˜Èİêüt„¼ôX.˜CëœòñWJıæyË2Pí‘ğÀ_i®è*ŒyQ/MŠb8haIÉVbçKèê=ùÅz	J×L\"Ô?&×ˆ„-¤ô¤•¨”¡TŒÅ°‹?:rânı¢¼€çs=’ƒ*kEğ\0—”éÜâ€Ãç`À^t/ÜÏ3)ÉĞ?Ò·éxÉr2.Ie¶o`1%Êl¯¢›ä,ñàøá†›©3Q„­ÍUØ¨“ïÍ?€ ı¥Äøçc-6ÑS†ÓÅ¾-Ú­@ùíÔÖ ´„RÆ\nÓãîİåf°ùª—2KĞv&ÌsÒH…ÌYåò¨ÑEC`]==)Ñ9òA:@®mäOXàNšîŸÜoB‰wÈCøc o“À%ƒ\\ÃşÇ;¢¦ ¯O:{§äK—¦ø.+\\P­¨²V›[ ·>š%V÷İ<a9ê°Mü§>Ôà[ÚCLt^\"÷JÀ!#¬ğÁO}Q‹D¾€±lv\\½}\r½\r-x±õ7™›[ai¦F3\"à+:bËJ-÷Bv·Ÿ$£*!kú°µ’at³]Naí‘\Zy}­+©²­äx>)È™\Zªku¼Qä°.,í¡G™c…¡:qjêZú]hASé¦ÒD2Ÿ©ß,ìÄKN	â[–ÃŞ0¿Tœ9<ñ_dŞ$•z:MıÎÙ›p2›œÇ)/0*Âµ:Jà:\'ÿ<:jTH±­•SøûÎŸùZîØ°sBA@1Ü˜•ñ‹•«iË#ĞİÃ(­WßŠ{U\0î¬q]iÌ³‡‹Xh=…·]B\'%–‘R÷Y~2ĞüÚ`ZÖ1Üa7¸d¨7*c*³‘„|Ùm	ş£qßeOqNœÁ‰@\\ôÒSFÍw 9«íÁç\nLï2›X¾ÎÅº]ÀŸÏ£*ş¾N5Òrøhâ®xöÂ} Fs\\ÀÌÇ‰´Š»+Ù¦¡±Lùp³x[PVZ\r!n;1:àè`÷\"[¬¢?‚É8º5ÉäIµÕÖÅK·zK‚ á]aw.³×ñebñá;Æâ|pl¾W\Zqh…™@7vˆ‰V¥érßi(Âf†Ä$nMX“2êOJÉqµÑ_¹\'ræˆË6MĞ‚×zÎ¨´z[¦Â*GÃ¡ú¥ç¢Çêét=ˆôhÊÊm}Ş•„\\5?\\¼)S´:WdÉNÁh§bçòëã‚Å¶¬½öé¼a¸j-Úã7å\nj)›‘8/NÏ\Zİ¸Wf‡Ê\ns¦Ö¦,ıÍ0X¡{1K v[—Öí÷B\"Ìg%¯§E×K‘œ\0:î‘™6S©Çf²‡N}KJ×©Üò$\"J9…ØNÜNï¢à¦:ça”øÛOZ”…0»³‚Ma¿¡»BD½ëyÓn6’ƒ¨Çpş¡q ïÀÕ¦­šĞ“\'BEhŞ‰ÛI½b,«§Zí³ò˜4\ZÓ‹–«ûZß‡aa™M?›Ğ4š“7–|³9—Â0¦íºß0©¢nh‚e¢4íã&öOòÁ&GTb$â~ûc$<¡Şéúğ›òA!Şòş5„Ç†›M%ğ‚¢{Éw›û›ŠØ31zºg¦?˜ŸspPp­¾¿„¾	c¿V™	/Âmwµl\0pgú³a\nèÓ™²ÔK&2¯dRzNg8ğÓr@èÙî	ŒÉ2XIôìKî8n8Ø¸É5˜Î\r7è¯ |”#ƒ†­ü@kûŠƒlJ«dnŸFœÜhF6©¨#¯W<—ÅlcÚàvI»£eYôAaBõÏçìì×>t>{ çM>7H°¼|-~~¶’“ÏP¹‡³8œY›L(GÍÓo•¾ãò»‘¾Égv‘â6õØ†ì¢Tsö0\r)\0ğÔiùhúvu*?`²]€Ù·D¾?Ï—ñZØ-eŞÿAœWİoËr›º}ß¸\0ÔT&ú²\nä\Z§À»Ó`¿R¨äj¿§«£H{—¿SY	ãX.èÜ¬\'MŞ·9¦œÉèËì\'Ià˜2½m—]GívÖÏPnåO®Iê\"ùüP\rÎï ¾¾û<I¦ÜÆÑµ¨òDvÅ³#‘\rí¢ØİÔcÿÃÕQ\nšBdª&¢+È¯¶J›´†©ãŠá¹æñæê eOGí—V&ùguã}[>Ä-M„YØÔ6C›	— §‰ÊG)3`ŸÈıäô¢\'Ò|™ËšÁbpêşºÒ—°tD\n\"ôïyñZO=L:P\ZXk¹ÌXZ\\d/dÙ9·WØu7ç,8 :ö	ÍdÒ¥Òªù‰µóÑ,¯Ñ¦\0ÛÉnÈ›@¸ÏIx6ü¨´ ]ÊıhäF7“b¡­AƒQ&äÏTÓ¾Ì·6^}íÀQÅJ‘£À—&f¯N—]†Pßb0¼²]UO½ \0!\"_É.üˆx‹8‡¸lƒÇ¤¯Q–fäWûIÙ`7–ùTf6E:!ß\Z»5˜HHè$…ğÇº%a\Z{Ôúa8M²“ÌDÓvôĞü¶cò«Läv\rİa\";‚“Ïp®GÕ–¡ş«‹\"nq\ZÛŸ˜ßânçš\råõ[™Gwó6/“E÷$â/iu§ŸW’ÄØ%^_†D¼å´¤³¿] c²ã\\y[4Şép¯}õZrµî7£@­ÇpÖ{)cùå‹İÚÄÃW¯Åuj^Ğbü½pÛÒ§•M)_\0—î\nã¶’©ÍŸkC®ì#ŸË¸Å)™j«\n†ÏysY}r®-	k^èÂ\râÏ+<ÖzK»3öI‘cºbîqÅà5+>«é,Eñ:BIÑ!´ÉãPOwAÎ—p¶ô8R:äûJ4‡c,‰/vñæ\nşGIÉªóÀD§K1³2ŒÊOÍîpsY¢’Z½;\"6¾\rËÃo7Ğ’……{®ª!fÅ‰¬6J´øË\\²éPIvä»š•mús|?ŠE?±Äæcš?‘K©p5lœ`&á\rÓæ Ÿ‰–_ğ¹F>Â*^ â±\\°è\0Ğ4œŞÑQ$çÊĞIH0ßE©Ã\ZdD…îÉ/‘ïxî>Eî2°Úˆÿ•e\09z²¨ÚÁèpùæÊÏá!$T ,Ïûà\rÅ2aÏíP²IáÛ’,_OmŸ³oÁ%ACSü‡HßI%ñ,\nàJ_‘ì³›mšK¿@°gÉ®ÊÀ¡$´eÒ,ZYtšaé_¡	B[ŒºòÎ˜zaÂCĞ¨ı¡cêÓK_œ’ÆIÒŠ‹)7Å­clÊ¶Á?&Ó±€>0ş5¾ØHDv†‘!èÍL±ÑÅjLŸípÈ¬ş[A¯çêı`î\Z3°wX™2úŞ3İ«Õ¢ÑMÑRiÃJ[B‰ÒØ	¡LœT9¾yş>G\Zñc(mY¡TŒé¤\"v¨Gñ’ºNúÚoVGíÁ—D—NìvLÒ¯Q}¼5]Òá$Ar¡{É:ªMP‡TOÂ<L	ÑáÂ:½~ÁÎb4pE\'’$IV¼Şè©øÅúøæo¯_xá—oxæ”ºvSÊRSr0m}KD±;%§ÍŠLFL’£ş•8]—½“{ßŠ©¿\'”—¶>%5O]?1˜¸c¢ƒ†£uçY!T}RÎJZRDIÛ)ÍáĞ&C»hp,W­ÅM¤*lˆ|şõzÛ÷“Çônn‡È»t‘Ê?¤_l“ÿÃN{\'Næ˜G££ô\rÊp»¢§Õ’okséĞ­•~¾Ñ•ƒ[$‰4‡åûğ¢ã ¦zá^ê¹|è€\'İ2óa:–Ñ`š.~LCò‚ÉQ06Şt[Váh„ğ×Í³ùL\r;²›¡+İÕgÚ<Ù\r\n%§Ò-™V&øşx–CY%sM,%ˆ}¶ËG‚ü%u4>ÃÆPşD‹yŒ#Ù•û´l+\\F¨Ô‚ŠöJxøOëv~íU©J¤aÇ[q#,P(æ…¢C¤	ìÉˆŠ89rn+•‚b‰mÃp§ØÍ^µÍj·RºƒQkdÓs¦Ì¢‘?Ft›úëšËA|Ÿï±´á¤¾¹İú‚Dëb3úæ÷Hı˜xãÓí|…DQ3€İ“Õ²ß®Å?ØZ^µÎ,YræY-Èí0À`‡2H»X˜¿V¤§‘­NNê;œ¢Ú]ƒ‰\n0ùªG fğc§¥0–fNî”)®u›WíšÏ¥m²/jp%Ò‰¬a¸#ätşdS%JzÑº‰ÕˆğdÆªY#Lïsºc:Äéœ&‘Ğ–y‡¦³éÁ“Ö8˜ßLàÇ›»r…ì@;®>V]qÎb¿…¶HÂ}œ¤/‘İÀŸ!¾Õ{Z¯,¢os™Ã5óg”y˜®8¿õÂ&è1^cšÿ†P‰¿ïsázè¹€çFBCÒ?Tíç¶ZâCÂ½k³wëæSÆ”åƒT£y0_÷şân×ºvBšşCÄê¾ñ»Uİ7_a}ÔÌ>a=@¨şIoL¿9Û†ÊJšDèsàİqˆºiĞ¡‚ÏFI˜	şl#BpdI¸xÀuJ|‡ó–¼0ûz6vSyšçüìÇò²\r87l6°6•\'ä—ùê0ÉÉš@|r!}¨¬ö”¬å¦\'Œ”PP¶ˆ3¢J³gÌ3i¶;ÏÂ\ZSa3p´ŸM.éQ/k?\"©nöÕÁu@e;öï6j˜üÇ¤(±%U*Ù„Gğ”ÕOa¾ú!ytğ#¬3rFAB¦\\°P/2j#÷÷‘é\0\0¼j¹Ü+¤ÔÂqİGl¶yä†Ø™¿6Ôıˆ2‰±\rº‹ãÆ1¡—Db˜ff\\”\'\rú Xí\ZyiÚÇw¹`7“Zl—iö™Ãş/×æI-ªû,³®zŠ?”L5Èˆe¢•|^óè²Ö¥ÿ©ÛíÄü©!ä)Šà,¾Ëî•ş=\rïnÛ\\Áé‹ èx]ğ=&ÚÑÓpsmÑvß!·ˆÀ©SÒÌNá\nYŞoÍ÷*Nã|}‰Ÿèß™¢ .õVá‘A4şÎ2v¶¦TÌ˜zfmøì à-EJİí…e¦ŸeÑOŞA¶şÔ0›ZÀWiH³yÚ]’’!÷Ş–Iy)C·¬ÜÇ@A–_é=¾–Ûş8»ŸBô¿ àH7*!;ñ¡ÜÇ7S½çí!Ö\\4°ç7ù\ZàÖ‡9Q½]°ì(r‹®óÈ\nm?Ùğ¾ÿ‘í*|9˜¼¬w%Oyn<1VäOU-“a–‰Sj+³Hâ[;\0¦Şpb¤²#\'7ı‘¡Û7|J%\Z÷Në;},Â# ¼Õ’]İÍ Zñ¨‰‘°¸‰4nãæ\nJ«ëRsÙy›zÚí•·°m‡Õ&Ôw¾›C.îôup~i´ÃOî*U=¬gùĞãøø©,±)O„…È ¢\\+Áè[ùO©ok(jÈ–]—åaäl¬£LëN„iÜ¤¢^[Ãä 9Lèf`#&/ĞEˆ¯WÖ[Èª<ÑÒXØù>T!ò09_|¨r òtÊoÎc¬»LÛX%òëæmÅµË²-ÉMƒQ0ZGùQ}Æ–\'änÛ-öáÂµœqŞ©Âè\r1C~Š¬¸„cI„ dÌ¦zÓN\\’\\ßò®ç QœJ°ìÁ,Ã²Òg‡^~!t¯’šÏ¼Aı®é¹ê‹Ò^¤Ï\'¤‹è0¤TV\r]I‡|ã¥k»qïG0 \Z…ô½$ôòçm±è@ø2	šm®òŞëlV[ÃïK?Ø”@—Ñqÿ -Â¦êÉ‡²}Â-SûsVRGunyû¢ËæÁXÚø\'KQc/@’¢\\w3%|Å&/¶1\0~øoÓ¶5äÖKu~eÔ^Mš	»;_@\0ÿ‡îG§‰gWÍ±–À|lÖ‘7L!‹?a_ªÃeÓ÷©}ŞH$cO.ó\"ÆlòR¬ç‘su®\\<A8dÀã8E<=.a «S\"\n\0:¥¢lé³(\0C9wÃ€9\rÁ<ÌÈ\0\0\0'),(10,'Ar condicionado',1799.99,'RIFF\0\0WEBPVP8 ö\0\0Á\0* X>m6–I¤\"¢¡ qIP€\r‰inÜğ¼½÷;N¨8HüååİyAIJ;ä¥÷×§%ÎYĞSş×Ÿ”…ûÆó¡8ëãùm~şıMşwö	ı\\éæ;öûÕgÒ¯ ô?òİh~ƒ],?º–úªÿEÛÉ·­}°æUÕ]¸?yı»Û/ô½ÿü—ìÚW\0¨\0îzú?5>Íû\0yYà÷ùŞÁ>-:$úÛØOõë­økÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäI?íó£-õa šÚ7]$^Ú·ÅÎÕm{Ô\Z4h*™Ø‰	Şou]gÔÚÁ£F¥PéÆîqC¶l-´åR¥J•*T©D·aÉ!Ó§NotéÓ§NotéÖ÷N:të{§N›Ö”Ù f]XĞŒ×bF\"ÏøÓ$©7ˆ”‹iİø¿Lƒ/¥wVT7¸D„±®£.—`X\"ßX/{cq\ZËÇ/-‡¼ƒˆ…½Ãút0Îw#\n,‡\0ï2úl)2¨:ÃhMêå£·€!j¯»\ZÎ÷Ù]P¬3âêÆ‚ˆ\néˆ>Z\\@\nRlPnÕ¦ğÏF ]G-äN8¼üêTKóÚ=Ò!Äs_yö‚?K¢ôÖßİ ‹H;…-b·ã!}<ü‰=¿~l5²¹ãÚ¤›%WØ#ô¨ˆˆ=è­peï±`n y!ÜÆp¶C-ÜÙÑŞ½ã#G£‘Ğ»5áxŸ1-œ™1f¹·o³c7×•!=b?Kp“}\ZEy.Òó©¥7·ó™\\³lĞÅsœb6÷ù°ybï=×¾¼_4G›³èš!tŠK§æ$±°]ÛÒ1ÈèáüËş°[:QÏ7fÆï®æP·İıÚıáñä‚=0E¼Ñ™ü0à¿ëvĞe£K\rH7İıÙ´ÛßæqıRùµh¾n´(ªÃDÌmƒËóv‚?Kºlœ<‡ì¶œ¤YÙ“æO™>déÓæÍ›6lÙ³\'O›6lÙ³fÌ:téó\'É=¯á[à\Zr!B&Q¶P±QÁÊnfç ç„§²ôy\0t”gjSŞ{ÿª’èO(xñãÇ”>PùR¥J*T¡ò¥J•*Pñò¥J1óMlÌì}¸uªX#µ‰Å`ñÃZj‡Ï§ş|úéÿŸ>}?óçÓÿ>|ùôÿÏŸ>}?óçÏŸ>|õ†,T¦M”ïßÃH¸A/Ì¢ì7-#ceá \\KW.\\´K®Ã—Ïf@çÔş}?õG¤T¡ò¥n>2ZíÙ—MQÚØba\\„O:Û’¤”ÒOb\"ZO˜íÒ9C\Z‡;ğ¥\\Hğ›ÖíÜnİ»víÛ·nİ»víÛ·nİ»víÛ±×è_í´ |ñƒÜ\n\"Ji;ÈtÁs¾\'ò0G‘%6–ò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäIM\'y˜#È’šNò0G‘%4ä:`\"Ji;ÈtÁD”Òwé‚<‰)¤ï!ÓySIŞC¦ò$¦“¼‡LäI6\0\0şÿ_À\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nÄ£fæ€ÑÿzHš¨`5=Å§Uòë‰ZÈKK|€’J|Ãƒpî’+uí=ÔwÖ„¡°Bå‘|³Ã“¹æè÷ot˜è\Zİ%‰æ”KÑÍåáùñÀL.«Ez‚úR„Ò(ù\rá´‹µŸĞ«^—Îâ€)˜Õ‘\"°\nŞÂ¿Íã¬:²K{BaAÑoL¼$_\\¦v,;/KÚÑîz°c¾Ôî8ás¨xºr·«V7<d29è¢Bj¯¼myc‚Bá#Õ}]Â–úÃ¹‰Ì¶ı 3ÒÄVIÚNi	¨úú™qo9%«ú>À™a	Œ¿¸JĞØèC²…ÒŞH\'Ã“W²æáÇó (ùİò­§G“Ëµ©]šyÜÛÚ¶†×x‰åUÙ‰³^	‡WáÈÖŠRaØ ÓH 7²\\4‡Ø«]HAÈé”´Á\nNŒ_“AÃåàÇ®ï+vo–#[Q»¨ëkğïfôÌT\Z~Ğ{ràœÆ~––\Z+ÂYŞù3¬ÑŸ¥ß	É³‹Ëuxm÷‚ñe¤í^ñ\rÖÓÉl&Uså\r¸‡]öö8­H±ğÇé9{BB*Füò¬È|Gßõ61ÂqWÆ\\8ğG«‰›Õ×Úx­\nNN:D\0ä+ÂhÉ\ZLÇãöô¸{%&t2ÕÕ·]ºòEæÉBù.%DAuâ* ø÷4”«BŸ?Ÿ¡J|Ñ~(iiĞéMjèSŠcN÷™e‡‘šdÀèöc­-õ>Mdüõöú×®@ğıÉ*ÿ¥N›×Ñ3şËr¤Ø“‡bûÀFO-X¨<ucóá‡<›r\0%.\"Mâ¯S´O(ªücå¸áàám_F	ÜpÈÆ¹o¯„ıŞA.L*£xß²ñ\nÛ»ÇU.Kä]ç\\¾ø•g‡BiÙ@âÂl£ãÕÆìRBŸsÚ3ë¥Yë¶¢P&|¼üøª2x­/u:z­j\'µìÏ³:,\0¶¡o”Ü$á-U¸e¨øğ#]ÀE]tï­#¦™hö”›Oš·ªíøTh¯ÿğÃGñÁ ‰ªİµóã×O³T8­4¨†>,É+Äeê¨óé³Ø…¹À+Õb®}Ï¾	¾Ñdµë]QİBà >P­Cø<OùA±¿rïÎ:Z§†ÇgòJÄËºŞH“SåÂº\'õ¢ºªE\'‹frtBÑÛåŞâÄÜêíï={€ı/D§ÓÏ#¢ÆáyZ8˜(rnËØwêÿ«,¦ıGTaìüXêÔ~ïÖU‡*	£5‡â Ó8ªl	à¬TÍşÅy‹ø«!Î}—ùPãÎ{³ı„zşb·dy>xykÑıI:ln–\"mLîÈlÿğğTqY² N\'Zú÷ßáv‘ë/Äá:›%L¤k8\rD‘“ D/f6+iz^äûìŞqélÚ\0â­òİ¿ß¼]¿Ì7ùXşWäŒ\"ğ}ŠU_OÊšïßÒÍ\nˆÂ¿çV)´okÕü¶µáºä‹ÿÁiŠ‹€]Ì½é_`x´\ríhŠ/”¤³f›èAøTP|©ÅŞ¬ò…\0·ïfcaáíëÜÊ(g3Ö7©ä/ÀøéuÉ¤ÏèŒrÏ¶½PGCWç‡m\r]@ˆ\\Ó–½)ƒŒÉ\Z¥+Û¯´a˜Îª†p\0z*­¢ ÔûV·³}=é¢y£Èt˜¯¡xcöÓ¦ğvOre(Åø’ä?Tcai?šØÃ²K÷Ø0ßx\'[mü‘ÑO–ì}Š=Æó3J4_ƒÓ‡ÕÑŒĞÄç5ë§¨KHÌQD]µá*t‚}¹“k?Jİ9rEÕÿ|‘6{$oğğ£H¨$œÃ‡ŸA0šK÷qZH†.2@\r(7ŠüŸÊ%é&a=jŒ4³NÌ°²käİ\Z¼_œæ­”$$õp\'C,(C„¹z›½+¹,d¨œ±l”ú_y÷Ø“3{Õ¸>øÚØ›ÛVÛ ÏÔ3J\" P.-oëN¹“&F\Zf‡ úP›|üMè¯½,•Û2®*ç]LVON€×ïH¯\rÛ)}V	¤{¿W4xç¯ÄÎæö.\Zº/Ÿvå+*h®X\rQ`é‘BÍX$z\n»!˜J‰ƒ8ÿ<eı„Ğâ[Ìám?éîšƒ\'‘8|¼k\0Ï³ ş«½ë˜ŠI†g‚œ×â·0à>¨c/Páïk]\ZÔí8}éõÌğ®†&!JÂé]¤l?{„à±\rç~!‰UGRî¶uT«sèĞßÖAï>»¿cùMiZ3s›E©\"ióG{>¼zıìá¹ÅfaŠ²3*ÂáX9<z³Ÿ/3q+º9äÀ—ò=W!KßvŞ°‡Äùš¨TG¾ÆFz+˜“iúA¯Ş6ÉÆ\\ÑU3ø½æš7Z¹àÅíw¼#p9Ğ´ñ§!<	¼ø,ÄØ¯£Ö´›%#æ¨¹åta9?²R˜?PéS3êšëµz˜ÿ1p2F¥Ä÷´\nB¸ˆş0\r´«úİÈP”eOç›oõg¬‹0Í¢ÿ{DIT5›†	{™‹+¬]u%u]-nô`D\nEc­ë¹Nú}¼c´A·¥“øöcÌš<[û+›6¬Šû#İDvä’j±S\"\'k`Zš\'öNı2ÏŸl›ÚÒ½8—UU:+Ç™4pÜ­>S­şåiç}§Êº«N—w\rU[GCı„°x~´Î¡úÿ,gÔÛ}¿Ì˜ÒçÈˆiÜ‡’ÇnûÄò;=áÊşw¼³Š÷4Oò×¢[\"±Ñ?N¸my‘[“¾<(¹¼*¸Ğ\\á§/“°…K<Ô2‰WE}ÒÖ‘3.=ı€§!ÁE·nX%;>T â±,?=ÉPí¿?¼¡c(\'{I\"ˆç]›òˆÕ\rPbİËñ!=¨o+—Šg“ÑL%’³N\"–P†›Íº¹øÑ5å!>c\nëcÇı6¿±ûFİïşíi¢?™™¹zâ‡; ›d8lq_<í®FÒa™_0ùˆg4ÜY!î©ñúü””ššØı¼&•+å5\"s)pÈëzï‚¤Œp\ZuV“ÉTø\\:E<a\\vëŸÇøè~gUw¸ÖkGnâî	\Za:O?9´W oÙ\rmP‚G>ïó!PY<æåÏ¬ÿ}ı\ZdÍÉ3×b`\0<«Mëğ²z÷ß;¸qò-%À‡ôõQ“*Df0¯q}_„\"çP‹ñyÍ7ø}3Ñs/­§6AUILĞÍ¿j=xJ&¶w.¦#\"Ğİ@>›¶o6j®Är¢od—®€=\\˜CÈü	m¹#‘Í*|¡Û?™Úª}ÿ0¦úg”Ë(åšî”¯–Á\Z0´¹Ôl¢ò·ÈóÁ+ê!-ØıCR†£QÓÔ4‰ç5}ˆÇËiPÀp²nûX\ZMÕhÑ5à¦¬œ\"Š—³T³²ÔË­@3ÿë\0·y,‚åà~&aÜÇiÆmÚ—ñĞU‹[öyñÒÅ£´¡Ä\'1OªüwÒÕ`Ìœú\"6çH¤‘¥®Øm¢Z&wëÙ8BÅM–Ä¡ÚDéì³\r|æòÊÓŠ’\ZéIƒ>pSøİ|ˆ÷¥\rï‡ú8Š¬3¿¡ß¥©y-e*F¹ÉSö­@,öCÔ½57Ğ)M¤Çy¡\0™¸ºï`ş0?¢)¿ÿğds›¹ÊàÍ{\'jóôÅ#Í?5 ™Ö®‰ë<ßÀúäÖïFAÿôİŸ»	óğŠ¼Gª9+Œå áğ&…a]5gŞVHÁ‡!<×fÊ@o‡©fI<‡Á÷ZywÂmD•İOwÌ‹O«t÷Š.Y¢pêÖ …Ò\Z²â\"Âc¦¬-nœÄD\"füğ-f{\nŠ&øÁJ±ıÑ=á3cñØC¹‡¼Ş^\råÒ*\"­ù0¤·5,¾X4Å‘´ÎDuĞ¸yG»G£™=\\AÏ_C…¢²Ø*ZÁ·İJ–â\r’Ö×\n™?çÎLô‘Âé/Ş	D;¬¯{¢D¶§4pl‹g×¿RŠLÔå?(ª¡J ‚ß±*.xùjÔîlÜ`w‹¾ŞU¡‘MÅ®	¹¿Áe( g¤¾5TÀfm23ÅH_—«ˆ˜G:b—ºàœôrã~™Ó½ØÂ¤‡ÛªµwİV­”!GLí(µ„ÀÙ%]MlÖÊnC%”aç“i\0^QkyAy¾¹w5Õä“!L!¨m†B‰ÛÇ…{ºdNöz–õ,ˆ‚ÛƒŸ_J~šÜéï/C+¤q¢Ê9hH$İZå•C£Â›“k6¥Ö>È`Å) •¨¯Ì³è‘£ğİ {ƒ|ƒÂ£–Ş\\L¼nemKhÔ„ˆïJ”mHHzeHË	ÓzPeB\ZŞß“ØèJÅ{|ß½W9!\0Ÿ?ã;\Z—2:W“X¾Ÿ\nœH_Êì/ì G—o–˜»¤<rØ\næé\'ĞÌa%«xöÖ~±¢hææ\"øˆ\nW¶#T åqë‚aÄ‘e·Gœ°†85växÄhÂ:…ÀæGÖV°jÙ½¹[/9jPÕË\r±.Çÿš›j\0~D\"KIôĞoxœı}I˜ÓN€ÀsÕV&“tmäÄµh›rä^!5Ÿ\0àêc³\0„MÀü¾ÏÏHT\Z\n§=……aòÙ¶¿ÙÀeUCö¥‰v÷¶_òÉ?\'-ˆ&£rJ¹©²KìÀQ†z•“ÆpÛgñç€±a\0‡¾¦ dÕôĞdw¥¥0˜*pMD¡“0åÊ+¡D…ÏËÆÏB¯§«Ü&ÌƒÀwÍÏDl\r{ô_~‹.„ªm¬9T-é¡­EGªìÀ@<1‹]·©0Ll6æ•PN›\Z‡ƒ9\Zx1vÜŒEæ3è)/%™Õ0÷” Ö[8öÕh¸éöç-?ËÀÚB¤\\Ç€*	>ò4vÔèD5í²¾P*-G‹ä:ß/g÷2§THD\"•Ô;U…àîŞ#V™±uÙTè8–§ÁFÜ‡L‘ÆÇ6ÏHW9sİ%UîNÑ£&\Z$	•Ia°áo€¡´ë²ÏÜA.ñ±-9àF×‚EòÁëKK-tú×´3œÂÕª—ª{ÆjşÒrHa.úÇ«ru«+ ;8‰S÷3æü3Î©l¿±ˆ1dEdlõ:¡èÃÜF;¬&À——IƒŸ™÷9Ğ?­\\OEÉ©\\ìÇ–Rí˜0‡a7—İ™B<çXGH}¶ôöR]ç3(„ƒE2ÊÓgÊˆ¬$æ$Fz`XÑ:ˆ”ÂñN¬\rĞ£E–ÉDßu ª£“HÓ]†^gœ5à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(11,'ar condicionado 2',2000.00,'RIFFÔE\0\0WEBPVP8X\n\0\0\0\0\0\0w\0O\0VP8 RE\0\0p±*xP>m4–I$\"¥(¡R‰Ù\r‰iK·xOÿ¦¤„›S«kÆ³\"úÛ\'/m—ÏT6œá»Ëí—øè/ÇüÚoãêµ¥7›eÇÒö~ÿçz±óçíæ#ö§Ö‹ıßíW»î> Ö?ÃuŸú\rùpşâü<ÿrÿ}ûƒí!ÿÿYåİĞ~âxè?é~ë|³bOì<û‰ıZ_åÿÜñ7å~¡~Íÿiè¥î[şg¡·ŸwôjüŸ<¾Éûş·øèx¤~?şŸ°\'ê¯Xo÷<ÛşÁÿØo¥Ÿ£ĞÀ©ÖYd·?o‹‹’·GÜ{Ø4é_ª4t‘&ú§ñ%~©ò Ğ[jKTÎm\Zü\"…Ÿ;¬}…{ÚĞÀÏ¶q4ñ²{[ÈÏEØ[/nbA½<§º®ØãkË¦=*`í~y’¨^Ê=Ú|ë3*‡>»O%V1ÁÑÚ¹á¹#5ƒQºFVUg•Æ`’Wx¿šÓÜ\ZNQóÜìÎF¡~j=Pê^vØ{CÕŸNšW„Üã‘C¶V÷@ükMÎêe2•Ø»TZÕb@ù½~Tİä¬Š6z>]GŠäp}Û¢¦Õu¢#ÊN’!Z\"”Yl¥şt¤ÓÛ˜Ã7¡W·ÂŒÙÇ§±/vô;`<¢³È‡{mí]Ïİ¨Öğ\Zâò©¿f1†¦róJ?8óìßxÌ˜U`Œq.“—\0!ƒëÅ)(EßP	–H«€“\r·+#.»KßÇ¯É\0ZèReHÑÌW…s—A³&ìèñêfrÚoc%LpÕvVu¨	 Áõ	ÈE<î­—Öù¾ 4@\n@áüD=ŠÿîİõT»çGäq…?ÿ®vÏÀ(êœæDğw½¶5($(jAä¾ %Å°T»ç\"7ª?W²Drûnÿ‚x,–£tJ´Òü…§bé\0 îÚAÿMš0ÂšÈ\"¥ß6,\n>şÈŸeU*PO]Å\0_å«`3óõô™ éñº5 ã„|ÎaãŞİbŸÉæE¦`oYĞÚpB>}¥Û\\ùğ.c;\nP?	Q)H[Òù½@JAãp9š,±WÎ¿ƒ{ˆôF²qõEÂ’ØBÕìî\\Np”É`ÒĞ-ø÷óXíyëª­\Zöß—,Q¶ìí©2)¨÷7N<Í´\Zùçh]ÄzÌúgÂÈ)¸m²h”ì¼\")P„fXà†N4˜gQ?ÜâßÄÅŠø¯î2¿Èä¤Ìc¥‚§ïÔ}QÂ¥a©üI^À$xQä×¦\0¹İt§ŞœÍ·ÀÈ¡´®´¶vÕEÒˆš;¢ÓÎ\ZÂKÙl­rU÷#–ÏšE±/€$âNçX½ºÁÁC„—bÙ®m&ÀrÇJ}¬í:4Ùİ1Í¯üãÚ‡³2\\ÎÅbo(ÚÍZ”z„5aU}~Ò¸@<\\BŒ gİØNÊšTpí…ƒ=ØoåÚu‚”s½£^èÀàªjVô¦Iv]gšE¬Ÿ—?ÈG¥ÿ4ˆãÈ8@]ã&\\ëRƒ@mKz59\rÚH”ÕÖjšÈºHÀ2KvE2?hMâ%«\nlòu\'ÛpÜ0á—íV©*W•‰m …÷ØÕ7¯Í[Z~†t×ÛuŞ—2ÌÍÿàÜ{ÍHæªEúYsØ®$b¬µŒÕ$«r¢u³›WİcÒıY¸ØA9¸¦±Vroõ’˜((m‘û›WÅ+…z¼?á˜$e÷l	A¥TAOÄ6sšñ›Ò÷aƒÿ!@>pÆ£,âa%5?©‘zXã\\Ñ?xÙ˜Û½šÙ™W%tÉÜ`ŠáP©¯§@ÁW8àYT@êisì©T0½é}§ÈRíGFšâ/‰–2æø.99¾ßÁÍŸ+uŞ†‡ÏSlü‡çÑdDnDÉ\\Ä™ûjÉ¨<Û)ìR\0=e¤Âq\0“’ø\"¡:§£˜pÕy‘—·Rúœ×®\r^jdÃø^È\\ğ¨[‰İŸ8,x¼ÇuŸ—\r6—Ht·ŒXƒBÊKæ&£&mElèÀ\"è=Ï×–f1HVj3vx\"ìš2ÿğ-ŠéX/.Ş­ÊÅŞ ZÂ¶+\rô­v¡5ë’õÁ\Z#{HWw4Ó*Y~÷ë \0\"¾\0ğÀã\0â£­Œã@¤;ws\"ş`‹Ùã“¨üaŸëbµ¥ÌcÕËĞş¿ÒeY…4•gDĞÙÁu^®‰=ì\ZâhÎµÇEÓïĞDZ›¾4zãÅ·–^¨f?ağšä2£—îão÷‚ğ^¥›Õ´sïÉV¥ĞRÅ®ãñ©(ÑNH8ÕXäZd÷(úWèLß	^°*Á£Î¢£ñÅGSD:îEAÂsáô ˜Ÿÿcr‡âYùne®dR&ÍGVŸ!6Ï…ì?\Z$	â:àLkRÊù ½e·}ı;ƒÑ¡İoÔe^§›}ÑúœÎÇÂ_Êùç\\\'nİÕR;×ÎtÚÍŠ+İ¾ÍA1˜°A–†úê@®™Ûk®ã5Lñæï§k±k±·GÔITH«ö§3h×ÀÃY\"Lèÿ¢ˆ2EG9‚“J«˜5ŞöŸÆëk§è˜86M«Úc¨Î 99F	hÄÙÒƒjæ¿+Së=€é„†¹Ó·ûúy`Ú#‰Ì‚Ä\'&ÿ:¡#TĞ¹	zŸ{MRVÃåíşM<w:^³ît$ù ÒÖ€š­˜ÿÌÛogÔ/qh“³~mï$ş¡–±zéBÖj‰ä¦vî*BsÎrZ-ü¨ë9!c~@¾±Ïô8P\\:Ş±üèİ[Äü©ç\n÷#^™@|êû€	ÀÇ1âJì?6Œò*Ó3vç	,3”\rÇË ÚG”\n-üî±X·Ñ½ÿZâMÊ7ºc‹êô´İ·¯e`z˜Ë¹i–4ÿÄR¿Tş$zLÔ\"µÛÆE‚ˆ‹İ\Zšÿqöp’¿P›ß\0ZlG¤,v˜Í³ÿ¸Ó–#V.0Ò*oqC$òğVÖ›•Ÿù}S¬´\"\n×êŸÃ%½+&¿\ZÇ“ºµïÇXûÂt\0æ@2(cìæ?:áy£Ø¨\'ÌgSSY×ÊP²\\C­|ìâ7Á¦ÑHÁ\0v¼H¬ƒöòd^7Êt;/½oFC°¹ZO4jCD3¸LìÀ²ãC?*rµ1Úh‹øLü	şÖ7¸†(@€•} Ú&²RMèiD˜äR\Z\0†%õˆTÔ,96s$Ğá³ôÑ¸’êğE}>ÂrÆ…›úÁ³uƒ†tüˆÌc§\rÛU9ŠgŒï(¡aX&\'¸oøBk?…Âë•,é2×\r$ßj+T‰¦‹[ÓİÎ¡_¢æ7Ìü\n^¸Ğ@¸¬î/K;Ìç1‰yWo5@œ „3N|& (Šú,Cg}îyŞé•<vÿìòKk]6-0€0ãi#ÇÑP\n6øÚd¥YELÖånëD±`ÍÎá ¥ÿÂ¹ŞéFh•röæM	¹lÆ…³W¡@¦–½Õ©=±U¦ÍàkœQ±ŠŠût^`m¿Ö#\Zƒ×å+ÜÂ&zÛt%íĞœÖ•Ïà%/\"Şà8Û€róµ.ÍÇ[,”/ØÆùñ•>t-®¸%£%1ãPêúßÜ<‘ºt®«Ù5mÎN­ñ8xˆ*‰¬W…nùÌ¢täÀó€V=$ïx	jG¯ÀŸ˜ÿ]ŒY‡ìÓè¼Ã€Ä§…–ÿmŞ6Á”úû´ª­/qÂ²ú“¤H°ŸÉĞ1P—7Fıœ*p>(:&/~Pº\"Äû5ùˆ†VÁ²µÿ²Ğäìú€¸ĞÇF}Jw¬îÀ@W‰‰ª‘pÖç³/Y•pEÏ#PŠ²Û‡\rÕ“¢ácGÍ»ß6ÓBiÈÀõçGİy‰‰ñ×Ê8Ù×h«¥YÂÅ,ŠÂj´öCf;xåÕĞ„íJÀ?T¹ü\Z,ÿã.e¥LKŸ½Ä–²e.ÎÅOs¢aã¥/|,åÈœŒë0çÒèQ+•Ù€Çí8ë¬i¨V·æ›f3#\nd‹V« ´ï5Ò¤ªÀÇ›œ–Äk”±«Réÿj­T~i0Gó4¢ñu8\\Ã1\"İlUx—~2P4ò\Z¿]™z‡`ál”‹®`èµŠÚ\\¸G^œÀhäò‘ßÄ_>NÉä‰zÇÖÔ©İ˜S@|Ã-\0u´sçíd’İÅRh‘=\0Øä¬&w—p/qk.rrä>f_°\"ówYØø¿İhNFsu!Ó¼Ï¯‡s\n*péNk)€ßtÀUŠéÈ™óüû\'2#ğØE~P’N÷]zéšÚ|%ş2Ci².^Ä¿BXŞèeÿÅ–x$2÷ÿr-quÿ<6¨Â4 ıŒxßÇ»uâiË·‚\nš.¢ü\\M?5¯Ùã,d‰ß>Q¢pI«ğ®´Ã\"/aÂ<+ãzÕÿ3ÿ=¢ê«ùõOâJıNŸ”™AJMr¾WTMŞËgJMM¢vßNá^Díì‡×êká„YÛKä½Z·½šP”’/ÉçØÎî{W7ò\Z²]ëÈœ@Yy4mz°\nz É5ñçşï<µ+€\0şä8t¯$ÄÌ{È Êßu¬Ãv©ºÄÂ¬ˆÎ¿SUÈrıÁH÷Û×¯v–nQáHxíè=U\0ƒY”ÂÓ\"¥aNÿU\r\00;]SxTvJ®“<y (e\nHÖ©äâû‚	»G=ÀWêÿ&íŞUíL§W($rÜ,—™)şó¹’6MÌ:Ëµt´7°Sİ\0u%o9äøıCàœœËû!p}cy|?³ÿĞ$rV×7˜.°Ær`¡PõÿpñYh¶¸œô3®‘½‘9Y¡Ö±õÆ+^E­¬öÔ=Şá,1p×a$01Á£W S•6/—£×˜ÁQSé4mŠ¡ê´FáÔ«â-û½]ƒ¨Ád\\‹˜¯¢™©ö«ï¾ÂLXé¬ônœë(µXü†sU\\\0ö_$]Ót-\nòäF¢9uY²¥¹p†ñ*¤Óx«H¡á°à#@èA“‹=aÁ-¾0­ÛÜ¢‚äìaáÙÌ9Bqà³GP¶YŞiˆhq ”•M‚¶¶±c×˜ÇöÄíSllÊ‹\0u4„Õd_¸n~_Ï`~ â	G–U¡•(G¬§.‰¤èÙ¼d<¢·üª•dE{•µy­­¨F›]a ‚ïÿc\'<—ß+pípô¼úXÉ~IÂ=jØ^gÔa¹HkA…Ä²ãë/‰dUBxÓY%69—š\"¤–4(©çÂöKñFÉßÇ¨\"*1g›´V1ôıAÒßXI$_a¹T„ğYï6‹)©•–Ÿí„Àè¤K@qÑYGÿ?\0¡ÒÔê¿{ğ½ö İMÕçİé\0›\ZX%/fıY»ü£JÛØÚÁ8\'	¤[ÔUº¹{…™-<†Šf°%.h2ÙDb¨ˆSq‚dô³êvñ\"BpËxc.Î	‘ç¸’BÀøµ#!´ÉóšÅÁw¬}NãY“É)Õ-‰·%´tÆ°>£ÇCiZ,ùê©¸öıãôú£R´.L”n{Md¨-âñ\rÊèât]Å\0U/m?\\v&y‘yyÃ«„ñTá\'M¢öºåÄÙ¡¯vL÷•ê`wüö	*AV©\r™¥N¡t‰×ªe/«\r¯Ã×K*1çÏÒukûP£„&)=+cŒÑq¸ ÂÃë’å`5{•oáf›<Ü¤ôR\\[R\Z‚2í#eah¹ãÔÊÜ®J„Ë˜¹((Hyñ|EÎÎ%8[RàŞÿ•·!7#´¹>xĞ)‚ÁÊ¸qcä³Ÿ+–¦¬È ‘}îFbB‘2ByãU!ÅKó®WÔ¨=r&âŞ´¶GÇÁ¸¦¡}şGÿ%(Œ¯ƒÿÓu<Ü¿÷jø 5¯ĞŒì6ÉÕdp:¢ç¼Ş°©d‡¯º\rÊ“†$ÃX÷•&šŒÿ“¡}ºó‰€RÇ\'xPÌºLÔ\r\"©ˆmsêb.ºw\ZªNOGB³*eÒ‡çŞ8²©ªC +\\lPò3•ãïidÉvv5E‡`s!.Şşğ–ÕÚÙ’t˜ls)USşéÇt-`P¤ÎÇ!ã]Ö£Ş‹Gò›“œqù¿;Ÿ…›dY¬k–€ ÿ®t\n.…Éº³˜m~RVª›XN#ô—;Êh9Oõ ?ßl¬äÖí<(u‡²ÕåÒ)G0€Ïõ´Ã¯\rÜâSÔ»—¯ù;n$\"(çàø–	Ü•=¡·»ÏÜÃñÍª¹ÛÓİ½’Ë3~ø*«ŞSNr›Uä4A©ˆ&¾ÔÒ€[)ÖÂæ3ÜÆ¤Á\rˆnî ßxrg˜!n5uy¨7àhF*‡ 5ŒÊxĞAäMö(ÌÎÔg\n€rªºš?2|ÄŸ—ĞÍ´p×<°¥wO®™´£ù*ÊÄ÷´õ2›ïîâŠåûÇ¡óC¾ó¾Õzğãõa]Ñd½[½2ë3mğÑ¥A2gİ1İ¡ğ\'ĞÜ/},5eÇˆr´©‚ëwi2,è&Ol+wùİUÁ.óYW;dà1{ÊƒjµZ{àõöI#î\Zb 9&×Xƒ7‡=‡Jã <Ã&İîYxÖM¡|}”0Íß\n’(†¸ã]ÅÀØ‘À„E<\\!Ô[\\ÖUâ\n(@L`à•ùZ\Zªì9›şÇ€/¶D’\"]…0|ÿîÀX:L	w+7ÜìíÓVhŠîQ\\ãÿØ†¹¸N*Ñ$JØÆÊUn.¶ØG[:< ½„DY§üejä×cuæµ ¸Gv¢Ğb\nå4Xş4ú7JQ¬@Y4o‚NDßìn_0fM‹éÅLü\'nÜ\nÅ$O˜\r0\03iØã¡ôP\0\0Š¢–°?¾.Ç\'Ğ_Å#ûÎ«Ê´\nl¢O÷›º`A/f‰4›1¦?ËüŒE±$ZmäøÄ±ìï”NNîËSïö	\'z=Í–ó5Û-#Ë=¢ÿ¿[Ç\"ë&ÕI¦È…€ìÔ‘şXŞhïJô[»ŠmK$ı‘§ƒU®-GıNMÍMÒi)GÓj«dI	)¯&%»}8ÀÛëªw (ØYHˆ½¨T	Ë–!Ëàœ™(€\0eÀ=,Ø>·¾9Î9ıA…6ƒM>–[ù7êÿPË\Zçÿ&T?ÍÊ2\\£ñ(tægß*ÚÿoÄrU•QoÑç¯9DÉ«âöj”¥wÅÂ(ÁÆL}û[q1ÔİKˆÄ‹İòfä“‡K?L‚$„çÓ\0té¾×`E†	&§ˆ*`‹w¬¶o5õŞÂ¢Q>“²Ín€êÅ#ìpØ°ôn0»-¦0FğŸ°v§³ı¥«q÷øóÿõWD\\±€C-áF\Z:é8~,(Ÿ€+.˜¸k‰÷Š)˜ìH”*§©ê˜™4ÿ™İXGÂÑ€ü\0£4Aˆà“‚ø‰¿à8º×‚E†Üd@.nootÊEæ]ä­‡”;3L0P’D5¦?øVğOÈÊ¿H©qbŸú•“ÍÈï†‘Uˆ6Ï›ş¿	X9l“rñ—dh°[êäÅZŠê>MCØ_,¹6’Dà“.ÇN²§„Rà¶3À*\0×À\0\0_i¦=Á}Ê¨n­ìj|”\rDÊé›%vÏ²vØ”ñù	ÕŞé\'˜ôd\rÍ$…Ş1|çD–ï¼Pa—¯³ú£¢ßSìxV-3C[2#ØFİ\n1w”rïDé 5òè¦¡­\\º7Fş}%V¡\0şÉ #«C¾ó†.ä˜Ã96³/ùÌËô`ÿ•ïıºdºÏ<çş!ã—á É÷„tl@—OåÏÌ£	÷Ô¼ü%JÄ…ôtÑEÍ®›•-c(£_ÌdNvÈÎ Bñã•q_…0^{ğNš)%|QLÍ	ï#ûMú›ç5:y§+Pe‘—eÈÀ8M\\‹\n\n5Ÿ/Íæ~¢ïSş\r#Ky9ÆÄ+`)øª›VM†_.<˜hO—.”Ëş3¿ïãó;é(‹/¾kDb—I¹.<Yêób;¯éğECŠ\")·Îßø_%¢ä&=Üïè¡/Ìø1ñÌ;¬›ìÕ»2=â‘Ğç7MÜ4‰ÚÀvå\'Û_x<Rõ²êA»Ièe§Q¶æ$…U	#„z„÷C\n_‚Aå ç¾3æ_?>Ã?ïí¥2`öf£¿©]ñıöÿr<lÌgDˆLÿ„,GkÆCÎ0MşXqïÃ¥ÿÑgl©Âä©€ñ¶©Mút-@®—•4Ã	Ì¦~¨®Z¨²+\\¿Ãÿ]ñwœ¸nåĞÃø÷–‚æfo§©p%ñ!­L\rËš8°·1è¦œV+¯$ªà@;Õ¶	Xö×™ğUàã>§ùb¦k*“›“ı`ÏóßYFR¤ßäÈc¥ê¼NºæšŠúC W”É8r}JâòÉÌ¦<0¿$:­EÍ\rD¥ƒÊ+§ìµY™—¤Ë)…åj‚y$u\0‡¸Võ\"\Z’ûW©dÁñfo<J;›Ò\Z„_ö–éS4…Ë³ìXçc	Q,ã/èÑoHVpÏ\'Ã¼öÃ‡t–´şºïLw‡Òœ7ªTTÌ^Zxî/n@,«AªçŒç}îOåNjcó¾8ƒÀSg6PB>¯©*ˆÕªèó+¡sû_<×¢Iòâ‹E	ì?1*[úâ}J´9ğêTR»E£İ±›’’ıl&6)Ï·¡ª¬Íÿ…û“kÅZ…ÂäQéÌû³¾is9<ıIÕ3X€„`õúcÓrr&õM¡\0ejmÈS½næe[¬İ8 \Z²vŠàl	3<7Ğ7™ÏsŠ¶²…ì@3\nİßòß&tF%\0 2ğDÓîØs$<k@ŠV7|7Ã=R*®Ñ‘ë›~ô\Z”!bzr@‰ÜêE‹ö‘l>}N`”®§×ä&_bs*²³Âå\\p-	ŞuÕâN+ÛÖ(©.©?(PKòIWÕ’LFº,p[™q•ÚŸÀÓñ`¾{“ÃV}Ë¢\rëß× ENôE—‘İË®óZÌYs»ÄÊìÍpÉeÍ(›­ÙÀéáPTæºr`«ù–¨RÑµ\0ùtKÕZü½\nSÎİAní\Z323È«o#1ökß¸ĞY?z/BWÜ;Ş$WÆ@Àä3¤=YTŞeœ¬6ĞÆ–ç¨cÃ¹ÏÈ°Y¯²GEßÑ\\š#„›U‡YŠ#µ`vÍü>£~w{)ƒRğçÅŸ%œï·hlM‘Öş‚Tm\Z§¯½sNmCşFríñƒ-ÕƒB¥öPº*sm…\ZŸ1Ì&M_UGÉŠ›!¶vşCó¯›‘¹{ŞªHÖ…ËTcPÿàNß†\rŒşıÀŞÿC_ı¨œZ Ä)º[Ùı/Ç\r¢çøv_ä»àì¤6êĞFÑ‰ó+m\Z¬dp‘1­Ê\'ø½ d•o¾”–\\RRm~ârDİ¶¥g´‘º{›í^bA~\\¨Æ	’¼_ñ¹¹=­Å1[|X\\°:š€Eû¿0ûL<¦·ÕN\0IQÒ—Yòˆô:ÈÄRË:ƒB™Ñ3Å¬½ÓöÏ–ñíÁİfxƒ}ıOø$w‚øB…˜Üwî¾!p†kÁy-…¿î=Ú…ú‘vœV×/ÿíQ^¾;³ÜiÚ]o€œn„•¡ÄÃºùuêS9õZ#í³´z121èb%¼T=~é\ZbRà°É“&\0œ–V†-!ËŞq‡Ú€KÂrI“<T·A+Tm›¿SzÊ‚¡3‚‚ÍØ;h\0k²Ït>¾ú8ìw{BÇª“æT9UIl2ÒÏøÍ‚¾eĞ<ÚCT0S³	L»ÒŸºÄvgñ™X›2/Á\Z\'·\r]•eî10Y•gKĞZ–»Ù>_ÁŒÿ‹ÄŸQJëñ”vS\n:†\ZÚó­âçŠ!íégÛìfKÿl\r³ĞĞû#hx6¼tíÉlrPÌŠ!¼{—»Á\'Ï’Ôìf×½u3ÄÀ0Ú||L%‰ÈÑS—ûÂ$+¿ÿèÁK-–SÂT‘C$“+ûlQÍ{§èØÔy\"œ©FÔ¦m¼J¡©[:ìeÔˆÓÃ½-–!?©ı‹óIjŒùoVÑËµ«0BpRú\09²øx\"¸r¶íjè\'ìA/Ä½)À¸¦ ™HVã49P¡u§1È‹UĞ—7ŒÁ`${{°:UYEÖ!0ƒ™»~ºJ–”36:4ËÆıÀ_Ëwm™©¼¾¥øI|ap?nF¢ãEHÌ6„j2«4•’—=\n·“_6N[ªsËSìnô}€¦\ZœÜ….\"Ï›Ù»õÍ¡y>¾\nÈİOÏ¢\"(¬vÁv~˜üVàZî‰¶¹õàD?$uQ²ÈÃ[PmûÓÜVÛçµ9ïpv•-„gC;é4éC)Î¤¯œÙªíAÄ³ÌLpVÑÌÒı+¹˜a_êşK¥^”­~JØÚôã¨vúf>\nj÷Œø¤—ä§>OóDn&(ŠšÖÁ#ƒ2”¬`„ŞJ’\nfPC‚ïìÌÅp£–=”¨kœ«d\'5j¯˜u‡¾vì»ÃÅC¡„.lú EÔ¹lµy÷ğ½ÄÑƒiïıNäë\r¹f@[	¶§SU¿\nÁ‹ÑiŞíT—GHg“§÷Šûƒiû ~6ı¤-ñXİMqUM\nFjqXiî,3¦˜v	ªhZcE…Ki€m\'¶KòÚ¶®l‰ß	§\rÈuhx¢mÿEÌƒ«?e²ş²–$mşnš% YZ§0şOãe†Ø5¾‰ùkˆa÷Óó€ Õ&Y)_>æ-wÚ>([  ’µVØ¸°ü°€ö³—¦Êé8‰ş£ß·íÕ1ë¬	ªÜJŞP-²åÓ®Ğ^~¥\n&|\n5cÖÀìh#_ÎL—XÁ¸e)¡1»ô—/6‹\né¼:‹67\ZÛÜY’úÓ;M+«lÄx¬ÓãR@ˆ¥xğƒig))&áÕ\0 £ÑÁ·\0µß0o›9>5vŞÑÄ„Z 4XPè•~R¿_¿ùº· ÿóÉSÄÎÎk:?ÿøûé`¹+üÌŸElq\rö$		Qzÿs[1 .3Ólú¨1ºÏ»5“ı9›GeJc…fÍ$bpØØéA[o|»u5·f’m!FğÖ>\ZB÷A%EÅÂ]ÌßÃÎ4´Úßc#†+(`!\"¹¤|ht–‰ZÚ;­^0şc\0¤_\ZL²á4~Ãİ3c?•­¢Ş—Ê¦ôŒ¤ğ õãØP7õ ×…ï	  ZĞDœY_âS=ün>˜û“lëƒUÂ>\0¦Ÿ¼OÓÔ§	Ãƒüea”Ü`ú‰ÈüÚş=J§³CĞE)$Or\r¯öl)r[-ä÷ï EŒEMs$Æ=L‚•’Û¶kØÛÕ‰Öê¶„Tx’ënÔÛİ‡T5µ6„*|…~¨´¤ZüÕı°Ë«³üº¶‰bgÛ;uDàEŠî÷Ï«m®™‹<.f>srÀcò¶ûGÆüßz»÷ÍëZywïD“­Ù%3®ä•Éúˆá<•Ï˜z¡€ü¤è‘yÍŸÌ¯ItÿÄÓ²ÿşÿño:ÎÄïêÿò((uxÍ¥P×î­% ~N‚„<†tLk6Ñ±ş[´\'	1->¯ÿåÅ€-ÃKúÀ[õ~ƒQ“[­øáâã]-E­jØY­¶fõÛWb¹Ç6 Ø>¨ëTêrªSÇ®ì¦ñÌö6gÇGúÇÜuÖWZTÉ9;X\"R»š\0Ñíøá¶\0=qb*šÁäJíOCj=¼XošÇ%şOV’Ã…ãçÛ›‰kTm„ó•Šn8YÕË²½€iš´ÕéÊÆ¿\"h#sª¡¦H£†UO„r…Ñ‘vÎ!Áí?5àµ4ÇjU(\r™m3*ç¤C9ÎÎƒg—)µ·»ì6X³\r°Ò‰!“5§\rO9äÓ6ciY@‘í²wÇD	ß6ƒ¡NºÉ…›FÂÅ­ôÖjÒå´ÜyğCq‚Ì±¼«]Êo0Sğ/ñ›5ßn^íĞo±x‘¤Ó Tàî9)\06,¨MŞvÆbH³°¬xÕøÉ±¦¥±‚©\nÅ19ÃÅEÁC_a—´ìºëfĞ¯6bdç3™P^B;”Şv~+Fğ‡ÒšÀ)Ä\\ÑNœtf}î+ôW%ü­c?ª•îóÈyŸ[ø\'LìL*µJ¯Á\'¾Aî›`´´nÆŒĞ#å›ø>àlÃ’ß †1ô5lü˜ÿÄ¬0ñ\\.€–!è´°1Ñ–ÁµZÃø‚İÑvòÏètàæÜèÃœíºÓéU»ô¤ï^W”TÖM´`Íü€Ë`/[F.H–Fşû¢2a˜O÷wêº$ü»‰…äÇ›—yJ’‘ß\\â’eP]öYj—`×Œu@AçÖJavÂÄ»&kxû¼RoÏ £3Ïôù‰é›Éü~®®{ĞeÌø…l‹ÎoWC†¥\"rAá\0u`µÿ#Ä}×wêTú!Óg7ï8ï˜¨‰D·Ux4ı\0dEc]ãÙD/ÍÅ*5”‹Q5Ÿ)–\\ëAiº\ZÑ‹PXÄ‰üÒ´Š…«ãS­÷ã¿Óîg<F+ËÑ;K]$GÉ\0_]$Ój)˜L²©	İNÉ60Ì™En%®Ê¤úK…ö|¦ÜbÙ0¶Àúúßk½Á=ämnôÒb\0&ë¨°…ı÷B:-PNCfú\"™ğƒòÀ\Zj(²ì€©õãÅdĞšM)³&[ÓI\Ziî†ÑhcŞÿğõˆ–”’WÚúŞ^äOEo—<\ZF}ælãÓ„Üà.†*kçBVDï“…!¡Ğìká›<ÜÅ˜}¦zÃÉy,>NV3d/ñÑj­_úßX\nÁ¼ƒ.ú.æ\'¹¸şP\rsÔ²2ı2î±\r´ğ]ø#ŠŸR/R-VJQÔìJô†°6uˆYå…D7°Y\r¤nPÊç”Wú\r#r‘8Áºƒüz}/MƒjWŞÀæ—o‰ÓıÕêú\0}êLæÁ…‹‡8B\'Şœ:ŠKÚÜqØ-É=òĞeäğbK—˜è¾B¾ùíyüËvKàeÂ‘í<_\nuX%n6kNLY3ˆó2¬Ôõ4úŠ\0‚Dô+†­³QâävIµ‰¤gn½²š2­OˆrÏH.f¡”²8ág$G)`Eõ»g‹­>‹Ï74óôf&ñÌë¿mìWèµkëà]½‘‡i•à#ß8.k:£%_\n\'·‚×…ÀÍ$òb…”£¡µ«¾Ì„ƒñû6:w¡şü¯;Ì•Ó«Ö¨SÉpt=®ÚŒó§Ü‹´ÅÀ‹ø^u‚ğX‰ˆ\rKÓx·<EJô×ìê™_¼ïµ^d0,îûŠ¸ù(ú²¨ÚÚÈ/ı€¢÷˜9¿S&FIœRëŞªåcVôyëê¼&×wCÀ2´ï¹tì°\'_«jgyc2ãQ1½J›÷Âš¾ea¸İ½€InãÔÚ?¨¡8çËÊ)Ğ¶`÷™¨ PÂgëQMpu†çLêùh^¿h/w÷‹÷¸ÑÏS¤üü/ÜR$il™Z®õä›p–ÃÈ!màNMèÖT³á#ÿ›Áâ=¢SmVsJÃÂâX&>º$Ï2†4y2‡²\ZdÓWY8ı=şc¨¯Á!øØÀc¡¤8øFJô;*˜º¬ÿå©(/ƒ?¢€Vuní…¬ñ×­^¶>³M¤˜’õKãw:P3œÇêi\nÏ~,_pB#uÎ›à˜øñ\0†_}…¨òhX´|:¢ô^ÉDò¬\"b†0ÑW¢ƒö+Zvx¢ÌË8«[v©mØ¾ÓKê’Bi›(à›z0b4Ûšã}2J„ÿ\0ñï‘åÚ’ÍyâõÏJí  PÀ]#¯AQºê×»XMÎ>2ëİ_ÕÎKÚ-IúXÉBšåø§®^ïĞWâÈè”œU•û[B}ÙY´«ä M\n­è-Tƒ (Aá2¹—Q1ÂäozèïQ˜…«ßˆŠš_«ï¥Ò_[Yı´>\\Õ†\r›jX*‰ŸYì#Ah0ÒQÑÁê·}qˆbíWåÌF‚Ú­µ\0¬az+©P…1,é7¿}f”/3¸6Ø	cõzóïËÔı¿›ïãiØ<’¼³ÅcPpƒûwd6U5Íü¸Äq:ŞøÜª}ğœp%5MôÂm]vÃÍÈqèÒÿv+Õ¡)X\n\0P:©šĞ¼¢\'×O\\SWzÑ<s!Ø;Ù³\'S¥RÑ~4·ï|f\"„F(»\'N²e’>zK«1¥t¨Dƒ`ÈR…3ì%î$	8W%Ã)×L>À\'…ì’v7»‹äE[©L\\×S…oôwııÈ‰âÈj0\\V& ÕÆCùı»l-p‹í ¤Àß\"äÃÕœ\nß—„¤’!$$‘•‹aeÁö-¥ C|öjâûc™cSœI¤0!|Jı|a«˜s3 ±ÈR¤ïZûá3÷æz„Ñş,s&œb%jÊĞØŞ¸Qì†/\\âŠLh‡êöU-S¸Äù-èÓ“c]ˆ<|µÇmf]K	í#\rX”Ñ;£»~¤‹	®ù*7\"ä±´Ñ›ÄA¬¸Òv~¾‰Õ÷¸_™l—5²P[£íèÚdZÄv}ùgxu?>û¶…‚Cg)Ì©$s¼€Ê_¹ïÙ–[!ÑNq5#Ymõz‹ÈGı¦4;wRÖ%<n¯Kmø™¥Õ°­ØœÖë‘)—wÚ.­×æU89JY+ß>C2Ù6X]?#¸ÕÒY*êç&G¹CG›ÀTz£ğ‹B)Ñ8s1:QE\n B/Æë\r!PÒú£¢øùßQÑÌ…wüã‹ä\rèè\"…Ğ)-~ËUyäé{˜bY.´eP{€0j˜¯0¨+®ÏÙÈù!˜ñ¨mí)ı	»é7K§J×VÑ\rt%2ucô¬P–ÇHÇÿŸî¡Bs”Ù«Ò£Ş—xÆ÷q€¥Y·#Æ:ÕÖû¼_4ç%Iîø´º6	ˆÆ‡ä¨ıy‰	¶ã–øŞ`K¸4j^i?{Ô`ût&ØuªDp‡ÜÉªG:’Æ5d¡©ĞåwèÒõÃ§mn_®–Ö>ı´¢2%Ô|«{ó¶_\"‹-À”m+J”jR,	ô]48bÁ¡?€	–á\nB-•È•¾ííØ:ÂÕZù ¿—Ô4Ü%Ñİ¡>làGÜâêçòâ¯«LÚ?T²œäªÂ&\'òä/‘zûC€¿8m\0\0\0\0\0Ğ`¿qæ+g/ú7ßø©jĞ+OínÖ!é™È$ñ¾([¨ÇJºwáTò×şÑ€P>mp¦—Q“›¯<0ÚöÎù6$RÏp±Sæ©YöLÈãË¸Z…Rsc?uƒşKı\\	÷XçKáQA ‘Š(SLÌMb<ç1Î­„¢]Â<â<D™õ5H/ÿÔZ·^°Z²\n¼\'šæ˜öˆK¶Ùê\0\0\0V@H(Ò3…¹W|y[4¤ÉÃş5íg¿\\¯ÇP4×‘Çd¯—ÄrÏzß¨6M`Wso5…Kîq:¨‚¢­¨›^Ï“dD>İ{ã*q>T_£}³#‚74ß‹bşç|SÏ“ø0Åb‡âĞĞéF1Œ4=â*6¥s>(ÅùRi¥5×ÒK\noÈ¬_;ay‘¢õ›ÄF$*n|,¸¶‘v$ş¸õ pï‚¼æ:ëÛiõ°ªˆF7\\mÈò| ÇªLáú–ÁŠF±vxÎÄ7òÁĞ¸5õêKøŸ|õ\\çS[<ÀéEW |À‚g±Q}8\\‚	[æ¸ÎPxƒÎc±Ö=Nm_÷IÚç: œfT7˜äD:‡C“ëÑFqlB—¸:¨“ô”dxD6s,ZõL>B­¢VßYŒÿıMüN«Û°Ğ3‹d²Rz¹iÅ@è\n+uÍ äûò˜/ñ\r‹Uƒ„éôXÕjÑ–Ğê3_éV\\Ñ’Ñ)²åÖ„ès]âq89ÿ?¬ÎT~. së©¡Å\ZL\0Êßá]Ìae]´»=ô˜™¾=Éù6T{ë»~ç…3âõöpX&\':´W‹Çf[]ÿÉÛwİgéXözÍ>˜vî÷™ï+6ãÅĞ ™]()\n_£İ¤=5]‘«¢¾l?şöOåt;À?”À&ÕÏÂQèı2‡«U¬#@‚ÎÏª¿fê‘ÙYC/ÎXÃ/õÆ O—û˜Ñ\0†§ú{şÃ8İM$úaÃ¡=iúNÇä9OyHo=`œËa6\'³ÅfF¢€ÎÄ[X‰&Am†j²¬úJ’y¡Á¬øÙr¢ïgÛamUœîõg”—á’¹c]L³qd‡j_pÊE±€Úyê…³=—h¨æĞøS)’µ4Mş~½;4¬—q€àµ‰òRn£¦ŞÅœ—¯>ÁüÄ+¨	jÁ¸æHÊñRbÌ?ˆ-Ùc4¦7¹sÿ9ZqOùÜ0¬Ôù¸ÿGv/-üTc²E^ï£ß–5ÇPQo»€\'Í˜µáô+$¾\'Ï ïr°‡ƒ­ı÷ÿ(œ–Ğ/ë®¸ ¼Q=ª©*Ó¿è­ÎBI\'™S?P_*­•Ù§¶]ç´økğ‰xnĞH†\ZZ$šï´S7Yí\nFÿ3ĞÿıÈç[¡œİjÔÒ§=èÒ3Ôxˆ‹ö¾e§ĞÕ«Éç:!r®ØMÕK®a,ïïv‹Â¹.éÛvmc\0\ná8Xqûş\r­Ä”ôg´^Ï¾¦ƒ|‚ìFç÷HZæt9m£b.™‹¸\nõ¯	}ÜìúÆ÷è0êçk€ĞÎ»k¯8˜UåciŸ­¨ŸÓÙÒ{Ü¾[N%¨}ÎâL,åù®Œ” ‹cØ©¡”ÿmrñ×ßÓdÛ	ïÕİ{¾h@Y`åÏÍòl êË%D-uÔÅ@-rÎ8ßÏëJŸ¨{ı”†ÅùÁ~ÍâgÄ³äÉ*ŞşêÈ_*ˆ?‹|¹_Ué:S¬?&Z·cq®BÛcUù£Ô9u‰‡<¬¢gù@éÒSèÂADÆÔ’òËuMœ¹0…	…¿kõ±h…ÒÇåî¹²S·1=É-èŞdŠ)X:wÅØ\nSkaSÛqcÍ¼)A©hòºïqV¬“W¡+†Šo.‚c¦FÈğNÆ3\0@3Ãéèl‘E`³>Š8ëuãY‹?±í\0@õ‘XNÅô?\nÈÖ¦z<š÷5mñ­tAø‹ªA,Ô™ÈÙV‰&¢\\>Jm¶áÚJöàgs¹¿†l[H×t DõŞ8p­\'û&Jã(A÷×ÖUÊPoàb«•ü$äì\r;¶>à½”áÔ¥á\"gP=„î€½^=Ö!óŒL5ô¶uc¶ÏABpê¤ä^p¿Âm/a›Pø[®ÓúåµT\\sÿ™Â¿¹i¤vK&ÊÄM³Ğ7´ôùĞŠå¬ù(8¯E»D\"íĞ–¡óáYÀrìLŠƒ¹|–«8K]O\0\n»“W¸CZãÄì;ÚR1l3ÚŒs<e­û×‚/)x³v)n®R1‚¯gÁ€d™õWÙ¯<õÆÅk‚¸!ök\'+“*Ù:ÁhêİàÁŠ°	/¡}–µo\0l3å¶Â; o@‹Œ«DïŸ¤ÖT‚yZÈ_Ş4Ù²Ó–úN<F~–U8¥qé]İ”\0áq{:C³Âi©2G\'Uó¯ãÛŸÏìÑ>}ë£¦³;^\'e	…‹[°Ä®<Î\nïŞ´Fƒ{©1ft€Õd±\"£8\n=hÍ¦}#B&¹t&Œp\ZÎ¸ê_EC¨*s2©Ì\"Šé	pì’\ZĞnî´ã²7–õ\\²õö¢ğÙ“•ßÌ\'#È#HZß“vZÊKü¬<D½¯ub£…K˜@+cÓó§NK¸$Úf¤z)É!Çñ]8i_k¼äòÔúmñ]bMb’Wz‡„hPÒ„½ño•Õğá É‰—Á7scÚ¿¥.ø:¸Õ|âŞ‰\0 .´ê(uÄêüe;djßş\0«\Z´ñé–Ä½@.›FCÑü¥Ÿo”N;¢Ú£\\Ÿ–…röÔ„|JÅcŠèGšS¼ãå_Ïº—%)Ö˜1Z=lq´ŠïÃîâeps¹‚dÚÊh»õVt÷Õ3‹ñ-ƒêQ½QÔá>ÆÏUåV~³ˆ¦j„¨6§ù#œ‘4¬s\\.;èÂ\nWgWKœù%++Ç3ŸP©``0!»“âı·Td%×¤wÇ)¸/XÛo“¤…¨`­-ÆaŞzß^£ØûUÆI“d\0:ûëE?8s­½û\Zóeÿ­êF-:òOj×ãGc˜—éBH¨Í%®0Â…¦ÁõONû)QÉ¾¨$]°·÷Ä “It8Äd],¦ xcjÏF£çôhô@}dxX³M]ÃHˆê¨/\'Š¾ş¥Í=‘‹=mÉôÊù/1¥İwÖ!\"!×O…ó‘ÿ×UxûÈÿÛßÒ¸‡YÚÂıR.3v	\rœ®º3W>0…ÈFàlê°ìî¹§% kO\'ªC°µÂDÓ‰¥÷@Å	7Ób»®ö)ßP\ré¾öûƒ£9Ó“”OB½¬Š Iº|®Í&öÅû£#íš¦hDû5yË{êo¿Œ5ïeÔÅ€¤öH,á]\'ƒ0ûÉM¹$óHš´6Ù:Bú\'–«ë6F\'ş+ÄßŞÃw\'ÆÏKÇW‡]«oX#~JÊÒ–Fo”ÖUÓHé—	K˜î“mäZI³ó²ƒ1è‹„+\"®qì†¿Ï|˜MoÌæH›DaWOÄNØŒ­Y•eÚ“ûê~{ƒU™‰ÉÄæc¾_îÅ^õ„Óé„ŒóÒ‚æ#OÕ	\\Ä\r¢Û×E÷/İeåÍrğÆb\'„¥±¨9q•ä<øtš2&»Nú¼¸œ–{bàMGHÂp9fo˜îİ1;NŠ¦İ“j\r\r\"a€fwYú&gÚçâ›Zš¹’°±’ì\'Q\n¸-%Q}òÀ\Z.Î; ~NZ†ªÈbO¸P–†ƒ²ÙáÎõ0İ.K3ù+8H«ôá=F7/rÏÁkÅY™U¼J?b8-k…1h=˜MzãÂËzfúqâi<Ì‹›LÔ+’¬Úİ¿Œs ˆ.«ÙüU ›®d‚4ùEqù™¡wršÍIc8… ğ ²³ÃQ˜gÕ§jQÃ’¹\n}éÙY|)*²ä1¡!ÿNŞ0†æxÕô\\„@R ¸ÈCmßÔB~—üs¦&N.èP|¼PÆÊ5rl\n‡µ £üÙ5~öÊ@|‡•SD‚«],ia;®gÌéÕ,Ğ#\Z{D’R¢’¨åe[{14ÍFÖ1Z Ó,¡)Õt¡Œ\\ÏÌÊµûö,£<´Xõë9\0\rİª]%ıD—ÍpÅG¿P\0¹¯Ø»C,!Jas\n·}şÅËé98:™®¶|1Æá`Ïß#W¡ƒˆµ¯e;®¢V¦Ÿcæ“\\oÀõ{q†%pïUƒ¨¹²sëÕÑ	û<­êŞ=å5 5„âOÕQÁ×µÙ•0„ïH7 2§cùû[Gfª}\nmd¶å(m)j¦ªÓCsŒu{//ËInš} PN­®k\n†n/bŸ¸ÓwÔÒ‡’=q#x±=©ígUÌ¿±Ö«½ÂÀ•Rn>ìÓ#$ZĞ FdÏq,HÆ|ëÃÁÅ¯yA•Pè¼F™w7ÏKß°­b«½·hËŸ™‚ÿrú/{Dvõƒh_o4¨î®Êæó1ıï€2Äi¶VÙ`yİ,Nw² y  ğÑ2Ò«½ï¨¹Adà!£˜­)I%@Dá%¶öµ‡\Z\\õè¸ÅÁ”Ò­¯r¼ƒ#oÂË°€-ÊÊÚÀ‡^SPŠ_–©ëÛ÷\rÒİJ2¿†j½ºğN‚èyÇñ\']è¥ˆ†ö‰>ŸOê±á™T¹Ûá—4á=²+Û³B‘:mÑœxÚÚúæáK]S@‡`y¨*Fím‰ªT„—á°õº+f:}[âò‚M‘ÁtdûÛ×°‚¸„ñÊ/û­Ö…@ñ¬Æğ-•dğÚKçÇ.ÎÃ“Õ#ÓÚp\\ä4@Ó†e.XIeÍ1¶ í0¡\'ÌÙpFW×jg:¢–£[ÒH3W\\á&Àa4‘¦{\'s®NŸ¿÷r„&«”ªèÏ<LPèQ †P•ÂÒ5øG{„A¯z^8èÂk²\n\rÇƒCıİè¨Z£d2tØù`4­–\\*\", ¶´DKÊ)$ÿv9y`\\\rè¿‚éSA^É*„èôªêŸÀü\'Ìq¹\"ú *q—ŸÇ« U9Ë_°„ kä‡áT!Û\ZÚqñÆµ[Œ³ú½¡ó_µ£KÕÊÙ^ËÇŸá6°#¿¾¼v|¬-<ËòsÈ.’TX—6§(tÕL£Ä	²öãÇ$æœğæk?õ*„XIû˜ìV/ŞÎ2:×ŞÃ¸Ïr†y§ìéĞÜôOq-iSŸ’Ñ”ˆ\r¿vWn%qŒùrÊ2ä]H{óÀØ¡’Õj6Œ^5Ä•ª¶3W•e·¢Ê¡Ê0¶Œ³òÓ„å]ÔÂøW…›©Â•ÃWXB´_8\'†¸ >¶Éß>¥ãJ&Q¦@d‡çÆ1fº‹8ñŸúÜš¾eË^ 71†w¼¥å\'G—Ö:®ntíR%«×	úfR–‹yÕâµydÄ,v[d§°Áb…µl­”ÁWóTÑ.Ç[Í	Ôğ!Ï(¯²Fd«…¯„Ş^	r&~Á$6NÜùØ[ÏÜ«D£Xpƒ÷™“ÇZù¢»ä\'ğ÷†™}8c·ß\n–DŠh9Ñj\n/šZì²§A7O×ï¢ŞÌ\"Cµ[¿X\\Š…ŠN‰Pª9ö(ÿ½ôÃ‘²i©¢ÇÖŞa~£eÃGÆ—JÂWQ„ï>ÜÑ£ \ZÇ\n$Ó0ŞI¦Ğuü0WgØ¾„€×Nt®uÏ|Ì!v\0„‘‡¤0å/bMÓ\rø~×¼rq¯Í¿ôµôxÈ‚MäÓğõ8 ‹å9ŞY÷ù¢ó{Ğè”wÒßÇ´)ÍĞËÎgtü~ÈÖÌ¤U¢c_ùM^~_):Ë…%ªú)ŒÛÒ ‚¹>™ÿÜ®¼VõïèÑ­Ç°\'‰«úÉ†Ô\r>„Ì˜)‡Ü­ğ—¼\rW‹Ù3µÃ]ù<`ÿpğiîÑT£ú\'æF5ú\'[K%d¯Á³-ğm‘”ÓPŸçï}.A¬ÛŠÍæÛõÄÏûV.ó÷êÚ‚ßî§@Wm 6©‡L>ÈÎ—‹¯øÖŒ)¯CÔ×1”[\rşq†î}mÖ“QeÆå@\\>¯ç\0áK@0Ë0å2j¬“5Ÿfâğ9şGÃfüñBYºÃò\r£©_\ZK‘\'ëÇİv&¹Ü„I¶¯\\†½Äz²¤!>ó½å¦(9ê2pÎpñ&‹3-o¶±Ér79!Ài1¦•>[‰@uµ7$e^ÜU¶Ì\"G±¡%·%Á\'Ôî\r!ØƒıH±4*\r©2ã^Ãu\rGĞA+ÁK³í-ò¥—´õğ?À¦è½$~äç¦úºJ‰oÂ÷220mØUZƒëôÖã©˜å3ïüà±·³´¢êzÏ/k[İ×ÖˆÛcm³	‹ñ]ã\Zûg`¥l²^S¬×©Ã¿ÍŞcñ¦mÔCÏ)Êíö¯ÃrNN,QHi„™éj‘Ì)­’õ1ñ­\"ä8‰hû\ncåÍ„œ43É´šîÜÜdËÀ0\0¶JŒ<ş8˜ÇPwKTóÛÃ–8vWøÈ¶cœ@di34›µ~ñú¤¢QéÈ”M€8ü¡ŠÅgá{¿öjÈ…áölA¼€4)@PÔÀÀ`)³¦\0…uò;¿7ccûà©íœµÊšbÛ ü:Á†Œü§ Ñ%‚Ÿ¢+ü$‰\ro¦¥™€šñ|Õd²r†§ÚûêÆ.½ªßuh¹°äŞ·åÓÍdD§¢jœMÆ)}>2\'’Ï1Bÿßóş©äÌV¤[½RTƒ›Ö¡ïú:HêQÖê¯nfTñqn¦PMËPÜÕ”oÆjIäY‘\Zh·ìOüdÚs–»§øâˆ.¯›ÊY“	›\0½pIä8ÕŞVLp÷,½ÆëîUXÛ-F\\şö–ï|»¤÷S§ÁŞ¿Ã’m®=ëšøŒ–H}5MøI»ÑzÃ$mq÷ŸßH‚µ¥\nâ	Ø6¹ğa@‘ÔÃ–Ú³n@d“À½ŞPÑ-Ù¡…öE\'Óo}Rğ)ÿ9“S°3r¸|´ºuW\Zv“<&nÃ„Q>GjÔL™ş[Ÿœ–îÿ3©*uûøÀ¥\rd,h1»«/gs‡7ú¥³ìABÊò	%ßüîÜÛ³J^öCFíNø’Š±Ò=Vs;\Z0##÷bĞcñÃ”æá[¿üÚë;a.ßÂˆ›Öú­ù´g‰ä7QŒ.ıÙo¬ìºS¯Tg¡À{À£[1mJgq· <TòV\râÊ+Pk’rˆ‰klœ”;•Û³@­ö;êãÕl˜6YÄIkB¯Wr¼Â´Š‡!,LŞ.J«¶Wx˜Ï/¤?œ%©9Sš¸bO2M·ù3.«Ò½F½‡Z/\"Ee‹iÖÎ7Úi¦@›ğ“9SëöëLuuáÈ‡R:û–€ÇZ?=¢ú“vÈå&0¹~e§}î9(<ï¦_Ñ&LëHòïRg-LÂôàrHĞƒ· j)\r^Ueq‘pYşğ™†IE§±0ÆˆrY½µa(hQ5Ä\r­t˜a™ı›Ô,Û\Z[’À^bÁ;™Íª¼a÷2ãƒàÒw%~=èæÅÇ	5õ|%ÑJÌíÛDN~ĞÖs,ZS…¨³¤£P]çZò.—I\rÓHšPÿ»tZNÏ\"Eˆ.$Pcš‹‚s—5èå‘E‚½íîC`É\r\ZC@v[ì¤ûXª_€»àéé’ùE@ËT\ZT\"ÌŠÕ;YTœ4”è»‚&(šñL•éEÖ äõ‰n ªÚ¸¼o›½¾®åÁ§§³yXŠ\'ï\"Z\ZæùQáH÷Î<79¢î‘Ázáç½ğü»wã„É&Ğ6í¹†Ï£ş):³Kzçoi°•T)xW_ÜÆ\n“Ê‹jÑõùWüe2\"†R$SŞ76Ğ*v.\rc’ÇVÔ(¨Á,d¥ŸåŞ¾•Ú	qgü±ë©2ë1¿_‰¼UÛ:gBß$¸ğ®wY8¸[Ísà\0\0EXIF\\\0\0\0MM\0*\0\0\0\02\0\0\0\0\0\0\02;\0\0\0\0\0\0\0F‚˜\0\0\0\0\0\0\0Q\0\0\0\02023:09:19 14:48:45\0ANA BRANCO\0ANA BRANCO\0');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto` mediumblob DEFAULT NULL,
  `dataCriacao` date NOT NULL,
  `permissao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `permissao` (`permissao`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`permissao`) REFERENCES `permissao` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin@loja.com','8261959b4560c0dd9302766c1bc3d00a81a8cc239620c8e499a0108cab4b6043','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+... 383-7(-.+\n\n\n\r\Z-%--------------------------------------------------ÿÀ\0\0Â\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0=\0\0\0\0\0!1AQ\"aq2‘#B¡±3RbÁÑğr’á$C¢ñSc²ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\"\0\0\0\0\0\0\0\0\0!1AQ\"2ÿÚ\0\0\0?\0\0]#*×±´“¦±“®W×c!GàÖ¦{Ú:4jŠ„ô\"<ÅbÖ˜ÅUÇf6çôdg£T¥ûE`¨Vz`ßi![\Z™Ò…ã˜©P±·:µ°lÔˆ\'u™ƒSÊÌ§¡#óšŸŠút™¯[V¨?œÍ ˆÔKvyGÊTèeÃ<£å6Éä9U‹¢,,Dˆá(f?Öö÷ƒ¿“Q×âÑG¹šzFå\rÅx²Q%AÌGA¡Ô_SÖG`ùŸQ4@A½´×O_¤\'	àb£¶rH*Hv\Za¡ë­Ïûd÷ÁdSje\rş&¶f6Ñ¬6¸Ô(F	+\0\Z³\0§V!€ô\'H×™¸Ú²Úã¡:ÈŞbâ¹•Aß|×ÓÖÛJf*±v»óbà˜¼Ps˜i€Ç56OË¡ŒŠÏT^1Z*ÓÎ¿1Øö…É+œ±Š³?ˆä?Ã-JºHÛ©NMŠD•Y`ÊÂ\nnV!–9+V06+V8+V\0Õ–\r–9eƒeŒ\r™`™c¦X&Y­7´è²\'A«íƒÇP¾°ôµ“IÈºˆaƒ¦½#¼\n\'‡ÓhÛ§!wÀ±Csà;ÃšyHÒ{Ã˜b£dá#Qxó…ğåVÔÃ¦œbqjo3~b£—PÚÙæÄiSR¤ÛC*<ÿ\0En¾Æ5\'°©QŞ\\ğKä)M§¼ºğÁ÷cÚ5ÓÈv,	í§ DIàëá[ÈŒ<¡ƒµÎñµ=>£Ia¯Jà7p>£HĞ¦834Ôì,45íôœi±s}E¼ u#{ƒÖıôb.á\0äon€Ç8¼H¦¥²’{·¼c¨<ÍÁØŞ«ß®šièeBÄËg5óTl« ·¿¬¨Õrw1ãÆHL!hjl~°PÔí4§Ø#–¢æ_ÖÒü£IB¡¦RzIô¿üM	WI+–À•‰+ƒ\",±c‚\"JÆÅ`Ùc’±°¬°L±Û,,ĞhÂ\r„rëÂ07+:¬öz !ÊéKHòœ¤.\"¥®¶øF)ó2Ú?âl¨C0ë\r…ªŸÇø®)Åƒ’Æ×é\rËœL×}aÏEO0é\ZòM?¨bwÚWQÇlßkö3‡fBIÚBó~\reÌ7[~²Æ(»c¡»Ç00Õ¯\'P)‰váîÇ´¤¤»p_İiK§À‹Uœ¢D^d“´ñw¦£ĞßĞ‹ÒDÚ9Æ:ÓJmrÀ™@Õ““^ÄªÂ%lu™Ş…á´Ë¤Úİº{Îâ„ëv [aoıÉÊ|1•X€EÅ·ô•ş-NÀåRO\\Ì\"LsëLŸĞ\"£iÖúúúH‚»ş¿ÚZ9†‘½²€O]ì:ÊŞ(\0l½7•“ohºGYêÑb¹‚œ Û0×í~ñ^-™”€u\\wÄõ\'ù‡ê&Œ£IMäŞ[«­j6ËH\n•€×@}MĞËÅjSÓéò‘Éî‹jÎ¶	B‘DTÁ\"$ˆR\"HŒ\"\r„9l°ì ˜G,°l³A£¬íÖÄØ\0Zt%§Mºî”g†7í9]AqºëÃ KCb”iÃpl3\\õ5Xçü=‚düFÆ@ĞÁÕZ”õö’\\İcYi(¾SxÃqQ\r¶¶“¢»âIõ¥ğ¼K*ÚÈuÄºÒ:Y[I5Â±ªÔ†šÛiö‰vÁÜu*9*úŒä4¼pzCÚgJŒzÍ•oà­ıe/âV“\n!PD²Iˆ”áÔ3ÓÊ?ùãº¡æÇå#)©:Äü†¦JğrÓ$Tl •lÖ¿ÃpA÷\rùBkµğÛ—œN&šù^Ã¦£IXã˜7e±¿i)Ä8\n¥‹Õß„f×ßIb)¯R¥<C56{Ó¤3Eê\n¶—ö›}ë¥±ë}¡øï,µKšdÜnMÈÚGòç)„«ûF5éhR¡µÃ<«ësÓÒjœ¯‡§‹Z†ùé£6Ñ]ív--ÇÖ+í¸e+M.ì7²ßOÊ>>Q­ÉrM;Ô3ºüÕÂu³â†¤åL¡},3v´Æñì\rJˆ‹J¨¦AV5H6¹ò‘bmhÇ‰VÂ!dDg¶ï¡2/ÃGø4=÷”˜‰Ck÷,ñº<6\"ƒµ©BŒˆe· n4’ü/\rZ½Z×BIWÔ§µìf[â¬È´œÉ¥úé íWíSÂÓÃÒ³°¤©˜akßÚJÔ™ïêµ¼Lq·‰¬M‡+2Ş×Ş¯b±¼¨Tâ8ªáj²6[å-•¬£øšXï—ñìÕ2ß¸ô1\'”qRc¥„ˆ‚!ˆˆ\";˜\"±°¦$À\0Dvl Ãg#§#CAË:.tÛ…’4„Œ Ö2VŒæu«—QŒö\'¸ŠâÃËxL1Z˜ö›\rf5±¶Å±a{	[‰!¬	]$–7\n‹olQëŠÃPlBiÓÑÅiİ@ô’\\Â|;ÓQñ)ùHü>\nˆËkt–*Æ˜BğÈôvZ†F(MÈÒòåÊçî‡ÎT1ÎÃù›õ–îSıßÎ=“¿‰äØEOm\r’.‘uñ¡¿HÍ˜ÇÔÅ¯ş–ÿ\0òccÁëá,ñ¦2¹\nm¿HáÄoZ1 .ŸgüKÃÁR¶U»Õ,‹ÎŞcëÓå+ßjüÍšZfÙÀ]:)˜üÅ„²ò?/»QCWÊ—{»‚ä‹v\ZÊ?Û/\n§Fµ?YrÛ%ôíõ¸ä}LÃ1 w8e&.k•—Cá¥ê‚ÃW²(ÿ\0=¿(Ä”\Zñ–­zEé©!®§#ĞvùzKİ,m3j¸l\"µ‡éÓ\'a¶ş‘ï=ñt¤„¤£\" @m¦mØŸ^²¡Ë<y°ô˜7Ã«[Örßvî>:éªu)üg3–¦£\0OÆÊ@´5â²ŒwácßÒFğ¾-§œè×ò²ÙOµ÷…8E?ºb	Ú™>R{Òs×M·k‚ ğ™iª¿Å×ÒúÚËC‚ÑØdD0…\"!„ÖÂ	„;6XnÂ„pâ\r„¾YĞ–4,Gy)…yë pÍkNgaç¥tùH.\næ›enòÄî\nÈ_ØµÆl@¼ÁÁ—lWb%Á²×\04Ò°L¤t™÷á¸¯²)\"÷W¾m–…	ÂH+w=:Ë7ì`Zç¤¤Ğ«ˆR¡ôÚX±8àª\Z£§y“°Ì¸Õ0¸Šª6m.<‹ÂkU§™å¿ï²úØõùFü¥ËéÆT¨æôknäì€öĞ“éï5¼ee§O*…\0-•h\0\0._U)Ñ\\{õ;J¿‡àŠ50…½Ù¶ØBÔÂR±Êšl3½÷mtËÖ0¥V®Úİ^˜7è×ü@kqÓ}-z ¡c•.Ì¬¶ò0Õ©›5Í¬¾oIxÇXøŒ¥)Ğ¦Á¨ªå5. °»k±×m=·™‡3q¯ô(]–™ÊÌû—è6÷[S‰+T+ã¨`uGÄm4ÍÒ3ç~H‹ãxz–,I«‡uÖ¥;şkô‹zÄ½Â–¼ÉX†l«eæÆ×&À~¿I¬rÃU¥ûUb]€vÖÈ	İ~p\\­Ê˜fáM‡`3W,ÏTèMDb©©µ”tıI‘|­…­I›‡¾lÖ 8ê¢ä7Ëc%–&#pl3[ZbâÃÌüØ)0@Mìt´Ìù×ˆâ«Õ×au`VÄ Í%áÉ¾&£T7Ğ^À|º™`§ÁğtWD¸ìuıd\"f\'n«Ef4ÀøoÅÖ6£Aœ÷\0=Øé4l&xM\0õˆ©‹q`:S¸øPtõ2{‹ó¥*–Qü«oÌÌã‹ñ¦ÄÔ5_¦ßñ\Zo3­\"³´g®ÕIÌnXİ¬ó\rÃ|fT€4,ßÒ\" ?|–i\\©ÉtŠbÍSQŸÌ€_[ô×é3Èïµ,ÓTSE­QWMGéÚR§MK†`¼§]öOsV±eekÖğÔ/{·åe©ùIÖ7m6ÿ\0Ö»Mà¸Ò¾„tÜj}Í†Ş²Rg«p¹‚Ï¡#6‹×òëcÖ_pn\n-º}4®¼p–bLY‰1\0L š„A€<C¸i ‰Ó§M	â€íx‘Ëd=¤u\Z¨ÖHrĞ©ùOê$mÆ#§]{‘xn&»hÉa-F‚%P’S;Z#E‘Pv‹&JçÊŒ‹t6ÛiœbñOSãv>„Í#í~ïé2úÓ§ùG\'­«ìb‡ıV?Š½–Ã_* ?/1YrÆ*°\'b@½ˆâéßK~R™ö3ÄÁ½#½:×Ûpö·Ğ†—L]›µü XÛ/¦›ôuBÊïV¦n6ó®¥uËdq®«½¿*ıvŞ“áÕ£Ä%D İMï}Dœâ•·Clo¨QŸÊÚ_Mm´«âÉ\n09™Ÿv	7\0å uü~’„Có6Õ£™Çßá‚¥Bo™éæ>MGgYfäş0i˜jxMP^ä–P¬tİFş²Š Ñf+–Á×\00Ñ¬ÔÉ\'¨6:ÿ\0/	&‹VÂ·à–±ËPlÑ„Éˆ–Äé¥ñ¥Š¥š‹d¨¤ŸùAkù†¿	¿Ö<à4wÄT\\¤‚âÄ^Åíô™”‚r‚Š@`OwÔú	?Æ1ïC´Ù®á<Ço1én’&i]mJc­ïË]£y‹…ÈS]2‹s¼0Ù›lÇ •>)‰vbÌÄ˜Î’–;Îx¯×LÛGxì³­@u‚ \\ğ¯^çaà°aÈ*&u–êêEîd}t°:İõpuJ–éè%ÿ\0†~Ê>A¶/g[ü\'5ÁßONúw—îZã~¨¥ì­˜±­Áí{ıeHuïÖ-¡øíïõ“|•‰R­L*³r‚\ZÄ8¾Pzky—ÇÖ cËû9Çâõ,ÇyÅèx«MÖå†uÊ?Óšã×B>p\\t²9T]Áb~‚Ûë¤\0câ«Õ;_(è	ÚsÅfŸÛôµíB?	Xç\\¤pK^ÆÄ‚\rı‘aŞX¸wÈ0¸z–½Á*[o–kˆÃ`\r\'ñ)á¸}z«7[ôÚâ3å`C~ ITMo‹yÓ®ÜV2´˜“x“\"aÂ š\0qĞ/5ÓŒé Ë‹cU*w’Ü™_Ìo¹•ª\râĞÖNò¯•„…£UÓ®³Úü\" ÔÅŞIbÁO^hTùõ~èÌª¼Ö¹á~äûLš°8|G\'­+ìZ§Şböš·ûX‹ÿ\0å4>)‹€Í¨\'Ê€Ø’»\\_¨õ3#û-­lQ§›/‰IÔäYíóÈf¥‹9oâ.qaç¶¿ÆuÄÎÌ~9îˆâUiÕF@P€kæ>k‚lI\0=åsŒpÖVøOš£y;‡KTÊ¯¦šÛ¬µÔátêi9Ubo“ÊÅ_¾í¡Y\\â¼¦]YŸBKålÁĞäf ‚TÛN²‰ +¾zUÌ<Ù…Z\':1ìY3¯¸’øjçE1j.äµ7°üY-ºë©\n~r+‰V©A\\eÏLäaP\\gËñõ;˜çqjUÂ\rgX’l@ÒÛÜ2ÅúÕë•¨ŠÏ”eE¥PŸ6át\Zúßé#¹Ã\\›zËV0ØP–˜]º[²ü„¡ó&+RáÍnVwá¦ª©âZæHp<*±bàåÊv ~}:Æ9.u–¾Z¢\r7[jCßÊ\r¼]NÛÇÅ´,ê³*Ş\Zjø@o”]HPÄ…!ûåhœ]2]…­X\r|C2ş°<{l`¨\Zô²şahÂÇZ\r¢±ümçS`Î¥66ÔüT[âQør“¿y)Á¸yE&ş`¬.b\Z@Àßá\Zuğ¸Bç(S`3dÓÉS0ßÒZèĞ‘Ü“mï)úyFŞ±â#ÒLR€¬•)îÊìêu:5‰>ı%J­2ó“Ø®\"(UJ†Öµ6k–\'(½7ÛMŒ÷˜ğ\06eØêìgäWWßíİøöåMOÀğu…D4ªlÂÇûÊıNZ…BP\në•lW)ıc¼5Bš[UP?ê¦û÷SïùHã·	ïÉ)¸è_âãÃ¨,Áo{ZâåOæ?9,L…ÁÔ0[y†ašÚí¨?‘“Ë[×,<cÆ-Œ †0.bÜÀ9šÂo: ™ÓB½Ëuôd=D°pgÊãĞÊo\n«– –œ+Ùä²C¦\Z=¸ Æ\\>¥ĞHèÅtH3‰€@s½ö3 ¯6.k¢ŞÓÄ\rçFÈ}À1¦Zu†èêŞàGÒó~¤êÀ0ÕH¤}-µíıÌùß	´Øù#‰x˜D\r©O!\'ù¿òçV9ïHßÄÕ\\7+¡Ó1\Z^ÆÇ1ÚÖ±ù<]ìnF¹­`Y¶ê5Ycáq¯¥Î—öíôÃÎtÌ¤(ëu¹ÜËm-*xŞŸ2_F\\¶!oüi¸ê4şÎyiÏ|Mşæ‚€ÿ\0R‰¦öûò_†1I…FQYĞ¡Xä×Ö:yOR%ÓÃ§…¢(ÓØ\\“Õ˜îL[q…pÖfv‹æL^úÌ¿‹VÌÆYù‹ˆ¾²›PÜŞq{;wùÓ]eŸ†b\0!3Ò$X›‡L¤ØûJş	À¨—Ü\rÅ·–_ÊNn¹)Ø,4¨ÀíÖv~=z™pşE·:UyÓEjáÎ–èº†a·Ò™g¤.N”Ğ›ÔÓËS.ÒGíW†:€7ğÿ\0İ{Ïp j3t¬ŸğùÆ¶õ–ˆîQŸ ï„%”÷•F€ô“Ô©…ÀR=Æ—Š7‘|\'ï7Åû—İšÚe;è7„æ|X¥G-îJ0\Z_g¿´r*<ÏŒ¹p3ys§Ä?ŒtŞMòŞ/öœƒ«Ñû¶ï`<‡ı¶úJG¯˜·«|¶ÖçûÉ¿³¬vJHÚÕ4õÌÔûn>brePèÃ<dLe<¦â‰±xÅ1ö3›[‡\\§8®×_‹ªÀØ?¡õÓyçÆ3¡J€‡C”†Ü±Ö7á˜ÏÂNñæ:¥¼÷ ©€üC`~W×Ò¶¿¬¹òSì±‚cN­Åôõ¶×‰f•Óœ—0.bÜÀ;M/:´òhS±XèÕ¹SÜJë‰%ªl·‰hÛ¡¨pJ—¦$2—jİ$ĞiÊ½g¡ï=¼h«Á¨¾eıÓ{L{¹›0kI½¦?‹Üû™Ñ‡êY†:MìÏûÚGùX|ü­úÊgxs-ˆÉŠ[ş%eü®?IzÎ¬¿ËX¤nÁ®5Í­íñ-÷Üõ•šüKXVuª”0´C\nµò¶be\nºùšİAY-Ä+¦\\×ÈH\n ›j4Ó ‘uQG8_*¿ììíL±%^ş%¬5?9ĞŒ-|¯ÃS	DÖó\ZÕ•K;œÏ”*“í½ºÆg‰“¥ãæ!V…7Sº‘¶¢Bã1„‚o©mï6—¥JDGF<SXÚF´]W¹q˜€Š[·OĞFˆe¤ã\r^‘#1`éQ#+)µØŒ¤\\u¿icáX°›ÓÄò…ƒtÛÎg¸JšÖ$«pwøßéI`¡ÄN Ÿ†ÃÍJç[’uIß¨ÓÍ¾æÛ+í\0kFÃjumMÏˆ:ßÖ€»°[–ıà\ZÄgÍU<JtØ’î»ßãTmîzòÓÃ)*£.‚ÿ\0Á¡9tï\Z#¹,ÿ\0˜>áiáQäè€’ÇµNçICæ)âTmtVp<×Üí%ù“‹¶AMs\0iëåÿ\0ìîu”LMRÄä»ëòÚFÃ¨ñ÷ÅøEê\r/”ûŸOa¬Œ\"\ZŠ5@<ª@\'±7·ùê$¢u;Vc¦…ŒÄŠô©â|k¨ìvaò ‰‰^²wá®$ €Úÿ\0ŒŒÍSæ?)Š‰SŒéz_•vn¯mD“ÄâsÑ=ò}­!³CÑ«m:–©¹cY\n“|¦ß.Ÿç¤–f•nS!>µ,>šûË#4¼Ã}s´´õÚšqiĞy§@+ØÊYXˆºU-–HqÌ?ãdSn\"Dî2ĞùZ­Ä²”îRyl\r9­«_\ršZ+4S\Zq¯İ7´Èqß{™®ñc÷mí2> <íîeğıNş†“®ZôÛ³!èIßx¾òÓé>4ÕÆ3¶\'(§’˜Ì@r—mz|cé#hcX±ESñeËk8±¹]÷¼ˆÁb­QA6¨îºÃ\"5ôÈ~8¬sj‡]4Î¥…ÀÚ_Ûi×å˜3Ãb«Qk„ÌHREÀ;m%êâ³mÖ@ñb*B„\"æà7mTß×õƒ®Ëåm{­ıäÉ‹½Ã·nµ)\ZµdV: pÇ82Ùz»°ì\0¹¿´V\'¦‡^ı‡yÍrOOóxR¿Y’ûèe¨n?¾Şô*mín§ø­¡÷ŒÃÑhŞ¿åŒ®ÑMbª\rMîC©óÚ×M­ –/,3l\r&Õ¬>”t¼¤šú[ÔM­´=\"U2-µ^×;ßs,KWp^6©cq¥Î—¾çŞñ‰_óúß´pØ€wô;ßN ã¤ñ‡ë×¿·b\"ÏmYeÃ—Â5I‡|ÀõÍŞU\\‡·MÒKpÚå#¶£aoX¶‹,oƒˆTÌÅ-‚¨:X_¿¬‚ÅV×R¨7úé\'¨œÚ©Ğ€M…É‡r,52#ˆ#æaá¹9U­·óºúÊñ‹Ò6•o4²)ŒG‹o”U;\0W õ¹ëqÖäu#ôœn¨Èqƒ]GMw¾åµ6ö–BÒ·ƒRÕv7=­kƒşw“ÌÓe	zÍí9ššc–Zt¤£S¶2±Lµ%’›yecˆ¼2ıtJÑË•ö—$}&wÀ+XËÎ­ÔIäÏI?\r=Í\0{š!ÈâGîÛÚdüGãoy©ñòi–q?½å°’şÒ1îù×Ş0¡áÏ˜{ËI>,\\C,*-ófCa­Ê›_ı±­zàìç]mfÊOaò=d¥6ĞHî#™Ç;/|Ş[k£i{ë+ıjP˜í\Z×ØÔ_KéÖñ&ºió¹õ ô‰v…´ØZı€&	ŞÚü¿õıæÉ…ÄTĞßsaÛOohÂĞŒ×71%¿ÏX²Ør¯ô‹T—õˆ¼2¸;ƒÿ\0¸CN€ñ0×ÛMãº5€è?„Øêda«ı\rıDW‰ıí¾‡q&	0F Ç[j~ñ!Ï¦İ7ôùÏk†\0_OON†Ğ¢I©Õóiúß®±İ\Z›ò?æEæõúÏCöÒdÂ×€Å22›‹5´m@?Ä}6‹ãò¦z»D#r\r½ew`luOù–-@Q·È Ú<^b:NÔı£+à«0Ì@×ğ.>[^2ØTßµ½²—ˆ/\'ÊM³^†(.Û=„rÏÏï1…³À³Ä3A3MgæÁºLQ>YZÆŸ9N‘¢ÒÁÎ²÷ÃO”O\'DÉéª~\"§N’Pßği—ñO½ç“¥±Ş\ZÑ¨î=çN–\"ÕKaî#‰Ó¢#*ÇP Àm¶‘ÕéÓ¢Ç‚Zÿ\0Q:tVÆrÎ\0Zïó[ƒÓ×\0ê:z‰Ó¥1úKø¸r¾›Ñ,ôÑßVPN„ÛS!18tì@Ì¬-l»Zté_:Ìÿ\0%gO‹|Ç\\¢ò\Z 1°S´éÒwuPİ²w…Ó¤cöˆiÓ¢¦A4éÓ@MÓÙĞ0S§Nš×ÿÙ','2024-09-21',1),(5,'gerente@loja.com','2b08d476ef2b9d53090de0bef2929aef0edbaa79af22b0ccd37bf4117d6fd1a4','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z\Z\Z( \Z%\"1\"%)+...383-7(-.+\n\n\n\r\Z\Z-%%-------+/--------------------/--------------------ÿÀ\0\0·\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0>\0\0\0\0\0!1AQaq\"‘¡±2ÁğBÑá#Rbr‚ñ3S¢4’ÂÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0+\0\0\0\0\0\0\0!12A\"Qaq‘±RÁñ3ÿÚ\0\0\0?\0Ş(ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ‰X—­çJÏLÔªğÖäÇ’ÑÛoñ6µ¢™£DšM.ÍÍ$8´hÜ³ÏSŸ%Ã©Y¾*Zİ\\Ñ¿2[Ö6‚ÊLMtÑšù¯”«Û\\ï™åÇy9“»2Nœ—“ë“©‘¸d¸£ëêV¦;å{OB\nõ•ñı[˜Aa‚7´GHWÍ•øl 7şÑKø^{Ã£¿4±Á{3èTP[1´Ô-´ñÒvcçaù˜yªœ¤Z£”DCD@\0DDD@\0DDD@\0DDGß·½;-×ªaŒ$î™YÕ\0$ä«ç/Š›[Rğ®hÓ$Yh¸†ãxÉÏ<w€:ë’Œl‰Û]¶­oª\\óÄöl+GÔó*°-Pt®~‹/ı(å¬•—fÙç»qğuà£É\"ÕLŒÿ\0P~ÈáÙS>í+Éä“ºy47Ñ°¡›(ò~SŸ,¼Ö[vTÒ|>Â‹Ê¾¥‹Ç“)pW¸¨ö¶Dá9NããÅY*Ü§ŞpÒL(Ë}As2Èe¼y®¬‰‘–EXÙ›ò­*¡ôêT+†^qKè?‡›l-Í4ª\0ËM1.å{tÆÙÓ=FéWÍ7M>şc)Ï”éê­;/{›=®•f˜ÂñŸ“«d)=K’>¡EÒ@àĞ‰ó]ÔŠB\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\r{ñjf³ö1V°#›[¤úú-Cqİf£™\r–È=wÏªóø¯~~ÑxÕsL±‡xCI:™>+kìÖÚtXĞ\"\ZÜ÷è³æ›Š×¹·Ç‚o~Æ˜cˆ/h}…a²Üì`€Á\nfÁf6˜TÆ-¢ùäI•ê·kHŒ7d¼êİ 	Âë’±T`^Z¹(QØå²ŸyÜ­¨#-qyÜf“ÜÇ<á«g#¼û–ç¬ÜŠ¬mEÕÛS–ÿ\0¸ĞK-<ŠŒdÓ&Ò‘©l¶F±Ïkµœ(™ä£ëäGÜé|Tsj	8e7yd°ª?‹rÚ0KM£éO…·ğµX™\'¿O¸ñÀ‘èGÕ]Í¿¶Ù--ÅşÕBÖÔåÁŞé:D“)š§g(ˆº@\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆÂ¾ª–Ùë9¿3i<ˆâHY«Î»14´èA¡È¡Ô|}´\riqsy‚8Júf+‡Q¦á½>m|ïzÙÍ:•(ë†£Û<p¸€Vîøoma±YÜ^Ñ2@Í„²3ş•Ÿ2´˜6_è•îÒ±é‘KÙ®\\‰)œÙ^/¦º[-½›I‰;‡¹A’\\qÚ«\0İ[I¦ŒfQĞŠdz{”U²–JB•®L³­€™\Z*d‘|[5Ä]êìŒÜ8óêµõ˜f¼×ĞCeÅMÂ|–§cPÿ\0ˆò9+°KTÊ<ˆíIw=inıİ@ı}Ğ¿\rïsZÊÆ¼ËÚ#=H‘÷çË#\\}2ú-³ğŞßìôqÚ7b\0Kgƒš=şæy+‰¶uc¤Jì¤P\0DDD@\0DDEåjqq\Z€a=QyPv&ƒ\'1ÉwÃÌ¡Ú;\"èÌù¯*ÆÌPQ£ï»shÑ}C¸ÉŒ€æJ²Ş5;rîàkÉ7ŸŠª|O¿Îq¼võ%¬oül#8şb5<áG–¬³áµ*f¿ÚMbî&Iç¿ÖUÏá•÷B’»+µ®©8\\öä3şf»ÍP-®ÑÎ1İ\rîêçğx5ÕëÒ\"C©4™›^Gÿ\0Jô—cÿ\0Ğ´ÖÚg¨Ë3éRxqií!®\rÂ¿x@€®Û5{\Zíkˆ 8KI#¢ä\\ ÜMi×wš DI€9£,†ì‚¥×hÓN-Öw9ù—W¿6`W¥…Îp¬_%ÒÜ$––œ‰‡8#@®W°jä{³ê™S¸¶2ÏE á—N pÉ:÷[ÂõZ 6ŠK\0…XBìãîr2ö*·åXiZIµCMVóêOè·6Öãˆà}–‡¼ŸŞ1Çéú&ØÎşTH²Ò0ÆöûOùW}–ªæ†U‰ºü‡|¡Àÿ\0rÖVw’@Wm˜½Å:F›ŒgÆß´™“>ˆ»kãf-Ç1âúÊÌP»6áû=\"åç3Ÿªd)ßg(ˆ‡\" ˆ€\"\"\0ˆˆ\" ˆ€,Ku©¡®n.ñi€$æFZh²^à\'@$ø*•{ò•1Š¦DœÌ$ŸE^IñEØqsgV=ğ5‰Y4œ`÷İâJÆ}ñEÆ17>/zW½”\0ày	qò\"¿òşOEã×§ø;Ùë¹³ŞqêV=Jîÿ\0‘Ş‹ÂÍj/\'(c¦åÖĞVgu¦Z¼x§M7şÑ¶ÆÇV\'ğÆî.ƒSÒ7­7lu[mcR«É&\\ç£u=8\08…³6Šçe¨†ÔqhhqÄoZ¦ßQÔúL2àç4¸g8\\@-à¶øÓr‚¾Ì¾V>ûo—RcE*C/Äã«ˆü³óSÿ\0ªá¼@\'\'Ò{zZïf•J¬â²îëÅöj”ª³ç¦àñÎF‡‘lîZ\ZµFXÊ¤™õv(VcÌôçÅ@][HËEµ[0æÈåÄu%Å‚ÛJ£F\"†yäàx¬®[7F\Z\'­6ºağ\\f>P	>Aw²TqŒ„÷g„pÜ£ì¤×\ZÎ241à&$¬õdS¦çù¸“’ïÜë‹ªşÌÖÛF‡#ÁyZmd ^ËEzÍŒ`2èÎ\"$\0í7çÑLÕfs\\r~ä\\ /ÚsMÓÀû-(µÕwÇ†kuí…½´¨<¸À\r2¾~6‚ç¼’|ÉV`[e>KT‘&(1¦Cºñë¹´AÔó#‡ß²†íÈŞ»6¾|•ôf³é…÷ÛmPÏÇH€™¦K:Áñ^˜´7Á+ÁÂ³Y2¬ôk©ög®\'<xò[á‹¨„ÖÎèˆº@\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆëò°ËIÍÛ¹Ï†Qâ«ÖK ÄøŸ@yJÏ·Óqªş ïá¸t…}Y+º™ª4?@&GşÀ}óY2Êİ†Ò«ì³0°oÂÒæhaQî]Š´õj­sÌ…î€c S”¶]­’æ´$’|ÈU¹Kè^¡?Q3G°]52>Šßka{°|Ÿ‡]#šÊ²Ü&´s^7½€Q\r’ tåš§77ãH»?Smš×âäX;68‡Ô!°5Á/3»pñ*VÎXü\'ºj5…¼šíÓä<“mŠÖäÚyç sˆqêD×’¬_—‡iW¤t\0\rÏ%¼·\'‘ıklÀAÍy—L“÷Áv¬òW˜9}ıïZl¿ü\'Ú¦Ğ©û5b;*‡÷dèuo ï~«q^66T§İ\Zf#Í|¶Ù;ñ\rÔpĞµ8šG&Õ9–ğÇÄsóâ©É|‘§n:fŞ°^4˜ÑûºR \0A·/zÖ³UİÂ\\8Æ=Wk%*nÙs–ìÔ‹KwB‚“hÔåí-˜öz8GÕ`Şö°ÆÉ+&ò¼YM¤’-K¶JçL|¹Âª[tq[ù™]ø´&³»&à2y‘§‚¦Yµ]ëW/y\'R²gÂüQîGßŠÙñ2K”¬ÅIó>v¡C¼ñR6\Z 71˜9ıø%Ò­ c22¤F‹×ÃkPe¶„ìw‡\\ÏŒ°/¢BùGf^óQ¥sœ;­Ô´ç<\Z¾ª³¼9­p2 ‰qÉìÏP¹\\Ê‘XDDD@\0DDk]Pçu\'>Q”z(ûEáJ˜’á—Şå={YšÇãĞ;^†$O’Š´Z@Ï ±N4özx¤œQáeÚñ4èW©ÌS-u0…!ÛÖxÍœœá?õ‘ê¡kí­\n}Òépü-ÌÏ†‹·å¢¹î3x»3ä òE{—Gê¾äõã[±¤]Ú7µ$a çŸŒ*İj©.q$ıéÁe6ÂIÅQÅÇŸÓ‚âÖÀ\Zz,ÙrsDhÇ»úšgo­nı¤´h\Z=Fj¨eOm«¦ÙW‘ş ıT,å÷¢ôğ*‚üW’ÛÉ/ÉäW=7.Ä.iöü•ÆsÚ…Ÿ):O’íh¥Ş†W\'.:ËÜçi$ı[¢pº.¿v’ÕHv!Ø©€Hk³ÂàuKeZm–‡SÄÌ ‘ÀïñZÿ\0c.ƒŠH‚á\Zè&=ÇªÚ[<07X°Nw\'G¦±ğI>Í{nı¡Î=©[•OhCœ\"4[‚ó»»¤ïüÕ?h.À¯-Ûù®AÓ;?™Q©JŸ%É uöÉ{Ş6X\"5>¼Ôm\\Mè½»G—(Ó8¬ÂÓÕ ù¯*`‹ÖÍL¸IéåöE©¡˜c†}uü—H¢÷ğ’¥&Z+üæÎ{¤œ`=¢w’Z<Öÿ\0ºìı\Ztæp1­ë… }ËÛx:•²ÏT€æÒ{„ä;ìÂsê\ZG0WÑ·>ÕÙë¶q†ó5ùG÷hBâ’º;8I«¢À+…¥®ùHpâ3c%îŠNQ\0DDD@\0DD=¾È*±Ì9N‡x;ˆZßhy%Ì4‘‘ÈÇÑm[ÚÓÙÑ{÷—S“}HT¦]L¨Şógï’Í›FßN)²ŸpİÍ}gvDÀĞnä![,öú ¨Èş ±/}Ÿh¦KZÂu‡É\Z®gBU\"Ç°Õj5Ö§vM 	Óœ‡Da J£à©.ÍŸ\ZN]hÙbĞ‘˜åŸ²¼- å:OtÖ	ÕyÙ¶ÊÏg )Pá8F³\'ñsUëãâ%š,ÕÖÌpŒGy\rvcõQøú““Ëé×ÔÖ;Qÿ\0™X“–,ï”h¢*Ô•ñn5÷¹ 9Î.€4Ã’,ÊVèi#ÏÌ¾gGZoŒÎhÜÎ[ÊèõÚL$¨VÌ»+š5 Hærb¬wÖjÄÁŸPªøÄF‡wä¶À[†ñŞdHät#¢Ïµ—éÑ„²|ß±±,V&µ­Èßs¨İK\n˜ êÓ—0±ì•Úö‚<~²½ªS1–mõ˜Y\\-Z7æ\\û3j€æÎíU\'how¡\rÏ¼çe<ŠµSwtER¶‹… \0.‰0fZs2LÈ£Fº½íp	È’I‘Äûè<·¨Êö–¼‚r»¹¬Í£kdaÒ$Æ™’·ª‰f,17nÌóã’İ£oQ!fh-\0eˆ“ù¾ñ­ˆå»õü‚åî-ÂÑ¸zV5=I:}Â™Q“JÔúd`v¾*zæ¾ª°—Õ¦êìÕø_\0¡À:3ÕAÜTƒê\ngñd\'IÜ§-WìîmJO2ç††ƒ!Ã\"éå§¢VË#n’/·]µ2æ¹Ù÷Ia\0-#(à¥.ËîÛJ¸¢Êµ+4ˆ8âÂ?™îİã+Ãb¬„0»º`p——ŸªµQ¢\Z! 	ÌõŞz¬[nÓ=|qQU’7®™k»-â«ddá“›ÀşEf*e*Æ‘f£QüCx=UºÍ]¯h{L´‰|VÌsåÙäyX>¸ôÏTDVB\" ˆ€\"\"\0ˆˆ\nÆÙÚàÒ¢?.wA“}Iò]¬tû¡A_ÖÚó«YÛóØ¹OXÎK#|¦ÏF1ã—Í2Xz*Uó{`²Ò³7ğ—ssœHòÕ^ï7÷JÔ7¥RûKÆæ˜PÈèİáAIïÛ¯Él|7ïzˆ­EÆ#W85½NóĞ|µ½£ÕdÙ¬˜š`¹ƒË#<2%SzÙ!jŠÍõs¶\"D—jIÌ˜Ô¨Z, \rÚó<•òõ ]MåØ@s\\q»(ÉS+Õ\Z†@§®ìÖŒRmS<¿7a%%­VŠ0ì#2º¶”•’ÀŞ:¯K+Úd©Ÿ\02ëQã´¬ò«f €ù«¶ÇQ\r¬\Z7€× ë»Ub•y8¢@ËÉ[v;÷•ßUºäĞ7èAs¸jcÅgÌõG¥àc\\“÷ÿ\0¦Á°¨@Òõÿ\0§)¨ë\r‹eI5UFÌòMèó}¨Èïà|MåDë ôóÜ¦œ¼+’#[ŞÍ=¶×{QÎh\09»´%¹ŸuP©V?	yé’Ù?èĞì:8Hp¤x­wVÜB åÓ|+ğ»FÔ1¨Ï^æ+ªÌåú®”ÆDòı¿¢ïJº@â¼ªyç´û;Ù-‡È7+}‡hZ]H`‚Ì“:§ÙUiĞ2àa\\öFî¦ÚƒAÅ&›ÆN\0`îĞ‚¨ÍU³ÑğTùT^©b!\rÊx\rÏaPö+;„AÆî³ôR©šÏ£ÑËèì÷)=”¶CŸDÿ\0S=œ=š…Äº›GdúU?…Ùô:)SŒ©ÙFl<ñ¸›\0Îk•´ùàˆˆ\" ˆ€,;âÛØÑ}MísqÉ£Ì…˜©ûql—2€İß³¹òPÉ.1l³9Í\"\nê¥Ç2s\'™ÕY¨\në¦¦Æ‹$èäfèîéZ®ÊÜUë;ùİèH[*÷©İ+]Ü4å¥ÿ\0Äç2J†Vz?§G¶FZ5ct©*¶J”A«I† vnhŒ`ÄKgæiŞß%›d°T•au0!¡WÓÈ•šÔYí5ê`\ru6²9œàÀæ¦«l«)S{Hiq8ûóûÕZltÁ´\Z3ÖB’­DAĞñSMµ£<ãË{üÿ\0£çËÊÓ¸ú/k=Ü\\\ZÎBD0¶=ı±†§y¡Á°5ï“gˆë\n½ÿ\0ãíÄ†š`\r&ARÈœO\Z~$£‘êÓ#vNÂikĞF°yÍn«\rßH…o@²®ì®É‹4½ÇR\"wÉ\\©2ªO”¬Ù?s³[rˆº@b\\9‡JæÕ]¢­µÍZ`ÿ\0	GŞå£Yˆ\rùI”ÌA[Ûjíî§Jó8á†Rsèœ¾éíK¦I1’sƒÇ5,N›E>t¡WD[jIˆ„/VĞá0ª[eîñUÎs„€Gê½/K§	q039àœ¡Mä\\¨¦,%2:Î\0:åË/È+FËŞ\"i¶;Áø¼;\"ÓôáBXoÄ9„f3Ï~ğ9ÿ\0•iØÛ™Ígnñq07†“2zå–èTän¶kñ#Kïö65„a¦ÜZÂL•JÑˆ,†¨\Zš¦Û=\0’°ï·d_¢Î¤Õ|¾_\0eDa¹£bÜUqYéäË/¢ÏQ(ù³7‘xòyRët]Å7VI/»ˆ¤T\0DDt	;–®´ÚÍZ¬¤r„yB\"Íä>‘·Ã]²bìl\0¤‰ÉF=K²û=Ò©û8ÑØ0òÏ®õÂ*2vzÿ\0§=2bé¥™+-ç÷‘À.At’õ¿ÁåvßÔş‘îTÀ\\¢²ù¿ÙGf…èá†Vï(ˆEœ‚’ˆ‡(æWG¾%²…´U-6Š˜[…”Á8HÎ:ŒR\\\0˜9B¥^\'—`uLRcH˜ËôÕBv_›\\QnÙk—²hlsv“®^±¶¢Âö¸¸¸a˜cKA3ˆğDQOv[’)G‚è¬Ù®¬Ww„û·úIğVûªÖöSkÒæÀÂá†cpt‘Ÿ?eÂ$¤ßg1cŒ=%ç\r—êI1®¸Nó\nYÍÙ™!Ê¾çâ¬«Ûü.vD0­²ó°µ±YİÊ£ı`ıUnÇèGÎyŠ³ÏòLÌÿÙ','2024-09-23',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'productmanagement'
--

--
-- Dumping routines for database 'productmanagement'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdicionarProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdicionarProduto`(
    IN p_nome VARCHAR(255),
    IN p_preco DECIMAL(10, 2),
    IN p_foto MEDIUMBLOB
)
BEGIN
    DECLARE v_produtoId INT;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Reverter a transaÃ§Ã£o em caso de erro
        ROLLBACK;
    END;

    -- Iniciar uma transaÃ§Ã£o
    START TRANSACTION;

    -- Inserir o novo produto na tabela Produto
    INSERT INTO Produto (nome, preco, foto)
    VALUES (p_nome, p_preco, p_foto);

    -- Obter o ID do produto recÃ©m-inserido
    SET v_produtoId = LAST_INSERT_ID();

    -- Inserir o novo produto na tabela Estoque com quantidade zero
    INSERT INTO Estoque (produto, quantidade)
    VALUES (v_produtoId, 0);

    -- Confirmar a transaÃ§Ã£o
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdicionarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdicionarUsuario`(
    IN p_email VARCHAR(255),
    IN p_senha VARCHAR(255),
    IN p_dataCriacao DATE,
    IN p_permissao INT
)
BEGIN
    -- Verificar se a permissÃ£o existe na tabela Permissao
    IF NOT EXISTS (SELECT 1 FROM Permissao WHERE id = p_permissao) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'PermissÃ£o invÃ¡lida';
    ELSE
        -- Inserir o novo usuÃ¡rio na tabela Usuario
        INSERT INTO Usuario (email, senha, dataCriacao, permissao)
        VALUES (p_email, p_senha, p_dataCriacao, p_permissao);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AtualizarEstoque` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AtualizarEstoque`(
    IN p_produtoId INT,
    IN p_novaQuantidade INT
)
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Reverter a transaÃ§Ã£o em caso de erro
        ROLLBACK;
    END;

    -- Iniciar uma transaÃ§Ã£o
    START TRANSACTION;

    -- Atualizar a quantidade no estoque para o produto com o ID fornecido
    UPDATE Estoque
    SET quantidade = p_novaQuantidade
    WHERE produto = p_produtoId;

    -- Confirmar a transaÃ§Ã£o
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizarFotoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizarFotoUsuario`(
    IN usuarioId INT,
    IN novaFoto MEDIUMBLOB
)
BEGIN
    UPDATE usuario
    SET foto = novaFoto
    WHERE id = usuarioId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `atualizarNomePrecoImagemProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualizarNomePrecoImagemProduto`(
    IN p_id INT,
    IN p_nome VARCHAR(255),
    IN p_preco DECIMAL(10, 2),
    IN p_foto MEDIUMBLOB
)
BEGIN
    UPDATE produto
    SET nome = p_nome,
        preco = p_preco,
        foto = p_foto
    WHERE produtoId = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalharUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalharUsuario`(IN `usuarioId` INT)
BEGIN
    SELECT id, email, dataCriacao AS registro, permissao
    FROM usuario
    WHERE id = usuarioId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalheProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalheProduto`(IN `prodId` INT)
BEGIN
    SELECT 
        produtoId AS id, 
        nome, 
        preco 
    FROM 
        produto
    WHERE 
        produtoId = prodId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExcluirProduto`(IN `p_prodId` INT)
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Reverter a transaÃ§Ã£o em caso de erro
        ROLLBACK;
    END;

    -- Iniciar uma transaÃ§Ã£o
    START TRANSACTION;

    -- Excluir o registro correspondente na tabela Estoque
    DELETE FROM estoque
    WHERE produto = p_prodId;

    -- Excluir o registro na tabela Produto
    DELETE FROM produto
    WHERE produtoId = p_prodId;

    -- Confirmar a transaÃ§Ã£o
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExcluirUsuario`(
    IN p_usuarioId INT
)
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Reverter a transaÃ§Ã£o em caso de erro
        ROLLBACK;
    END;

    -- Iniciar uma transaÃ§Ã£o
    START TRANSACTION;

    -- Excluir o usuÃ¡rio da tabela Usuario
    DELETE FROM Usuario
    WHERE id = p_usuarioId;

    -- Confirmar a transaÃ§Ã£o
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetQuantidadeProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetQuantidadeProduto`(
    IN produtoId INT,  -- Recebe a ID do produto
    OUT quantidadeEstoque INT  -- VariÃ¡vel de saÃ­da para a quantidade
)
BEGIN
    -- Busca a quantidade no estoque com base no produtoId
    SELECT quantidade 
    INTO quantidadeEstoque
    FROM Estoque
    WHERE produto = produtoId;
    
    -- Se nÃ£o encontrar o produto, atribui 0 ao valor de saÃ­da
    IF quantidadeEstoque IS NULL THEN
        SET quantidadeEstoque = 0;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `imagemDefault` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `imagemDefault`(IN `padraoId` INT)
BEGIN
    SELECT foto
    FROM padrao
    WHERE id = padraoId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `imagemProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `imagemProduto`(IN `produtoId` INT)
BEGIN
    SELECT foto
    FROM produto
    WHERE produtoId = produto.produtoId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `imagemUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `imagemUsuario`(IN usuarioId INT)
BEGIN
    SELECT foto
    FROM usuario
    WHERE id = usuarioId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarEstoque` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarEstoque`()
BEGIN
    -- Seleciona o id do produto, nome e quantidade do estoque
    SELECT 
        Produto.produtoId AS idProduto, 
        Produto.nome AS nomeProduto, 
        Estoque.quantidade AS quantidadeEstoque
    FROM 
        Estoque
    INNER JOIN 
        Produto ON Estoque.produto = Produto.produtoId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarEstoqueProdutos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarEstoqueProdutos`()
BEGIN
    SELECT 
        produto AS id,  -- Retorna o campo 'produto' renomeado para 'id'
        quantidade
    FROM 
        estoque;  -- Consulta todos os registros da tabela 'estoque'
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarProdutos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listarProdutos`()
BEGIN
    SELECT 
        produtoId AS id,
        nome,
        preco
    FROM 
        produto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obterUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obterUsuarios`()
BEGIN
    SELECT id, email, dataCriacao AS registro, permissao
    FROM usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verificaEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verificaEmail`(IN `p_email` VARCHAR(255))
BEGIN
    -- Seleciona id, senha e permissao da tabela usuario onde o email corresponde ao parÃ¢metro
    SELECT id, senha, dataCriacao AS registro, permissao
    FROM usuario
    WHERE email = p_email;   -- CondiÃ§Ã£o de filtragem baseada no email passado por parÃ¢metro
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23  0:45:42
