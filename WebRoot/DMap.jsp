<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QRQPkP9kETjcPDnWenpNHTQK"></script>
<title>丹霞地貌信息系统</title>
<style type="text/css">
body,html,#allmap {
	width: 100%;
	height: 100%;
	overflow: hidden;
	margin: 0;
}

.container,.container * {
	margin: 0;
	padding: 0;
}

.container {
	width: 350px;
	height: 168px;
	overflow: hidden;
	position: relative;
}

.slider {
	position: absolute;
}

.slider li {
	list-style: none;
	display: inline;
}

.slider img {
	width: 350px;
	height: 220px;
	display: block;
}

.slider2 {
	width: 2000px;
}

.slider2 li {
	float: left;
}

.num {
	position: absolute;
	right: 5px;
	bottom: 5px;
}

.num li {
	float: left;
	color: #FF7300;
	text-align: center;
	line-height: 16px;
	width: 16px;
	height: 16px;
	font-size: 12px;
	cursor: pointer;
	overflow: hidden;
	margin: 3px 1px;
	border: 1px solid #FF7300;
	background-color: #fff;
}

.num li.on {
	color: #fff;
	line-height: 21px;
	width: 21px;
	height: 21px;
	font-size: 16px;
	margin: 0 1px;
	border: 0;
	background-color: #FF7300;
	font-weight: bold;
}
</style>
</head>
<body>
<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">

// 百度地图API功能

var mp = new BMap.Map("allmap");
mp.centerAndZoom(new BMap.Point(106,33), 5);
mp.addControl(new BMap.NavigationControl());               // 添加平移缩放控件
mp.addControl(new BMap.ScaleControl());                    // 添加比例尺控件
mp.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件
mp.enableScrollWheelZoom();                            //启用滚轮放大缩小
mp.addControl(new BMap.MapTypeControl());          //添加地图类型控件
mp.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的

