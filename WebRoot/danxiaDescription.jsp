<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.dx.servlet.Counter"%>
<%@ page import="com.dx.bean.TbNews"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="maincss.css">
<title>丹霞地貌信息系统</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>
	<div class="indexmain">
		<div class="main">
			<img class="title" src="img/index2.jpg" alt="" />


			<div class="content_pos">
				<br />
				<p style="text-align: center;">
					<strong><span style="font-family: 黑体; font-size: 24px;">丹霞地貌基础知识</span>
					</strong>
				</p>
				<p>
					<span style="font-family: 宋体;"><strong><span
							style="font-family: 仿宋_GB2312; font-size: 19px;"></span> </strong> </span>&nbsp;
				</p>
				<h1 style="margin: 8px 0px; line-height: 24px;">
					<span style="font-size: 18px;"><strong><span
							style="font-family: 黑体; ">1 </span><span style="font-family: 黑体;">什么是丹霞地貌</span>
					</strong> </span>
				</h1>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">丹霞的表面含义是指“红色的霞光”。在中国地学界，就像“喀斯特”一样，丹霞则是指由红层构成、以陡崖坡为特征的地貌，即丹霞地貌。其命名地丹霞山以“色如渥丹，灿若明霞”而得名，所以丹霞地貌就是指像丹霞山一样，以红色悬崖峭壁为特征的特殊地貌。如同讲“喀斯特”不必加地貌也知道是“岩溶地貌”的概念，人们也简称丹霞地貌为“丹霞”。</span>
				</p>
				<p style="margin: 4px 0px 0px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: Times New Roman;">1.1 </span><span
							style="font-family: 宋体;"><span
								style="font-family: 仿宋_GB2312;">早期的定义</span> </span> </span> </strong>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1928</span><span
						style="font-family: 宋体;">年冯景兰提出“丹霞层”，</span><span
						style="font-family: Times New Roman;">1939</span><span
						style="font-family: 宋体;">年陈国达提出“丹霞地形”概念以来，研究多注重岩石、构造、形态等描述与说明，长期没有讨论过定义。黄进在</span><span
						style="font-family: Times New Roman;">1961</span><span
						style="font-family: 宋体;">年编制广东省地貌图时首次提出丹霞地貌的定义：“丹霞地貌是由水平或变动很轻微的厚层红色砂岩、砾岩所构成，因岩层呈块状结构和富有易于透水的垂直节理，经流水向下侵蚀及重力崩塌作用形成陡削的峰林或方山地形”。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1983</span><span
						style="font-family: 宋体;">年《地理学词典》定义为“指巨厚红色砂砾岩上发育的方山、奇峰、赤壁、岩洞和巨石等地貌”。同年《地质辞典》定义为“指厚层、产状平缓、节理发育、铁钙质混合胶结不匀的红色砂砾岩，在差异风化、重力崩塌、侵蚀、溶蚀等综合作用下形成的城堡状、宝塔状、针状、柱状、棒状、方山状或峰林状的地形”。曾昭璇和黄进</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年在《中国大百科全书</span><span
						style="font-family: Times New Roman;">.</span><span
						style="font-family: 宋体;">地理学》卷提出丹霞地貌是“巨厚红色砂、砾岩中沿垂直节理发育的各种丹崖奇峰的总称”。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1990’</span><span
						style="font-family: 宋体;">年代以来，随着人们对丹霞地貌日益关注，对其概念和定义的讨论也逐步增多，因而分歧也日益增多。但大致上可分为三大类：一类是宽口径的定义，主张凡是具有赤壁丹崖的地貌，不管什么岩石构成，包括红色石灰岩、红色火山岩，甚至红色花岗岩地貌，都属于丹霞地貌；第二类是窄口径的定义，主张比照丹霞山，只有发育在白垩纪红色河湖相砂砾岩中的地貌才能称为丹霞地貌；第三类是比较折中的定义，即以陆相为主</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">可能包含非陆相夹层</span><span
						style="font-family: Times New Roman;">)</span><span
						style="font-family: 宋体;">的红层发育的地貌，不限制红层时代。目前绝大部分研究者倾向于折中的定义。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">关于折中的定义，在表述上也存在较大的差异，一是描述性的定义，即全面的表述丹霞地貌的内涵与外延，如丹霞地貌的物质组成、地质构造、影响因素、地貌特征甚至类型和景观价值等；二是抽象的定义，简洁地表述了丹霞地貌的“红色陆相碎屑岩”和“陡崖坡”的本质属性。</span>
				</p>
				<p style="margin: 4px 0px 0px; line-height: 21px;">
					<strong><span style="font-family: Times New Roman;">1.2
					</span><span style="font-family: 宋体;"><span
							style="font-family: 仿宋_GB2312;">目前的定义和解释</span> </span> </strong>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">1</span> </strong><strong><span
						style="font-family: 宋体;">）简洁定义</span> </strong><span
						style="font-family: 宋体;">：根据中国学者长期研究的实践和对典型丹霞地貌的一般认知，中国丹霞申遗文本的简洁定义是“以陡崖坡为特征的红层地貌”。这个定义把丹霞地貌概念的內涵</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">本质属性</span><span
						style="font-family: Times New Roman;">)</span><span
						style="font-family: 宋体;">简要且完整地表述出来，就是：它是红层地貌（根据物质组成），二是具有陡崖坡（形态特征），即以显著的陡崖坡区别于其它红层地貌。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: Times New Roman;">●
					</span> </strong><strong><span style="font-family: 宋体;">发育丹霞的物质基础是红层</span>
					</strong><span style="font-family: 宋体;">。发育丹霞的红层<strong><span
							style="text-decoration: underline;">主要是红色陆相碎屑岩</span> </strong>，尤其以砾岩和砂岩为主体的陆相粗碎屑岩。之所以用红层取代了过去定义中的红色陆相碎屑岩，是因为在干旱区，一些粉砂岩和泥质岩也可以发育较典型的丹霞；还有一些红层中夹生物岩或蒸发岩，有的夹海陆交互相、滨浅海相等夹层，也能发育丹霞地貌。因此作为普适性定义不能仅限于陆相碎屑岩。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">● </span><strong><span
						style="font-family: 宋体;">丹霞的突出形态特征是陡崖坡</span> </strong><span
						style="font-family: 宋体;">。各种尺度和形态的陡崖是构成丹霞山块和峡谷谷壁的基本要素，是丹霞单体地貌和群体景观最突出的个性特征。之所以用陡崖坡取代赤壁丹崖，是因为各地的红层颜色有较大的差别，一些红层本身的颜色并不一定是鲜明的红色，甚至含有其他颜色的夹层；长期暴露的红层陡崖坡受到风化、流水侵蚀、生物作用、化学沉淀或有机质染色，表面颜色会有很大的变化。所以，不一定要求陡崖坡一定是红色。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">在形态特征中只强调陡崖坡，而忽略对丹霞景观的具体描述，是因为陡崖坡是共有的最基本特征，一些青年早期的高原峡谷型丹霞，不一定发育锥状、堡状、墙状、柱状等单体地貌景观，也没有峰丛、峰林、群峰等群体地貌景观，但不能说它们不是丹霞。另外，该定义不作景观美学限制，也就是不能把主观认识层面的美学评价作为科学定义中的限制因素。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">2</span> </strong><strong><span
						style="font-family: 宋体;">）解释性定义</span> </strong><span
						style="font-family: 宋体;">：中国丹霞申遗文本在上述定义中增加两个发育条件（构造和外动力），被称为解释性定义，表述为：在地壳运动中被抬升并受断裂切割的红层，以流水侵蚀为主，并在风化、溶蚀、重力等外动力共同作用下，塑造成的以陡崖坡为特征的一类地貌。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">● </span><strong><span
						style="font-family: 宋体;">丹霞发育受地质构造控制</span> </strong><span
						style="font-family: 宋体;">。丹霞地貌发育在红层被抬升到地方性侵蚀基准面以上的区域；红层盆地地质构造控制山块的空间格局；岩层产状和断层、节理等构造面控制丹霞坡面形态；新构造运动控制着地貌发育的进程。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">● </span><strong><span
						style="font-family: 宋体;">外动力是丹霞的直接塑造者</span> </strong><span
						style="font-family: 宋体;">。丹霞是一种以流水侵蚀为主营力的地貌。红层被抬升后，开始接受物理和化学风化、溶蚀、流水侵蚀、重力崩塌等作用，雕琢出千姿百态的地貌景观。此外，生物作用，海岸带波浪作用，干旱区风沙作用等都是丹霞的塑造因素，在不同地区显示出不同的重要性。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span
						style="font-family: Times New Roman; font-size: 18px;">&nbsp;</span>
					</strong>
				</p>
				<a id="tips2"></a>
				<h1 style="margin: 8px 0px; line-height: 24px;">
					<strong><span style="font-family: 黑体; font-size: 18px; ">2
							基本地貌特征</span> </strong>
				</h1>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">红色陡崖坡是丹霞地貌最重要的识别要素，不同形态和体量的陡崖坡组合成堡状、墙状、柱状等各类正地貌的基本坡面；在沟谷等负地貌单元，陡崖坡则构成峡谷的谷壁。</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">2.1 </span><span
							style="font-family: 宋体;">基本坡面形态</span> </span> </strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">大量的研究都涉及到丹霞的形态特征，但直到</span><span
						style="font-family: Times New Roman;">1982</span><span
						style="font-family: 宋体;">年，黄进才对丹霞地貌基本坡面形态进行了总结和概括。他把近水平构造的岩层发育的丹霞地貌坡面自上而下分为三种类型：</span><span
						style="font-family: Times New Roman;">(1)</span><span
						style="font-family: 宋体;">受近水平岩层面控制的层面顶坡；</span><span
						style="font-family: Times New Roman;">(2)</span><span
						style="font-family: 宋体;">受垂直节理控制的陡崖坡；</span><span
						style="font-family: Times New Roman;">(3)</span><span
						style="font-family: 宋体;">受崩积岩块内摩擦角控制的崩积缓坡</span><sup><span
						style="font-family: Times New Roman; font-size: 2px;">[16]</span>
					</sup><span style="font-family: 宋体;">。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">倾斜的岩层产状下发育的丹霞坡面则表现为“顶斜、身陡、麓缓”三种坡面。在一些构造比较强烈的地区，岩层的倾角可能达到</span><span
						style="font-family: Times New Roman;">60</span><span
						style="font-family: 宋体;">度以上，则层面可构成陡崖坡。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg1.jpg">
				</p>
				<p style="text-align: center;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">1&nbsp; </span><span
						style="font-family: 宋体;">近水平和缓倾斜岩层发育的丹霞地貌基本坡面形态</span>
				</p>
				<p style="text-align: center;">
					<span style="font-family: Times New Roman;">Fig.1 &nbsp;The
						siope surfaces of Danxia landform whichfomed along horizontal and
						gently inclined rock beds</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">2.2 </span><span
							style="font-family: 宋体;">坡面的复杂性</span> </span> </strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">现实中丹霞地貌的坡面是极其复杂的，表现为：</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">1</span><span
						style="font-family: 宋体;">）陡崖坡可以分为流水侵蚀型、崩塌后壁型、多因素（风化</span><span
						style="font-family: Times New Roman;">/</span><span
						style="font-family: 宋体;">雨水</span><span
						style="font-family: Times New Roman;">/</span><span
						style="font-family: 宋体;">风力</span><span
						style="font-family: Times New Roman;">/</span><span
						style="font-family: 宋体;">波浪）改造型。但丹霞崖壁一般是在断裂面（构造破裂面或重力破裂面等）的基础上被侵蚀、崩塌所形成的。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">）陆相沉积地层在垂直方向上具有非常大的岩性变化，坚硬的岩层往往形成崖壁上的顺层凸起，软弱岩层则发育凹槽或洞穴。因此，丹霞陡崖坡往往具有明显的顺层构造。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">3</span><span
						style="font-family: 宋体;">）陡崖坡受到来自于顶部的坡面流水长期侵蚀，往往发育较多的竖向沟槽。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">4</span><span
						style="font-family: 宋体;">）由于陆相红层相对软弱，胶结物比较复杂，陡崖坡的折角处往往发生明显的圆化。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;"></span><span
						style="font-family: 宋体; font-size: 14px;">（</span><span
						style="font-family: ;" new="" times="">5</span><span
						style="font-family: 宋体; font-size: 14px;">）由于红层沉积环境、物质成分、成岩过程和后期风化、化学沉淀、生物作用等因素影响，丹霞陡崖坡不一定表现为鲜明的红色。</span>
				</p>
				<a id="tips3"></a>
				<h1 style="margin: 0px 0px 8px; line-height: 24px;">
					<strong><span style="font-family: 黑体; font-size: 18px; ">3&nbsp;&nbsp;分类系统</span>
					</strong>
				</h1>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">3.1 </span><span
							style="font-family: 宋体;">学科归属及分类</span> </span> </strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">曾昭璇（</span><span
						style="font-family: Times New Roman;">1960,1980</span><span
						style="font-family: 宋体;">）曾将丹霞地貌归为岩石地貌</span><span
						style="font-family: 宋体;">→</span><span style="font-family: 宋体;">红层地貌</span><span
						style="font-family: 宋体;">→</span><span style="font-family: 宋体;">红层丘陵中。在学科归属问题上，表明了丹霞地貌属于岩石地貌</span><span
						style="font-family: 宋体;">→</span><span style="font-family: 宋体;">红层地貌类，但归入红层丘陵似有不妥。对于丹霞地貌本身的分类，许多学者在不同的研究中有所涉及，如黄进等（</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">）、黄可光等（</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">）、彭华（</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">）、罗成德（</span><span
						style="font-family: Times New Roman;">1994</span><span
						style="font-family: 宋体;">）、陈致均等（</span><span
						style="font-family: Times New Roman;">1994</span><span
						style="font-family: 宋体;">）邓美成等（</span><span
						style="font-family: Times New Roman;">1996</span><span
						style="font-family: 宋体;">）文章涉及的分类。其中黄进等</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">年根据岩层倾角、有无上覆盖层、所处气候区、发育阶段和地貌形态等给出了比较全面的分类体系。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">在前人研究的基础上，彭华（</span><span
						style="font-family: Times New Roman;">2000</span><span
						style="font-family: 宋体;">，</span><span
						style="font-family: Times New Roman;">2002</span><span
						style="font-family: 宋体;">）对丹霞地貌的分类系统进行了整合与修订，建立了分类依据和指标体系，进行了抽象与归纳，提出了完整的分类系统。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg2.jpg">
				</p>
				<p style="text-align: center;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">2&nbsp; </span><span
						style="font-family: 宋体;">丹霞地貌的分类学位置</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">3.2 </span><span
							style="font-family: 宋体;">目前的分类系统</span> </span> </strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">彭华</span><span
						style="font-family: Times New Roman;">(2000, 2002)</span><span
						style="font-family: 宋体;">将丹霞地貌发育的物质基础、地质构造、主导动力、地貌形态、发育阶段等要素作为一级分类依据，形成一级子系统。在此基础上，按次级依据划分二级子系统。以下是在中国丹霞申遗过程中经论证而使用的丹霞分类系统。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">表</span><span
						style="font-family: Times New Roman;">1&nbsp; </span><span
						style="font-family: 宋体;">丹霞分类系统总表</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdtable1.jpg">
				</p>
				<a id="tips4"></a>
				<p style="margin: 4px 0px 0px; line-height: 21px;">
					<span style="font-family: 宋体;"></span><strong><span
						style="font-size: 18px;"><span
							style="color: black; line-height: 125%; ">4&nbsp;&nbsp; </span><span
							style="color: black; line-height: 125%; font-family: 黑体; ">中国丹霞地貌的分布</span>
					</span> </strong>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">中国丹霞分布广泛，从热带到亚热带到温带，从湿润到干旱区均有发现；最低海拔可以形成于东部的海岸带，最高海拔可以出现在</span><span
						style="font-family: Times New Roman;">4000m</span><span
						style="font-family: 宋体;">以上的青藏高原上。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">根据空间组合关系，中国丹霞被划分为东南、西南和西北三大集中分布区。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg3.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">3&nbsp; </span><span
						style="font-family: 宋体;">中国丹霞的分布</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">1</span><span
						style="font-family: 宋体;">）东南部湿润峰丛－峰林型丹霞。在中国大地貌单元中，属于江南丘陵区，包括浙、闽、赣、粤、湘、桂等省区，多发育临水峰丛－峰林式丹霞。东南部集中区</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">）西南部湿润高原－山地－峡谷型丹霞。主要分布在四川盆地外围的盆地－高原过渡带和云南西部山地。地形起伏剧烈，以深切割的高原－峡谷型、山地型丹霞为主。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">3</span><span
						style="font-family: 宋体;">）西北部高寒－干旱山地型丹霞。主要分布在甘肃及周边省区。处于青藏高原的青海省，分布大量海拔</span><span
						style="font-family: Times New Roman;">3000</span><span
						style="font-family: 宋体;">－</span><span
						style="font-family: Times New Roman;">4000m</span><span
						style="font-family: 宋体;">以上的高寒－半干旱－干旱型丹霞；兰州周边发育了半干旱山地型丹霞；河西走廊的祁连山麓至新疆的天山南北麓，则发育了典型的干旱山地型丹霞。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">除了上述三个集中分布区之外，其它地区均有零散分布。由于中国自然地理环境复杂，各地的地质构造运动、气候特征、生物作用等内－</span><span
						style="font-family: 宋体;">外动力差异巨大</span><span
						style="font-family: 宋体;">，形成丹霞类型的多样性和景观差异性。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">&nbsp;</span>
				</p>
				<a id="tips5"></a>
				<h4 style="margin: 16px 0px 4px; line-height: 125%;">
					<strong><span style="font-size: 18px;"><span
							style="color: black; line-height: 125%; ">5&nbsp;&nbsp; </span><span
							style="color: black; line-height: 125%; font-family: 黑体; ">丹霞地貌发育条件</span>
					</span> </strong>
				</h4>
				<p style="line-height: 20px;">
					<span style="font-family: Times New Roman;"><strong>5.1
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">物质基础：红层及特征</span> </strong> </span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">1</span> </strong><strong><span
						style="font-family: 宋体;">）红层的构成</span> </strong><span
						style="font-family: 宋体;">：红层是各个地质历史时期沉积的红色岩系总称。红层的构成极其复杂，包含砾岩、砂砾岩、砂岩、粉砂岩和泥质岩，并可能夹风成沉积、淡水灰岩及石膏等蒸发岩。一般情况下，在大型盆地边缘堆积巨厚的洪积泥砾，山前洪积扇的红层巨砾可达数十厘米甚至几米，往中心渐变为洪冲积砂砾岩、砂岩，河湖积细砂、粉沙岩和泥质岩。但由于陆地沉积环境的变化剧烈，沉积过程复杂，各次沉积的平面形态和垂向组合</span><span
						style="font-family: 宋体;">表现</span><span style="font-family: 宋体;">出很大差异。小型盆地中沉积分异不明显，往往主要由洪积泥砾组成，但其中也有各种细颗粒软岩的夹层。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg4.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">4&nbsp; </span><span
						style="font-family: 宋体;">构成丹霞的部分红层岩性特点</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">2</span> </strong><strong><span
						style="font-family: 宋体;">）红层的成分</span> </strong><span
						style="font-family: 宋体;">：砾岩和砂砾岩红层的矿物成分与化学成分取决于盆地外围碎屑源地的岩石，其成分十分复杂；</span><span
						style="font-family: 宋体;">胶结物以泥、砂为主，化学胶结物主要为硅质、钙质和铁质。而静水沉积的粉砂岩或泥质岩中碳酸钙含量一般很大，</span><span
						style="font-family: 宋体;">丹霞山丹霞组岩石中</span><span
						style="font-family: Times New Roman;">CaCO<sub><span
							style="font-size: 3px;">3</span> </sub> </span><span style="font-family: 宋体;">含量变化于</span><span
						style="font-family: Times New Roman;">0.29~38.44%</span><span
						style="font-family: 宋体;">，而泥质岩样本中一般超过</span><span
						style="font-family: Times New Roman;">20</span><span
						style="font-family: 宋体;">％；浙江江郎山洞穴粉砂岩样品的</span><span
						style="font-family: Times New Roman;">CaO</span><span
						style="font-family: 宋体;">含量是崖壁砾岩的三倍</span><span
						style="font-family: 宋体;">。因此，红层往往具有一定的可溶性，尤其是粉砂岩和泥质岩的可溶性更强。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">3</span> </strong><strong><span
						style="font-family: 宋体;">）红层的沉积环境</span> </strong><span
						style="font-family: 宋体;">：世界上的红层以陆相碎屑岩为主，也包含部分滨</span><span
						style="font-family: ;">/</span><span style="font-family: 宋体;">浅海相红层；中国的红层基本上是陆相红层。由于</span><span
						style="font-family: 宋体;">红层中含有较多的钙质，甚至有蒸发岩夹层，而且各个时代的红层大多分布在热带和亚热带地区，学者们一般认为红层形成在炎热干燥的环境下，类似于现代热带和亚热带半干旱气候。不过也有学者认为可能主要是成岩过程中含铁矿物脱水氧化成赤铁矿，红层可能并无气候意义</span><span
						style="font-family: Times New Roman;">(Turner, 1980)</span><span
						style="font-family: 宋体;">。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">4</span> </strong><strong><span
						style="font-family: 宋体;">）红层的特性</span> </strong><span
						style="font-family: 宋体;">：</span><span style="font-family: 宋体;">红层中砾岩和砂砾岩一般比较坚硬，往往发育以陡崖坡为特征的丹霞地貌。但红层中占很大比重的是粘土岩和粉砂岩，</span><span
						style="font-family: 宋体;">一般沉积在湖盆中部、河漫滩及河间洼地，比较均质，</span><span
						style="font-family: 宋体;">大部分为泥质胶结，并石膏、钙质和其它盐类成分含量高，岩性较软。</span><span
						style="font-family: 宋体;">因此，泥质岩特别容易被风化侵蚀和溶蚀。</span><span
						style="font-family: 宋体;">在坚硬的砂砾岩红层中也可能包含多层的粘土岩和粉砂岩夹层，这些软岩夹层往往容易形成上覆岩层位移和崩塌的结构面，使得整体强度受到巨大的破坏</span><span
						style="font-family: 宋体;">。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">5</span> </strong><strong><span
						style="font-family: 宋体;">）红层的分布</span> </strong><span
						style="font-family: 宋体;">：中国的红层出露面积大于</span><span
						style="font-family: ;">80</span><span style="font-family: 宋体;">万</span><span
						style="font-family: ;">km<sup><span
							style="font-size: 2px;">2</span> </sup> </span><span style="font-family: 宋体;">（</span><span
						style="font-family: 宋体;">郭永春等，</span><span style="font-family: ;">2007</span><span
						style="font-family: 宋体;">），广布于中国各地</span><span
						style="font-family: 宋体;">(</span><span style="font-family: 宋体;">如图</span><span
						style="font-family: ;">5</span><span style="font-family: 宋体;">)</span><span
						style="font-family: 宋体;">。</span><span style="font-family: 宋体;">东部（</span><span
						style="font-family: ;">I</span><span style="font-family: 宋体;">，</span><span
						style="font-family: ;">II</span><span style="font-family: 宋体;">，</span><span
						style="font-family: ;">III</span><span style="font-family: 宋体;">）以白垩纪和古近纪红层为主，多是北北东向的中小型红层盆地；不包括两湖平原、华北平原和东北平原等大盆地中的埋藏红层。中部（</span><span
						style="font-family: ;">IV</span><span style="font-family: 宋体;">，</span><span
						style="font-family: ;">V</span><span style="font-family: 宋体;">）是四川盆地和陕甘宁盆地等大型盆地，以白垩纪和侏罗纪红层为主，在兰州外围地区也出露较多的古近纪红层；其中陕甘宁盆地中的红层大多被黄土覆盖，但内蒙古高原出露较多的白垩纪红层；四川盆地是目前出露面积最大的红层盆地，面积达</span><span
						style="font-family: ;">26</span><span style="font-family: 宋体;">万</span><span
						style="font-family: ;">km<sup><span
							style="font-size: 2px;">2</span> </sup> </span><span style="font-family: 宋体;">。西北（</span><span
						style="font-family: ;">VI</span><span style="font-family: 宋体;">）的塔里木和准葛尔盆地周边断断续续地出露白垩纪红层；也分布着较多的古近纪乃至新近纪红层。青藏高原（</span><span
						style="font-family: ;">VII</span><span style="font-family: 宋体;">）有较多的白垩纪红层；高原面上广布古近纪和新近纪陆相沉积，但大多颜色灰黄或呈棕灰色。</span>
				</p>
				<p>
					<span style="font-family: 宋体;"><strong>5.2 </strong><strong><span
							style="font-family: 楷体_GB2312;">构造条件：构造的控制作用</span> </strong> </span>
				</p>
				<p>&nbsp;</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(1)
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">大地构造对沉积盆地的控制</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp; </span><span
						style="font-family: 宋体;">中生代以来，中国许多在加里东运动和海西运动中稳定的陆台发生活化。东部地区受太平洋板块影响，形成一系列北东—北北东向的隆起带与拗陷带，红层盆地以小型山间盆地为主；西部地区受印度板块挤压，从北向南渐次成陆并形成若干近东西向的红层盆地；</span><span
						style="font-family: 宋体;">中部则形成一个北东向的压扭性地带，发育了鄂尔多斯盆地和四川盆地等大型盆地</span><span
						style="font-family: 宋体;">。因此中国中、新生代盆地基本以此格局展布，控制了红层盆地的分布规律</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">5)</span><span
						style="font-family: 宋体;">。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg5.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">5&nbsp; </span><span
						style="font-family: 宋体;">中国红层的分布与时代</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(2)
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">局部构造线对山块格局的控制</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp; </span><span
						style="font-family: 宋体;">盆地内部的构造线格局是控制丹霞地貌山块格局乃至山块形态的基本因素。大构造线控制了山块排列方向，小构造线则控制山块走向、密度和平面形态。丹霞山的山块排列基本沿北北东向的大断层延伸，</span><span
						style="font-family: 宋体;">而山块走向主要沿近东西向的密集断层和大节理延伸</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">6)</span><span
						style="font-family: 宋体;">。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg6.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">6&nbsp; </span><span
						style="font-family: 宋体;">丹霞山东部山块格局与构造线的关系</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(3)
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">岩层产状对坡面形态的控制</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp; </span><span
						style="font-family: 宋体;">岩层产状对丹霞地貌形态的影响主要是对于山块顶面和构造坡面的控制，一般情况下，近水平岩层上发育的丹霞地貌具有“顶平、身陡、麓缓”的坡面特征；缓倾斜岩层上发育的丹霞地貌则具有单面山的特点，其斜顶面和岩层层面一致；陡倾斜岩层所发育的丹霞地貌若不是保留了古侵蚀面的话，其顶面很难形成平顶或缓斜顶，</span><span
						style="font-family: 宋体;">而多是尖顶</span><span
						style="font-family: 宋体;">。如新疆天山地区有的岩层倾角达</span><span
						style="font-family: Times New Roman;">60</span><span
						style="font-family: 宋体;">－</span><span
						style="font-family: Times New Roman;">90</span><span
						style="font-family: 宋体;">度，其构造坡面已构成陡崖坡。</span>
				</p>
				<p>
					<span style="font-family: 宋体;"><strong>(4) </strong><strong><span
							style="font-family: 楷体_GB2312;">地壳升降对地貌发育进程的控制</span> </strong>&nbsp; <span
						style="font-family: 宋体;">地壳升降对丹霞地貌发育的影响体现在红层盆地必须是后期上升区，以便为侵蚀提供条件。上升到一定程度而长期相对稳定，利于丹霞地貌按连续过程逐步演化；间歇性抬升则可能发育多层性丹霞地貌，丹霞山的这种陡缓坡组合多达五级（图</span>7<span
						style="font-family: 宋体;">）。据黄进等</span>(2009)<span
						style="font-family: 宋体;">在丹霞山河流阶地冲积层中进行的热释光分析，得知丹霞山区的地壳平均上升速度为</span>0.94m/<span
						style="font-family: 宋体;">万年。</span> </span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg7.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">7&nbsp; </span><span
						style="font-family: 宋体;">丹霞山的多级夷平面</span>
				</p>
				<p>
					<span style="font-family: 宋体;"><strong>5.3 </strong><strong><span
							style="font-family: 楷体_GB2312;">外力条件</span> </strong> </span>
				</p>
				<p>&nbsp;</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">直接影响丹霞地貌发育的外动力主要有流水、风化和重力等作用，其中流水是塑造地貌的主动力。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(1)
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">流水作用</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp;</span><span
						style="font-family: 宋体;">流水作用在丹霞地貌发育和演化中的主导性表现为流水是下切和侧蚀的主动力。特别是流水的侧蚀往往在坡脚掏出水平洞穴，为上覆岩块的重力崩塌提供了可能。此外水的溶蚀作用对含可溶成分较大的红层的破坏作用不可忽视。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg8.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">8&nbsp; </span><span
						style="font-family: 宋体;">流水的下切与侧蚀</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(2)
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">风化作用</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp;</span><span
						style="font-family: 宋体;">风化是丹霞发育过程中常规而又重要的作用，尤其对软弱岩层的快速破坏，决定了丹霞陡崖坡后退的速度。在陡崖坡上，流水的作用减弱，软岩的风化作用表现十分清楚。红层在垂向上的岩性差异而导致抗风化能力的不同，泥质或粉砂质软岩层往往快速凹进而成顺层岩槽或岩洞，岩洞的风化加深为上覆岩层的崩塌创造了条件。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg9.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">9&nbsp; </span><span
						style="font-family: 宋体;">红层中软弱夹层的风化凹进</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">左、中</span><span
						style="font-family: Times New Roman;">)</span><span
						style="font-family: 宋体;">和砂岩中的片状剥落</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">右</span><span
						style="font-family: Times New Roman;">)</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(3)
					</strong> </span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">重力作用</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp;</span><span
						style="font-family: 宋体;">除了深切割的狭窄巷谷的谷壁一般保留着流水侵蚀型崖壁外，大部分陡崖坡可能是崩塌面或经风化及坡面流水改造过的崩塌面。所以重力作用在丹霞地貌发育过程中非常普遍。重力崩塌作用往往发生在流水侧蚀而形成的临空谷坡或软岩风化凹进形成的上覆岩体上</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">10)</span><span
						style="font-family: 宋体;">，悬空岩体一般沿构造节理或卸荷节理发生崩塌。洞穴、天生桥的顶板也常发生局部崩塌。崩塌岩体在坡脚发生机械破碎，因而陡崖坡脚常堆积由巨大石块构成的崩积堆。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg10.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">10&nbsp; </span><span
						style="font-family: 宋体;">山崖崩塌的两种主要条件</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;"><strong>(4)</strong>
					</span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">其他外动力</span> </strong> </span><span
						style="font-family: Times New Roman;">&nbsp;</span><span
						style="font-family: 宋体;">干旱区由于盐风化及风沙吹磨而在丹霞崖壁上形成大量风蚀窝穴；海岸丹霞地貌发育过程中波浪的作用；高寒区的冻融风化是一种强烈的风化作用。</span>
				</p>
				<p style="line-height: 13px;">
					<span style="font-family: Times New Roman;">&nbsp;</span>
				</p>
				<a id="tips6"></a>
				<h4 style="margin: 16px 0px 4px; line-height: 125%;">
					<strong><span style="font-size: 18px;"><span
							style="color: black; line-height: 125%; font-weight: normal;">6
						</span><span
							style="color: black; line-height: 125%; font-family: 黑体; font-weight: normal;">丹霞地貌发育规律</span>
					</span>
					</strong>
				</h4>
				<p style="line-height: 20px;">
					<span style="font-family: Times New Roman;"><strong>6.1
					</strong>
					</span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">发育过程</span>
					</strong>
					</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">丹霞地貌发育过程是一种不同于其他地貌的特殊地貌发育过程。综述如下：</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">丹霞地貌发育开始于红层盆地的抬升。由于红层盆地主要发育在相对刚性的陆台</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">克拉通</span><span
						style="font-family: Times New Roman;">)</span><span
						style="font-family: 宋体;">断凹陷地块上，其后期构造变动往往以断裂构造为主。断层带和大节理成为后期流水切割的薄弱地带。抬升高出当地侵蚀基准面的红层首先被流水沿断层和垂直节理下切侵蚀，形成深狭的切沟或巷谷，进一步侵蚀使之加深、加宽而成峡谷。在此之前，崩塌一般不发育。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">流水下切到一定深度，遇到下伏硬岩层或是接近于局部侵蚀基面，水流以侧向侵蚀为主对基部进行破坏，谷壁沿垂直节理逐步崩塌而使峡谷加宽。崩塌物可能在沟谷的谷底堆积，发育不稳定的崩积缓坡。这个过程中，山坡后退，红层被切割成雏形峰丛。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">此后，谷地加宽，山麓崩积缓坡也越发育。陡崖坡基部因崩积缓坡的保护而致流水侵蚀减弱或很少有流水直接侵蚀，陡崖坡的崩塌后退主要靠软岩层的风化凹进而进行。除非谷地的另一坡崩塌而把河流再挤回来，继续遭受河流侵蚀。这样反复分侵蚀和崩塌使得山顶面逐步缩小，原来的山块则逐步退缩成为堡状残峰、石墙或孤立的石柱。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg11.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">11&nbsp; </span><span
						style="font-family: 宋体;">丹霞地貌发育过程示意图</span>
				</p>
				<p style="line-height: 20px;">
					<strong><span style="font-family: Times New Roman;">&nbsp;</span>
					</strong>
				</p>
				<p style="line-height: 20px;">
					<span style="font-family: Times New Roman;"><strong>6.2
					</strong>
					</span><span style="font-family: 宋体;"><strong><span
							style="font-family: 楷体_GB2312;">发育阶段</span>
					</strong>
					</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">丹霞地貌发育的各阶段特征如表</span><span
						style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">和图</span><span
						style="font-family: Times New Roman;">12</span><span
						style="font-family: 宋体;">所示。</span>
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体; font-size: 14px;">表</span><span
						style="font-family: ;" new="" times="">2&nbsp; </span><span
						style="font-family: 宋体; font-size: 14px;">丹霞地貌发育阶段划分</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdtable2.jpg">
				</p>
				<br/><br/>
				<p style="text-align: center;">
					<img src="files/pdimg12.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">12&nbsp; </span><span
						style="font-family: 宋体;">丹霞地貌演化过程模式图</span>
				</p>
				<p style="margin: 4px 0px 0px; text-align: center;">
					<span style="font-family: 宋体; font-size: 12px;">（注：</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">O</span>
					</span><span style="font-family: 宋体; font-size: 12px;">初始状态，红层盆地抬升后，地表河流继承性下切或沿断裂带下切；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">A</span>
					</span><span style="font-family: 宋体; font-size: 12px;">青年早期，高原峡谷型丹霞；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">B</span>
					</span><span style="font-family: 宋体; font-size: 12px;">青年晚期密集雏形峰丛峡谷型丹霞；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">C</span>
					</span><span style="font-family: 宋体; font-size: 12px;">壮年早期，密集峰丛型丹霞；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">D</span>
					</span><span style="font-family: 宋体; font-size: 12px;">壮年晚期，簇群式峰丛峰林型丹霞；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">E</span>
					</span><span style="font-family: 宋体; font-size: 12px;">老年早期，疏散峰林宽谷型丹霞；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">F</span>
					</span><span style="font-family: 宋体; font-size: 12px;">老年晚期，波状平原孤峰型丹霞；</span><span
						style="font-size: 12px;"><span
						style="font-family: Times New Roman;">G</span>
					</span><span style="font-family: 宋体; font-size: 12px;">消亡期，侵蚀平原与波状平原，残存红层孤丘孤石）</span>
				</p>
				<p style="line-height: 13px;">
					<span style="font-family: Times New Roman;">&nbsp;</span>
				</p>
				<a id="tips7"></a>
				<h1 style="margin: 8px 0px; line-height: 24px;">
					<span style="font-size: 18px;"><strong><span
							style="font-family: ;">7&nbsp;&nbsp; </span><span
							style="font-family: 黑体; font-weight: normal;">中国丹霞研究简史</span>
					</strong>
					</span>
				</h1>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<span style="font-size: 16px;"><span style="font-family: ;"
						new="" times="">7.1 </span><span style="font-family: 宋体;">初创阶段</span><span
						style="font-family: ;" new="" times=""> (1928-1949)</span>
					</span>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">将丹霞作为一类独特的地貌类型予以关注始于上世纪</span><span
						style="font-family: Times New Roman;">20</span><span
						style="font-family: 宋体;">年代后期。</span><span
						style="font-family: Times New Roman;">1928</span><span
						style="font-family: 宋体;">年，冯景兰等首次将构成广东丹霞山奇特地貌的红层及粤北相应地层命名为“丹霞层”，引起了学术界的关注。</span><span
						style="font-family: Times New Roman;">1938</span><span
						style="font-family: 宋体;">年，陈国达首次提出“丹霞山地形”的概念，</span><span
						style="font-family: Times New Roman;">1939</span><span
						style="font-family: 宋体;">年使用了“丹霞地形”的术语。以后丹霞层（演变为丹霞群、丹霞组）和丹霞地形（演变为丹霞地貌）的概念便被沿用下来。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1940</span><span
						style="font-family: 宋体;">年代，一批学者分别对丹霞层等中国南方红层的地层、岩性、构造及地貌发育等方面进行了不同程度的研究与论述。标志着丹霞地貌走上学术研究的舞台。这一阶段关于丹霞的研究范围主要限于中国东南部地区，开始了作为一种独立地貌类型的学术研究，故被称为初创阶段。</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">7.2 </span><span
							style="font-family: 宋体;">成型阶段</span><span style="font-family: ;"
							new="" times=""> (1950-1990)</span>
					</span>
					</strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">中华人民共和国成立后，在大规模的区域地质调查和综合科学考察中，丹霞地貌的概念得到广泛使用。曾昭璇</span><span
						style="font-family: Times New Roman;">1960</span><span
						style="font-family: 宋体;">年出版了《岩石地形学》，首次将红层地貌作为独立的岩石地貌类型进行了总结论述。黄进（</span><span
						style="font-family: Times New Roman;">1961</span><span
						style="font-family: 宋体;">）在编制广东省地貌图时把丹霞地貌作为一种独立的地貌类型，并首次对“丹霞地貌”进行了定义。</span><span
						style="font-family: Times New Roman;">1980</span><span
						style="font-family: 宋体;">年，曾昭璇、黄少敏在《中国自然地理·地貌》一书中，专题讨论了中国红层的分布、岩石学特征、地貌发育过程和地貌特点。到</span><span
						style="font-family: Times New Roman;">1982</span><span
						style="font-family: 宋体;">年，黄进总结了近水平红层在湿润气候条件下坡面发育的基本方式和坡面特点。同时，各地许多学者也对河北、福建、广东、四川等地的丹霞地貌及其利用开展了一定的调查研究。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">这个阶段大规模的科学考察为丹霞地貌研究积累了大量资料，对各地红层有了更为科学的论述。丹霞地貌的概念得到了广泛的传播，作为一个独立的地貌类型的学术研究已形成体系。</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">7.3 </span><span
							style="font-family: 宋体;">大发展阶段（</span><span
							style="font-family: ;" new="" times="">1991</span><span
							style="font-family: 宋体;">年以来）</span>
					</span>
					</strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">直到</span><span
						style="font-family: Times New Roman;">1991</span><span
						style="font-family: 宋体;">年之前，丹霞的研究仍然处于个别的、零散的、具体问题研究阶段。</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年黄进主持了第一个丹霞地貌研究的国家自然科学基金项目，也开始了他的中国丹霞地貌的全面考察；在陈传康和黄进等人的推动下，</span><span
						style="font-family: Times New Roman;">1991</span><span
						style="font-family: 宋体;">年在广东丹霞山召开了第一届全国丹霞地貌旅游开发学术讨论会，并成立了研究会，标志着丹霞地貌研究进入大发展阶段。这个阶段，黄进对中国</span><span
						style="font-family: Times New Roman;">28</span><span
						style="font-family: 宋体;">个省、市、自治区的</span><span
						style="font-family: Times New Roman;">900</span><span
						style="font-family: 宋体;">多处丹霞地貌进行了考察，并带动各地学者把研究推向深入。</span>
				</p>
				<p style="line-height: 21px; text-indent: 27px;">
					<span style="letter-spacing: 0px; font-family: 宋体;">从</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1991</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">－</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">2010</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">年，召开了</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">11</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">届全国性的学术研讨会，出版了</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">10</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">本论文集；收录会议论文和在其它学术刊物上发表论文</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">660</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">多篇；出版著作</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">14</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">部；硕士学位论文</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">7</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">篇，博士学位论文</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">3</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">篇。发表的论文相当于研究会成立前</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">60</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">年总和（</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">65</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">篇）的</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">10</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">倍。研究内容涉及到基本理论（定义、分类、特征、沉积、构造、营力、发育机制）、研究方法（测年、岩石分析、应力分析、遥感、制图）、历史文化（丹霞地貌与宗教、崖刻、造像、古人类、岩墓、悬棺、古山寨的关系）、保护与利用（资源评价、规划、保护、开发）和科普教育等。</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">2006</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">年，丹霞地貌第一次以专章的分量被写入国家“十五”规划教材《现代地貌学》。</span>
				</p>
				<p style="line-height: 21px; text-indent: 27px;">
					<span style="letter-spacing: 0px; font-family: 宋体;">由于以往丹霞地貌研究缺乏对外交流，国际上并不了解中国丹霞的研究状况。直到</span><span
						style="letter-spacing: 0px; font-family: ;">2000</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年，在国际地貌学家协会（</span><span
						style="letter-spacing: 0px; font-family: ;">IAG</span><span
						style="letter-spacing: 0px; font-family: 宋体;">）南京专题会议上，彭华出版了中英文对照版《中国丹霞地貌及其研究进展》及大会交流，才让国际同行有了初步了解并开始了国际交流。</span><span
						style="letter-spacing: 0px; font-family: ;">2004</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年</span><span
						style="letter-spacing: 0px; font-family: ;">2</span><span
						style="letter-spacing: 0px; font-family: 宋体;">月，丹霞山以“丹霞地貌类”成功申报世界地质公园。之后，福建泰宁和江西龙虎山丹霞地貌区又先后成功申报世界地质公园，</span><span
						style="letter-spacing: 0px; font-family: ;">“Danxia&nbsp;Landform”
					</span><span style="letter-spacing: 0px; font-family: 宋体;">成为被国际地科联和联合国教科文组织接受的概念，并在其官网上进行了介绍。</span>
				</p>
				<p style="line-height: 21px; text-indent: 27px;">
					<span style="letter-spacing: 0px; font-family: ;">2006</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年</span><span
						style="letter-spacing: 0px; font-family: ;">7</span><span
						style="letter-spacing: 0px; font-family: 宋体;">月，第十届丹霞地貌旅游开发学术讨论会提出了中国丹霞地貌联合申报世界自然遗产的倡议，</span><span
						style="letter-spacing: 0px; font-family: ;">12</span><span
						style="letter-spacing: 0px; font-family: 宋体;">月正式启动。经过近</span><span
						style="letter-spacing: 0px; font-family: ;">4</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年的努力，</span><span
						style="letter-spacing: 0px; font-family: ;">2010</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年第</span><span
						style="letter-spacing: 0px; font-family: ;">34</span><span
						style="letter-spacing: 0px; font-family: 宋体;">届世界遗产大会上，由六省六地组成的“中国丹霞”系列提名地被正式列入世界自然遗产名录。这不仅是几个点列入名录的问题，同时也让世界承认了在中国发展起来的一种地貌类型，并填补了世界遗产的类型空白。对于丹霞地貌的学科发展来说，在这个过程中，</span><span
						style="letter-spacing: 0px; font-family: ;">6</span><span
						style="letter-spacing: 0px; font-family: 宋体;">省</span><span
						style="letter-spacing: 0px; font-family: ;">100</span><span
						style="letter-spacing: 0px; font-family: 宋体;">多为国内专家参与了申报项目的基础研究和文本编制；有</span><span
						style="letter-spacing: 0px; font-family: ;">30</span><span
						style="letter-spacing: 0px; font-family: 宋体;">多位国际地科联、国际地貌学家协会和国际自然保护联盟的知名专家考察了中国丹霞，召开各种类型和规格的国际讨论会和论证会</span><span
						style="letter-spacing: 0px; font-family: ;">20</span><span
						style="letter-spacing: 0px; font-family: 宋体;">多次。尤其重要的是，</span><span
						style="letter-spacing: 0px; font-family: ;">2009</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年</span><span
						style="letter-spacing: 0px; font-family: ;">5</span><span
						style="letter-spacing: 0px; font-family: 宋体;">月，在广东丹霞山召开了第一届丹霞地貌国际学术讨论会，发表了“丹霞宣言”。大会肯定了中国学者的贡献，</span><span
						style="letter-spacing: 0px; font-family: 宋体;">呼吁对丹霞地貌的国际认同和开展国际对比研究</span><span
						style="letter-spacing: 0px; font-family: 宋体;">，作为一个独立类型的丹霞地貌真正引起了国际学术界的关注。这次会议之后，</span><span
						style="letter-spacing: 0px; font-family: ;">2009</span><span
						style="letter-spacing: 0px; font-family: 宋体;">年</span><span
						style="letter-spacing: 0px; font-family: ;">7</span><span
						style="letter-spacing: 0px; font-family: 宋体;">月国际地貌学家协会第七届大会上（墨尔本），其理事会批准成立“</span><span
						style="letter-spacing: 0px; font-family: ;">IAG</span><span
						style="letter-spacing: 0px; font-family: 宋体;">丹霞地貌工作组</span><span
						style="letter-spacing: 0px; font-family: ;">(Danxia
						Geomorphology Working Group of IAG)</span><span
						style="letter-spacing: 0px; font-family: 宋体;">”，关于丹霞地貌的全球调查和对比研究被提上了日程。在中国</span><span
						style="letter-spacing: 0px; font-family: 宋体;">丹霞研究</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">80</span>
					</span><span style="letter-spacing: 0px; font-family: 宋体;">年后，这无疑是一个划时代的跨越。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">这个阶段，丹霞研究在全国展开，呈现出空前活跃的发展局面；丹霞地貌成为当代中国地貌学的一个重要生长点，并直接或间接地服务于经济建设，得到学术界与社会的高度关注。同时，中国学者逐步推动了丹霞地貌的国际研究与交流，最终实现了丹霞地貌走向世界。</span>
				</p>
				<p style="line-height: 13px;">
					<span style="font-family: Times New Roman;">&nbsp;</span>
				</p>
				<a id="tips8"></a>
				<p style="margin: 4px 0px 0px; line-height: 21px;">
					<strong><span style="font-family: 黑体; font-size: 18px;">8
							&nbsp;研究动态</span>
					</strong>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">8.1 </span><span
							style="font-family: 宋体;">总体态势</span>
					</span>
					</strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">尽管有</span><span
						style="font-family: Times New Roman;">80</span><span
						style="font-family: 宋体;">多年的研究历史，但中国丹霞的研究大多是面上的调查与描述。近年来，中国学者关注的问题是引进</span><span
						style="font-family: 宋体;">现代技术手段，</span><span
						style="font-family: 宋体;">深化基础研究，如</span><span
						style="font-family: 宋体;">利用河流阶地热释光测年、微观岩石学、砂岩微观风化电子探针等现代技术手段进行了一定的探讨。</span><span
						style="font-family: 宋体;">进一步的深化研究将表现为中国地质和地理界的联合，在大地构造特别是新构造运动对地貌发育的影响、各种红层的物理化学特性及其抗风化侵蚀能力，各种外动力作用过程、作用强度及其对现代地貌发育的意义等方面展开重点研究；丹霞地貌区的环境演变、生态恢复和特殊地貌灾害等方面的研究也被重视。</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">8.2 </span><span
							style="font-family: 宋体;">当前的工作重点</span>
					</span>
					</strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">目前笔者正尝试推动一个计划，结合中国丹霞遗产地管理的需要，启动丹霞研究基地建设；同时关注更广大的红层软岩地区的地貌过程与土地退化问题。在面上研究的基础上推动重点地区的深入研究，解决红层与丹霞地貌发育的关键问题。近期的主要工作计划是：</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">1</span><span
						style="font-family: 宋体;">）面上研究：全面推动全国范围内的调查与对比研究；对基地区域的地质构造背景、地层和新构造运动表现，地貌的总体特点和观察点的选择等，进行一般地质地貌调查研究。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">）建设观察站点：采用仪器辅助和人工观察相结合的方法，进行重点地段的定点观察，主要进行自然状态下各类红层的风化观察、沟谷与坡面侵蚀观察和重力作用过程观察。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">3</span><span
						style="font-family: 宋体;">）地貌过程监测：采用自动监测记录设备和定期照相记录，进行软岩风化监测、岩石温度和应力监测、变形监测、位移监测、小流域侵蚀量测定等，对案例地的地貌过程进行监测。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">4</span><span
						style="font-family: 宋体;">）实验室测试辅助：在野外人工观察、仪器测试、样品采集的基础上，对岩石样本、沉积物样本和小流域水样进行实验室辅助测试。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">4</span><span
						style="font-family: 宋体;">）系统分析：对各外营力系统进行单因子分析－关联分析－系统分析，即将各个单因子根据关联性逐层归并入一定的子系统，再进行综合外动力系统分析。</span>
				</p>
				<h2 style="margin: 8px 0px 4px; line-height: 21px;">
					<strong><span style="font-size: 16px;"><span
							style="font-family: ;" new="" times="">8.3 &nbsp;</span><span
							style="font-family: 宋体;">推动全球研究计划</span>
					</span>
					</strong>
				</h2>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">近年来的相关研究发现，除南极洲外，目前在各大洲均有大量的红层分布并发育了与中国丹霞类似的地貌。但是，目前国际上一般把丹霞作为砂岩地貌（</span><span
						style="font-family: Times New Roman;">sandstone landforms</span><span
						style="font-family: 宋体;">）研究，</span><span
						style="color: windowtext; text-underline: none;"><span
							style="font-family: Times New Roman;">Robert Young</span>
					</span>
					</a><span style="font-family: 宋体;">等</span><span
						style="font-family: Times New Roman;"> (1992, 2009) </span><span
						style="font-family: 宋体;">做了卓有成效的工作，在他们的《</span><span
						style="color: windowtext; text-underline: none;"><span
							style="font-family: Times New Roman;">SandstoneLandforms</span>
					</span>
					</a><span style="font-family: 宋体;">》中，对世界各地的砂岩地貌（包括红色砂岩地貌）给予了比较全面的介绍；在</span><span
						style="font-family: Times New Roman;">2009</span><span
						style="font-family: 宋体;">年的版本中，增加了对中国丹霞地貌的介绍。</span><span
						style="font-family: Times New Roman;">2002</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">9</span><span
						style="font-family: 宋体;">月和</span><span
						style="font-family: Times New Roman;">2005</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">5</span><span
						style="font-family: 宋体;">月，在捷克和卢森堡曾先后召开了两届砂岩景观国际学术讨论会（</span><span
						style="font-family: Times New Roman;">international
						conference on <strong><em>sandstonelandscapes</em>
					</strong>
					</span><span style="font-family: 宋体;">），也可见欧洲对砂岩地貌研究的重视。但从地貌学各分支学科的发展来看，国际上对于这类地貌的研究仍然十分薄弱。此外，在分类上，这类地貌常常被称为“红层地貌</span><span
						style="font-family: Times New Roman;">(Red beds landform)</span><span
						style="font-family: 宋体;">”</span><span style="font-family: 宋体;">，“假喀斯特</span><span
						style="font-family: Times New Roman;">(pseudo karst)</span><span
						style="font-family: 宋体;">”</span><span style="font-family: 宋体;">或</span><span
						style="font-family: 宋体;">“</span><span style="font-family: 宋体;">石英喀斯特</span><span
						style="font-family: Times New Roman;">(quartzose karst)”</span><span
						style="font-family: 宋体;">。也就是说，目前国际上关于红层地貌的分类和归属仍然比较混乱。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">国际上目前还没有关于丹霞的专门研究，但是有较成熟的红层和砂岩地质地貌方面的研究，具备进行国际合作研究的条件。</span><span
						style="font-family: Times New Roman;">2009</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">5</span><span
						style="font-family: 宋体;">月第一届丹霞地貌国际学术讨论会以来，国际上一些专家已经开始启动各自的对比研究计划。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">2009</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">7</span><span
						style="font-family: 宋体;">月国际地貌学家协会第七届大会上，成立了“</span><span
						style="font-family: Times New Roman;">IAG</span><span
						style="font-family: 宋体;">丹霞地貌工作组”，标志着丹霞地貌研究即将在全球推开。工作组的科学目标是：讨论并确定适用于全球的丹霞地貌科学定义；界定丹霞地貌发育的必要条件，论证其发育过程；建立科学的丹霞地貌分类系统；全面了解丹霞地貌在世界的分布规律。近期内将启动丹霞地貌全球调查工作。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">总体上看来，目前丹霞地貌国际学术交流的平台已经搭建，学术交流和对比研究具有一定的成果基础，中国的丹霞和国际上的红层、砂岩地貌研究成果可以很好的对话。</span>
				</p>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">丹霞地貌研究事业面临着一个更加灿烂的未来。</span>
				</p>

			</div>
			<br /> <br /> 
			<div align="center">
				<input type="button" class="button03" value="返回"
					onclick="window.location.href='mainn.jsp'" />
			</div>
			<br /> <br />
		</div>

		<div style="clear: both"></div>
		<%@include file="footer_frame.jsp"%>