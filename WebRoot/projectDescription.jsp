<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.dx.servlet.Counter"%>
<%@ page import="com.dx.bean.TbNews"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="maincss.css">
<title>丹霞地貌信息系统</title>
<script src="js/jquery.js"></script>
</head>
<body>
	<div class="indexmain">
		<div class="main">
			<img class="title" src="img/index2.jpg" alt="" />
			<h1 style="text-align: center;">全国丹霞地貌基础数据调查项目概况</h1>
			<p style="text-align: center;">
				<span style="font-family: 宋体; font-size: 12px;">&nbsp;</span>
			</p>
			<div class="toc">
				<div class="toctitle">
					<h2>目录</h2>
				</div>
				<ul>
					<li class="toclevel-1"><a href="#a1"><span>1 项目意义</span> </a>
					</li>
					<li class="toclevel-1"><a href="#a2"><span>2
								国内外现状和趋势</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a2-1"><span>2.1
								国内丹霞的研究背景</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a2-2"><span>2.2
								国际上相关研究</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a2-3"><span>2.3
								研究现状与存在问题</span> </a>
					</li>
					<li class="toclevel-3"><a href="#a2-3-1"><span>2.3.1
								国内研究现状</span> </a>
					</li>
					<li class="toclevel-3"><a href="#a2-3-2"><span>2.3.1
								存在的问题 </span> </a>
					</li>
					<li class="toclevel-3"><a href="#a2-3-3"><span>2.3.1
								研究趋势 </span> </a>
					</li>
					<li class="toclevel-1"><a href="#a3"><span>3 项目介绍</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a3-1"><span>3.1
								项目概况</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a3-2"><span>3.2
								预期简介</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a3-3"><span>3.3
								项目任务</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a3-4"><span>3.4
								预期成果</span> </a>
					</li>
					<li class="toclevel-1"><a href="#a4"><span>4 研究计划</span> </a>
					</li>
					<li class="toclevel-2"><a href="#a4-1"><span>4.1
								主要研究任务</span> </a></li>
					<li class="toclevel-3"><a href="#a4-1-1"><span>4.1.1
								拟开展的主要任务</span> </a></li>
					<li class="toclevel-3"><a href="#a4-1-2"><span>4.1.2
								主要内容分解</span> </a></li>
					<li class="toclevel-4"><a href="#a4-1-2-1"><span>4.1.2.1
								调查内容</span> </a></li>
					<li class="toclevel-4"><a href="#a4-1-2-2"><span>4.1.2.2
								指定技术规范和初步数据处理</span> </a></li>
					<li class="toclevel-4"><a href="#a4-1-2-3"><span>4.1.2.3
								丹霞地貌分类系统与指标</span> </a></li>
					<li class="toclevel-2"><a href="#a4-2"><span>4.2
								预期目标、成果和共享方案</span> </a></li>
					<li class="toclevel-3"><a href="#a4-2-1"><span>4.2.1
								预期目标与成果</span> </a></li>
					<li class="toclevel-3"><a href="#a4-2-2"><span>4.2.2
								项目成果共享方案</span> </a></li>
					<li class="toclevel-2"><a href="#a4-3"><span>4.3
								总体考核指标、年度计划及年度考核指标</span> </a></li>
				</ul>
			</div>

			<div class="content_pos">
				<br />

				<h2 id="a1">项目意义</h2>
				<hr>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1928</span><span
						style="font-family: 宋体;">年，冯景兰把“丹霞”二字引入地球科学，命名“丹霞层”；</span><span
						style="font-family: Times New Roman;">1939</span><span
						style="font-family: 宋体;">年，陈国达正式使用“丹霞地形”术语。“丹霞”，这个在中国诞生的地球科学术语已经使用了</span><span
						style="font-family: Times New Roman;">80</span><span
						style="font-family: 宋体;">多年。但是，关于丹霞的地球科学研究长期限于国内。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: 宋体;">因此，在</span><span
						style="font-family: Times New Roman;">2006</span><span
						style="font-family: 宋体;">年启动的“中国丹霞”申遗工作，由于国际上没有相应的研究，致使在科学问题上给造成了巨大的难题，以至于</span><span
						style="font-family: Times New Roman;">IUCN</span><span
						style="font-family: 宋体;">的评估报告要求推迟申报</span><span
						style="font-family: 宋体;">（</span><span style="font-family: ;">Defers</span><span
						style="font-family: 宋体;">）。在这种情况下，</span><span
						style="font-family: 宋体;">我们必须向国际机构和专家反复陈述丹霞地貌的定义、学科归属、分类、发育条件和演化机制等基本问题。经过中国政府和专家组的不懈努力，</span><span
						style="font-family: Times New Roman;">2010</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">8</span><span
						style="font-family: 宋体;">月第</span><span
						style="font-family: Times New Roman;">34</span><span
						style="font-family: 宋体;">届世界遗产大会上，“中国丹霞”系列遗产项目被列入世界遗产名录，引起了世人的瞩目。但同时，世界遗产委员会决议（</span><span
						style="font-family: Times New Roman;">34COM 8B.1</span><span
						style="font-family: 宋体;">）还是要求：“<strong>请缔约国继续对丹霞地貌进行科学研究并支持组织国际会议；要求缔约国提供有关中国丹霞的主要科学研究成果，积极推动中国丹霞和红层地貌的国际认知</strong>”。实际上，申遗过程中也暴露出我国丹霞地貌基础研究的不足和学科建设的粗放，丹霞地貌基础研究以及真正推动丹霞地貌研究国际化都需要基础性工作的完善。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: 宋体;">在中国丹霞申遗过程中，</span><span
						style="font-family: Times New Roman;">2009</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">5</span><span
						style="font-family: 宋体;">月在丹霞地貌的命名地</span><span
						style="font-family: Times New Roman;">——</span><span
						style="font-family: 宋体;">广东韶关丹霞山召开了第一届丹霞地貌国际学术讨论会，首次引起了国际同行的高度关注。同年</span><span
						style="font-family: Times New Roman;">7</span><span
						style="font-family: 宋体;">月，在澳大利亚墨尔本召开的第七届国际地貌学大会上，</span><span
						style="font-family: Times New Roman;">8</span><span
						style="font-family: 宋体;">位外国学者和</span><span
						style="font-family: Times New Roman;">4</span><span
						style="font-family: 宋体;">位中国学者联名发起了在国际地貌学家协会设立丹霞地貌工作组的建议，该建议被国际地貌学家协会理事会接受，丹霞地貌全球研究被列为工作组近期工作重点，丹霞地貌研究真正走进国际学术舞台。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">2011</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">10</span><span
						style="font-family: 宋体;">月，在丹霞山召开了国际地貌学家协会丹霞工作组第一次会议暨第二届丹霞地貌国际学术讨论会，会议宣言中提出“<strong>以中国的研究为基础</strong>，启动全球丹霞地貌研究，并逐步完善丹霞地貌的理论体系”。这对中国的丹霞地貌基础研究提出了新的要求，也就是说，</span><span
						style="font-family: 宋体;">中国丹霞研究成果将<strong>成为全球研究的模板</strong>。因此，</span><span
						style="font-family: 宋体;">丹霞地貌的规范化、系统化研究成为当前必要而迫切的工作。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: 宋体;">虽然在我国经过了</span><span
						style="font-family: Times New Roman;">80</span><span
						style="font-family: 宋体;">多年的研究，丹霞地貌的科学问题有了比较清晰的认识，但以往的研究以景观描述和旅游利用为主，基础性数据系统建设和系统化、科学化的基础性工作尚没有真正开展。因此，围绕着丹霞地貌的基础科学考察、基础数据调查处理以及采用计算机技术的系统集成等工作，对丹霞地貌的学科体系建设、发育机理的解译和科学分类等具有重要的学术意义。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: 宋体;">目前所知中国的红层出露面积大于</span><span
						style="font-family: ;">80</span><span style="font-family: 宋体;">万</span><span
						style="font-family: ;">km<sup><span
							style="font-size: 2px;">2</span> </sup> </span><span style="font-family: 宋体;">，占国土总面积的</span><span
						style="font-family: ;">8.6%</span><span style="font-family: 宋体;">，广布于中国各地</span><span
						style="font-family: 宋体;">，</span><span style="font-family: 宋体;">超过黄土覆盖面积（</span><span
						style="font-family: Times New Roman;">63</span><span
						style="font-family: 宋体;">万</span><span
						style="font-family: Times New Roman;">km<sup><span
							style="font-size: 3px;">2</span> </sup> </span><span style="font-family: 宋体;">），接近碳酸岩出露面积（</span><span
						style="font-family: Times New Roman;">91</span><span
						style="font-family: 宋体;">万</span><span
						style="font-family: Times New Roman;">km<sup><span
							style="font-size: 3px;">2</span> </sup> </span><span
						style="color: windowtext; font-family: 宋体; text-underline: none;">）</span>
					</a><span style="font-family: 宋体;">。根据黄进教授最新的数据，目前在中国发现并确认的丹霞地貌已达</span><span
						style="font-family: ;">995</span><span style="font-family: 宋体;">处。</span><span
						style="font-family: 宋体;">在红层与丹霞分布区，大多存在着较严重的地质灾害问题、水资源和水环境问题、生态退化与荒漠化问题等，都是关系到国计民生的大问题。因此，红层与丹霞的系统性调查可以为应对自然灾害、环境问题提供及时的科学数据，发挥平台的保障和支撑作用，在服务社会民生方面具有重要的实践意义。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: 宋体;">因此，本项目的意义可概括为以下几个方面：</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">1</span> </strong><strong><span
						style="font-family: 宋体;">）丹霞地貌科学体系建设的基础工程</span> </strong><span
						style="font-family: 宋体;">：基于国内丹霞地貌</span><span
						style="font-family: Times New Roman;">80</span><span
						style="font-family: 宋体;">多年的研究积累，在丹霞地貌全国调查、地质地貌基础研究、现代实验方法定量研究的基础上，运用计算机技术进行数据集成，形成具有独立科学体系和方法体系的数据库，是建立丹霞地貌科学体系的基础工程，将使得丹霞地貌学科走向规范和成熟。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">2</span> </strong><strong><span
						style="font-family: 宋体;">）丹霞地貌国内、国际对比研究的数据平台</span> </strong><span
						style="font-family: 宋体;">：作为一门基础学科，其数据的采集、分类、评价体系的建立，将为丹霞地貌国内、国际对比研究提供数据平台和权威、系统的基础数据；基于现代计算机技术的定量分析和数据共享平台建设，是学科发展的重要基础和手段，也是国际同行进行全球研究的依据，将对丹霞地貌研究的国际化提供支持并强化中国在该领域的学术影响。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">全球丹霞研究和交流已成趋势，</span><span
						style="font-family: Times New Roman;">2012</span><span
						style="font-family: 宋体;">年第三届欧洲砂岩地貌会议开辟了丹霞专题，</span><span
						style="font-family: Times New Roman;">2013</span><span
						style="font-family: 宋体;">年第八届国际地貌学大会安排了砂岩与丹霞地貌分会场。本项目将成为中国丹霞研究国际化的重要基础，成为展示中国自主性科技成果的重要窗口。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">3</span> </strong><strong><span
						style="font-family: 宋体;">）将推动丹霞地貌理论体系的建设</span> </strong><span
						style="font-family: 宋体;">：以往丹霞地貌的研究，基本上是学者们根据自己的研究兴趣所进行的自发的、分散的、不系统的研究，基础数据存在大量空白，成果片段化，尽管已经积累了大量的信息，</span><span
						style="font-family: 宋体;">但尚缺乏系统化的集成工作</span><span
						style="font-family: 宋体;">。本项目基于丹霞地貌研究的现有成果和全国调查，采用计算机技术建立丹霞地貌的分类评价指标体系、不同红层岩性信息、发育条件信息、红层岩崩、滑坡和生态退化评估信息等，对丹霞地貌的系统性研究和理论体系建设提供集成性的“新信息”系统，是丹霞地貌理论体系建设和科学创新的必要环节。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">4</span> </strong><strong><span
						style="font-family: 宋体;">）丹霞地貌展示的数据基础</span> </strong><span
						style="font-family: 宋体;">：利用计算机技术在丹霞地貌基础研究和数据存储及展示方面提供支持，建立数据存储系统、展示系统、访问系统和实时更新管理系统，成为科学展示和全球推广的科学基础；通过数据积累和跟踪更新，可避免由于自然风化、人为破坏造成的数据丢失，同时盘活多年积累的大量宝贵存量数据；</span><span
						style="font-family: 宋体;">为后续的研究提供对比依据</span><span
						style="font-family: 宋体;">。因此，用计算机技术完成丹霞地貌数据可视化，建立可以自由访问、互动的数据基础和平台，使这些基础数据迅速变成全球可视的资讯，同时提供反映数据内在关联性的量化信息，并进而形成全球实时更新系统，加快丹霞地貌全球研究的进程。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">5</span> </strong><strong><span
						style="font-family: 宋体;">）丹霞地貌区开发利用的基础数据系统</span> </strong><span
						style="font-family: 宋体;">：建设丹霞地貌基础数据服务平台，为丹霞地貌区提供开发利用基础资料，为科教旅游、生态修复和灾害防治等应用研究提供全面的技术信息服务。丹霞地貌区的科教旅游是一项主要的旅游功能，是提升旅游开发科技文化含量的重要抓手；同时，红层和丹霞地貌区的生态退化、土地退化、崩塌和滑坡灾害的预防和治理，需要获得丹霞地貌基础科学的支撑。但目前大部分的丹霞地貌区在旅游开发、道路修建、城镇居民点建设的规划设计中，缺少基础研究。本项目的成果可以为应用领域的研究者提供最全面的、权威的、系统性的科学支撑。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
					<span style="font-family: 宋体;">综上所述，科学数据作为信息时代最基本、最活跃的科技资源，对科技创新具有显著的基础支撑作用，对国家整体发展具有重要的保障作用。拥有可靠、系统和积累丰富的科学数据，就可能把握更多创新的机会。新的科学机遇来源于越来越有效的数据组织共享和利用，理论和实践上的国际领先地位越来越取决于科学数据的优势上。当代信息技术发展推动了数据的产生、收集、处理和共享，使得科学与工程研究日益成为数据密集型工作，越来越有效的数据组织、共享和利用方法与模式为科学与工程研究带来新的机遇。未来科学技术创新越来越倚重于科学数据，以及通过数据挖掘、集成、分析和可视化工具将其转换为信息和知识的能力。科学数据的急剧增长及其有效的集成将对新科学方法的产生、科学研究能力的提高、研究成果向产品和服务的转化发挥重要的作用。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">因此，针对在中国具有代表性的丹霞地貌区的数据采集和数据平台的建设，在学术和应用等方面都具有深远的意义。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 23px; text-indent: 37px;">
					<span style="font-family: 宋体; font-size: 19px;">&nbsp;</span>
				</p>
				<h2 id="a2">国内外现状和趋势</h2>
				<hr>
				<h3 id="a2-1">国内丹霞的研究背景</h3>

				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">在地貌分类系统中，丹霞属于红层地貌，以显著的陡崖坡为特征。丹霞在中国已经有</span><span
						style="font-family: ;">80</span><span style="font-family: 宋体;">多年的研究历史。从</span><span
						style="font-family: ;">20</span><span style="font-family: 宋体;">世纪</span><span
						style="font-family: ;">20</span><span style="font-family: 宋体;">年代开始，中国学者经历了初创、</span><span
						style="font-family: 宋体;">成型和发展三个阶段的研究</span><span
						style="font-family: 宋体;">，作为地貌学一个新领域的丹霞地貌研究已日趋成型。</span>
				</p>
				<h4>初创阶段 (1928-1949):</h4>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 27px;">
					<span style="letter-spacing: 0px; font-family: 宋体;">将丹霞作为一类独特的地貌类型予以关注始于上世纪</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">20</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年代后期。</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1928</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年，冯景兰等首次将构成广东丹霞山奇特地貌的红层及粤北相应地层命名为“丹霞层”（冯景兰等</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1928</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">），引起了学术界的关注。</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1938</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年，陈国达首次提出“丹霞山地形”的概念，</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1939</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年使用了“丹霞地形”的术语（陈国达</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1938,1939</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">）。以后丹霞层（演变为丹霞群、丹霞组）和丹霞地形（演变为丹霞地貌）</span><span
						style="font-family: 宋体;">的概念便被沿用下来</span><span
						style="letter-spacing: 0px; font-family: 宋体;">。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 27px;">
					<span style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1940</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年代，一批学者分别对丹霞层等中国南方红层的地层、岩性、构造及地貌发育等方面进行了不同程度的研究与论述</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">(</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">陈国达</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1935,1938, 1940; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">徐瑞麟</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1937; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">冯景兰</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1940; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">曾昭璇</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1943; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">吴尚时</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">曾昭璇</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1946,1948)</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">。标志着丹霞地貌走上学术研究的舞台。这一阶段关于丹霞的研究范围主要限于中国东南部地区，开始了作为一种独立地貌类型的学术研究，故被称为初创阶段。</span>
				</p>
				<h4>成型阶段 (1950-1990)：</h4>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 27px;">
					<span style="letter-spacing: 0px; font-family: 宋体;">中华人民共和国成立后，在大规模的区域地质调查和综合科学考察中，丹霞地貌的概念得到广泛使用。曾昭璇</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1960</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年出版了《岩石地形学》，首次将红层地貌作为独立的岩石地貌类型进行了总结论述。黄进（</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1961</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">）在编制广东省地貌图时把丹霞地貌作为一种独立的地貌类型，并首次对“丹霞地貌”进行了定义。</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1980</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年，曾昭璇、黄少敏在《中国自然地理·地貌》一书中，专题讨论了中国红层的分布、岩石学特征、地貌发育过程和地貌特点。到</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">1982</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">年，黄进总结了近水平红层在湿润气候条件下坡面发育的基本方式和坡面特点。同时，各地许多学者也对河北</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">(</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">陈传康</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1985; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">赵佩心</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1988)</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">、甘肃</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">(</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">张林源</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1981; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">黄可光</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1987; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">陈致均等</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1989)</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">、福建</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">(</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">刘振中</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1984)</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">、广东</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">(</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">张竹贤等</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">, 1986; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">张长俊等</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1986; </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">徐行等</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1990, </span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">周红健</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1990)</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">、</span><span
						style="font-family: 宋体;">四川</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">(</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">张彦儒</span><span
						style="letter-spacing: 0px;"><span
						style="font-family: Times New Roman;">,1988)</span> </span><span
						style="letter-spacing: 0px; font-family: 宋体;">等地的丹霞地貌及其利用开展了一定的调查研究。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">这个阶段大规模的科学考察为丹霞地貌研究积累了大量资料</span><span
						style="letter-spacing: 0px; font-family: 宋体;">，对各地红层有了更为科学的论述。丹霞地貌的概念得到了广泛的传播，作为一个独立的地貌类型的学术研究已形成体系。</span>
				</p>
				<h4>大发展阶段(1991年以来)：</h4>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">在</span><span
						style="font-family: Times New Roman;">1991</span><span
						style="font-family: 宋体;">年之前，丹霞地貌的研究处于个别的、零散的、具体问题研究阶段。</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年黄进主持了第一个丹霞地貌研究的国家自然科学基金项目，也开始了他对中国丹霞地貌的全面考察；在陈传康和黄进等人的推动下，</span><span
						style="font-family: Times New Roman;">1991</span><span
						style="font-family: 宋体;">年在广东丹霞山召开了第一届全国丹霞地貌旅游开发学术讨论会，并成立了研究会，</span><span
						style="font-family: 宋体;">标志着丹霞地貌研究进入大发展阶段</span><span
						style="font-family: 宋体;">。从</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年代以来，黄进对中国</span><span
						style="font-family: Times New Roman;">28</span><span
						style="font-family: 宋体;">个省、市、自治区的</span><span
						style="font-family: Times New Roman;">800</span><span
						style="font-family: 宋体;">多处丹霞地貌进行了考察，并带动各地学者把研究推向深入。</span>
				</p>
				<p>
					<span style="font-family: 宋体;"><span
						style="font-family: 宋体; font-size: 14px;">从</span> </span><span
						style="font-family: ;" times="" new="">1991</span><span
						style="font-family: 宋体; font-size: 14px;">－</span><span
						style="font-family: ;" times="" new="">2011</span><span
						style="font-family: 宋体; font-size: 14px;">年，召开了</span><span
						style="font-family: ;" times="" new="">12</span><span
						style="font-family: 宋体; font-size: 14px;">届全国性的学术研讨会，出版了</span><span
						style="font-family: ;" times="" new="">11</span><span
						style="font-family: 宋体; font-size: 14px;">本论文集；收录会议论文和在其它学术刊物上发表论文</span><span
						style="font-family: ;" times="" new="">660</span><span
						style="font-family: 宋体; font-size: 14px;">多篇；出版著作</span><span
						style="font-family: ;" times="" new="">14</span><span
						style="font-family: 宋体; font-size: 14px;">部；硕士学位论文</span><span
						style="font-family: ;" times="" new="">7</span><span
						style="font-family: 宋体; font-size: 14px;">篇，博士学位论文</span><span
						style="font-family: ;" times="" new="">3</span><span
						style="font-family: 宋体; font-size: 14px;">篇。发表的论文相当于研究会成立前</span><span
						style="font-family: ;" times="" new="">60</span><span
						style="font-family: 宋体; font-size: 14px;">年总和（</span><span
						style="font-family: ;" times="" new="">65</span><span
						style="font-family: 宋体; font-size: 14px;">篇）的</span><span
						style="font-family: ;" times="" new="">10</span><span
						style="font-family: 宋体; font-size: 14px;">倍。研究内容涉及到基本理论（定义、分类、特征、沉积、构造、营力、发育机制）、研究方法（测年、岩石分析、应力分析、遥感、制图）、历史文化（丹霞地貌与宗教、崖刻、造像、古人类、岩墓、悬棺、古山寨的关系）、保护与利用（资源评价、规划、保护、开发）和科普教育等（黄进</span><span
						style="font-family: ;" times="" new="">, 1992, 1994, 1996;
					</span><span style="font-family: 宋体; font-size: 14px;">彭华</span><span
						style="font-family: ;" times="" new="">, 1998, 1999a,
						1999b, 2002, 2003, 2006, 2007</span><span
						style="font-family: 宋体; font-size: 14px;">）。</span><span
						style="font-family: ;" times="" new="">2006</span><span
						style="font-family: 宋体; font-size: 14px;">年，丹霞地貌第一次以专章的分量被写入国家“十五”规划教材《现</span><span
						style="font-family: 宋体;">代地貌学》（高抒等</span><span
						style="font-family: Times New Roman;">, 2006</span><span
						style="font-family: 宋体;">）。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">由于以往丹霞地貌研究缺乏对外交流，国际上并不了解中国丹霞的研究状况（彭华</span><span
						style="font-family: Times New Roman;">, 2007; Robert Young
						et.al., 2009</span><span style="font-family: 宋体;">）。直到</span><span
						style="font-family: Times New Roman;">2000</span><span
						style="font-family: 宋体;">年，</span><span
						style="letter-spacing: 0px; font-family: 宋体;">在国际地貌学家协会</span><span
						style="font-family: 宋体;">（</span><span
						style="font-family: Times New Roman;">IAG</span><span
						style="font-family: 宋体;">）南京专题会议上，彭华出版了中英文对照版《中国丹霞地貌及其研究进展》</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">彭华</span><span
						style="font-family: Times New Roman;">, 2000)</span><span
						style="font-family: 宋体;">及大会交流</span><span
						style="font-family: Times New Roman;">(Peng Hua, 2001)</span><span
						style="font-family: 宋体;">，才让国际同行有了初步了解并开始了国际同行间的交流。</span><span
						style="font-family: Times New Roman;">2004</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">月，丹霞山以“丹霞地貌类”成功申报世界地质公园。之后，</span><span
						style="font-family: 宋体;">福建泰宁和江西龙虎山又先后成功申报世界地质公园</span><span
						style="font-family: 宋体;">，</span><span
						style="font-family: Times New Roman;">“Danxia&nbsp;Landform”</span><span
						style="font-family: 宋体;">成为被国际地科联和联合国教科文组织接受的概念，并在其官网上进行了介绍。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">2006</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">7</span><span
						style="font-family: 宋体;">月，第十届丹霞地貌旅游开发学术讨论会提出了中国丹霞地貌联合申报世界自然遗产的倡议，</span><span
						style="font-family: Times New Roman;">12</span><span
						style="font-family: 宋体;">月正式启动。经过近</span><span
						style="font-family: Times New Roman;">4</span><span
						style="font-family: 宋体;">年的努力，</span><span
						style="font-family: Times New Roman;">2010</span><span
						style="font-family: 宋体;">年第</span><span
						style="font-family: Times New Roman;">34</span><span
						style="font-family: 宋体;">届世界遗产大会上，由六省六地组成的“中国丹霞”系列提名地被正式列入世界自然遗产名录。这不仅是多个点列入名录的问题，</span><span
						style="letter-spacing: 0px; font-family: 宋体;">同时也让世界承认了在中国发展起来的一种地貌类型</span><span
						style="font-family: 宋体;">，并填补了世界遗产的类型空白。对于丹霞地貌的学科发展来说，在这个过程中，</span><span
						style="font-family: Times New Roman;">6</span><span
						style="font-family: 宋体;">省</span><span
						style="font-family: Times New Roman;">100</span><span
						style="font-family: 宋体;">多位国内专家参与了申报项目的基础研究和文本编制；有</span><span
						style="font-family: Times New Roman;">30</span><span
						style="font-family: 宋体;">多位国际地科联、国际地貌学家协会和国际自然保护联盟的知名专家考察了中国丹霞，召开各种类型和规格的国际讨论会和论证会</span><span
						style="font-family: Times New Roman;">20</span><span
						style="font-family: 宋体;">多次。尤其重要的是，</span><span
						style="font-family: Times New Roman;">2009</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">5</span><span
						style="font-family: 宋体;">月，在广东丹霞山召开了第一届丹霞地貌国际学术讨论会，发表了“丹霞宣言”。大会肯定了中国学者的贡献，呼吁对丹霞地貌的国际认同和开展国际对比研究，作为一个独立类型的丹霞地貌真正引起了国际学术界的关注。在中国丹霞地貌研究</span><span
						style="font-family: Times New Roman;">80</span><span
						style="font-family: 宋体;">年后，这无疑是一个划时代的跨越。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">这个阶段，丹霞研究在全国展开，呈现出空前活跃的发展局面；丹霞地貌成为当代中国地貌学的一个重要生长点，并直接或间接地服务于经济建设，</span><span
						style="letter-spacing: 0px; font-family: 宋体;">得到学术界与社会的高度关注</span><span
						style="font-family: 宋体;">。同时，中国学者逐步推动了丹霞地貌的国际研究与交流，最终实现了丹霞地貌走向世界。</span>
				</p>
				<h3 id="a2-2">国际上相关研究</h3>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">近年来的相关研究发现，除南极洲外，目前在各大洲均有大量的红层分布。但国际上一般作为砂岩地貌（</span><span
						style="font-family: ;">sandstonelandforms</span><span
						style="font-family: 宋体;">）研究，</span><a
						href="http://www.amzease.com/1-1000-Robert+W++Young-Author-rc-1"><span
						style="color: windowtext; font-family: ;">Robert Young</span> </a><span
						style="font-family: 宋体;">等</span><span style="font-family: ;">(1992,
						2009), Turkington</span><span style="font-family: 宋体;">等</span><span
						style="font-family: ;">(2005), Hartel</span><span
						style="font-family: 宋体;">等</span><span style="font-family: ;">(2007)</span><span
						style="font-family: 宋体;">做了卓有成效的工作。</span><a
						href="http://www.amzease.com/1-1000-Robert+W++Young-Author-rc-1"><span
						style="color: windowtext; font-family: ;">Robert Young</span> </a><span
						style="font-family: 宋体;">等在他们的《</span><a
						href="http://www.amzease.com/1-1000-0521877334"><span
						style="color: windowtext; font-family: ;">Sandstone
							Landforms</span> </a><span style="font-family: 宋体;">》中，对世界各地的砂岩地貌（包括红色砂岩地貌）给予了比较全面的介绍；在</span><span
						style="font-family: ;">2009</span><span style="font-family: 宋体;">年的新版中，增加了对中国丹霞的介绍。</span><span
						style="font-family: ;">2002</span><span style="font-family: 宋体;">年</span><span
						style="font-family: ;">9</span><span style="font-family: 宋体;">月、</span><span
						style="font-family: ;">2005</span><span style="font-family: 宋体;">年</span><span
						style="font-family: ;">5</span><span style="font-family: 宋体;">月和</span><span
						style="font-family: ;">2012</span><span style="font-family: 宋体;">年</span><span
						style="font-family: ;">4</span><span style="font-family: 宋体;">月，</span><span
						style="font-family: 宋体;">在捷克、卢森堡和波兰曾先后召开了三届砂岩景观国际学术讨论会</span><span
						style="font-family: 宋体;">（</span><span style="font-family: ;">international
						conference on sandstonelandscapes</span><span style="font-family: 宋体;">），曾出版了论文集（</span><span
						style="font-family: ;">SandstoneLandscapes, by Hartel et
						al, 2007</span><span style="font-family: 宋体;">），其中一部分论文介绍的属于红色砂砾岩地貌。但</span><span
						style="font-family: ;">Robert</span><a
						href="http://www.amzease.com/1-1000-Robert+W++Young-Author-rc-1"><span
						style="color: windowtext; font-family: ;">Young</span> </a><span
						style="font-family: ;">(2009) </span><span
						style="font-family: 宋体;">仍然认为，从地貌学各分支学科的发展来看，国际上对于这类地貌的研究仍然十分薄弱。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">此外在分类上，这类地貌有时被称为</span><span
						style="font-family: ;">“</span><span style="font-family: 宋体;">红层地貌</span><span
						style="font-family: ;"> (Red </span><span style="font-family: ;">Beds</span><span
						style="font-family: ;"> Landform)”(Turner, 1980)</span><span
						style="font-family: 宋体;">；也有称为</span><span
						style="font-family: 宋体;">“</span><span style="font-family: 宋体;">假</span><span
						style="font-family: 宋体;">喀斯特</span><span style="font-family: ;">(pseudokarst)
					</span><span style="font-family: 宋体;">”</span><span
						style="font-family: 宋体;">或“</span><span style="font-family: 宋体;">石英喀斯特</span><span
						style="font-family: ;">(quartzose karst)</span><span
						style="font-family: 宋体;">”</span><span style="font-family: ;">(Wray,
						1997)</span><span style="font-family: 宋体;">；</span><span
						style="font-family: 宋体;">由于许多红层分布在干旱地区</span><span
						style="font-family: 宋体;">，又往往被作为干旱区地貌去研究</span><span
						style="font-family: ;">(Goudie etal., 1995; Phillips et al.
						2005)</span><span style="font-family: 宋体;">。也就是说，目前国际上对红层地貌及其类似中国丹霞地貌的分类和学科归属仍然比较混乱。根据两届丹霞地貌国际会议中外学者的认识，将丹霞地貌归入上述砂岩地貌、假喀斯特、石英喀斯特和干旱区地貌等都是不准确的。也就是说，目前国际上的分类系统都不能给丹霞地貌一个合适的科学位置。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">尽管国际上对红层和丹霞的研究比较薄弱，但学者们比较重视在具体研究方法和手段上的革新。</span><span
						style="font-family: 宋体;">近年来国际上在研究红层和砂岩地貌中比较重视野外观察与实验室分析相结合</span><span
						style="font-family: 宋体;">，尤其重视红层的初始破坏，即红层微观风化问题。如</span><span
						style="font-family: ;">Pentecost (1991) </span><span
						style="font-family: 宋体;">利用定点照相法测量英国南部白垩纪砂岩陡崖的短期（</span><span
						style="font-family: ;">1</span><span style="font-family: 宋体;">－</span><span
						style="font-family: ;">30</span><span style="font-family: 宋体;">个月）风化率。</span><span
						style="font-family: ;">Goudie </span><span style="font-family: ;">&amp;
						Viles(1995)</span><span style="font-family: 宋体;">模拟干旱环境中的盐风化，测定砂岩碎片破碎速率、碎片的大小特征，</span><span
						style="font-family: ;">Rodriguez-Navarro</span><span
						style="font-family: 宋体;">等</span><span style="font-family: ;">
						(1999) </span><span style="font-family: 宋体;">重视了盐风化和淋失对砂岩的破坏；</span><span
						style="font-family: ;">Warke</span><span style="font-family: 宋体;">等</span><span
						style="font-family: ;"> (2006) </span><span
						style="font-family: 宋体;">则通过实验室进行了盐分和湿气加入砂岩模拟风化速度。</span><span
						style="font-family: ;">Kevin Hall &amp; Alida Hall (1996) </span><span
						style="font-family: 宋体;">在实验室中通过干－湿循环实验分析对砂岩风化的影响。</span><span
						style="font-family: ;">Phillips</span><span
						style="font-family: 宋体;">等</span><span style="font-family: ;">(2005)
					</span><span style="font-family: 宋体;">重视了观察野外软岩夹层的快速风化特点等等。在红层和砂岩地貌研究中较为广泛地采用了</span><span
						style="font-family: ;">X</span><span style="font-family: 宋体;">射线衍射、能量色散分光法、化学分析法、电子扫描显微镜法、光谱分析法、感应耦合等离子质谱分析法等，分析岩石风化过程中的矿物成分的变化和微观尺度形貌的改变。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">在</span><span style="font-family: ;">2009</span><span
						style="font-family: 宋体;">年</span><span style="font-family: ;">7</span><span
						style="font-family: 宋体;">月第七届国际地貌大会（墨尔本）上，国际地貌学家协会理事会批准成立了</span><span
						style="font-family: 宋体;">“</span><span style="font-family: ;">IAG</span><span
						style="font-family: 宋体;">丹霞地貌工作组</span><span
						style="font-family: ;">(DanxiaGeomorphology Working Group
						of IAG)</span><span style="font-family: 宋体;">”</span><span
						style="font-family: 宋体;">，关于丹霞地貌的全球调查和对比研究被提上了日程。工作组的科学目标是：</span><span
						style="font-family: 宋体;">讨论并确定适用于全球的红层和丹霞地貌科学概念与定义</span><span
						style="font-family: 宋体;">；界定红层和丹霞地貌发育的必要条件，论证其发育机制；建立科学的红层和丹霞地貌分类系统；全面了解红层和丹霞的全球分布规律；</span><span
						style="font-family: 宋体;">确立红层和丹霞地貌在国际地貌学体系中的科学地位</span><span
						style="font-family: 宋体;">。</span><span
						style="font-family: Times New Roman;">2011</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">10</span><span
						style="font-family: 宋体;">月，在丹霞山召开了国际地貌学家协会丹霞工作组第一次会议暨第二届丹霞地貌国际学术讨论会，会议宣言中提出“以中国的研究为基础，启动全球丹霞地貌研究，并逐步完善丹霞地貌的理论体系”。</span><span
						style="font-family: Times New Roman;">2012</span><span
						style="font-family: 宋体;">年</span><span
						style="font-family: Times New Roman;">4</span><span
						style="font-family: 宋体;">月，欧洲地貌学家协会、波兰弗罗兹瓦夫大学联合国际地貌学家协会丹霞地貌工作组，在波兰召开了第三届欧洲砂岩地貌会议，丹霞地貌成为会议议题之一，也开始了在欧洲的红层与丹霞地貌研究。这是在中国以外的地方首次讨论丹霞地貌的学术问题。</span>
				</p>
				<h3 id="a2-3">研究现状与存在问题</h3>
				<h4 id="a2-3-1">国内研究现状</h4>
				<p style="line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">丹霞地貌基础研究是近年来该领域的研究工作重点，已形成的主要认识有：</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">1</span> </strong><strong><span
						style="font-family: 宋体;">）定义</span> </strong><span style="font-family: 宋体;">：</span><span
						style="font-family: Times New Roman;">1939</span><span
						style="font-family: 宋体;">年陈国达提出“丹霞地形”概念以来，研究多注重岩石、构造、形态等描述与说明，长期没有讨论过定义。黄进在</span><span
						style="font-family: Times New Roman;">1961</span><span
						style="font-family: 宋体;">年编制广东省地貌图时首次提出丹霞地貌的定义：“丹霞地貌是由水平或变动很轻微的厚层红色砂岩、砾岩所构成，因岩层呈块状结构和富有易于透水的垂直节理，</span><span
						style="font-family: 宋体;">经流水向下侵蚀及重力崩塌作用形成陡削的峰林或方山地形</span><span
						style="font-family: 宋体;">”。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1983</span><span
						style="font-family: 宋体;">年先后出版的《地理学词典》和《地质辞典》均给丹霞地貌做了定义，表述比较接近。都强调了厚层的“红色砂砾岩”及发育的各种地貌形态，地质学词典增加了外动力作用。曾昭璇和黄进</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年在《中国大百科全</span><span
						style="font-family: 宋体;">书•地</span><span style="font-family: 宋体;">理学</span><span
						style="font-family: 宋体;">》卷给予的丹霞地貌定义是“巨厚红色砂、砾岩中沿垂直节理发育的各种丹崖奇峰的总称”。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1990’</span><span
						style="font-family: 宋体;">年代以来，随着人们对丹霞地貌日益关注，对其概念和定义的讨论也逐步增多，因而分歧也日益增多。但大致上可分为三大类：一类是宽口径定义，主张凡是具有赤壁丹崖的地貌，不管由什么岩石构成，都可称为丹霞地貌；第二类是窄口径定义，主张比照丹霞山，只有发育在白垩纪红色河湖相砂砾岩中的地貌才能称为丹霞地貌；第三类是折中的定义，即以陆相为主</span><span
						style="font-family: Times New Roman;">(</span><span
						style="font-family: 宋体;">可能包含非陆相夹层</span><span
						style="font-family: Times New Roman;">)</span><span
						style="font-family: 宋体;">的红层，</span><span style="font-family: 宋体;">不限制红层时代，特征是具有红色陡崖坡</span><span
						style="font-family: 宋体;">。目前绝大部分研究者倾向于折中的定义，</span><span
						style="font-family: 宋体;">表述为“以陡崖坡为特征的陆相红层地貌”。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">2</span> </strong><strong><span
						style="font-family: 宋体;">）特征</span> </strong><span style="font-family: 宋体;">：裸露的红色陡崖坡是丹霞地貌最重要的识别要素，不同形态和体量的陡崖坡组合成堡状、墙状、</span><span
						style="font-family: 宋体;">柱状等各类正地貌的基本坡面</span><span
						style="font-family: 宋体;">；在沟谷等负地貌单元，陡崖坡则构成峡谷的谷壁。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">黄进（</span><span
						style="font-family: ;">1982</span><span style="font-family: 宋体;">）对丹霞地貌基本坡面形态进行了总结和概括。他把近水平产状的岩层发育的丹霞地貌坡面自上而下分为三种类型：受近水平岩层面控制的平缓层面顶坡；受垂直节理控制的陡崖坡；受崩积岩块内摩擦角控制的崩积缓坡。倾斜的岩层发育的丹霞坡面则表现为“顶斜、身陡、麓缓”三种坡面。在一些构造比较强烈的地区，岩层倾角可能达到</span><span
						style="font-family: ;">60</span><span style="font-family: 宋体;">度以上，则层面构成陡崖坡。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">现实中丹霞地貌的坡面是极其复杂的，可以分为构造破裂面型、流水侵蚀型、崩塌后壁型、多因素（风化</span><span
						style="font-family: ;">/</span><span style="font-family: 宋体;">雨水</span><span
						style="font-family: ;">/</span><span style="font-family: 宋体;">风力</span><span
						style="font-family: ;">/</span><span style="font-family: 宋体;">波浪）型（图</span><span
						style="font-family: ;">1</span><span style="font-family: 宋体;">）。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg13.jpg">
				</p>
				<p
					style="margin: 4px 0px 0px; text-align: center; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;"><span
						style="font-family: 宋体;">图</span><span style="font-family: 宋体;"><span
							style="font-family: ;">1-1 &nbsp;</span><span
							style="font-family: 宋体;">几种成因的丹霞陡崖坡</span> </span> </span>
				</p>
				<p style="margin: 4px 0px 0px; line-height: 21px;">
					<span style="font-family: 宋体;">一般巷谷和峡谷，有可能是构造剪裂或张裂成因的，但大多为流水顺垂直节理或裂隙带下切侵蚀而成，也有地壳抬升后流水继承性下切形成的，一般还没有崩塌崖壁的形成。而进入壮年期之后的丹霞崖壁一般是在构造破裂面或重力破裂面的基础上由崩塌所形成的。此外，陆相沉积地层在垂直方向上具有非常大的岩性变化，因此丹霞陡崖坡往往具有明显的顺层微地貌。由于陆相红层相对软弱，胶结物比较复杂，陡崖坡的折角处往往发生明显的圆化。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">3</span> </strong><strong><span
						style="font-family: 宋体;">）分布</span> </strong><span style="font-family: 宋体;">：根据多年的研究</span><span
						style="font-family: 宋体;">，在中国亚热带湿润区，温带湿润区、半湿润区、半干旱和干旱区、</span><span
						style="font-family: 宋体;">青藏高原高寒区都有丹霞地貌分布</span><span
						style="font-family: 宋体;">；其中主要集中在东南丘陵区、环四川盆地区和甘肃—青海为中心的西北地区。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">1</span><span
						style="font-family: 宋体;">）东南部湿润区低海拔峰丛－峰林型丹霞。在中国大地貌单元中，属于江南丘陵区，包括浙、闽、赣、粤、湘、桂等省区，多发育临水峰丛－峰林式丹霞。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">）西南部湿润高原－山地－峡谷型丹霞。主要分布在四川盆地外围的盆地－高原过渡带和云南西部山地。地形起伏剧烈，以深切割的高原－峡谷型、</span><span
						style="font-family: 宋体;">山地型丹霞为主</span><span
						style="font-family: 宋体;">。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">3</span><span
						style="font-family: 宋体;">）西北部高寒－干旱山地型丹霞。主要分布在甘肃及周边省区。处于青藏高原的青海省，分布大量海拔</span><span
						style="font-family: Times New Roman;">3000</span><span
						style="font-family: 宋体;">－</span><span
						style="font-family: Times New Roman;">4000m</span><span
						style="font-family: 宋体;">以上的高寒－半干旱－干旱型丹霞；兰州周边发育了半干旱山地型丹霞；河西走廊的祁连山麓至新疆的天山南北麓，则发育了典型的干旱山地型丹霞。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">除了上述三个集中分布区之外，其它地区均有零散分布。由于中国自然地理环境复杂，各地的地质构造、气候特征、生物作用等内－</span><span
						style="font-family: 宋体;">外动力差异</span><span
						style="font-family: 宋体;">，形成丹霞类型的多样性和景观差异性。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">4</span> </strong><strong><span
						style="font-family: 宋体;">）分类系统</span> </strong><span
						style="font-family: 黑体;">：</span><span style="font-family: 宋体;">丹霞地貌的分类，主要有黄进等（</span><span
						style="font-family: ;">1992</span><span style="font-family: 宋体;">）、黄可光等（</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">）、彭华（</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">）、罗成德（</span><span
						style="font-family: Times New Roman;">1994</span><span
						style="font-family: 宋体;">）、陈致均等（</span><span
						style="font-family: Times New Roman;">1994</span><span
						style="font-family: 宋体;">）等文章涉及的分类。其中黄进等</span><span
						style="font-family: Times New Roman;">1992</span><span
						style="font-family: 宋体;">年根据岩层倾角、有无上覆盖层、所处气候区、</span><span
						style="font-family: 宋体;">发育阶段和地貌形态等给出了比较全面的分类体系</span><span
						style="font-family: 宋体;">。在中国丹霞申遗中被中外专家接受的丹霞地貌分类是根据彭华（</span><span
						style="font-family: Times New Roman;">2000</span><span
						style="font-family: 宋体;">，</span><span
						style="font-family: Times New Roman;">2002</span><span
						style="font-family: 宋体;">）的分类依据和指标体系建立的分类系统，首先是根据丹霞地貌的物质基础、地质构造、主导动力、地貌形态、发育阶段等一级分类依据，形成一级子系统。在此基础上，按次级依据划分二级子系统，再根据具体差异划分为更低级别的子系统。共</span><span
						style="font-family: Times New Roman;">63</span><span
						style="font-family: 宋体;">个基本类型。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">5</span> </strong><strong><span
						style="font-family: 宋体;">）发育条件</span> </strong><span
						style="font-family: 宋体;">：</span><span style="font-family: 宋体;">根据多年的研究，丹霞地貌发育的一般条件可总结为：①红层是丹霞地貌发育的物质基础，丹霞地貌的典型性首先取决于红层岩性；②</span><span
						style="font-family: 宋体;">地质构造控制丹霞地貌的空间格局和坡面形态</span><span
						style="font-family: 宋体;">；③区域地壳升降运动决定了丹霞地貌的发育进程和程度；④流水、风化和重力崩塌是丹霞地貌发育的主要外营力，其中流水的侵蚀是主动力，风化是经常性的渐变营力，重力以突变的形式集中表现；⑤此外，干旱区盐风化及风蚀作用，海岸带的波浪作用等，也是特定环境下的重要营力。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">4</span> </strong><strong><span
						style="font-family: 宋体;">）发育过程：</span> </strong><span
						style="font-family: 宋体;">根据目前的研究，丹霞地貌发育过程是一种特殊的地貌过程，基本模式是：红层盆地抬升－流水下切侵蚀－切沟</span><span
						style="font-family: Times New Roman;">/</span><span
						style="font-family: 宋体;">巷谷</span><span
						style="font-family: Times New Roman;">/</span><span
						style="font-family: 宋体;">峡谷－坡面崩塌－陡崖坡后退－山顶面切割缩小－</span><span
						style="font-family: 宋体;">堡状残峰</span><span style="font-family: 宋体;">－</span><span
						style="font-family: 宋体;">孤立石柱或孤石</span><span
						style="font-family: 宋体;">。见图</span><span
						style="font-family: Times New Roman;">2</span><span
						style="font-family: 宋体;">。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: Times New Roman;">&nbsp;</span>
				</p>
				<h4 id="a2-3-2">存在的问题</h4>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">近年来中国丹霞地貌研究取得了重大进展，并走向了世界。但以往的研究以景观描述和旅游利用为主，还停留在学者们自发的、分散的、不系统的研究阶段，基础数据存在大量空白。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">1</span> </strong><strong><span
						style="font-family: 宋体;">）我国丹霞地貌本底信息缺少系统、全面的调查</span> </strong><span
						style="font-family: 宋体;">。</span><span style="font-family: 宋体;">在</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年代之前，丹霞地貌的研究处于个别的、零散的、具体问题研究阶段；</span><span
						style="font-family: Times New Roman;">1990</span><span
						style="font-family: 宋体;">年代以来，黄进教授在完成国家自然科学基金的基础上，出于个人兴趣持续对中国</span><span
						style="font-family: Times New Roman;">28</span><span
						style="font-family: 宋体;">个省、市、自治区的</span><span
						style="font-family: Times New Roman;">900</span><span
						style="font-family: 宋体;">多处丹霞地貌进行了考察，先后有少数当地学者参与。但黄进教授的个人行为受到各种条件的制约，大部分属于传统的地貌考察和确认是否属于丹霞地貌，尚没有进行规范的系统数据收集整理。其他研究人员也大部分属于旅游规划考察和景观评价之类，对全国丹霞地貌的</span><span
						style="font-family: 宋体;">本底信息尚没有系统的、全面的了解。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg12.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">1-2&nbsp; </span><span
						style="font-family: 宋体;">丹霞地貌演化过程模式图</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">2</span> </strong><strong><span
						style="font-family: 宋体;">）基础研究不足，</span> </strong><strong><span
						style="font-family: 宋体;">成果片段化，</span> </strong><strong><span
						style="font-family: 宋体;">研究方法传统</span> </strong><span
						style="font-family: 黑体;">。</span><span style="font-family: 宋体;">从建立丹霞地貌学科体系和进行丹霞地貌国际对比研究的需要来看，我国丹霞地貌研究目前还存在许多不足。主要表现为：基础研究薄弱，研究方法传统，现代技术手段运用不够等；尤其表现在基础调研没有标准化的调查规范和技术标准，大多还是使用传统的观察描述法，缺乏</span><span
						style="font-family: 宋体;">基础性数据系统建设和系统化、科学化的基础性工作，没有能够拿来供国内国际研究直接对比的数据系统和标准；另外，</span><span
						style="font-family: 宋体;">新构造运动对丹霞地貌发育的影响</span><span
						style="font-family: 宋体;">、各种岩性的地层物理化学特性及其抗风化侵蚀能力、</span><span
						style="font-family: 宋体;">各种外动力因素作用过程</span><span
						style="font-family: 宋体;">、作用强度及其对现代地貌发育的意义、丹霞地貌区的环境演变和地貌灾害等方面的研究需要数据化和规范化。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<span style="font-family: 宋体;">其中与现代地貌过程关系重大的问题主要是各种外动力作用的机制、新构造运动与现代地貌发育的关系等问题。</span><span
						style="font-family: 宋体;">以往虽然不同程度的使用了实验室分析等手段</span><span
						style="font-family: 宋体;">，但以一般性的单要素观察－描述－推论为主，定点观察、试验和模拟以及各要素的关联研究还是空白。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">3</span> </strong><strong><span
						style="font-family: 宋体;">）对丹霞地貌发育因素的岩石学、矿物学、地球化学及动力学等研究不足</span> </strong><span
						style="font-family: 黑体;">。</span><span style="font-family: 宋体;">关于各类红层的岩性及抗风化能力研究</span><span
						style="font-family: 宋体;">，除了罗炳生</span><span
						style="font-family: Times New Roman;">(1994)</span><span
						style="font-family: 宋体;">进行了岩体温度应力效应的分析外，近年来</span><span
						style="font-family: 宋体;">朱诚等</span><span
						style="font-family: Times New Roman;">(2000</span><span
						style="font-family: 宋体;">、</span><span
						style="font-family: Times New Roman;">2005</span><span
						style="font-family: 宋体;">、</span><span
						style="font-family: Times New Roman;">2009)</span><span
						style="font-family: 宋体;">通过岩石标本的实验室检测，进行了不同岩石样本的物理力学性质和抗酸性质的对比研究。而对于丹霞地貌发育条件的系统研究，对于</span><span
						style="font-family: 宋体;">不同岩性和不同含水状态的暴露红层抗风化侵蚀能力的研究大多还停留在一般描述阶段；特别是对于红层中软性夹层的研究被忽视，而恰恰软岩是坡面风化和流水侵蚀的先锋层，成为崩塌发生的先决条件。其次，尚缺乏流水对红层作用机制的专门研究。</span><span
						style="font-family: 宋体;">如水对于红层中可溶性物质的作用及水溶后岩石成分和强度的变化问题</span><span
						style="font-family: 宋体;">，不同类型红层的抗侵蚀能力问题，不同水动力条件下的侵蚀速率问题等，都是研究的薄弱环节。此外红层陡崖坡的崩塌是丹霞地貌发育中的突变性地貌过程，也是丹霞地貌陡崖坡后退的最重要方式，但关于丹霞陡崖坡崩塌作用发生的条件和机理、高危地段的监测与防控等尚未引起重视。</span>
				</p>
				<p style="text-align: center;">
					<img src="files/pdimg9.jpg">
				</p>
				<p style="text-align: center; line-height: 21px;">
					<span style="font-family: 宋体;">图</span><span
						style="font-family: Times New Roman;">1-3&nbsp; </span><span
						style="font-family: 宋体;">红层中软弱夹层的风化凹进</span><span
						style="font-family: Times New Roman;">(AB)</span><span
						style="font-family: 宋体;">和砂岩中的片状剥落</span><span
						style="font-family: Times New Roman;">(C)</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">4</span> </strong><strong><span
						style="font-family: 宋体;">）缺乏对丹霞地貌发育过程和机制的系统研究</span> </strong><span
						style="font-family: 宋体;">。各种自然要素的作用过程往往具有一定的关联性，红层岩性和地质构造一般是相对稳定的要素（假设没有突发性地质事件），而风化、侵蚀和崩塌等则是一组可变因子，并且相互关联，在不同时间和不同部位对地貌发育具有不同的影响；风化和侵蚀是长期缓慢作用的因子，使得地貌在长时期内发生着渐变，渐变的同时改变着岩体整体的应力状态，原来的岩体裂隙处发生应力集中，在重力的作用下，发生突发性作用，两种作用过程共同塑造着地貌形态。如何将它们作为一个系统，分析其关联和消长，揭示丹霞地貌外动力综合作用机制，目前尚未研究。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">5</span> </strong><strong><span
						style="font-family: 宋体;">）</span> </strong><strong><span
						style="font-family: 宋体;">缺乏对丹霞地貌数据的智能化综合分析，成果表现传统</span> </strong><span
						style="font-family: 宋体;">。海量的地貌数据具有异构与高维的特征，需要检索的数据极为复杂，且数据量急剧膨胀。将原始数据进行人工智能化分析，模拟转换成易被人类感知系统理解的可视化数据，即更容易被人认知。数据可视化是传统地图表现工作上的衍生，透过计算机图形所提供的各种视觉效果，辅助数据探索和假说推论等工作，并将成果以具体的图像呈现，以便吸引人类最有力的视觉相关信息处理能力。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: ;">6</span> </strong><strong><span
						style="font-family: 宋体;">）</span> </strong><strong><span
						style="font-family: 宋体;">缺乏研究成果的展示和服务平台，无法进行实时更新和数据管理</span> </strong><span
						style="font-family: 宋体;">。目前丹霞地貌的研究成果以传统纸质文档为载体，以文字信息为主的描述，辅以粗略的图片为补充，难以给人生动的印象，不利于丹霞地貌知识的传播，不利于丹霞地貌的学习与研究；缺乏与时代向适应的信息技术手段，不便于查阅与更新，不利于丹霞地貌研究的长期发展。妨碍丹霞地貌社会关注度的增强，最终制约丹霞地貌研究的发展。</span>
				</p>
				<h4 id="a2-3-3">研究趋势</h4>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">1</span> </strong><strong><span
						style="font-family: 宋体;">）基础调研将趋向于规范</span> </strong><span
						style="font-family: 宋体;">。</span><span style="font-family: 宋体;">尽管有</span><span
						style="font-family: Times New Roman;">80</span><span
						style="font-family: 宋体;">多年的研究史，但中国丹霞的研究大多是零散的调查与描述。以往比较系统的丹霞地貌调查是黄进教授坚持了多年的面上调查，主要是鉴别各地发现的丹霞地貌点是不是典型的丹霞地貌和记录表观的地貌特征。而未来研究需要关于各地丹霞地貌的规范化基础数据，如经纬度</span><span
						style="font-family: 宋体;">位置、丹霞地貌面积、海拔高程与高差、大构造区及小构造、地层年代、岩石理化性质、大地貌单元、地貌类型及特征、特殊景观、重要地貌过程和表现、丹霞地貌区地质灾害、</span><span
						style="font-family: 宋体;">自然地理环境、保护性命名、地方文化、利用现状</span><span
						style="font-family: 宋体;">等数据和图片，能够为任何一个研究者提供最直接、最权威、最系统的基础数据，也能够让任何一个丹霞地貌的调研成果纳入标准化体系。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">2</span> </strong><strong><span
						style="font-family: 宋体;">）现代技术在基础研究中将发挥重大作用</span> </strong><span
						style="font-family: 宋体;">。目前计算机技术日新月异，可以在丹霞基础研究和数据存储及展示方面对丹霞地貌的基础研究提供技术支持。将计算机技术引进丹霞地貌的基础研究是大势所趋，并已形成良好的开端。如</span><span
						style="font-family: 宋体;">在数据采集的基础上，根据标准化的数据系统登录规范，对丹霞地貌图文数据进行编码和登记；采用计算机技术，建立分类数据库；然后进行计算机数据可视化处理，形成反映数据关系的</span><span
						style="font-family: 宋体;">空间可视化、地貌特征可视化和数据关系</span><span
						style="font-family: 宋体;">图表</span><span style="font-family: 宋体;">可视化</span><span
						style="font-family: 宋体;">成果；在此基础上建立式数据存储系统、展示系统、访问系统、实时更新系统和数据管理系统，并通过这个过程开发出适合于全球访问和研究的数据平台。既可作为中国丹霞地貌学术展示和交流的平台，又是丹霞地貌景观的宣传窗口。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">3</span> </strong><strong><span
						style="font-family: 宋体;">）基础研究逐步走向深化</span> </strong><span
						style="font-family: 宋体;">。近年来，中国学者开始关注</span><span
						style="font-family: 宋体;">现代技术手段的运用，</span><span
						style="font-family: 宋体;">深化基础研究，如</span><span
						style="font-family: 宋体;">黄进</span><span
						style="font-family: Times New Roman;">(2003, 2010) </span><span
						style="font-family: 宋体;">利用河流阶地释光测年分析计算丹霞地貌的演化速度，朱诚和彭华等</span><span
						style="font-family: Times New Roman;">(2005, 2009, 2010) </span><span
						style="font-family: 宋体;">通过微观岩石学实验测试研究丹霞地貌的发育动力，郭国林</span><span
						style="font-family: Times New Roman;">(2006)</span><span
						style="font-family: 宋体;">等利用砂岩微观风化电子探针技术手段进行丹霞地貌的演化机制研究等。</span><span
						style="font-family: 宋体;">进一步的深化研究将是新构造运动对地貌发育的影响、各种红层的物理化学特性及其抗风化侵蚀能力，各种外动力作用过程、</span><span
						style="font-family: 宋体;">作用强度及其对现代地貌发育的意义等方面展开重点研究</span><span
						style="font-family: 宋体;">；丹霞地貌区的环境演变、生态恢复和特殊地貌灾害等方面的研究也被重视。彭华近年来尝试在代表性地段进行定点观察和过程监测，结合实验室测试，解析丹霞地貌发育的外动力机制。因此，传统方法与现代技术的结合、地质学方法与地理学方法的结合、宏观与微观的结合、单因子研究与多因子集成的结合等，是未来丹霞地貌基础研究的方向。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">4</span> </strong><strong><span
						style="font-family: 宋体;">）全球研究和交流将形成趋势</span> </strong><span
						style="font-family: 宋体;">。</span><span style="font-family: 宋体;">目前国际上对砂岩地貌和丹霞地貌的研究日益重视，欧洲、澳大利亚和美国的学者已经形成重要的研究成果。其中</span><span
						style="font-family: Times New Roman;">2002</span><span
						style="font-family: 宋体;">年和</span><span
						style="font-family: Times New Roman;">2005</span><span
						style="font-family: 宋体;">年，在捷克和卢森堡曾先后召开了两届欧洲砂岩景观国际学术讨论会，</span><span
						style="font-family: Times New Roman;">2012</span><span
						style="font-family: 宋体;">年在波兰召开的第三届欧洲砂岩地貌会议已经开辟了丹霞地貌的专题。</span><span
						style="font-family: Times New Roman;">2013</span><span
						style="font-family: 宋体;">年将在巴黎召开的第八届国际地貌学大会已安排了砂岩地貌与丹霞地貌分会场和专题讨论</span><span
						style="font-family: 宋体;">。总体上看来，目前丹霞地貌国际学术交流的平台已经搭建，学术交流和对比研究具有一定的成果基础，中国的丹霞和国际上的红层、砂岩地貌研究成果可以很好的对话。丹霞地貌研究事业面临着一个更加积极的国际环境。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">5</span> </strong><strong><span
						style="font-family: 宋体;">）非结构化大数据处理成为主流。</span> </strong><span
						style="font-family: 宋体;">面向大数据的海量存储需求，主要形成了</span><span
						style="font-family: Times New Roman;">Column Stores</span><span
						style="font-family: 宋体;">、</span><span
						style="font-family: Times New Roman;">Key-Value Stores</span><span
						style="font-family: 宋体;">和</span><span
						style="font-family: Times New Roman;">Document Stores</span><span
						style="font-family: 宋体;">三类存储技术。</span><span
						style="font-family: Times New Roman;">Column Stores</span><span
						style="font-family: 宋体;">技术的代表是</span><span
						style="font-family: Times New Roman;">Google</span><span
						style="font-family: 宋体;">所建立支持弱一致性的大规模分布式数据库</span><span
						style="font-family: Times New Roman;">BigTable</span><span
						style="font-family: 宋体;">，适用于大数据对象、集中服务器和高带宽业务需求数据存储；</span><span
						style="font-family: Times New Roman;">Key-ValueStores</span><span
						style="font-family: 宋体;">技术的代表包括</span><span
						style="font-family: Times New Roman;">AmazonDynamo</span><span
						style="font-family: 宋体;">、</span><span
						style="font-family: Times New Roman;">Yahoo PNUTS</span><span
						style="font-family: 宋体;">以及社交网络</span><span
						style="font-family: Times New Roman;">Linkedin</span><span
						style="font-family: 宋体;">的</span><span
						style="font-family: Times New Roman;">Voldemort</span><span
						style="font-family: 宋体;">，适用于小数据对象、分散服务器和低延迟业务需求数据存储；</span><span
						style="font-family: Times New Roman;">DocumentStores</span><span
						style="font-family: 宋体;">技术的代表包括</span><span
						style="font-family: Times New Roman;">CouchDB</span><span
						style="font-family: 宋体;">、</span><span
						style="font-family: Times New Roman;">MongoDB</span><span
						style="font-family: 宋体;">，适用于类似</span><span
						style="font-family: Times New Roman;">XML</span><span
						style="font-family: 宋体;">等文档对象的数据存储。对于数据尺寸可变、数据量大以及高可用需求明显等特点，</span><span
						style="font-family: Times New Roman;">Google</span><span
						style="font-family: 宋体;">提出了基于大量</span><span
						style="font-family: Times New Roman;">PC</span><span
						style="font-family: 宋体;">构成的集群文件系统</span><span
						style="font-family: Times New Roman;">GFS</span><span
						style="font-family: 宋体;">。</span><span
						style="font-family: Times New Roman;">Amazon</span><span
						style="font-family: 宋体;">提出了简单存储服务</span><span
						style="font-family: Times New Roman;">S3</span><span
						style="font-family: 宋体;">，在可靠性、扩展性方面设定了更高的标准，并进一步提供了</span><span
						style="font-family: Times New Roman;">ElasticBlock Storage
						(EBS)</span><span style="font-family: 宋体;">服务，支持块级别的存储接口。此外，美国</span><span
						style="font-family: Times New Roman;">Rice</span><span
						style="font-family: 宋体;">大学和</span><span
						style="font-family: Times New Roman;">UCSC</span><span
						style="font-family: 宋体;">大学分别提出了数据存储中拜占庭错误的最终一致性技术</span><span
						style="font-family: Times New Roman;">Zeno</span><span
						style="font-family: 宋体;">，可伸缩、高性能的分布式文件系统</span><span
						style="font-family: Times New Roman;">Ceph</span><span
						style="font-family: 宋体;">。</span><span style="font-family: 宋体;">丹霞地貌具有明显的非结构化特征，通过结构化与非结构化的融合处理，开发出一个高效、节能的海量数据库，是将来丹霞地貌研究的主流基础平台。</span>
				</p>
				<p
					style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
					<strong><span style="font-family: 宋体;">（</span> </strong><strong><span
						style="font-family: Times New Roman;">6</span> </strong><strong><span
						style="font-family: 宋体;">）研究成果网络化是大势所趋。</span> </strong> </strong><span
						style="font-family: 宋体; font-size: 14px;">以虚拟化、海量存储和大数据处理技术为核心的云计算是随着计算、存储以及通信技术的快速发展而出现的一种新的分布式计算模型，通过在大量商用计算设备构成的数据中心之上构造网络操作系统，为用户提供安全、可靠、快速、便捷、透明的基础设施服务、平台服务和软件服务。自云计算概念提出以来，在短短几年时间里，迅速得到学术界和产业界的关注。在学术界，美国自然科学基金在</span><span
						style="font-family: ;" new="" times="">2008</span><span
						style="font-family: 宋体; font-size: 14px;">年和</span><span
						style="font-family: ;" new="" times="">2009</span><span
						style="font-family: 宋体; font-size: 14px;">年分别通过启动</span><span
						style="font-family: ;" new="" times="">Cluster Exploratory
						(CluE)</span><span style="font-family: 宋体; font-size: 14px;">和</span><span
						style="font-family: ;" new="" times="">POMI 2020</span><span
						style="font-family: 宋体; font-size: 14px;">研究计划，支持研究机构对数据密集型计算及面向移动互联网的新型应用支撑技术开展研究，</span><span
						style="font-family: ;" new="" times="">2010</span><span
						style="font-family: 宋体; font-size: 14px;">年</span><span
						style="font-family: ;" new="" times="">NASA</span><span
						style="font-family: 宋体; font-size: 14px;">启动了</span><span
						style="font-family: ;" new="" times="">OpenStack</span><span
						style="font-family: 宋体; font-size: 14px;">计划，研发云计算基础设施与平台服务。欧盟在</span><span
						style="font-family: ;" new="" times="">FP7</span><span
						style="font-family: 宋体; font-size: 14px;">中资助了</span><span
						style="font-family: ;" new="" times="">Vision Cloud</span><span
						style="font-family: 宋体; font-size: 14px;">、</span><span
						style="font-family: ;" new="" times="">4CAAST</span><span
						style="font-family: 宋体; font-size: 14px;">等</span><span
						style="font-family: ;" new="" times="">20</span><span
						style="font-family: 宋体; font-size: 14px;">多项针对云计算操作系统的系列研究项目，覆盖云资源管理、云存储、虚拟化与弹性计算、互操作框架、编程模型等诸多方面。在最近几年操作系统的顶级学术会议</span><span
						style="font-family: ;" new="" times="">OSDI</span><span
						style="font-family: 宋体; font-size: 14px;">、</span><span
						style="font-family: ;" new="" times="">SOSP</span><span
						style="font-family: 宋体; font-size: 14px;">上有大量关于云计算及网络操作系统的研究成果。在产业界，也出现一系列的典型云计算系统，如</span><span
						style="font-family: ;" new="" times="">Google Cloud
						ComputingInfrastructure</span><span
						style="font-family: 宋体; font-size: 14px;">、</span><span
						style="font-family: ;" new="" times="">IBM Blue Cloud</span><span
						style="font-family: 宋体; font-size: 14px;">、</span><span
						style="font-family: ;" new="" times="">Amazon EC2</span><span
						style="font-family: 宋体; font-size: 14px;">、</span><span
						style="font-family: ;" new="" times="">Microsoft Azure</span><span
						style="font-family: 宋体; font-size: 14px;">。云计算发展已经呈现出系统规模日益增大，应用和服务形态越来越多样化，更加注重低耗高效等特点。基于虚拟化、海量存储和大数据处理技术，建立海量丹霞地貌基础数据库与网络化服务平台，为用户提供安全、可靠、快速丹霞地貌信息，并能实时更新丹霞地貌数据，已经是大势所趋，并且迫在眉睫。</span>
				</p>

				<h2 id="a3">项目介绍</h2>
				<hr>
				<h3 id="a3-1">
					项目概况
					</h2>
					<p
						style="margin: 5px 0px 0px 56px; text-align: left; line-height: 24px;">
						<strong><span style="font-family: 宋体;">项目名称</span> </strong><span
							style="font-family: 宋体;">：全国丹霞地貌基础数据调查</span>
					</p>
					<p
						style="margin: 5px 0px 0px 56px; text-align: left; line-height: 24px;">
						<strong><span style="font-family: 宋体;">项目类别</span> </strong><span
							style="font-family: 宋体;">：重点项目</span>
					</p>
					<p
						style="margin: 5px 0px 0px 56px; text-align: left; line-height: 24px;">
						<strong><span style="font-family: 宋体;">主持单位</span> </strong><span
							style="font-family: 宋体;">：中山大学</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">参加单位</span> </strong><span
							style="font-family: 宋体;">：</span><span style="font-family: 宋体;">上海交通大学，南京大学，北京科技大学，中科院地理研究所，广东广电大学</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">起止年月</span> </strong><span
							style="font-family: 宋体;">：</span><span
							style="font-family: Times New Roman;">2013.08-2018.07</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">项目组长</span> </strong><span
							style="font-family: 宋体;">：彭华，</span><span
							style="font-family: 宋体;">中山大学</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">项目副组长</span> </strong><span
							style="font-family: 宋体;">：戚正伟，上海交通大学</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">专题组负责人</span> </strong><span
							style="font-family: 宋体;">：地质组：张珂；地貌组：朱诚；环境组：董玉祥；数据库组：梁阿磊；管理平台组：李健。</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">主管部门</span> </strong><span
							style="font-family: 宋体;">：教育部</span>
					</p>
					<p style="margin: 5px 0px 0px 56px; line-height: 24px;">
						<strong><span style="font-family: 宋体;">预期成果类型</span> </strong><span
							style="font-family: 宋体;">：论文和著作、考察报告、科学数据、计算机软件、人才培养、图集图件</span>
					</p>
					<p style="text-align: left;">
						<span style="font-family: ;">&nbsp;</span>
					</p>

					<h3 id="a3-2">项目简介</h3>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">丹霞地貌是中国学者提出的一种“以陡崖坡为特征的红层地貌”，已有</span><span
							style="font-family: Times New Roman;">80</span><span
							style="font-family: 宋体;">多年研究历史，被称为中国的地学“国粹”，</span><span
							style="font-family: Times New Roman;">2009</span><span
							style="font-family: 宋体;">年被国家地理杂志评为中国地理学“百年大发现”最重要的发现之一。但是，丹霞地貌研究一直局限于国内。近年来，配合中国丹霞申遗，先后于</span><span
							style="font-family: Times New Roman;">2009</span><span
							style="font-family: 宋体;">年</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">月和</span><span
							style="font-family: Times New Roman;">2011</span><span
							style="font-family: 宋体;">年</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">月召开了两届丹霞地貌国际学术讨论会，引起了国际地学界的重视。</span><span
							style="font-family: Times New Roman;">2009</span><span
							style="font-family: 宋体;">年</span><span
							style="font-family: Times New Roman;">7</span><span
							style="font-family: 宋体;">月第七届国际地貌学大会批准成立了国际地貌学家协会丹霞工作组，丹霞地貌全球研究被列入近期重点；</span><span
							style="font-family: Times New Roman;">2011</span><span
							style="font-family: 宋体;">年工作组第一次会议宣言中提出“以中国的研究为基础，启动全球丹霞研究”的指导意见。因此，对中国丹霞地貌的基础研究提出了新的要求。</span>
					</p>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">近年来中国丹霞地貌研究取得了重大进展，并轰轰烈烈地走向了世界。但以往的研究以地貌描述和旅游利用为主，作为全球研究的基础仍然存在严重的不足，特别是缺少系统性的基础数据调查和数据集成。围绕着丹霞地貌基础数据调查及管理平台的建设，具有以下重要意义：①是丹霞地貌科学体系建设的基础工程，将使得丹霞地貌学科走向规范和成熟；②将为丹霞地貌的国际对比研究提供数据平台；③将建立基础数据可视化系统和全球实时更新系统，是进行科学展示和全球推广的科学基础；④将为丹霞地貌区提供开发利用的基础资料，为科教旅游、生态修复和灾害防治等提供科学支撑，为应用研究提供最全面、权威、系统的技术信息服务；⑤将成为中国丹霞地貌研究国际化的重要基础，成为展示中国自主性科技成果的重要窗口和丹霞地貌全球研究的重要平台。</span>
					</p>
					<p style="text-align: left;">
						<span style="font-family: ;">&nbsp;</span>
					</p>
					<h3 id="a3-3">项目任务</h3>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">为了满足丹霞地貌数据服务于本研究的需求，将采用调查与观察法（面上与典型调查相结合、遥感影像解译</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">地质图判读和实地观察相结合、仪器辅助观测，建立标准的岩性描述系统等），实验法（岩石样本理化测试），数理计算法（对采集数据的编码与处理、多元统计分析等），计算机技术（基于云存储平台的分布式方法、人工智能数据法、科学可视化、非结构化数据管理平台技术）等地质、地貌学的传统调研与现代信息和测试技术手段相结合的方法，完成以下基础数据采集和处理工作：</span>
					</p>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">）试点研究：选择中国东南部丹霞地貌基础研究较好的区域，进行基础数据标准化采集试点，建立分类系统、技术标准和操作规范，制定计算机编码。</span>
					</p>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">）重点调研：根据预研究成果，对南方湿润区、西北干旱区、西南高原山地区等丹霞主要分布区的代表性区域进行数据采集和实验检测，矫正并修订分类系统、技术标准和操作规范，初步建立数据库模型并进行平台设计。</span>
					</p>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">）全面调研：根据技术规范，对全国代表性的丹霞地貌区</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处左右进行全面调研、标准化数据采集和样品检测，统一进行计算机编码，修订数据库模型和平台建设方案。</span>
					</p>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">）基础数据组织与管理：根据技术标准和分类依据，制定各要素分类计算机编码系统；建立丹霞地貌海量基础数据库，完成丹霞地貌的图片、特征等基础数据的计算机录入和分类编码集成。</span>
					</p>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">）基础数据的科学可视化与共享服务：进行基础数据空间可视化、地貌特征可视化和数据关系可视化处理；完成丹霞地貌基础数据展示系统，建立数据管理、访问管理和实时更新服务平台，并发支持上万用户，形成全球通用的丹霞数据访问和研究、展示服务系统。</span>
					</p>
					<p>
						<span style="font-family: ;">&nbsp;</span>
					</p>
					<h3 id="a3-4">预期成果</h3>
					<p
						style="margin: 10px 0px 0px; line-height: 24px; text-indent: 28px;">
						<span style="font-family: 宋体;">完成</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处以上丹霞地貌区的调查，完成</span><span
							style="font-family: Times New Roman;">15000</span><span
							style="font-family: 宋体;">张图纸图片、</span><span
							style="font-family: Times New Roman;">40000</span><span
							style="font-family: 宋体;">组（不少于</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">万个）地质地貌与地理要素的基础数据采集和后端处理；基于丹霞地貌数据云平台资源管理，存储容量达到</span><span
							style="font-family: Times New Roman;">300TB</span><span
							style="font-family: 宋体;">，并可扩展至</span><span
							style="font-family: Times New Roman;">PB</span><span
							style="font-family: 宋体;">级，整体可靠性达</span><span
							style="font-family: Times New Roman;">99.9%</span><span
							style="font-family: 宋体;">。基础数据可视化、丹霞地貌数据库以及未来扩展研究的实时跟踪系统；完成</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">篇博士论文和</span><span
							style="font-family: Times New Roman;">8</span><span
							style="font-family: 宋体;">篇硕士论文；出版丹霞地貌词典和基础研究等专著</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">部，发表学术论文</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">篇；举办</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">次国内和</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">次国际会议，出版</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">本论文集；在相关国际地质地貌大会上，推出成果。</span>
					</p>
					<h2 id="a4">研究计划</h2>
					<hr>
					<h3 id="a4-1">主要研究任务</h3>
					<h4 id="a4-1-1">拟开展的主要工作</h4>
					<p
						style="margin: 4px 0px 0px; line-height: 23px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">项目任务</span> </strong><span
							style="font-family: 宋体;">：计划首先</span><span
							style="letter-spacing: 0px; font-family: 宋体;">制定丹霞地貌的基础数据标准体系；</span><span
							style="font-family: 宋体;">对中国已经具有世界级、国家级和省级命名的约</span><span
							style="font-family: Times New Roman;">200</span><span
							style="font-family: 宋体;">处丹霞地貌区和另外</span><span
							style="font-family: Times New Roman;">100</span><span
							style="font-family: 宋体;">处尚没有获得保护性命名的但发育典型、价值较高或特色突出的丹霞地貌区进行调查；</span><span
							style="font-family: 宋体;">完成约</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处代表性丹霞地貌</span><span
							style="font-family: Times New Roman;">15000</span><span
							style="font-family: 宋体;">幅地图、照片、图片，</span><span
							style="font-family: Times New Roman;">40000</span><span
							style="font-family: 宋体;">组（</span><span
							style="font-family: Times New Roman;">11.88</span><span
							style="font-family: 宋体;">万个</span><span style="font-family: 宋体;">地理、地质、地貌、环境等微观要素数据</span><span
							style="font-family: 宋体;">）基础数据</span><span
							style="font-family: 宋体;">。</span><span style="font-family: 宋体;">并通过这个过程开发出适合于全球的数据平台，成为未来</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处之外的中国丹霞地貌区和全球丹霞地貌区实时更新的工作平台。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: Times New Roman;">1</span>
						</strong><strong><span style="font-family: 宋体;">）数据分类、技术标准与规范的编制</span>
						</strong><span style="font-family: 宋体;">：首先进行预研究，初步选定约</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处代表性丹霞地貌点，建立分类系统、技术标准和调查规范，编制计算机代码。参考现有的地貌、自然地理等分类方案，统一设计要素分类系统。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: Times New Roman;">2</span>
						</strong><strong><span style="font-family: 宋体;">）试点调查和重点调查</span>
						</strong><span style="font-family: 宋体;">：选择我国等丹霞地貌集中分布区的代表性地点进行数据采集和实验检测，进行标准化基础数据采集试点，对分类方案、技术标准和调查规范进行修订，对采集数据进行系统性分类编码。数据初步处理和调适。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: Times New Roman;">3</span>
						</strong><strong><span style="font-family: 宋体;">）全国标准化调研</span> </strong><span
							style="font-family: 宋体;">：对全国约</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处丹霞地貌区的名称、保护性命名、行政隶属、管理机构，调查区的地理坐标、范围和面积、高程高差、构造区位及区域构造、地层年代、岩石性质、地貌单元、地貌类型、地貌特征、景观评价、地貌过程和表现，自然地理环境，地方文化及开发利用现状等进行全面调研、基础数据采集和样本实验检测，统一进行计算机录入、系统分类编码。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: Times New Roman;">4</span>
						</strong><strong><span style="font-family: 宋体;">）丹霞地貌基础数据库建设</span>
						</strong><span style="font-family: 宋体;">：根据分类编码，基于高性能、高扩展性、高可靠性的分布式文件系统，构建结构化与非结构化融合的数据库，管理丹霞数据资源。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: Times New Roman;">5</span>
						</strong><strong><span style="font-family: 宋体;">）智能化、可视化网络服务平台建设</span>
						</strong><span style="font-family: 宋体;">：对丹霞地貌数据进行人工智能分析，寻找地貌数据的相似度、地理相关性等规律，进行智能聚类和查询设计，完成基础数据空间可视化、地貌特征可视化和数据关系可视化处理，建立和充实网络服务平台；实现基于网络丹霞地貌数据普适服务应用，为用户提供查询、更新和</span><span
							style="font-family: Times New Roman;">LBS</span><span
							style="font-family: 宋体;">（基于位置的服务）等服务。</span>
					</p>
					<h4 id="a4-1-2">工作内容分解</h4>
					<h4 id="a4-1-2-1">调查内容</h4>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span> </strong><strong><span
							style="font-family: 宋体;">）概况</span> </strong><span
							style="font-family: 宋体;">：调查点的主要鉴别要素。</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">）名称：</span><span
							style="font-family: 宋体;">调查区名称及别名等</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">组数据；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">）保护性命名：保护级别与全部保护性命名，</span><span
							style="font-family: 宋体;">平均</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">组数据；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">如：世界级（世界遗产：世界文化遗产、世界自然遗产、世界文化与自然混合遗产、世界文化景观；世界地质公园；世界人与生物圈计划保护区；国家级（风景名胜区、自然保护区、地质公园、森林公园、水利公园、湿地公园、矿山公园、文物保护单位、</span><span
							style="font-family: Times New Roman;">AAA</span><span
							style="font-family: 宋体;">级以上旅游区等）；省级</span><span
							style="font-family: 宋体;">……</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">）行政隶属：省</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">自治区</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">直辖市、市</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">地区</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">州、县</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">市</span><span
							style="font-family: Times New Roman;">/</span><span
							style="font-family: 宋体;">旗、乡镇，平均</span><span
							style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">组数据（包括跨地区）；行政区位图</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">幅；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">）管理机构：名称、隶属、办公地址、</span><span
							style="font-family: 宋体;">联系方式，平均</span><span
							style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">组数据（包括跨地区）；</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span> </strong><strong><span
							style="font-family: 宋体;">）丹霞地貌基础数据</span> </strong><span
							style="font-family: 宋体;">：在预研究阶段建立数据系统登录技术规范，按统一的技术标准进行数据采集，拍摄岩石、构造、地貌现象和景观照片，按照规范编码。主要调查内容包括：</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">）经纬度</span><span
							style="font-family: 宋体;">位置：一个连续分布区的四至点和中心点坐标，平均</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">组数据，高清卫星图</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">幅；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">）范围和面积：实地调查与地形图、</span><span
							style="font-family: 宋体;">高清卫片判读相结合</span><span
							style="font-family: 宋体;">，在卫片或地形图上划定范围，连续分布区面积计算</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">组数据；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">）海拔高程与高差：</span><span
							style="font-family: 宋体;">分布范围内最低点和最高点海拔高程</span><span
							style="font-family: 宋体;">，一般高差等</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">组数据；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">）大构造区位及区域构造：所处大地构造位置，红层盆地中的位置及主要构造线描述</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">组数据，地质构造略图</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">幅；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">）地层年代：红层的地层名称、沉积相、</span><span
							style="font-family: 宋体;">红层年代及上下地层年代</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: 宋体;">化石</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">组数据；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">6</span><span
							style="font-family: 宋体;">）地层特点：红层的分层（分组分段）特点，岩层总厚度及变化范围，产状、层理等</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">组数据，剖面简图平均</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">幅；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">7</span><span
							style="font-family: 宋体;">）岩石性质：主要岩石现场拍照，平均</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">幅；展示标本和测试标本采集</span><span
							style="font-family: Times New Roman;">5*2=10</span><span
							style="font-family: 宋体;">块，</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">个岩石样品理化性质测试数据（</span><span
							style="font-family: 宋体;">颜色、粒级、碎屑成分、化学成分、胶结物、胶结状况、岩石结构、孔隙度、强度等</span><span
							style="font-family: 宋体;">）平均</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">组数据，共</span><span
							style="font-family: Times New Roman;">50</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: 宋体;">主要标本照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">幅，薄片偏光显微照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">幅；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">8</span><span
							style="font-family: 宋体;">）大地貌单元：所处大地貌单元、</span><span
							style="font-family: 宋体;">地势及所处大地貌部位平均</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">组数据；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">9</span><span
							style="font-family: 宋体;">）地貌类型：所属的岩性地貌类型、</span><span
							style="font-family: 宋体;">产状类型</span><span
							style="font-family: 宋体;">、成因类型、发育期类型和群体形态类型</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">组数据、</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">幅照片，主要单体类型平均</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">幅照片；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">）地貌坡面特征：</span><span
							style="font-family: 宋体;">代表性地貌陡崖坡最大高度和一般高度</span><span
							style="font-family: 宋体;">、主要坡面的坡度、坡面形态、边角特点等</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">幅照片；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">11</span><span
							style="font-family: 宋体;">）特殊景观：标志性景观、个性化景观、地貌造型等</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">幅照片；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">12</span><span
							style="font-family: 宋体;">）综合景观评价</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">组数据。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">3</span> </strong><strong><span
							style="font-family: 宋体;">）丹霞地貌区自然环境</span> </strong><span
							style="font-family: 宋体;">：制定自然地理要素的分类及描述标准，按照自然地理及其环境要素的类型进行数据采集并统一标准化描述、编码。</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">）自然地理环境：调查区综合自然环境类型与特点，气候、水文、土壤、植被类型等平均</span><span
							style="font-family: Times New Roman;">8</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">幅综合自然景观照片；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">）丹霞地貌区地质环境：丹霞滑坡、崩塌、泥石流等灾害类型与遗迹</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">幅照片。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">4</span> </strong><strong><span
							style="font-family: 宋体;">）地方文化及开发利用</span> </strong><span
							style="font-family: 宋体;">：调查区内和周边所处的文化区及文化事项，开发利用现状。</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">）地方文化：调查区文化事项及特色文化现象，包括建筑、民族、宗教、史迹、活动等</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">组数据，</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">幅文化事项照片；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">）利用现状：利用类型，交通与设施，</span><span
							style="font-family: 宋体;">保护与破坏状况等</span><span
							style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">组数据。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">5</span> </strong><strong><span
							style="font-family: 宋体;">）调查数据综合</span> </strong><span
							style="font-family: 宋体;">：以下数据为计算机处理最低数据成果。</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">地图、图片、照片类共</span><span
							style="font-family: Times New Roman;">14700</span><span
							style="font-family: 宋体;">幅。其中地图类：</span><span
							style="font-family: Times New Roman;">900</span><span
							style="font-family: 宋体;">幅（行政区地图、地质图、卫星影像图或地形图各</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">张）；剖面图类：</span><span
							style="font-family: Times New Roman;">600</span><span
							style="font-family: 宋体;">幅（红层整体和局部剖面</span><span
							style="font-family: Times New Roman;">600</span><span
							style="font-family: 宋体;">）；照片图片类：</span><span
							style="font-family: Times New Roman;">13200</span><span
							style="font-family: 宋体;">幅（岩石现场照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；标本照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；显微照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；地貌群体类型照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；单体类型照片</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=3000</span><span
							style="font-family: 宋体;">；坡面特点照片</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">；特殊景观</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">；自然环境照片</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">；地质环境照片</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=600</span><span
							style="font-family: 宋体;">；文化事项照片</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">）；</span>
					</p>
					<p
						style="margin: 2px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">数字性和描述性数据资料：</span><span
							style="font-family: Times New Roman;">39600</span><span
							style="font-family: 宋体;">组（综合识别要素数据：</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">12=3600</span><span
							style="font-family: 宋体;">；丹霞地貌基础数据：</span><span
							style="font-family: Times New Roman;">100</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=30000</span><span
							style="font-family: 宋体;">；自然与文化环境数据：</span><span
							style="font-family: Times New Roman;">20</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=6000</span><span
							style="font-family: 宋体;">）；每组数据平均按</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">个基本数据计，单要素数据约</span><span
							style="font-family: Times New Roman;">11.88</span><span
							style="font-family: 宋体;">万个。</span>
					</p>
					<h4 id="a4-1-2-2">制定技术规范和初步数据处理</h4>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span> </strong><strong><span
							style="font-family: 宋体;">）数据分类与编码</span> </strong><span
							style="font-family: 宋体;">：首先进行预研究，初步建立分类系统和技术标准，编制计算机代码。所有调查数据均同时分为代码和描述两个内容填写。分类系统参考现有的丹霞地貌、自然地理等分类方案，统一设计分类系统；制定调查技术标准和调查规范；建立要素代码系统。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span> </strong><strong><span
							style="font-family: 宋体;">）标准与规范的调整</span> </strong><span
							style="font-family: 宋体;">：在预研究的基础上进行重点案例调查，并对分类方案、技术标准和调查规范进行修订，对采集数据进行系统性分类编码。数据初步上机处理和调适。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">3</span> </strong><strong><span
							style="font-family: 宋体;">）规范化综合调研与数据采集</span> </strong><span
							style="font-family: 宋体;">：按照修订的标准和规范进行全面数据采集。</span>
					</p>
					<h4 id="a4-1-2-3">丹霞地貌分类系统与指标</h4>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">丹霞地貌基础调查的前提是建立调查技术体系和操作规范基础之上的。该技术文件将经过论证和实践检验，将可能成为丹霞地貌学科的知识、理论和方法体系的重要成分。</span>
					</p>
					<table cellspacing="0" cellpadding="0" width="100%">
						<tbody>
							<tr>
								<td align="center"><img src="files/pdimg2.jpg">
								</td>
							</tr>
							<tr>
								<td style="border: rgb(0, 0, 0); background-color: transparent;"><p
										style="text-align: center;">
										<span style="font-family: 宋体;">图</span><span
											style="font-family: Times New Roman;">1-4&nbsp; </span><span
											style="font-family: 宋体;">丹霞地貌的分类学地位</span>
									</p></td>
							</tr>
						</tbody>
					</table>
					<p>
						<span style="font-family: 宋体;"><span
							style="font-family: 宋体;">作为本次调查的技术体系应该包括丹霞地貌的分类体系及标准参数，相关地质与环境要素的分类体系及标准参数，基础调查操作规范等技术性文件。</span>
						</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span> </strong><strong><span
							style="font-family: 宋体;">）丹霞地貌学科归属及分类系统简述</span> </strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">曾昭璇（</span><span
							style="font-family: Times New Roman;">1960</span><span
							style="font-family: 宋体;">，</span><span
							style="font-family: Times New Roman;">1980</span><span
							style="font-family: 宋体;">）曾将丹霞地貌归为岩石地貌</span><span
							style="font-family: 宋体;">→</span><span style="font-family: 宋体;">红层地貌</span><span
							style="font-family: 宋体;">→</span><span style="font-family: 宋体;">红层丘陵中。在学科归属问题上，表明了丹霞地貌属于岩石地貌</span><span
							style="font-family: 宋体;">→</span><span style="font-family: 宋体;">红层地貌类，但归入红层丘陵似有不妥。</span><span
							style="font-family: 宋体;">彭华（</span><span
							style="font-family: Times New Roman;">2011</span><span
							style="font-family: 宋体;">）曾将丹霞地貌的学科归属细化为右图。在这个系统中，国际上砂岩地貌中只有“红色砂岩地貌”</span><span
							style="font-family: 宋体;">相当于丹霞地貌中的</span><span
							style="font-family: 宋体;">“砂岩丹霞”。因此，砂岩地貌不等同于丹霞地貌，</span><span
							style="font-family: 宋体;">也不能说包含丹霞地貌</span><span
							style="font-family: 宋体;">。只能说两者有重叠的部分。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">对于丹霞地貌本身的分类，许多学者在不同的研究中有所涉及，其中黄进等</span><span
							style="font-family: Times New Roman;">1992</span><span
							style="font-family: 宋体;">年根据岩层倾角、有无上覆盖层、所处气候区、发育阶段和地貌形态等给出了比较全面的分类体系。在前人的基础上，彭华（</span><span
							style="font-family: Times New Roman;">2000</span><span
							style="font-family: 宋体;">，</span><span
							style="font-family: Times New Roman;">2002</span><span
							style="font-family: 宋体;">）对丹霞地貌的分类系统进行了整合与修订，建立了分类依据和分类模型，提出了更为完整的分类系统。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span> </strong><strong><span
							style="font-family: 宋体;">）丹霞地貌分类系统</span> </strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">彭华</span><span
							style="font-family: Times New Roman;">(2000</span><span
							style="font-family: 宋体;">，</span><span
							style="font-family: Times New Roman;">2002)</span><span
							style="font-family: 宋体;">将丹霞地貌发育的物质基础、地质构造、主导动力、地貌形态、发育阶段等要素作为一级分类依据，形成一级子系统。在此基础上，按次级依据划分二级子系统。表</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">是在中国丹霞申遗过程中经中外学者共同论证而使用的丹霞分类系统，姑且作为参考。</span>
					</p>
					<p
						style="margin: 8px 0px 0px; text-align: center; line-height: 21px;">
						<span style="font-family: 宋体;">表</span><span
							style="font-family: Times New Roman;">1-1&nbsp; </span><span
							style="font-family: 宋体;">丹霞分类系统总表</span>
					</p>
					<p align="center">
						<img src="files/pdtable1.jpg">
					</p>

					<h3 id="a4-2">
						预期目标、成果和共享方案
					</h3>
					<h4 id="a4-2-1">预期目标与成果
					</h4>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">）完成</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处以上代表性丹霞地貌</span><span
							style="font-family: 宋体;">地图、图片、照片类数据超过</span><span
							style="font-family: Times New Roman;">14700</span><span
							style="font-family: 宋体;">幅。其中地图类：</span><span
							style="font-family: Times New Roman;">900</span><span
							style="font-family: 宋体;">幅（行政区地图、地质图、卫星影像图或地形图各</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">张）；剖面图类：</span><span
							style="font-family: Times New Roman;">600</span><span
							style="font-family: 宋体;">幅（红层整体和局部剖面</span><span
							style="font-family: Times New Roman;">600</span><span
							style="font-family: 宋体;">）；照片图片类：</span><span
							style="font-family: Times New Roman;">13200</span><span
							style="font-family: 宋体;">幅（岩石现场照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；标本照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；显微照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；群体地貌类型照片</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=1500</span><span
							style="font-family: 宋体;">；单体类型照片</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=3000</span><span
							style="font-family: 宋体;">；坡面特点照片</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">；特殊景观</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">；自然环境照片</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">；地质环境照片</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=600</span><span
							style="font-family: 宋体;">；文化事项照片</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=900</span><span
							style="font-family: 宋体;">）；</span><span style="font-family: 宋体;">数字性和描述性数据：超过</span><span
							style="font-family: Times New Roman;">39600</span><span
							style="font-family: 宋体;">组（</span><span style="font-family: 宋体;">综合识别要素数据</span><span
							style="font-family: 宋体;">：</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">12=3600</span><span
							style="font-family: 宋体;">；丹霞地貌基础数据：</span><span
							style="font-family: Times New Roman;">100</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=30000</span><span
							style="font-family: 宋体;">；</span><span style="font-family: 宋体;">自然与文化环境数据</span><span
							style="font-family: 宋体;">：</span><span
							style="font-family: Times New Roman;">20</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=6000</span><span
							style="font-family: 宋体;">）等</span><span
							style="font-family: Times New Roman;">118800</span><span
							style="font-family: 宋体;">个以上</span><span style="font-family: 宋体;">单要素数据。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">）构建海量丹霞地貌基础数据库，完成丹霞地貌基础调查的图片、数据的后端数据处理成果，</span><span
							style="font-family: 宋体;">分类系统和调查技术规范和标准，对采集数据进行系统性分类编码。构建结构化和非结构化混合的高性能、可扩展的基础数据存储平台，建立海量丹霞地貌基础数据库</span><span
							style="font-family: 宋体;">。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">）构建智能化、可视化网络服务平台，提供包括数据、图片在内的各项资源的增、删、查等功能；</span><span
							style="font-family: 宋体;">完成丹霞基础数据空间可视化、地貌特征可视化和数据关系可视化以及扩展研究实时跟踪系统；</span><span
							style="font-family: 宋体;">建立基于</span><span
							style="font-family: Times New Roman;">MapReduce</span><span
							style="font-family: 宋体;">的大规模数据处理方法，基于人工智能方法研究</span><span
							style="font-family: 宋体;">海量地貌数据的</span><span
							style="font-family: 宋体;">数据分析，与现有地理信息系统结合</span><span
							style="font-family: 宋体;">提供基于位置的服务；实现动态的数据管理、访问管理和实时系统更新，为国内外丹霞地貌研究提供基于互联网的统一管理与服务平台。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">4</span><span
							style="font-family: 宋体;">）完成全国丹霞地貌基础调查报告，中国丹霞地貌数据管理与信息平台建设报告。</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">）项目基础调查规范和技术标准将形成未来基础研究的规范化文件。</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">6</span><span
							style="font-family: 宋体;">）完成中国丹霞地貌基础研究和计算机处理工程的</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">篇博士生论文和</span><span
							style="font-family: Times New Roman;">7</span><span
							style="font-family: 宋体;">篇硕士论文；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">7</span><span
							style="font-family: 宋体;">）出版丹霞地貌学词典、基础研究和应用研究专著</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">部，学术论文</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">篇；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">8</span><span
							style="font-family: 宋体;">）举办</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">次丹霞地貌国内会议和</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">次国际会议，出版会议论文集</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">本；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">9</span><span
							style="font-family: 宋体;">）在相关的国际地质、地貌、地理学大会上，推出研究平台成果。</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">最终形成丹霞地貌全球研究的技术信息服务平台。</span>
					</p>
					<h4 id="a4-2-2">
						项目成果共享方案
					</h4>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span>
						</strong><strong><span style="font-family: 宋体;">）基础数据共享</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">建立丹霞地貌基础数据工作站，配置服务器和中英文网络展示平台，为国际国内进一步的丹霞地貌科学研究提供基础数据服务，为丹霞地貌区管理部门提供开发利用和科普教育提供基础资料和科学依据，</span><span
							style="font-family: 宋体;">为其他丹霞地貌区的基础调查提供参考样本</span><span
							style="font-family: 宋体;">。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span>
						</strong><strong><span style="font-family: 宋体;">）丹霞地貌研究成果共享</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">项目将建成丹霞地貌数据管理、</span><span
							style="font-family: 宋体;">访问和上载管理系统</span><span
							style="font-family: 宋体;">，开辟研究和成果交流窗口，并连接互联网，通过实时更新系统，即时形成新成果的网络更新；使国内外学者及时发布调查与研究成果，推动国际丹霞地貌学科发展。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">3</span>
						</strong><strong><span style="font-family: 宋体;">）技术文件共享</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">经过验证的丹霞地貌基础调查规范和技术标准将可作为未来基础研究的规范化文件，应用于其他丹霞地貌区的基础调研，</span><span
							style="font-family: 宋体;">并可作为其他地貌类型的技术文件编制参考</span><span
							style="font-family: 宋体;">；同时，项目将完成丹霞地貌词典、分类体系和指标体系，成为今后丹霞地貌研究的工具文件。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">4</span>
						</strong><strong><span style="font-family: 宋体;">）丹霞地貌景观信息共享</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">项目将形成完善的丹霞地貌科教资料和景观资料体系，并通过服务器连接互联网，进而与国际国内最重要的门户网站链接，</span><span
							style="font-family: 宋体;">成为科教宣传的窗口</span><span
							style="font-family: 宋体;">，也成为丹霞地貌景观宣传的窗口，对提高中国丹霞地貌的国际知名度和旅游影响力旅游发挥巨大的作用。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">5</span>
						</strong><strong><span style="font-family: 宋体;">）成果的全球推介</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">项目进行期间和完成后，</span><span
							style="font-family: 宋体;">先后组织国内和国际会议</span><span
							style="font-family: 宋体;">，既为宣传，也吸收更好的意见和建议；项目完成后，分别在国际地质学大会、国际地貌学大会和国际地理学大会上，推出研究平台。</span>
					</p>
					<h3 id="a4-3">总体考核指标、年度计划及年度考核指标
					</h3>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">1</span>
						</strong><strong><span style="font-family: 宋体;">）调查点和类型考核指标</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">全国所有世界级、国家级和省级命名的丹霞地貌区（具有红层和丹霞背景的世界自然遗产、文化遗产和混合遗产、人与生物圈保护区、世界地质公园；具有红层和丹霞背景的国家级和省级风景名胜区、自然保护区、地质公园、森林公园、湿地公园、水利风景区、以丹霞为基础的文物保护区和</span><span
							style="font-family: Times New Roman;">AAA</span><span
							style="font-family: 宋体;">级以上旅游景区等）约</span><span
							style="font-family: Times New Roman;">200</span><span
							style="font-family: 宋体;">处。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">没有保护性命名，</span><span
							style="font-family: 宋体;">但发育典型或特色突出的丹霞地貌区约</span><span
							style="font-family: Times New Roman;">100</span><span
							style="font-family: 宋体;">处。最终调查区不少于</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">2</span>
						</strong><strong><span style="font-family: 宋体;">）数据采集考核指标</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">完成</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">处以上典型丹霞地貌区的基础数据调查；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">获得地图、</span><span
							style="font-family: 宋体;">图片和照片类数据</span><span
							style="font-family: Times New Roman;">14700</span><span
							style="font-family: 宋体;">幅（</span><span
							style="font-family: Times New Roman;">900</span><span
							style="font-family: 宋体;">幅地图、</span><span
							style="font-family: Times New Roman;">600</span><span
							style="font-family: 宋体;">幅剖面图和</span><span
							style="font-family: Times New Roman;">13200</span><span
							style="font-family: 宋体;">幅照片图片</span><span
							style="font-family: 宋体;">）；</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">获得调查区</span><span
							style="font-family: Times New Roman;">39600</span><span
							style="font-family: 宋体;">组丹霞地貌及地理环境数字性和描述性基础数据</span><span
							style="font-family: 宋体;">：（综合识别要素数据：</span><span
							style="font-family: Times New Roman;">300</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">12=3600</span><span
							style="font-family: 宋体;">；丹霞地貌基础数据：</span><span
							style="font-family: Times New Roman;">100</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=30000</span><span
							style="font-family: 宋体;">；自然与文化环境数据：</span><span
							style="font-family: Times New Roman;">20</span><span
							style="font-family: 宋体;">×</span><span
							style="font-family: Times New Roman;">300=6000</span><span
							style="font-family: 宋体;">）；单要素数据</span><span
							style="font-family: Times New Roman;">118800</span><span
							style="font-family: 宋体;">万个以上。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">3</span>
						</strong><strong><span style="font-family: 宋体;">）数据处理考核指标</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">建立海量丹霞地貌基础数据库，完成调查技术标准设计和分类设计，制定各要素分类计算机编码系统；完成上述丹霞地貌的图片、数据等基础数据的计算机录入和分类编码集成，该系统存储容量达到</span><span
							style="font-family: Times New Roman;">500TB</span><span
							style="font-family: 宋体;">，并可扩展至</span><span
							style="font-family: Times New Roman;">PB</span><span
							style="font-family: 宋体;">级，整体可靠性达</span><span
							style="font-family: Times New Roman;">99.9%</span><span
							style="font-family: 宋体;">。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">建立智能化、可视化网络服务平台，进行基础数据空间可视化、地貌特征可视化和数据关系可视化处理，提供</span><span
							style="font-family: Times New Roman;">5</span><span
							style="font-family: 宋体;">种以上的智能数据分析方法，提供基于位置的信息化服务，建立数据管理、访问管理和实时更新系统，</span><span
							style="font-family: 宋体;">并发支持上万用户</span><span
							style="font-family: 宋体;">，采用虚拟化和服务器整合技术，节能达到</span><span
							style="font-family: Times New Roman;">30%</span><span
							style="font-family: 宋体;">以上。</span>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<strong><span style="font-family: 宋体;">（</span><span
							style="font-family: Times New Roman;">4</span>
						</strong><strong><span style="font-family: 宋体;">）扩展成果考核指标</span>
						</strong>
					</p>
					<p
						style="margin: 4px 0px 0px; line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">经过验证的丹霞地貌基础调查规范和技术标准将成为未来基础研究的规范化文件；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">完成中国丹霞地貌考察报告；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">制定丹霞地貌基础数据存储、传输、可视化网络服务和规范（至少支持中英文）；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">完成中国丹霞地貌基础研究和计算机处理工程的</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">篇博士生论文和</span><span
							style="font-family: Times New Roman;">7</span><span
							style="font-family: 宋体;">篇硕士论文；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">出版丹霞地貌学词典、基础研究和应用研究专著</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">部，学术论文</span><span
							style="font-family: Times New Roman;">10</span><span
							style="font-family: 宋体;">篇；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">举办</span><span
							style="font-family: Times New Roman;">2</span><span
							style="font-family: 宋体;">次丹霞地貌国内会议和</span><span
							style="font-family: Times New Roman;">1</span><span
							style="font-family: 宋体;">次国际会议，出版会议论文集</span><span
							style="font-family: Times New Roman;">3</span><span
							style="font-family: 宋体;">本；</span>
					</p>
					<p style="line-height: 21px; text-indent: 28px;">
						<span style="font-family: 宋体;">在国际地质学大会、国际地貌学大会和国际地理学大会上，推出研究平台和技术成果；</span>
					</p>
					<p>
						<span style="font-family: 宋体;"><span
							style="font-family: 宋体; font-size: 14px;">最终形成丹霞地貌全球研究的技术平台。</span>
						</span>
					</p>
			</div>
			<br /> <br />
			<div align="center">
				<input type="button" class="button03" value="返回"
					onclick="window.location.href='mainn.jsp'" />
			</div>
			<br /> <br />
			<div style="clear: both"></div>
			<%@include file="footer_frame.jsp"%>