// 复杂的自定义覆盖物
    function ComplexCustomOverlay(point, text, mouseoverText){
      this._point = point;
      this._text = text;
      this._overText = mouseoverText;
    }
    ComplexCustomOverlay.prototype = new BMap.Overlay();
    ComplexCustomOverlay.prototype.initialize = function(map){
      this._map = map;
      var div = this._div = document.createElement("div");
      div.style.position = "absolute";
      div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat);
      div.style.backgroundColor = "#EE5D5B";
      div.style.border = "1px solid #BC3B3A";
      div.style.color = "white";
      div.style.height = "18px";
      div.style.padding = "2px";
      div.style.lineHeight = "18px";
      div.style.whiteSpace = "nowrap";
      div.style.MozUserSelect = "none";
      div.style.fontSize = "12px"
      var span = this._span = document.createElement("span");
      div.appendChild(span);
      span.appendChild(document.createTextNode(this._text));      
      var that = this;

      var arrow = this._arrow = document.createElement("div");
      arrow.style.background = "url(http://map.baidu.com/fwmap/upload/r/map/fwmap/static/house/images/label.png) no-repeat";
      arrow.style.position = "absolute";
      arrow.style.width = "11px";
      arrow.style.height = "10px";
      arrow.style.top = "22px";
      arrow.style.left = "10px";
      arrow.style.overflow = "hidden";
      div.appendChild(arrow);
     
      div.onmouseover = function(){
        this.style.backgroundColor = "#6BADCA";
        this.style.borderColor = "#0000ff";
        this.getElementsByTagName("span")[0].innerHTML = that._overText;
        arrow.style.backgroundPosition = "0px -20px";
      }

      div.onmouseout = function(){
        this.style.backgroundColor = "#EE5D5B";
        this.style.borderColor = "#BC3B3A";
        this.getElementsByTagName("span")[0].innerHTML = that._text;
        arrow.style.backgroundPosition = "0px 0px";
      }

      mp.getPanes().labelPane.appendChild(div);
      
      return div;
    }
    ComplexCustomOverlay.prototype.draw = function(){
      var map = this._map;
      var pixel = map.pointToOverlayPixel(this._point);
      this._div.style.left = pixel.x - parseInt(this._arrow.style.left) + "px";
      this._div.style.top  = pixel.y - 30 + "px";
    }

    var marker;
    <% for (int i = 0; i < ((ArrayList) session.getAttribute("sList")).size(); i++) { %> 
    	marker = new BMap.Marker(new BMap.Point(<%=((ArrayList) session.getAttribute("longtitudeList")).get(i) %>, <%=((ArrayList) session.getAttribute("latitudeList")).get(i) %>));
		marker.addEventListener("click", function () {
			this.openInfoWindow(new BMap.InfoWindow("<%=((ArrayList) session.getAttribute("sList")).get(i) %>"));
	
			//图片加载完毕调用滑动效果
			function Each(list, fun) {
				for (var i = 0, len = list.length; i < len; i++) {
					fun(list[i], i);
				}
			};
			var objs = $("idNum2").getElementsByTagName("li");
			var tv = new TransformView("idTransformView2", "idSlider2", 350, objs.length, { //350对应img的width
				onStart: function () {
					Each(objs, function (o, i) {
						o.className = tv.Index == i ? "on" : "";
					})
				},//按钮样式
				Up: false
			});
			tv.Start();
			Each(objs, function (o, i) {
				o.onmouseover = function () {
					o.className = "on";
					tv.Auto = false;
					tv.Index = i;
					tv.Start();
				}
				o.onmouseout = function () {
					o.className = "";
					tv.Auto = true;
					tv.Start();
				}
			})
		});
		mp.addOverlay(marker);
	<% } %>

	//图片滑动效果
	var $ = function (id) {
		return "string" == typeof id ? document.getElementById(id) : id;
	};
	var Class = {
		create: function () {
			return function () {
				this.initialize.apply(this, arguments);
			}
		}
	}
	Object.extend = function (destination, source) {
		for (var property in source) {
			destination[property] = source[property];
		}
		return destination;
	}
	var TransformView = Class.create();
	TransformView.prototype = {
		//容器对象,滑动对象,切换参数,切换数量
		initialize: function (container, slider, parameter, count, options) {
			if (parameter <= 0 || count <= 0) return;
			var oContainer = $(container), oSlider = $(slider), oThis = this;

			this.Index = 0;//当前索引

			this._timer = null;//定时器
			this._slider = oSlider;//滑动对象
			this._parameter = parameter;//切换参数
			this._count = count || 0;//切换数量
			this._target = 0;//目标参数

			this.SetOptions(options);

			this.Up = !!this.options.Up;
			this.Step = Math.abs(this.options.Step);
			this.Time = Math.abs(this.options.Time);
			this.Auto = !!this.options.Auto;
			this.Pause = Math.abs(this.options.Pause);
			this.onStart = this.options.onStart;
			this.onFinish = this.options.onFinish;

			oContainer.style.overflow = "hidden";
			oContainer.style.position = "relative";

			oSlider.style.position = "absolute";
			oSlider.style.top = oSlider.style.left = 0;
		},
		//设置默认属性
		SetOptions: function (options) {
			this.options = {//默认值
				Up: true,//是否向上(否则向左)
				Step: 5,//滑动变化率
				Time: 10,//滑动延时
				Auto: true,//是否自动转换
				Pause: 2000,//停顿时间(Auto为true时有效)
				onStart: function () {
				},//开始转换时执行
				onFinish: function () {
				}//完成转换时执行
			};
			Object.extend(this.options, options || {});
		},
		//开始切换设置
		Start: function () {
			if (this.Index < 0) {
				this.Index = this._count - 1;
			} else if (this.Index >= this._count) {
				this.Index = 0;
			}

			this._target = -1 * this._parameter * this.Index;
			this.onStart();
			this.Move();
		},
		//移动
		Move: function () {
			clearTimeout(this._timer);
			var oThis = this, style = this.Up ? "top" : "left",
					iNow = parseInt(this._slider.style[style]) || 0,
					iStep = this.GetStep(this._target, iNow);

			if (iStep != 0) {
				this._slider.style[style] = (iNow + iStep) + "px";
				this._timer = setTimeout(function () {
					oThis.Move();
				}, this.Time);
			} else {
				this._slider.style[style] = this._target + "px";
				this.onFinish();
				if (this.Auto) {
					this._timer = setTimeout(function () {
						oThis.Index++;
						oThis.Start();
					}, this.Pause);
				}
			}
		},
		//获取步长
		GetStep: function (iTarget, iNow) {
			var iStep = (iTarget - iNow) / this.Step;
			if (iStep == 0) return 0;
			if (Math.abs(iStep) < 1) return (iStep > 0 ? 1 : -1);
			return iStep;
		},
		//停止
		Stop: function (iTarget, iNow) {
			clearTimeout(this._timer);
			this._slider.style[this.Up ? "top" : "left"] = this._target + "px";
		}
	};
    
    //var txt = "云南丽江老君山", mouseoverTxt = txt + " "  + "1324平方公里" ;
    //var name ="<%=session.getAttribute("nList")%>"; 
    //var myCompOverlay = new ComplexCustomOverlay(new BMap.Point(99.69944,26.658613), "aaa" ,mouseoverTxt);

    //mp.addOverlay(myCompOverlay);

</script>