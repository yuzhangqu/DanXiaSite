(function(){
UEDITOR_CONFIG = window.UEDITOR_CONFIG || {};

var baidu = window.baidu || {};

window.baidu = baidu;

window.UE = baidu.editor =  {};

UE.plugins = {};

UE.commands = {};

UE.instants = {};

UE.I18N = {};

UE.version = "1.2.6.1";

var dom = UE.dom = {};
/**
 * @file
 * @name UE.browser
 * @short Browser
 * @desc UEditor涓噰鐢ㄧ殑娴忚鍣ㄥ垽鏂ā鍧�
 */
var browser = UE.browser = function(){
    var agent = navigator.userAgent.toLowerCase(),
        opera = window.opera,
        browser = {
        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负IE
         * @name ie
         * @grammar UE.browser.ie  => true|false
         */
        ie		: !!window.ActiveXObject,

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负Opera
         * @name opera
         * @grammar UE.browser.opera  => true|false
         */
        opera	: ( !!opera && opera.version ),

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负webkit鍐呮牳
         * @name webkit
         * @grammar UE.browser.webkit  => true|false
         */
        webkit	: ( agent.indexOf( ' applewebkit/' ) > -1 ),

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负mac绯荤粺涓嬬殑娴忚鍣�
         * @name mac
         * @grammar UE.browser.mac  => true|false
         */
        mac	: ( agent.indexOf( 'macintosh' ) > -1 ),

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚﹀浜庢�寮傛ā寮�
         * @name quirks
         * @grammar UE.browser.quirks  => true|false
         */
        quirks : ( document.compatMode == 'BackCompat' )
    };
    /**
     * 妫�祴娴忚鍣ㄦ槸鍚﹀涓篻ecko鍐呮牳
     * @name gecko
     * @grammar UE.browser.gecko  => true|false
     */
    browser.gecko =( navigator.product == 'Gecko' && !browser.webkit && !browser.opera );

    var version = 0;

    // Internet Explorer 6.0+
    if ( browser.ie ){
        version = parseFloat( agent.match( /msie (\d+)/ )[1] );
        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负 IE9 妯″紡
         * @name ie9Compat
         * @grammar UE.browser.ie9Compat  => true|false
         */
        browser.ie9Compat = document.documentMode == 9;
        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负 IE8 娴忚鍣�
         * @name ie8
         * @grammar     UE.browser.ie8  => true|false
         */
        browser.ie8 = !!document.documentMode;

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚︿负 IE8 妯″紡
         * @name ie8Compat
         * @grammar     UE.browser.ie8Compat  => true|false
         */
        browser.ie8Compat = document.documentMode == 8;

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚﹁繍琛屽湪 鍏煎IE7妯″紡
         * @name ie7Compat
         * @grammar     UE.browser.ie7Compat  => true|false
         */
        browser.ie7Compat = ( ( version == 7 && !document.documentMode )
                || document.documentMode == 7 );

        /**
         * 妫�祴娴忚鍣ㄦ槸鍚E6妯″紡鎴栨�寮傛ā寮�
         * @name ie6Compat
         * @grammar     UE.browser.ie6Compat  => true|false
         */
        browser.ie6Compat = ( version < 7 || browser.quirks );

    }

    // Gecko.
    if ( browser.gecko ){
        var geckoRelease = agent.match( /rv:([\d\.]+)/ );
        if ( geckoRelease )
        {
            geckoRelease = geckoRelease[1].split( '.' );
            version = geckoRelease[0] * 10000 + ( geckoRelease[1] || 0 ) * 100 + ( geckoRelease[2] || 0 ) * 1;
        }
    }
    /**
     * 妫�祴娴忚鍣ㄦ槸鍚︿负chrome
     * @name chrome
     * @grammar     UE.browser.chrome  => true|false
     */
    if (/chrome\/(\d+\.\d)/i.test(agent)) {
        browser.chrome = + RegExp['\x241'];
    }
    /**
     * 妫�祴娴忚鍣ㄦ槸鍚︿负safari
     * @name safari
     * @grammar     UE.browser.safari  => true|false
     */
    if(/(\d+\.\d)?(?:\.\d)?\s+safari\/?(\d+\.\d+)?/i.test(agent) && !/chrome/i.test(agent)){
    	browser.safari = + (RegExp['\x241'] || RegExp['\x242']);
    }


    // Opera 9.50+
    if ( browser.opera )
        version = parseFloat( opera.version() );

    // WebKit 522+ (Safari 3+)
    if ( browser.webkit )
        version = parseFloat( agent.match( / applewebkit\/(\d+)/ )[1] );

    /**
     * 娴忚鍣ㄧ増鏈垽鏂�
     * IE绯诲垪杩斿洖鍊间负5,6,7,8,9,10绛�
     * gecko绯诲垪浼氳繑鍥�0900锛�58900绛�
     * webkit绯诲垪浼氳繑鍥炲叾build鍙�(濡�522绛�.
     * @name version
     * @grammar     UE.browser.version  => number
     * @example
     * if ( UE.browser.ie && UE.browser.version == 6 ){
     *     alert( "Ouch!灞呯劧鏄竾鎭剁殑IE6!" );
     * }
     */
    browser.version = version;

    /**
     * 鏄惁鏄吋瀹规ā寮忕殑娴忚鍣�
     * @name isCompatible
     * @grammar  UE.browser.isCompatible  => true|false
     * @example
     * if ( UE.browser.isCompatible ){
     *     alert( "浣犵殑娴忚鍣ㄧ浉褰撲笉閿欏摝锛� );
     * }
     */
    browser.isCompatible =
        !browser.mobile && (
        ( browser.ie && version >= 6 ) ||
        ( browser.gecko && version >= 10801 ) ||
        ( browser.opera && version >= 9.5 ) ||
        ( browser.air && version >= 1 ) ||
        ( browser.webkit && version >= 522 ) ||
        false );
    return browser;
}();
//蹇嵎鏂瑰紡
var ie = browser.ie,
    webkit = browser.webkit,
    gecko = browser.gecko,
    opera = browser.opera;
/**
 * @file
 * @name UE.Utils
 * @short Utils
 * @desc UEditor灏佽浣跨敤鐨勯潤鎬佸伐鍏峰嚱鏁�
 * @import editor.js
 */
var utils = UE.utils = {
    /**
     * 閬嶅巻鏁扮粍锛屽璞★紝nodeList
     * @name each
     * @grammar UE.utils.each(obj,iterator,[context])
     * @since 1.2.4+
     * @desc
     * * obj 瑕侀亶鍘嗙殑瀵硅薄
     * * iterator 閬嶅巻鐨勬柟娉�鏂规硶鐨勭涓�釜鏄亶鍘嗙殑鍊硷紝绗簩涓槸绱㈠紩锛岀涓変釜鏄痮bj
     * * context  iterator鐨勪笂涓嬫枃
     * @example
     * UE.utils.each([1,2],function(v,i){
     *     console.log(v)//鍊�
     *     console.log(i)//绱㈠紩
     * })
     * UE.utils.each(document.getElementsByTagName('*'),function(n){
     *     console.log(n.tagName)
     * })
     */
    each : function(obj, iterator, context) {
        if (obj == null) return;
        if (obj.length === +obj.length) {
            for (var i = 0, l = obj.length; i < l; i++) {
                if(iterator.call(context, obj[i], i, obj) === false)
                    return false;
            }
        } else {
            for (var key in obj) {
                if (obj.hasOwnProperty(key)) {
                    if(iterator.call(context, obj[key], key, obj) === false)
                        return false;
                }
            }
        }
    },

    makeInstance:function (obj) {
        var noop = new Function();
        noop.prototype = obj;
        obj = new noop;
        noop.prototype = null;
        return obj;
    },
    /**
     * 灏唖ource瀵硅薄涓殑灞炴�鎵╁睍鍒皌arget瀵硅薄涓�
     * @name extend
     * @grammar UE.utils.extend(target,source)  => Object  //瑕嗙洊鎵╁睍
     * @grammar UE.utils.extend(target,source,true)  ==> Object  //淇濈暀鎵╁睍
     */
    extend:function (t, s, b) {
        if (s) {
            for (var k in s) {
                if (!b || !t.hasOwnProperty(k)) {
                    t[k] = s[k];
                }
            }
        }
        return t;
    },
    extend2:function (t) {
        var a = arguments;
        for (var i = 1; i < a.length; i++) {
            var x = a[i];
            for (var k in x) {
                if (!t.hasOwnProperty(k)) {
                    t[k] = x[k];
                }
            }
        }
        return t;
    },
    /**
     * 妯℃嫙缁ф壙鏈哄埗锛宻ubClass缁ф壙superClass
     * @name inherits
     * @grammar UE.utils.inherits(subClass,superClass) => subClass
     * @example
     * function SuperClass(){
     *     this.name = "灏忔潕";
     * }
     * SuperClass.prototype = {
     *     hello:function(str){
     *         console.log(this.name + str);
     *     }
     * }
     * function SubClass(){
     *     this.name = "灏忓紶";
     * }
     * UE.utils.inherits(SubClass,SuperClass);
     * var sub = new SubClass();
     * sub.hello("鏃╀笂濂�"); ==> "灏忓紶鏃╀笂濂斤紒"
     */
    inherits:function (subClass, superClass) {
        var oldP = subClass.prototype,
            newP = utils.makeInstance(superClass.prototype);
        utils.extend(newP, oldP, true);
        subClass.prototype = newP;
        return (newP.constructor = subClass);
    },

    /**
     * 鐢ㄦ寚瀹氱殑context浣滀负fn涓婁笅鏂囷紝涔熷氨鏄痶his
     * @name bind
     * @grammar UE.utils.bind(fn,context)  =>  fn
     */
    bind:function (fn, context) {
        return function () {
            return fn.apply(context, arguments);
        };
    },

    /**
     * 鍒涘缓寤惰繜delay鎵ц鐨勫嚱鏁癴n
     * @name defer
     * @grammar UE.utils.defer(fn,delay)  =>fn   //寤惰繜delay姣鎵цfn锛岃繑鍥瀎n
     * @grammar UE.utils.defer(fn,delay,exclusion)  =>fn   //寤惰繜delay姣鎵цfn锛岃嫢exclusion涓虹湡锛屽垯浜掓枼鎵цfn
     * @example
     * function test(){
     *     console.log("寤惰繜杈撳嚭锛�);
     * }
     * //闈炰簰鏂ュ欢杩熸墽琛�
     * var testDefer = UE.utils.defer(test,1000);
     * testDefer();   =>  "寤惰繜杈撳嚭锛�;
     * testDefer();   =>  "寤惰繜杈撳嚭锛�;
     * //浜掓枼寤惰繜鎵ц
     * var testDefer1 = UE.utils.defer(test,1000,true);
     * testDefer1();   =>  //鏈涓嶆墽琛�
     * testDefer1();   =>  "寤惰繜杈撳嚭锛�;
     */
    defer:function (fn, delay, exclusion) {
        var timerID;
        return function () {
            if (exclusion) {
                clearTimeout(timerID);
            }
            timerID = setTimeout(fn, delay);
        };
    },

    /**
     * 鏌ユ壘鍏冪礌item鍦ㄦ暟缁刟rray涓殑绱㈠紩, 鑻ユ壘涓嶅埌杩斿洖-1
     * @name indexOf
     * @grammar UE.utils.indexOf(array,item)  => index|-1  //榛樿浠庢暟缁勫紑澶撮儴寮�鎼滅储
     * @grammar UE.utils.indexOf(array,item,start)  => index|-1  //start鎸囧畾寮�鏌ユ壘鐨勪綅缃�
     */
    indexOf:function (array, item, start) {
        var index = -1;
        start = this.isNumber(start) ? start : 0;
        this.each(array, function (v, i) {
            if (i >= start && v === item) {
                index = i;
                return false;
            }
        });
        return index;
    },

    /**
     * 绉婚櫎鏁扮粍array涓殑鍏冪礌item
     * @name removeItem
     * @grammar UE.utils.removeItem(array,item)
     */
    removeItem:function (array, item) {
        for (var i = 0, l = array.length; i < l; i++) {
            if (array[i] === item) {
                array.splice(i, 1);
                i--;
            }
        }
    },

    /**
     * 鍒犻櫎瀛楃涓瞫tr鐨勯灏剧┖鏍�
     * @name trim
     * @grammar UE.utils.trim(str) => String
     */
    trim:function (str) {
        return str.replace(/(^[ \t\n\r]+)|([ \t\n\r]+$)/g, '');
    },

    /**
     * 灏嗗瓧绗︿覆list(浠�,'鍒嗛殧)鎴栬�鏁扮粍list杞垚鍝堝笇瀵硅薄
     * @name listToMap
     * @grammar UE.utils.listToMap(list)  => Object  //Object褰㈠{test:1,br:1,textarea:1}
     */
    listToMap:function (list) {
        if (!list)return {};
        list = utils.isArray(list) ? list : list.split(',');
        for (var i = 0, ci, obj = {}; ci = list[i++];) {
            obj[ci.toUpperCase()] = obj[ci] = 1;
        }
        return obj;
    },

    /**
     * 灏唖tr涓殑html绗﹀彿杞箟,榛樿灏嗚浆涔�'&<">''鍥涗釜瀛楃锛屽彲鑷畾涔塺eg鏉ョ‘瀹氶渶瑕佽浆涔夌殑瀛楃
     * @name unhtml
     * @grammar UE.utils.unhtml(str);  => String
     * @grammar UE.utils.unhtml(str,reg)  => String
     * @example
     * var html = '<body>You say:"浣犲ソ锛丅aidu & UEditor!"</body>';
     * UE.utils.unhtml(html);   ==>  &lt;body&gt;You say:&quot;浣犲ソ锛丅aidu &amp; UEditor!&quot;&lt;/body&gt;
     * UE.utils.unhtml(html,/[<>]/g)  ==>  &lt;body&gt;You say:"浣犲ソ锛丅aidu & UEditor!"&lt;/body&gt;
     */
    unhtml:function (str, reg) {
        return str ? str.replace(reg || /[&<">'](?:(amp|lt|quot|gt|#39|nbsp);)?/g, function (a, b) {
            if (b) {
                return a;
            } else {
                return {
                    '<':'&lt;',
                    '&':'&amp;',
                    '"':'&quot;',
                    '>':'&gt;',
                    "'":'&#39;'
                }[a]
            }

        }) : '';
    },
    /**
     * 灏唖tr涓殑杞箟瀛楃杩樺師鎴恏tml瀛楃
     * @name html
     * @grammar UE.utils.html(str)  => String   //璇︾粏鍙傝<code><a href = '#unhtml'>unhtml</a></code>
     */
    html:function (str) {
        return str ? str.replace(/&((g|l|quo)t|amp|#39);/g, function (m) {
            return {
                '&lt;':'<',
                '&amp;':'&',
                '&quot;':'"',
                '&gt;':'>',
                '&#39;':"'"
            }[m]
        }) : '';
    },
    /**
     * 灏哻ss鏍峰紡杞崲涓洪┘宄扮殑褰㈠紡銆傚font-size => fontSize
     * @name cssStyleToDomStyle
     * @grammar UE.utils.cssStyleToDomStyle(cssName)  => String
     */
    cssStyleToDomStyle:function () {
        var test = document.createElement('div').style,
            cache = {
                'float':test.cssFloat != undefined ? 'cssFloat' : test.styleFloat != undefined ? 'styleFloat' : 'float'
            };

        return function (cssName) {
            return cache[cssName] || (cache[cssName] = cssName.toLowerCase().replace(/-./g, function (match) {
                return match.charAt(1).toUpperCase();
            }));
        };
    }(),
    /**
     * 鍔ㄦ�鍔犺浇鏂囦欢鍒癲oc涓紝骞朵緷鎹畂bj鏉ヨ缃睘鎬э紝鍔犺浇鎴愬姛鍚庢墽琛屽洖璋冨嚱鏁癴n
     * @name loadFile
     * @grammar UE.utils.loadFile(doc,obj)
     * @grammar UE.utils.loadFile(doc,obj,fn)
     * @example
     * //鎸囧畾鍔犺浇鍒板綋鍓峝ocument涓竴涓猻cript鏂囦欢锛屽姞杞芥垚鍔熷悗鎵цfunction
     * utils.loadFile( document, {
     *     src:"test.js",
     *     tag:"script",
     *     type:"text/javascript",
     *     defer:"defer"
     * }, function () {
     *     console.log('鍔犺浇鎴愬姛锛�)
     * });
     */
    loadFile:function () {
        var tmpList = [];

        function getItem(doc, obj) {
            try {
                for (var i = 0, ci; ci = tmpList[i++];) {
                    if (ci.doc === doc && ci.url == (obj.src || obj.href)) {
                        return ci;
                    }
                }
            } catch (e) {
                return null;
            }

        }

        return function (doc, obj, fn) {
            var item = getItem(doc, obj);
            if (item) {
                if (item.ready) {
                    fn && fn();
                } else {
                    item.funs.push(fn)
                }
                return;
            }
            tmpList.push({
                doc:doc,
                url:obj.src || obj.href,
                funs:[fn]
            });
            if (!doc.body) {
                var html = [];
                for (var p in obj) {
                    if (p == 'tag')continue;
                    html.push(p + '="' + obj[p] + '"')
                }
                doc.write('<' + obj.tag + ' ' + html.join(' ') + ' ></' + obj.tag + '>');
                return;
            }
            if (obj.id && doc.getElementById(obj.id)) {
                return;
            }
            var element = doc.createElement(obj.tag);
            delete obj.tag;
            for (var p in obj) {
                element.setAttribute(p, obj[p]);
            }
            element.onload = element.onreadystatechange = function () {
                if (!this.readyState || /loaded|complete/.test(this.readyState)) {
                    item = getItem(doc, obj);
                    if (item.funs.length > 0) {
                        item.ready = 1;
                        for (var fi; fi = item.funs.pop();) {
                            fi();
                        }
                    }
                    element.onload = element.onreadystatechange = null;
                }
            };
            element.onerror = function () {
                throw Error('The load ' + (obj.href || obj.src) + ' fails,check the url settings of file ueditor.config.js ')
            };
            doc.getElementsByTagName("head")[0].appendChild(element);
        }
    }(),
    /**
     * 鍒ゆ柇obj瀵硅薄鏄惁涓虹┖
     * @name isEmptyObject
     * @grammar UE.utils.isEmptyObject(obj)  => true|false
     * @example
     * UE.utils.isEmptyObject({}) ==>true
     * UE.utils.isEmptyObject([]) ==>true
     * UE.utils.isEmptyObject("") ==>true
     */
    isEmptyObject:function (obj) {
        if (obj == null) return true;
        if (this.isArray(obj) || this.isString(obj)) return obj.length === 0;
        for (var key in obj) if (obj.hasOwnProperty(key)) return false;
        return true;
    },

    /**
     * 缁熶竴灏嗛鑹插�浣跨敤16杩涘埗褰㈠紡琛ㄧず
     * @name fixColor
     * @grammar UE.utils.fixColor(name,value) => value
     * @example
     * rgb(255,255,255)  => "#ffffff"
     */
    fixColor:function (name, value) {
        if (/color/i.test(name) && /rgba?/.test(value)) {
            var array = value.split(",");
            if (array.length > 3)
                return "";
            value = "#";
            for (var i = 0, color; color = array[i++];) {
                color = parseInt(color.replace(/[^\d]/gi, ''), 10).toString(16);
                value += color.length == 1 ? "0" + color : color;
            }
            value = value.toUpperCase();
        }
        return  value;
    },
    /**
     * 鍙拡瀵筨order,padding,margin鍋氫簡澶勭悊锛屽洜涓烘�鑳介棶棰�
     * @public
     * @function
     * @param {String}    val style瀛楃涓�
     */
    optCss:function (val) {
        var padding, margin, border;
        val = val.replace(/(padding|margin|border)\-([^:]+):([^;]+);?/gi, function (str, key, name, val) {
            if (val.split(' ').length == 1) {
                switch (key) {
                    case 'padding':
                        !padding && (padding = {});
                        padding[name] = val;
                        return '';
                    case 'margin':
                        !margin && (margin = {});
                        margin[name] = val;
                        return '';
                    case 'border':
                        return val == 'initial' ? '' : str;
                }
            }
            return str;
        });

        function opt(obj, name) {
            if (!obj) {
                return '';
            }
            var t = obj.top , b = obj.bottom, l = obj.left, r = obj.right, val = '';
            if (!t || !l || !b || !r) {
                for (var p in obj) {
                    val += ';' + name + '-' + p + ':' + obj[p] + ';';
                }
            } else {
                val += ';' + name + ':' +
                    (t == b && b == l && l == r ? t :
                        t == b && l == r ? (t + ' ' + l) :
                            l == r ? (t + ' ' + l + ' ' + b) : (t + ' ' + r + ' ' + b + ' ' + l)) + ';'
            }
            return val;
        }

        val += opt(padding, 'padding') + opt(margin, 'margin');
        return val.replace(/^[ \n\r\t;]*|[ \n\r\t]*$/, '').replace(/;([ \n\r\t]+)|\1;/g, ';')
            .replace(/(&((l|g)t|quot|#39))?;{2,}/g, function (a, b) {
                return b ? b + ";;" : ';'
            });
    },
    /**
     * 娣卞害鍏嬮殕瀵硅薄锛屼粠source鍒皌arget
     * @name clone
     * @grammar UE.utils.clone(source) => anthorObj 鏂扮殑瀵硅薄鏄畬鏁寸殑source鐨勫壇鏈�
     * @grammar UE.utils.clone(source,target) => target鍖呭惈浜唖ource鐨勬墍鏈夊唴瀹癸紝閲嶅悕浼氳鐩�
     */
    clone:function (source, target) {
        var tmp;
        target = target || {};
        for (var i in source) {
            if (source.hasOwnProperty(i)) {
                tmp = source[i];
                if (typeof tmp == 'object') {
                    target[i] = utils.isArray(tmp) ? [] : {};
                    utils.clone(source[i], target[i])
                } else {
                    target[i] = tmp;
                }
            }
        }
        return target;
    },
    /**
     * 杞崲cm/pt鍒皃x
     * @name transUnitToPx
     * @grammar UE.utils.transUnitToPx('20pt') => '27px'
     * @grammar UE.utils.transUnitToPx('0pt') => '0'
     */
    transUnitToPx:function (val) {
        if (!/(pt|cm)/.test(val)) {
            return val
        }
        var unit;
        val.replace(/([\d.]+)(\w+)/, function (str, v, u) {
            val = v;
            unit = u;
        });
        switch (unit) {
            case 'cm':
                val = parseFloat(val) * 25;
                break;
            case 'pt':
                val = Math.round(parseFloat(val) * 96 / 72);
        }
        return val + (val ? 'px' : '');
    },
    /**
     * DomReady鏂规硶锛屽洖璋冨嚱鏁板皢鍦╠om鏍憆eady瀹屾垚鍚庢墽琛�
     * @name domReady
     * @grammar UE.utils.domReady(fn)  => fn  //杩斿洖涓�釜寤惰繜鎵ц鐨勬柟娉�
     */
    domReady:function () {

        var fnArr = [];

        function doReady(doc) {
            //纭繚onready鍙墽琛屼竴娆�
            doc.isReady = true;
            for (var ci; ci = fnArr.pop(); ci()) {
            }
        }

        return function (onready, win) {
            win = win || window;
            var doc = win.document;
            onready && fnArr.push(onready);
            if (doc.readyState === "complete") {
                doReady(doc);
            } else {
                doc.isReady && doReady(doc);
                if (browser.ie) {
                    (function () {
                        if (doc.isReady) return;
                        try {
                            doc.documentElement.doScroll("left");
                        } catch (error) {
                            setTimeout(arguments.callee, 0);
                            return;
                        }
                        doReady(doc);
                    })();
                    win.attachEvent('onload', function () {
                        doReady(doc)
                    });
                } else {
                    doc.addEventListener("DOMContentLoaded", function () {
                        doc.removeEventListener("DOMContentLoaded", arguments.callee, false);
                        doReady(doc);
                    }, false);
                    win.addEventListener('load', function () {
                        doReady(doc)
                    }, false);
                }
            }

        }
    }(),
    /**
     * 鍔ㄦ�娣诲姞css鏍峰紡
     * @name cssRule
     * @grammar UE.utils.cssRule('娣诲姞鐨勬牱寮忕殑鑺傜偣鍚嶇О',['鏍峰紡'锛�鏀惧埌鍝釜document涓�])
     * @grammar UE.utils.cssRule('body','body{background:#ccc}') => null  //缁檅ody娣诲姞鑳屾櫙棰滆壊
     * @grammar UE.utils.cssRule('body') =>鏍峰紡鐨勫瓧绗︿覆  //鍙栧緱key鍊间负body鐨勬牱寮忕殑鍐呭,濡傛灉娌℃湁鎵惧埌key鍊煎厛鍏崇殑鏍峰紡灏嗚繑鍥炵┖锛屼緥濡傚垰鎵嶉偅涓儗鏅鑹诧紝灏嗚繑鍥�body{background:#ccc}
     * @grammar UE.utils.cssRule('body','') =>null //娓呯┖缁欏畾鐨刱ey鍊肩殑鑳屾櫙棰滆壊
     */
    cssRule:browser.ie ? function (key, style, doc) {
        var indexList, index;
        doc = doc || document;
        if (doc.indexList) {
            indexList = doc.indexList;
        } else {
            indexList = doc.indexList = {};
        }
        var sheetStyle;
        if (!indexList[key]) {
            if (style === undefined) {
                return ''
            }
            sheetStyle = doc.createStyleSheet('', index = doc.styleSheets.length);
            indexList[key] = index;
        } else {
            sheetStyle = doc.styleSheets[indexList[key]];
        }
        if (style === undefined) {
            return sheetStyle.cssText
        }
        sheetStyle.cssText = style || ''
    } : function (key, style, doc) {
        doc = doc || document;
        var head = doc.getElementsByTagName('head')[0], node;
        if (!(node = doc.getElementById(key))) {
            if (style === undefined) {
                return ''
            }
            node = doc.createElement('style');
            node.id = key;
            head.appendChild(node)
        }
        if (style === undefined) {
            return node.innerHTML
        }
        if (style !== '') {
            node.innerHTML = style;
        } else {
            head.removeChild(node)
        }
    },
    sort:function(array,compareFn){
        compareFn = compareFn || function(item1, item2){ return item1.localeCompare(item2);};
        for(var i= 0,len = array.length; i<len; i++){
            for(var j = i,length = array.length; j<length; j++){
                if(compareFn(array[i], array[j]) > 0){
                    var t = array[i];
                    array[i] = array[j];
                    array[j] = t;
                }
            }
        }
        return array;
    }

};
/**
 * 鍒ゆ柇str鏄惁涓哄瓧绗︿覆
 * @name isString
 * @grammar UE.utils.isString(str) => true|false
 */
/**
 * 鍒ゆ柇array鏄惁涓烘暟缁�
 * @name isArray
 * @grammar UE.utils.isArray(obj) => true|false
 */
/**
 * 鍒ゆ柇obj瀵硅薄鏄惁涓烘柟娉�
 * @name isFunction
 * @grammar UE.utils.isFunction(obj)  => true|false
 */
/**
 * 鍒ゆ柇obj瀵硅薄鏄惁涓烘暟瀛�
 * @name isNumber
 * @grammar UE.utils.isNumber(obj)  => true|false
 */
utils.each(['String', 'Function', 'Array', 'Number', 'RegExp', 'Object'], function (v) {
    UE.utils['is' + v] = function (obj) {
        return Object.prototype.toString.apply(obj) == '[object ' + v + ']';
    }
});
/**
 * @file
 * @name UE.EventBase
 * @short EventBase
 * @import editor.js,core/utils.js
 * @desc UE閲囩敤鐨勪簨浠跺熀绫伙紝缁ф壙姝ょ被鐨勫搴旂被灏嗚幏鍙朼ddListener,removeListener,fireEvent鏂规硶銆�
 * 鍦║E涓紝Editor浠ュ強鎵�湁ui瀹炰緥閮界户鎵夸簡璇ョ被锛屾晠鍙互鍦ㄥ搴旂殑ui瀵硅薄浠ュ強editor瀵硅薄涓婁娇鐢ㄤ笂杩版柟娉曘�
 */
var EventBase = UE.EventBase = function () {};

EventBase.prototype = {
    /**
     * 娉ㄥ唽浜嬩欢鐩戝惉鍣�
     * @name addListener
     * @grammar editor.addListener(types,fn)  //types涓轰簨浠跺悕绉帮紝澶氫釜鍙敤绌烘牸鍒嗛殧
     * @example
     * editor.addListener('selectionchange',function(){
     *      console.log("閫夊尯宸茬粡鍙樺寲锛�);
     * })
     * editor.addListener('beforegetcontent aftergetcontent',function(type){
     *         if(type == 'beforegetcontent'){
     *             //do something
     *         }else{
     *             //do something
     *         }
     *         console.log(this.getContent) // this鏄敞鍐岀殑浜嬩欢鐨勭紪杈戝櫒瀹炰緥
     * })
     */
    addListener:function (types, listener) {
        types = utils.trim(types).split(' ');
        for (var i = 0, ti; ti = types[i++];) {
            getListener(this, ti, true).push(listener);
        }
    },
    /**
     * 绉婚櫎浜嬩欢鐩戝惉鍣�
     * @name removeListener
     * @grammar editor.removeListener(types,fn)  //types涓轰簨浠跺悕绉帮紝澶氫釜鍙敤绌烘牸鍒嗛殧
     * @example
     * //changeCallback涓烘柟娉曚綋
     * editor.removeListener("selectionchange",changeCallback);
     */
    removeListener:function (types, listener) {
        types = utils.trim(types).split(' ');
        for (var i = 0, ti; ti = types[i++];) {
            utils.removeItem(getListener(this, ti) || [], listener);
        }
    },
    /**
     * 瑙﹀彂浜嬩欢
     * @name fireEvent
     * @grammar editor.fireEvent(types)  //types涓轰簨浠跺悕绉帮紝澶氫釜鍙敤绌烘牸鍒嗛殧
     * @example
     * editor.fireEvent("selectionchange");
     */
    fireEvent:function () {
        var types = arguments[0];
        types = utils.trim(types).split(' ');
        for (var i = 0, ti; ti = types[i++];) {
            var listeners = getListener(this, ti),
                r, t, k;
            if (listeners) {
                k = listeners.length;
                while (k--) {
                    if(!listeners[k])continue;
                    t = listeners[k].apply(this, arguments);
                    if(t === true){
                        return t;
                    }
                    if (t !== undefined) {
                        r = t;
                    }
                }
            }
            if (t = this['on' + ti.toLowerCase()]) {
                r = t.apply(this, arguments);
            }
        }
        return r;
    }
};
/**
 * 鑾峰緱瀵硅薄鎵�嫢鏈夌洃鍚被鍨嬬殑鎵�湁鐩戝惉鍣�
 * @public
 * @function
 * @param {Object} obj  鏌ヨ鐩戝惉鍣ㄧ殑瀵硅薄
 * @param {String} type 浜嬩欢绫诲瀷
 * @param {Boolean} force  涓簍rue涓斿綋鍓嶆墍鏈塼ype绫诲瀷鐨勪睛鍚櫒涓嶅瓨鍦ㄦ椂锛屽垱寤轰竴涓┖鐩戝惉鍣ㄦ暟缁�
 * @returns {Array} 鐩戝惉鍣ㄦ暟缁�
 */
function getListener(obj, type, force) {
    var allListeners;
    type = type.toLowerCase();
    return ( ( allListeners = ( obj.__allListeners || force && ( obj.__allListeners = {} ) ) )
        && ( allListeners[type] || force && ( allListeners[type] = [] ) ) );
}


///import editor.js
///import core/dom/dom.js
///import core/utils.js
/**
 * dtd html璇箟鍖栫殑浣撶幇绫�
 * @constructor
 * @namespace dtd
 */
var dtd = dom.dtd = (function() {
    function _( s ) {
        for (var k in s) {
            s[k.toUpperCase()] = s[k];
        }
        return s;
    }
    var X = utils.extend2;
    var A = _({isindex:1,fieldset:1}),
        B = _({input:1,button:1,select:1,textarea:1,label:1}),
        C = X( _({a:1}), B ),
        D = X( {iframe:1}, C ),
        E = _({hr:1,ul:1,menu:1,div:1,blockquote:1,noscript:1,table:1,center:1,address:1,dir:1,pre:1,h5:1,dl:1,h4:1,noframes:1,h6:1,ol:1,h1:1,h3:1,h2:1}),
        F = _({ins:1,del:1,script:1,style:1}),
        G = X( _({b:1,acronym:1,bdo:1,'var':1,'#':1,abbr:1,code:1,br:1,i:1,cite:1,kbd:1,u:1,strike:1,s:1,tt:1,strong:1,q:1,samp:1,em:1,dfn:1,span:1}), F ),
        H = X( _({sub:1,img:1,embed:1,object:1,sup:1,basefont:1,map:1,applet:1,font:1,big:1,small:1}), G ),
        I = X( _({p:1}), H ),
        J = X( _({iframe:1}), H, B ),
        K = _({img:1,embed:1,noscript:1,br:1,kbd:1,center:1,button:1,basefont:1,h5:1,h4:1,samp:1,h6:1,ol:1,h1:1,h3:1,h2:1,form:1,font:1,'#':1,select:1,menu:1,ins:1,abbr:1,label:1,code:1,table:1,script:1,cite:1,input:1,iframe:1,strong:1,textarea:1,noframes:1,big:1,small:1,span:1,hr:1,sub:1,bdo:1,'var':1,div:1,object:1,sup:1,strike:1,dir:1,map:1,dl:1,applet:1,del:1,isindex:1,fieldset:1,ul:1,b:1,acronym:1,a:1,blockquote:1,i:1,u:1,s:1,tt:1,address:1,q:1,pre:1,p:1,em:1,dfn:1}),

        L = X( _({a:0}), J ),//a涓嶈兘琚垏寮�紝鎵�互鎶婁粬
        M = _({tr:1}),
        N = _({'#':1}),
        O = X( _({param:1}), K ),
        P = X( _({form:1}), A, D, E, I ),
        Q = _({li:1,ol:1,ul:1}),
        R = _({style:1,script:1}),
        S = _({base:1,link:1,meta:1,title:1}),
        T = X( S, R ),
        U = _({head:1,body:1}),
        V = _({html:1});

    var block = _({address:1,blockquote:1,center:1,dir:1,div:1,dl:1,fieldset:1,form:1,h1:1,h2:1,h3:1,h4:1,h5:1,h6:1,hr:1,isindex:1,menu:1,noframes:1,ol:1,p:1,pre:1,table:1,ul:1}),

        empty =  _({area:1,base:1,basefont:1,br:1,col:1,command:1,dialog:1,embed:1,hr:1,img:1,input:1,isindex:1,keygen:1,link:1,meta:1,param:1,source:1,track:1,wbr:1});

    return  _({

        // $ 琛ㄧず鑷畾鐨勫睘鎬�

        // body澶栫殑鍏冪礌鍒楄〃.
        $nonBodyContent: X( V, U, S ),

        //鍧楃粨鏋勫厓绱犲垪琛�
        $block : block,

        //鍐呰仈鍏冪礌鍒楄〃
        $inline : L,

        $inlineWithA : X(_({a:1}),L),

        $body : X( _({script:1,style:1}), block ),

        $cdata : _({script:1,style:1}),

        //鑷棴鍜屽厓绱�
        $empty : empty,

        //涓嶆槸鑷棴鍚堬紝浣嗕笉鑳借range閫変腑閲岃竟
        $nonChild : _({iframe:1,textarea:1}),
        //鍒楄〃鍏冪礌鍒楄〃
        $listItem : _({dd:1,dt:1,li:1}),

        //鍒楄〃鏍瑰厓绱犲垪琛�
        $list: _({ul:1,ol:1,dl:1}),

        //涓嶈兘璁や负鏄┖鐨勫厓绱�
        $isNotEmpty : _({table:1,ul:1,ol:1,dl:1,iframe:1,area:1,base:1,col:1,hr:1,img:1,embed:1,input:1,link:1,meta:1,param:1,h1:1,h2:1,h3:1,h4:1,h5:1,h6:1}),

        //濡傛灉娌℃湁瀛愯妭鐐瑰氨鍙互鍒犻櫎鐨勫厓绱犲垪琛紝鍍弒pan,a
        $removeEmpty : _({a:1,abbr:1,acronym:1,address:1,b:1,bdo:1,big:1,cite:1,code:1,del:1,dfn:1,em:1,font:1,i:1,ins:1,label:1,kbd:1,q:1,s:1,samp:1,small:1,span:1,strike:1,strong:1,sub:1,sup:1,tt:1,u:1,'var':1}),

        $removeEmptyBlock : _({'p':1,'div':1}),

        //鍦╰able鍏冪礌閲岀殑鍏冪礌鍒楄〃
        $tableContent : _({caption:1,col:1,colgroup:1,tbody:1,td:1,tfoot:1,th:1,thead:1,tr:1,table:1}),
        //涓嶈浆鎹㈢殑鏍囩
        $notTransContent : _({pre:1,script:1,style:1,textarea:1}),
        html: U,
        head: T,
        style: N,
        script: N,
        body: P,
        base: {},
        link: {},
        meta: {},
        title: N,
        col : {},
        tr : _({td:1,th:1}),
        img : {},
        embed: {},
        colgroup : _({thead:1,col:1,tbody:1,tr:1,tfoot:1}),
        noscript : P,
        td : P,
        br : {},
        th : P,
        center : P,
        kbd : L,
        button : X( I, E ),
        basefont : {},
        h5 : L,
        h4 : L,
        samp : L,
        h6 : L,
        ol : Q,
        h1 : L,
        h3 : L,
        option : N,
        h2 : L,
        form : X( A, D, E, I ),
        select : _({optgroup:1,option:1}),
        font : L,
        ins : L,
        menu : Q,
        abbr : L,
        label : L,
        table : _({thead:1,col:1,tbody:1,tr:1,colgroup:1,caption:1,tfoot:1}),
        code : L,
        tfoot : M,
        cite : L,
        li : P,
        input : {},
        iframe : P,
        strong : L,
        textarea : N,
        noframes : P,
        big : L,
        small : L,
        //trace:
        span :_({'#':1,br:1,b:1,strong:1,u:1,i:1,em:1,sub:1,sup:1,strike:1,span:1}),
        hr : L,
        dt : L,
        sub : L,
        optgroup : _({option:1}),
        param : {},
        bdo : L,
        'var' : L,
        div : P,
        object : O,
        sup : L,
        dd : P,
        strike : L,
        area : {},
        dir : Q,
        map : X( _({area:1,form:1,p:1}), A, F, E ),
        applet : O,
        dl : _({dt:1,dd:1}),
        del : L,
        isindex : {},
        fieldset : X( _({legend:1}), K ),
        thead : M,
        ul : Q,
        acronym : L,
        b : L,
        a : X( _({a:1}), J ),
        blockquote :X(_({td:1,tr:1,tbody:1,li:1}),P),
        caption : L,
        i : L,
        u : L,
        tbody : M,
        s : L,
        address : X( D, I ),
        tt : L,
        legend : L,
        q : L,
        pre : X( G, C ),
        p : X(_({'a':1}),L),
        em :L,
        dfn : L
    });
})();

/**
 * @file
 * @name UE.dom.domUtils
 * @short DomUtils
 * @import editor.js, core/utils.js,core/browser.js,core/dom/dtd.js
 * @desc UEditor灏佽鐨勫簳灞俤om鎿嶄綔搴�
 */
function getDomNode(node, start, ltr, startFromChild, fn, guard) {
    var tmpNode = startFromChild && node[start],
        parent;
    !tmpNode && (tmpNode = node[ltr]);
    while (!tmpNode && (parent = (parent || node).parentNode)) {
        if (parent.tagName == 'BODY' || guard && !guard(parent)) {
            return null;
        }
        tmpNode = parent[ltr];
    }
    if (tmpNode && fn && !fn(tmpNode)) {
        return  getDomNode(tmpNode, start, ltr, false, fn);
    }
    return tmpNode;
}
var attrFix = ie && browser.version < 9 ? {
        tabindex:"tabIndex",
        readonly:"readOnly",
        "for":"htmlFor",
        "class":"className",
        maxlength:"maxLength",
        cellspacing:"cellSpacing",
        cellpadding:"cellPadding",
        rowspan:"rowSpan",
        colspan:"colSpan",
        usemap:"useMap",
        frameborder:"frameBorder"
    } : {
        tabindex:"tabIndex",
        readonly:"readOnly"
    },
    styleBlock = utils.listToMap([
        '-webkit-box', '-moz-box', 'block' ,
        'list-item' , 'table' , 'table-row-group' ,
        'table-header-group', 'table-footer-group' ,
        'table-row' , 'table-column-group' , 'table-column' ,
        'table-cell' , 'table-caption'
    ]);
var domUtils = dom.domUtils = {
    //鑺傜偣甯搁噺
    NODE_ELEMENT:1,
    NODE_DOCUMENT:9,
    NODE_TEXT:3,
    NODE_COMMENT:8,
    NODE_DOCUMENT_FRAGMENT:11,

    //浣嶇疆鍏崇郴
    POSITION_IDENTICAL:0,
    POSITION_DISCONNECTED:1,
    POSITION_FOLLOWING:2,
    POSITION_PRECEDING:4,
    POSITION_IS_CONTAINED:8,
    POSITION_CONTAINS:16,
    //ie6浣跨敤鍏朵粬鐨勪細鏈変竴娈电┖鐧藉嚭鐜�
    fillChar:ie && browser.version == '6' ? '\ufeff' : '\u200B',
    //-------------------------Node閮ㄥ垎--------------------------------
    keys:{
        /*Backspace*/ 8:1, /*Delete*/ 46:1,
        /*Shift*/ 16:1, /*Ctrl*/ 17:1, /*Alt*/ 18:1,
        37:1, 38:1, 39:1, 40:1,
        13:1 /*enter*/
    },
    /**
     * 鑾峰彇鑺傜偣A鐩稿浜庤妭鐐笲鐨勪綅缃叧绯�
     * @name getPosition
     * @grammar UE.dom.domUtils.getPosition(nodeA,nodeB)  =>  Number
     * @example
     *  switch (returnValue) {
     *      case 0: //鐩哥瓑锛屽悓涓�妭鐐�
     *      case 1: //鏃犲叧锛岃妭鐐逛笉鐩歌繛
     *      case 2: //璺熼殢锛屽嵆鑺傜偣A澶撮儴浣嶄簬鑺傜偣B澶撮儴鐨勫悗闈�
     *      case 4: //鍓嶇疆锛屽嵆鑺傜偣A澶撮儴浣嶄簬鑺傜偣B澶撮儴鐨勫墠闈�
     *      case 8: //琚寘鍚紝鍗宠妭鐐笰琚妭鐐笲鍖呭惈
     *      case 10://缁勫悎绫诲瀷锛屽嵆鑺傜偣A婊¤冻璺熼殢鑺傜偣B涓旇鑺傜偣B鍖呭惈銆傚疄闄呬笂锛屽鏋滆鍖呭惈锛屽繀瀹氳窡闅忥紝鎵�互returnValue浜嬪疄涓婁笉浼氬瓨鍦�鐨勬儏鍐点�
     *      case 16://鍖呭惈锛屽嵆鑺傜偣A鍖呭惈鑺傜偣B
     *      case 20://缁勫悎绫诲瀷锛屽嵆鑺傜偣A婊¤冻鍓嶇疆鑺傜偣A涓斿寘鍚妭鐐笲銆傚悓鏍凤紝濡傛灉鍖呭惈锛屽繀瀹氬墠缃紝鎵�互returnValue浜嬪疄涓婁篃涓嶄細瀛樺湪16鐨勬儏鍐�
     *  }
     */
    getPosition:function (nodeA, nodeB) {
        // 濡傛灉涓や釜鑺傜偣鏄悓涓�釜鑺傜偣
        if (nodeA === nodeB) {
            // domUtils.POSITION_IDENTICAL
            return 0;
        }
        var node,
            parentsA = [nodeA],
            parentsB = [nodeB];
        node = nodeA;
        while (node = node.parentNode) {
            // 濡傛灉nodeB鏄痭odeA鐨勭鍏堣妭鐐�
            if (node === nodeB) {
                // domUtils.POSITION_IS_CONTAINED + domUtils.POSITION_FOLLOWING
                return 10;
            }
            parentsA.push(node);
        }
        node = nodeB;
        while (node = node.parentNode) {
            // 濡傛灉nodeA鏄痭odeB鐨勭鍏堣妭鐐�
            if (node === nodeA) {
                // domUtils.POSITION_CONTAINS + domUtils.POSITION_PRECEDING
                return 20;
            }
            parentsB.push(node);
        }
        parentsA.reverse();
        parentsB.reverse();
        if (parentsA[0] !== parentsB[0]) {
            // domUtils.POSITION_DISCONNECTED
            return 1;
        }
        var i = -1;
        while (i++, parentsA[i] === parentsB[i]) {
        }
        nodeA = parentsA[i];
        nodeB = parentsB[i];
        while (nodeA = nodeA.nextSibling) {
            if (nodeA === nodeB) {
                // domUtils.POSITION_PRECEDING
                return 4
            }
        }
        // domUtils.POSITION_FOLLOWING
        return  2;
    },

    /**
     * 杩斿洖鑺傜偣node鍦ㄧ埗鑺傜偣涓殑绱㈠紩浣嶇疆
     * @name getNodeIndex
     * @grammar UE.dom.domUtils.getNodeIndex(node)  => Number  //绱㈠紩鍊间粠0寮�
     */
    getNodeIndex:function (node, ignoreTextNode) {
        var preNode = node,
            i = 0;
        while (preNode = preNode.previousSibling) {
            if (ignoreTextNode && preNode.nodeType == 3) {
                if(preNode.nodeType != preNode.nextSibling.nodeType ){
                    i++;
                }
                continue;
            }
            i++;
        }
        return i;
    },

    /**
     * 妫�祴鑺傜偣node鏄惁鍦ㄨ妭鐐筪oc鐨勬爲涓婏紝瀹炶川涓婃槸妫�祴鏄惁琚玠oc鍖呭惈
     * @name inDoc
     * @grammar UE.dom.domUtils.inDoc(node,doc)   =>  true|false
     */
    inDoc:function (node, doc) {
        return domUtils.getPosition(node, doc) == 10;
    },
    /**
     * 鏌ユ壘node鑺傜偣鐨勭鍏堣妭鐐�
     * @name findParent
     * @grammar UE.dom.domUtils.findParent(node)  => Element  // 鐩存帴杩斿洖node鑺傜偣鐨勭埗鑺傜偣
     * @grammar UE.dom.domUtils.findParent(node,filterFn)  => Element  //filterFn涓鸿繃婊ゅ嚱鏁帮紝node浣滀负鍙傛暟锛岃繑鍥瀟rue鏃舵墠浼氬皢node浣滀负绗﹀悎瑕佹眰鐨勮妭鐐硅繑鍥�
     * @grammar UE.dom.domUtils.findParent(node,filterFn,includeSelf)  => Element  //includeSelf鎸囧畾鏄惁鍖呭惈鑷韩
     */
    findParent:function (node, filterFn, includeSelf) {
        if (node && !domUtils.isBody(node)) {
            node = includeSelf ? node : node.parentNode;
            while (node) {
                if (!filterFn || filterFn(node) || domUtils.isBody(node)) {
                    return filterFn && !filterFn(node) && domUtils.isBody(node) ? null : node;
                }
                node = node.parentNode;
            }
        }
        return null;
    },
    /**
     * 閫氳繃tagName鏌ユ壘node鑺傜偣鐨勭鍏堣妭鐐�
     * @name findParentByTagName
     * @grammar UE.dom.domUtils.findParentByTagName(node,tagNames)   =>  Element  //tagNames鏀寔鏁扮粍锛屽尯鍒嗗ぇ灏忓啓
     * @grammar UE.dom.domUtils.findParentByTagName(node,tagNames,includeSelf)   =>  Element  //includeSelf鎸囧畾鏄惁鍖呭惈鑷韩
     * @grammar UE.dom.domUtils.findParentByTagName(node,tagNames,includeSelf,excludeFn)   =>  Element  //excludeFn鎸囧畾渚嬪杩囨护鏉′欢锛岃繑鍥瀟rue鏃跺拷鐣ヨ鑺傜偣
     */
    findParentByTagName:function (node, tagNames, includeSelf, excludeFn) {
        tagNames = utils.listToMap(utils.isArray(tagNames) ? tagNames : [tagNames]);
        return domUtils.findParent(node, function (node) {
            return tagNames[node.tagName] && !(excludeFn && excludeFn(node));
        }, includeSelf);
    },
    /**
     * 鏌ユ壘鑺傜偣node鐨勭鍏堣妭鐐归泦鍚�
     * @name findParents
     * @grammar UE.dom.domUtils.findParents(node)  => Array  //杩斿洖涓�釜绁栧厛鑺傜偣鏁扮粍闆嗗悎锛屼笉鍖呭惈鑷韩
     * @grammar UE.dom.domUtils.findParents(node,includeSelf)  => Array  //杩斿洖涓�釜绁栧厛鑺傜偣鏁扮粍闆嗗悎锛宨ncludeSelf鎸囧畾鏄惁鍖呭惈鑷韩
     * @grammar UE.dom.domUtils.findParents(node,includeSelf,filterFn)  => Array  //杩斿洖涓�釜绁栧厛鑺傜偣鏁扮粍闆嗗悎锛宖ilterFn鎸囧畾杩囨护鏉′欢锛岃繑鍥瀟rue鐨刵ode灏嗚閫夊彇
     * @grammar UE.dom.domUtils.findParents(node,includeSelf,filterFn,closerFirst)  => Array  //杩斿洖涓�釜绁栧厛鑺傜偣鏁扮粍闆嗗悎锛宑loserFirst涓簍rue鐨勮瘽锛宯ode鐨勭洿鎺ョ埗浜茶妭鐐规槸鏁扮粍鐨勭0涓�
     */
    findParents:function (node, includeSelf, filterFn, closerFirst) {
        var parents = includeSelf && ( filterFn && filterFn(node) || !filterFn ) ? [node] : [];
        while (node = domUtils.findParent(node, filterFn)) {
            parents.push(node);
        }
        return closerFirst ? parents : parents.reverse();
    },

    /**
     * 鍦ㄨ妭鐐筺ode鍚庨潰鎻掑叆鏂拌妭鐐筺ewNode
     * @name insertAfter
     * @grammar UE.dom.domUtils.insertAfter(node,newNode)  => newNode
     */
    insertAfter:function (node, newNode) {
        return node.parentNode.insertBefore(newNode, node.nextSibling);
    },

    /**
     * 鍒犻櫎鑺傜偣node锛屽苟鏍规嵁keepChildren鎸囧畾鏄惁淇濈暀瀛愯妭鐐�
     * @name remove
     * @grammar UE.dom.domUtils.remove(node)  =>  node
     * @grammar UE.dom.domUtils.remove(node,keepChildren)  =>  node
     */
    remove:function (node, keepChildren) {
        var parent = node.parentNode,
            child;
        if (parent) {
            if (keepChildren && node.hasChildNodes()) {
                while (child = node.firstChild) {
                    parent.insertBefore(child, node);
                }
            }
            parent.removeChild(node);
        }
        return node;
    },

    /**
     * 鍙栧緱node鑺傜偣鍦╠om鏍戜笂鐨勪笅涓�釜鑺傜偣,鍗冲鍙夋爲閬嶅巻
     * @name  getNextDomNode
     * @grammar UE.dom.domUtils.getNextDomNode(node)  => Element
     * @example
     */
    getNextDomNode:function (node, startFromChild, filterFn, guard) {
        return getDomNode(node, 'firstChild', 'nextSibling', startFromChild, filterFn, guard);
    },
    /**
     * 妫�祴鑺傜偣node鏄惁灞炰簬bookmark鑺傜偣
     * @name isBookmarkNode
     * @grammar UE.dom.domUtils.isBookmarkNode(node)  => true|false
     */
    isBookmarkNode:function (node) {
        return node.nodeType == 1 && node.id && /^_baidu_bookmark_/i.test(node.id);
    },
    /**
     * 鑾峰彇鑺傜偣node鎵�湪鐨剋indow瀵硅薄
     * @name  getWindow
     * @grammar UE.dom.domUtils.getWindow(node)  => window瀵硅薄
     */
    getWindow:function (node) {
        var doc = node.ownerDocument || node;
        return doc.defaultView || doc.parentWindow;
    },
    /**
     * 寰楀埌nodeA涓巒odeB鍏叡鐨勭鍏堣妭鐐�
     * @name  getCommonAncestor
     * @grammar UE.dom.domUtils.getCommonAncestor(nodeA,nodeB)  => Element
     */
    getCommonAncestor:function (nodeA, nodeB) {
        if (nodeA === nodeB)
            return nodeA;
        var parentsA = [nodeA] , parentsB = [nodeB], parent = nodeA, i = -1;
        while (parent = parent.parentNode) {
            if (parent === nodeB) {
                return parent;
            }
            parentsA.push(parent);
        }
        parent = nodeB;
        while (parent = parent.parentNode) {
            if (parent === nodeA)
                return parent;
            parentsB.push(parent);
        }
        parentsA.reverse();
        parentsB.reverse();
        while (i++, parentsA[i] === parentsB[i]) {
        }
        return i == 0 ? null : parentsA[i - 1];

    },
    /**
     * 娓呴櫎node鑺傜偣宸﹀彸鍏勫紵涓虹┖鐨刬nline鑺傜偣
     * @name clearEmptySibling
     * @grammar UE.dom.domUtils.clearEmptySibling(node)
     * @grammar UE.dom.domUtils.clearEmptySibling(node,ignoreNext)  //ignoreNext鎸囧畾鏄惁蹇界暐鍙宠竟绌鸿妭鐐�
     * @grammar UE.dom.domUtils.clearEmptySibling(node,ignoreNext,ignorePre)  //ignorePre鎸囧畾鏄惁蹇界暐宸﹁竟绌鸿妭鐐�
     * @example
     * <b></b><i></i>xxxx<b>bb</b> --> xxxx<b>bb</b>
     */
    clearEmptySibling:function (node, ignoreNext, ignorePre) {
        function clear(next, dir) {
            var tmpNode;
            while (next && !domUtils.isBookmarkNode(next) && (domUtils.isEmptyInlineElement(next)
                //杩欓噷涓嶈兘鎶婄┖鏍肩畻杩涙潵浼氬惂绌烘牸骞叉帀锛屽嚭鐜版枃瀛楅棿鐨勭┖鏍间涪鎺変簡
                || !new RegExp('[^\t\n\r' + domUtils.fillChar + ']').test(next.nodeValue) )) {
                tmpNode = next[dir];
                domUtils.remove(next);
                next = tmpNode;
            }
        }
        !ignoreNext && clear(node.nextSibling, 'nextSibling');
        !ignorePre && clear(node.previousSibling, 'previousSibling');
    },
    /**
     * 灏嗕竴涓枃鏈妭鐐筺ode鎷嗗垎鎴愪袱涓枃鏈妭鐐癸紝offset鎸囧畾鎷嗗垎浣嶇疆
     * @name split
     * @grammar UE.dom.domUtils.split(node,offset)  =>  TextNode  //杩斿洖浠庡垏鍒嗕綅缃紑濮嬬殑鍚庝竴涓枃鏈妭鐐�
     */
    split:function (node, offset) {
        var doc = node.ownerDocument;
        if (browser.ie && offset == node.nodeValue.length) {
            var next = doc.createTextNode('');
            return domUtils.insertAfter(node, next);
        }
        var retval = node.splitText(offset);
        //ie8涓媠plitText涓嶄細璺熸柊childNodes,鎴戜滑鎵嬪姩瑙﹀彂浠栫殑鏇存柊
        if (browser.ie8) {
            var tmpNode = doc.createTextNode('');
            domUtils.insertAfter(retval, tmpNode);
            domUtils.remove(tmpNode);
        }
        return retval;
    },

    /**
     * 妫�祴鑺傜偣node鏄惁涓虹┖鑺傜偣锛堝寘鎷┖鏍笺�鎹㈣銆佸崰浣嶇绛夊瓧绗︼級
     * @name  isWhitespace
     * @grammar  UE.dom.domUtils.isWhitespace(node)  => true|false
     */
    isWhitespace:function (node) {
        return !new RegExp('[^ \t\n\r' + domUtils.fillChar + ']').test(node.nodeValue);
    },
    /**
     * 鑾峰彇鍏冪礌element鐩稿浜巚iewport鐨勪綅缃潗鏍�
     * @name getXY
     * @grammar UE.dom.domUtils.getXY(element)  => Object //杩斿洖鍧愭爣瀵硅薄{x:left,y:top}
     */
    getXY:function (element) {
        var x = 0, y = 0;
        while (element.offsetParent) {
            y += element.offsetTop;
            x += element.offsetLeft;
            element = element.offsetParent;
        }
        return { 'x':x, 'y':y};
    },
    /**
     * 涓哄厓绱爀lement缁戝畾鍘熺敓DOM浜嬩欢锛宼ype涓轰簨浠剁被鍨嬶紝handler涓哄鐞嗗嚱鏁�
     * @name on
     * @grammar UE.dom.domUtils.on(element,type,handler)   //type鏀寔鏁扮粍浼犲叆
     * @example
     * UE.dom.domUtils.on(document.body,"click",function(e){
     *     //e涓轰簨浠跺璞★紝this涓鸿鐐瑰嚮鍏冪礌瀵规垙閭ｄ釜
     * })
     * @example
     * UE.dom.domUtils.on(document.body,["click","mousedown"],function(evt){
     *     //evt涓轰簨浠跺璞★紝this涓鸿鐐瑰嚮鍏冪礌瀵硅薄
     * })
     */
    on:function (element, type, handler) {
        var types = utils.isArray(type) ? type : [type],
            k = types.length;
        if (k) while (k--) {
            type = types[k];
            if (element.addEventListener) {
                element.addEventListener(type, handler, false);
            } else {
                if (!handler._d) {
                    handler._d = {
                        els : []
                    };
                }
                var key = type + handler.toString(),index = utils.indexOf(handler._d.els,element);
                if (!handler._d[key] || index == -1) {
                    if(index == -1){
                        handler._d.els.push(element);
                    }
                    if(!handler._d[key]){
                        handler._d[key] = function (evt) {
                            return handler.call(evt.srcElement, evt || window.event);
                        };
                    }


                    element.attachEvent('on' + type, handler._d[key]);
                }
            }
        }
        element = null;
    },
    /**
     * 瑙ｉ櫎鍘熺敓DOM浜嬩欢缁戝畾
     * @name un
     * @grammar  UE.dom.donUtils.un(element,type,handler)  //鍙傝<code><a href="#on">on</a></code>
     */
    un:function (element, type, handler) {
        var types = utils.isArray(type) ? type : [type],
            k = types.length;
        if (k) while (k--) {
            type = types[k];
            if (element.removeEventListener) {
                element.removeEventListener(type, handler, false);
            } else {
                var key = type + handler.toString();
                try{
                    element.detachEvent('on' + type, handler._d ? handler._d[key] : handler);
                }catch(e){}
                if (handler._d && handler._d[key]) {
                    var index = utils.indexOf(handler._d.els,element);
                    if(index!=-1){
                        handler._d.els.splice(index,1);
                    }
                    handler._d.els.length == 0 && delete handler._d[key];
                }
            }
        }
    },

    /**
     * 姣旇緝鑺傜偣nodeA涓庤妭鐐筺odeB鏄惁鍏锋湁鐩稿悓鐨勬爣绛惧悕銆佸睘鎬у悕浠ュ強灞炴�鍊�
     * @name  isSameElement
     * @grammar UE.dom.domUtils.isSameElement(nodeA,nodeB) => true|false
     * @example
     * <span  style="font-size:12px">ssss</span> and <span style="font-size:12px">bbbbb</span>   => true
     * <span  style="font-size:13px">ssss</span> and <span style="font-size:12px">bbbbb</span>   => false
     */
    isSameElement:function (nodeA, nodeB) {
        if (nodeA.tagName != nodeB.tagName) {
            return false;
        }
        var thisAttrs = nodeA.attributes,
            otherAttrs = nodeB.attributes;
        if (!ie && thisAttrs.length != otherAttrs.length) {
            return false;
        }
        var attrA, attrB, al = 0, bl = 0;
        for (var i = 0; attrA = thisAttrs[i++];) {
            if (attrA.nodeName == 'style') {
                if (attrA.specified) {
                    al++;
                }
                if (domUtils.isSameStyle(nodeA, nodeB)) {
                    continue;
                } else {
                    return false;
                }
            }
            if (ie) {
                if (attrA.specified) {
                    al++;
                    attrB = otherAttrs.getNamedItem(attrA.nodeName);
                } else {
                    continue;
                }
            } else {
                attrB = nodeB.attributes[attrA.nodeName];
            }
            if (!attrB.specified || attrA.nodeValue != attrB.nodeValue) {
                return false;
            }
        }
        // 鏈夊彲鑳絘ttrB鐨勫睘鎬у寘鍚簡attrA鐨勫睘鎬т箣澶栬繕鏈夎嚜宸辩殑灞炴�
        if (ie) {
            for (i = 0; attrB = otherAttrs[i++];) {
                if (attrB.specified) {
                    bl++;
                }
            }
            if (al != bl) {
                return false;
            }
        }
        return true;
    },

    /**
     * 鍒ゆ柇鑺傜偣nodeA涓庤妭鐐筺odeB鐨勫厓绱犲睘鎬ф槸鍚︿竴鑷�
     * @name isSameStyle
     * @grammar UE.dom.domUtils.isSameStyle(nodeA,nodeB) => true|false
     */
    isSameStyle:function (nodeA, nodeB) {
        var styleA = nodeA.style.cssText.replace(/( ?; ?)/g, ';').replace(/( ?: ?)/g, ':'),
            styleB = nodeB.style.cssText.replace(/( ?; ?)/g, ';').replace(/( ?: ?)/g, ':');
        if (browser.opera) {
            styleA = nodeA.style;
            styleB = nodeB.style;
            if (styleA.length != styleB.length)
                return false;
            for (var p in styleA) {
                if (/^(\d+|csstext)$/i.test(p)) {
                    continue;
                }
                if (styleA[p] != styleB[p]) {
                    return false;
                }
            }
            return true;
        }
        if (!styleA || !styleB) {
            return styleA == styleB;
        }
        styleA = styleA.split(';');
        styleB = styleB.split(';');
        if (styleA.length != styleB.length) {
            return false;
        }
        for (var i = 0, ci; ci = styleA[i++];) {
            if (utils.indexOf(styleB, ci) == -1) {
                return false;
            }
        }
        return true;
    },
    /**
     * 妫�煡鑺傜偣node鏄惁涓哄潡鍏冪礌
     * @name isBlockElm
     * @grammar UE.dom.domUtils.isBlockElm(node)  => true|false
     */
    isBlockElm:function (node) {
        return node.nodeType == 1 && (dtd.$block[node.tagName] || styleBlock[domUtils.getComputedStyle(node, 'display')]) && !dtd.$nonChild[node.tagName];
    },
    /**
     * 妫�祴node鑺傜偣鏄惁涓篵ody鑺傜偣
     * @name isBody
     * @grammar UE.dom.domUtils.isBody(node)   => true|false
     */
    isBody:function (node) {
        return  node && node.nodeType == 1 && node.tagName.toLowerCase() == 'body';
    },
    /**
     * 浠ode鑺傜偣涓轰腑蹇冿紝灏嗚鑺傜偣鐨勬寚瀹氱鍏堣妭鐐筽arent鎷嗗垎鎴�鍧�
     * @name  breakParent
     * @grammar UE.dom.domUtils.breakParent(node,parent) => node
     * @desc
     * <code type="html"><b>ooo</b>鏄痭ode鑺傜偣
     * <p>xxxx<b>ooo</b>xxx</p> ==> <p>xxx</p><b>ooo</b><p>xxx</p>
     * <p>xxxxx<span>xxxx<b>ooo</b>xxxxxx</span></p>   =>   <p>xxxxx<span>xxxx</span></p><b>ooo</b><p><span>xxxxxx</span></p></code>
     */
    breakParent:function (node, parent) {
        var tmpNode,
            parentClone = node,
            clone = node,
            leftNodes,
            rightNodes;
        do {
            parentClone = parentClone.parentNode;
            if (leftNodes) {
                tmpNode = parentClone.cloneNode(false);
                tmpNode.appendChild(leftNodes);
                leftNodes = tmpNode;
                tmpNode = parentClone.cloneNode(false);
                tmpNode.appendChild(rightNodes);
                rightNodes = tmpNode;
            } else {
                leftNodes = parentClone.cloneNode(false);
                rightNodes = leftNodes.cloneNode(false);
            }
            while (tmpNode = clone.previousSibling) {
                leftNodes.insertBefore(tmpNode, leftNodes.firstChild);
            }
            while (tmpNode = clone.nextSibling) {
                rightNodes.appendChild(tmpNode);
            }
            clone = parentClone;
        } while (parent !== parentClone);
        tmpNode = parent.parentNode;
        tmpNode.insertBefore(leftNodes, parent);
        tmpNode.insertBefore(rightNodes, parent);
        tmpNode.insertBefore(node, rightNodes);
        domUtils.remove(parent);
        return node;
    },
    /**
     * 妫�煡鑺傜偣node鏄惁鏄┖inline鑺傜偣
     * @name  isEmptyInlineElement
     * @grammar   UE.dom.domUtils.isEmptyInlineElement(node)  => 1|0
     * @example
     * <b><i></i></b> => 1
     * <b><i></i><u></u></b> => 1
     * <b></b> => 1
     * <b>xx<i></i></b> => 0
     */
    isEmptyInlineElement:function (node) {
        if (node.nodeType != 1 || !dtd.$removeEmpty[ node.tagName ]) {
            return 0;
        }
        node = node.firstChild;
        while (node) {
            //濡傛灉鏄垱寤虹殑bookmark灏辫烦杩�
            if (domUtils.isBookmarkNode(node)) {
                return 0;
            }
            if (node.nodeType == 1 && !domUtils.isEmptyInlineElement(node) ||
                node.nodeType == 3 && !domUtils.isWhitespace(node)
                ) {
                return 0;
            }
            node = node.nextSibling;
        }
        return 1;

    },

    /**
     * 鍒犻櫎node鑺傜偣涓嬬殑宸﹀彸绌虹櫧鏂囨湰瀛愯妭鐐�
     * @name trimWhiteTextNode
     * @grammar UE.dom.domUtils.trimWhiteTextNode(node)
     */
    trimWhiteTextNode:function (node) {
        function remove(dir) {
            var child;
            while ((child = node[dir]) && child.nodeType == 3 && domUtils.isWhitespace(child)) {
                node.removeChild(child);
            }
        }
        remove('firstChild');
        remove('lastChild');
    },

    /**
     * 鍚堝苟node鑺傜偣涓嬬浉鍚岀殑瀛愯妭鐐�
     * @name mergeChild
     * @desc
     * UE.dom.domUtils.mergeChild(node,tagName) //tagName瑕佸悎骞剁殑瀛愯妭鐐圭殑鏍囩
     * @example
     * <p><span style="font-size:12px;">xx<span style="font-size:12px;">aa</span>xx</span></p>
     * ==> UE.dom.domUtils.mergeChild(node,'span')
     * <p><span style="font-size:12px;">xxaaxx</span></p>
     */
    mergeChild:function (node, tagName, attrs) {
        var list = domUtils.getElementsByTagName(node, node.tagName.toLowerCase());
        for (var i = 0, ci; ci = list[i++];) {
            if (!ci.parentNode || domUtils.isBookmarkNode(ci)) {
                continue;
            }
            //span鍗曠嫭澶勭悊
            if (ci.tagName.toLowerCase() == 'span') {
                if (node === ci.parentNode) {
                    domUtils.trimWhiteTextNode(node);
                    if (node.childNodes.length == 1) {
                        node.style.cssText = ci.style.cssText + ";" + node.style.cssText;
                        domUtils.remove(ci, true);
                        continue;
                    }
                }
                ci.style.cssText = node.style.cssText + ';' + ci.style.cssText;
                if (attrs) {
                    var style = attrs.style;
                    if (style) {
                        style = style.split(';');
                        for (var j = 0, s; s = style[j++];) {
                            ci.style[utils.cssStyleToDomStyle(s.split(':')[0])] = s.split(':')[1];
                        }
                    }
                }
                if (domUtils.isSameStyle(ci, node)) {
                    domUtils.remove(ci, true);
                }
                continue;
            }
            if (domUtils.isSameElement(node, ci)) {
                domUtils.remove(ci, true);
            }
        }
    },

    /**
     * 鍘熺敓鏂规硶getElementsByTagName鐨勫皝瑁�
     * @name getElementsByTagName
     * @grammar UE.dom.domUtils.getElementsByTagName(node,tagName)  => Array  //鑺傜偣闆嗗悎鏁扮粍
     */
    getElementsByTagName:function (node, name,filter) {
        if(filter && utils.isString(filter)){
           var className = filter;
           filter =  function(node){return domUtils.hasClass(node,className)}
        }
        name = utils.trim(name).replace(/[ ]{2,}/g,' ').split(' ');
        var arr = [];
        for(var n = 0,ni;ni=name[n++];){
            var list = node.getElementsByTagName(ni);
            for (var i = 0, ci; ci = list[i++];) {
                if(!filter || filter(ci))
                    arr.push(ci);
            }
        }

        return arr;
    },
    /**
     * 灏嗚妭鐐筺ode鍚堝苟鍒扮埗鑺傜偣涓�
     * @name mergeToParent
     * @grammar UE.dom.domUtils.mergeToParent(node)
     * @example
     * <span style="color:#fff"><span style="font-size:12px">xxx</span></span> ==> <span style="color:#fff;font-size:12px">xxx</span>
     */
    mergeToParent:function (node) {
        var parent = node.parentNode;
        while (parent && dtd.$removeEmpty[parent.tagName]) {
            if (parent.tagName == node.tagName || parent.tagName == 'A') {//閽堝a鏍囩鍗曠嫭澶勭悊
                domUtils.trimWhiteTextNode(parent);
                //span闇�鐗规畩澶勭悊  涓嶅鐞嗚繖鏍风殑鎯呭喌 <span stlye="color:#fff">xxx<span style="color:#ccc">xxx</span>xxx</span>
                if (parent.tagName == 'SPAN' && !domUtils.isSameStyle(parent, node)
                    || (parent.tagName == 'A' && node.tagName == 'SPAN')) {
                    if (parent.childNodes.length > 1 || parent !== node.parentNode) {
                        node.style.cssText = parent.style.cssText + ";" + node.style.cssText;
                        parent = parent.parentNode;
                        continue;
                    } else {
                        parent.style.cssText += ";" + node.style.cssText;
                        //trace:952 a鏍囩瑕佷繚鎸佷笅鍒掔嚎
                        if (parent.tagName == 'A') {
                            parent.style.textDecoration = 'underline';
                        }
                    }
                }
                if (parent.tagName != 'A') {
                    parent === node.parentNode && domUtils.remove(node, true);
                    break;
                }
            }
            parent = parent.parentNode;
        }
    },
    /**
     * 鍚堝苟鑺傜偣node鐨勫乏鍙冲厔寮熻妭鐐�
     * @name mergeSibling
     * @grammar UE.dom.domUtils.mergeSibling(node)
     * @grammar UE.dom.domUtils.mergeSibling(node,ignorePre)    //ignorePre鎸囧畾鏄惁蹇界暐宸﹀厔寮�
     * @grammar UE.dom.domUtils.mergeSibling(node,ignorePre,ignoreNext)  //ignoreNext鎸囧畾鏄惁蹇界暐鍙冲厔寮�
     * @example
     * <b>xxxx</b><b>ooo</b><b>xxxx</b> ==> <b>xxxxoooxxxx</b>
     */
    mergeSibling:function (node, ignorePre, ignoreNext) {
        function merge(rtl, start, node) {
            var next;
            if ((next = node[rtl]) && !domUtils.isBookmarkNode(next) && next.nodeType == 1 && domUtils.isSameElement(node, next)) {
                while (next.firstChild) {
                    if (start == 'firstChild') {
                        node.insertBefore(next.lastChild, node.firstChild);
                    } else {
                        node.appendChild(next.firstChild);
                    }
                }
                domUtils.remove(next);
            }
        }
        !ignorePre && merge('previousSibling', 'firstChild', node);
        !ignoreNext && merge('nextSibling', 'lastChild', node);
    },

    /**
     * 璁剧疆鑺傜偣node鍙婂叾瀛愯妭鐐逛笉浼氳閫変腑
     * @name unSelectable
     * @grammar UE.dom.domUtils.unSelectable(node)
     */
    unSelectable:ie || browser.opera ? function (node) {
        //for ie9
        node.onselectstart = function () {
            return false;
        };
        node.onclick = node.onkeyup = node.onkeydown = function () {
            return false;
        };
        node.unselectable = 'on';
        node.setAttribute("unselectable", "on");
        for (var i = 0, ci; ci = node.all[i++];) {
            switch (ci.tagName.toLowerCase()) {
                case 'iframe' :
                case 'textarea' :
                case 'input' :
                case 'select' :
                    break;
                default :
                    ci.unselectable = 'on';
                    node.setAttribute("unselectable", "on");
            }
        }
    } : function (node) {
        node.style.MozUserSelect =
            node.style.webkitUserSelect =
                node.style.KhtmlUserSelect = 'none';
    },
    /**
     * 鍒犻櫎鑺傜偣node涓婄殑灞炴�attrNames锛宎ttrNames涓哄睘鎬у悕绉版暟缁�
     * @name  removeAttributes
     * @grammar UE.dom.domUtils.removeAttributes(node,attrNames)
     * @example
     * //Before remove
     * <span style="font-size:14px;" id="test" name="followMe">xxxxx</span>
     * //Remove
     * UE.dom.domUtils.removeAttributes(node,["id","name"]);
     * //After remove
     * <span style="font-size:14px;">xxxxx</span>
     */
    removeAttributes:function (node, attrNames) {
        attrNames = utils.isArray(attrNames) ? attrNames : utils.trim(attrNames).replace(/[ ]{2,}/g,' ').split(' ');
        for (var i = 0, ci; ci = attrNames[i++];) {
            ci = attrFix[ci] || ci;
            switch (ci) {
                case 'className':
                    node[ci] = '';
                    break;
                case 'style':
                    node.style.cssText = '';
                    !browser.ie && node.removeAttributeNode(node.getAttributeNode('style'))
            }
            node.removeAttribute(ci);
        }
    },
    /**
     * 鍦╠oc涓嬪垱寤轰竴涓爣绛惧悕涓簍ag锛屽睘鎬т负attrs鐨勫厓绱�
     * @name createElement
     * @grammar UE.dom.domUtils.createElement(doc,tag,attrs)  =>  Node  //杩斿洖鍒涘缓鐨勮妭鐐�
     */
    createElement:function (doc, tag, attrs) {
        return domUtils.setAttributes(doc.createElement(tag), attrs)
    },
    /**
     * 涓鸿妭鐐筺ode娣诲姞灞炴�attrs锛宎ttrs涓哄睘鎬ч敭鍊煎
     * @name setAttributes
     * @grammar UE.dom.domUtils.setAttributes(node,attrs)  => node
     */
    setAttributes:function (node, attrs) {
        for (var attr in attrs) {
            if(attrs.hasOwnProperty(attr)){
                var value = attrs[attr];
                switch (attr) {
                    case 'class':
                        //ie涓嬭杩欐牱璧嬪�锛宻etAttribute涓嶈捣浣滅敤
                        node.className = value;
                        break;
                    case 'style' :
                        node.style.cssText = node.style.cssText + ";" + value;
                        break;
                    case 'innerHTML':
                        node[attr] = value;
                        break;
                    case 'value':
                        node.value = value;
                        break;
                    default:
                        node.setAttribute(attrFix[attr] || attr, value);
                }
            }
        }
        return node;
    },

    /**
     * 鑾峰彇鍏冪礌element鐨勮绠楁牱寮�
     * @name getComputedStyle
     * @grammar UE.dom.domUtils.getComputedStyle(element,styleName)  => String //杩斿洖瀵瑰簲鏍峰紡鍚嶇О鐨勬牱寮忓�
     * @example
     * getComputedStyle(document.body,"font-size")  =>  "15px"
     * getComputedStyle(form,"color")  =>  "#ffccdd"
     */
    getComputedStyle:function (element, styleName) {
        //涓�笅鐨勫睘鎬у崟鐙鐞�
        var pros = 'width height top left';

        if(pros.indexOf(styleName) > -1){
            return element['offset' + styleName.replace(/^\w/,function(s){return s.toUpperCase()})] + 'px';
        }
        //蹇界暐鏂囨湰鑺傜偣
        if (element.nodeType == 3) {
            element = element.parentNode;
        }
        //ie涓媐ont-size鑻ody涓嬪畾涔変簡font-size锛屽垯浠巆urrentStyle閲屼細鍙栧埌杩欎釜font-size. 鍙栦笉鍒板疄闄呭�锛屾晠姝や慨鏀�
        if (browser.ie && browser.version < 9 && styleName == 'font-size' && !element.style.fontSize &&
            !dtd.$empty[element.tagName] && !dtd.$nonChild[element.tagName]) {
            var span = element.ownerDocument.createElement('span');
            span.style.cssText = 'padding:0;border:0;font-family:simsun;';
            span.innerHTML = '.';
            element.appendChild(span);
            var result = span.offsetHeight;
            element.removeChild(span);
            span = null;
            return result + 'px';
        }
        try {
            var value = domUtils.getStyle(element, styleName) ||
                (window.getComputedStyle ? domUtils.getWindow(element).getComputedStyle(element, '').getPropertyValue(styleName) :
                    ( element.currentStyle || element.style )[utils.cssStyleToDomStyle(styleName)]);

        } catch (e) {
            return "";
        }
        return utils.transUnitToPx(utils.fixColor(styleName, value));
    },
    /**
     * 鍦ㄥ厓绱爀lement涓婂垹闄lassNames锛屾敮鎸佸悓鏃跺垹闄ゅ涓�
     * @name removeClasses
     * @grammar UE.dom.domUtils.removeClasses(element,classNames)
     * @example
     * //鎵ц鏂规硶鍓嶇殑dom缁撴瀯
     * <span class="test1 test2 test3">xxx</span>
     * //鎵ц鏂规硶
     * UE.dom.domUtils.removeClasses(element,["test1","test3"])
     * //鎵ц鏂规硶鍚庣殑dom缁撴瀯
     * <span class="test2">xxx</span>
     */
    removeClasses:function (elm, classNames) {
        classNames = utils.isArray(classNames) ? classNames :
            utils.trim(classNames).replace(/[ ]{2,}/g,' ').split(' ');
        for(var i = 0,ci,cls = elm.className;ci=classNames[i++];){
            cls = cls.replace(new RegExp('\\b' + ci + '\\b'),'')
        }
        cls = utils.trim(cls).replace(/[ ]{2,}/g,' ');
        if(cls){
            elm.className = cls;
        }else{
            domUtils.removeAttributes(elm,['class']);
        }
    },
    /**
     * 鍦ㄥ厓绱爀lement涓婂鍔犱竴涓牱寮忕被className锛屾敮鎸佷互绌烘牸鍒嗗紑鐨勫涓被鍚�
     * 濡傛灉鐩稿悓鐨勭被鍚嶅皢涓嶄細娣诲姞
     * @name addClass
     * @grammar UE.dom.domUtils.addClass(element,classNames)
     */
    addClass:function (elm, classNames) {
        if(!elm)return;
        classNames = utils.trim(classNames).replace(/[ ]{2,}/g,' ').split(' ');
        for(var i = 0,ci,cls = elm.className;ci=classNames[i++];){
            if(!new RegExp('\\b' + ci + '\\b').test(cls)){
                elm.className += ' ' + ci;
            }
        }
    },
    /**
     * 鍒ゆ柇鍏冪礌element鏄惁鍖呭惈鏍峰紡绫诲悕className,鏀寔浠ョ┖鏍煎垎寮�殑澶氫釜绫诲悕,澶氫釜绫诲悕椤哄簭涓嶅悓涔熷彲浠ユ瘮杈�
     * @name hasClass
     * @grammar UE.dom.domUtils.hasClass(element,className)  =>true|false
     */
    hasClass:function (element, className) {
        if(utils.isRegExp(className)){
            return className.test(element.className)
        }
        className = utils.trim(className).replace(/[ ]{2,}/g,' ').split(' ');
        for(var i = 0,ci,cls = element.className;ci=className[i++];){
            if(!new RegExp('\\b' + ci + '\\b','i').test(cls)){
                return false;
            }
        }
        return i - 1 == className.length;
    },

    /**
     * 闃绘浜嬩欢榛樿琛屼负
     * @param {Event} evt    闇�缁勭粐鐨勪簨浠跺璞�
     */
    preventDefault:function (evt) {
        evt.preventDefault ? evt.preventDefault() : (evt.returnValue = false);
    },
    /**
     * 鍒犻櫎鍏冪礌element鐨勬牱寮�
     * @grammar UE.dom.domUtils.removeStyle(element,name)        鍒犻櫎鐨勬牱寮忓悕绉�
     */
    removeStyle:function (element, name) {
        if(browser.ie ){
            //閽堝color鍏堝崟鐙鐞嗕竴涓�
            if(name == 'color'){
                name = '(^|;)' + name;
            }
            element.style.cssText = element.style.cssText.replace(new RegExp(name + '[^:]*:[^;]+;?','ig'),'')
        }else{
            if (element.style.removeProperty) {
                element.style.removeProperty (name);
            }else {
                element.style.removeAttribute (utils.cssStyleToDomStyle(name));
            }
        }


        if (!element.style.cssText) {
            domUtils.removeAttributes(element, ['style']);
        }
    },
    /**
     * 鑾峰彇鍏冪礌element鐨勬煇涓牱寮忓�
     * @name getStyle
     * @grammar UE.dom.domUtils.getStyle(element,name)  => String
     */
    getStyle:function (element, name) {
        var value = element.style[ utils.cssStyleToDomStyle(name) ];
        return utils.fixColor(name, value);
    },
    /**
     * 涓哄厓绱爀lement璁剧疆鏍峰紡灞炴�鍊�
     * @name setStyle
     * @grammar UE.dom.domUtils.setStyle(element,name,value)
     */
    setStyle:function (element, name, value) {
        element.style[utils.cssStyleToDomStyle(name)] = value;
        if(!utils.trim(element.style.cssText)){
            this.removeAttributes(element,'style')
        }
    },
    /**
     * 涓哄厓绱爀lement璁剧疆鏍峰紡灞炴�鍊�
     * @name setStyles
     * @grammar UE.dom.domUtils.setStyle(element,styles)  //styles涓烘牱寮忛敭鍊煎
     */
    setStyles:function (element, styles) {
        for (var name in styles) {
            if (styles.hasOwnProperty(name)) {
                domUtils.setStyle(element, name, styles[name]);
            }
        }
    },
    /**
     * 鍒犻櫎_moz_dirty灞炴�
     * @function
     */
    removeDirtyAttr:function (node) {
        for (var i = 0, ci, nodes = node.getElementsByTagName('*'); ci = nodes[i++];) {
            ci.removeAttribute('_moz_dirty');
        }
        node.removeAttribute('_moz_dirty');
    },
    /**
     * 杩斿洖瀛愯妭鐐圭殑鏁伴噺
     * @function
     * @param {Node}    node    鐖惰妭鐐�
     * @param  {Function}    fn    杩囨护瀛愯妭鐐圭殑瑙勫垯锛岃嫢涓虹┖锛屽垯寰楀埌鎵�湁瀛愯妭鐐圭殑鏁伴噺
     * @return {Number}    绗﹀悎鏉′欢瀛愯妭鐐圭殑鏁伴噺
     */
    getChildCount:function (node, fn) {
        var count = 0, first = node.firstChild;
        fn = fn || function () {
            return 1;
        };
        while (first) {
            if (fn(first)) {
                count++;
            }
            first = first.nextSibling;
        }
        return count;
    },

    /**
     * 鍒ゆ柇鏄惁涓虹┖鑺傜偣
     * @function
     * @param {Node}    node    鑺傜偣
     * @return {Boolean}    鏄惁涓虹┖鑺傜偣
     */
    isEmptyNode:function (node) {
        return !node.firstChild || domUtils.getChildCount(node, function (node) {
            return  !domUtils.isBr(node) && !domUtils.isBookmarkNode(node) && !domUtils.isWhitespace(node)
        }) == 0
    },
    /**
     * 娓呯┖鑺傜偣鎵�湁鐨刢lassName
     * @function
     * @param {Array}    nodes    鑺傜偣鏁扮粍
     */
    clearSelectedArr:function (nodes) {
        var node;
        while (node = nodes.pop()) {
            domUtils.removeAttributes(node, ['class']);
        }
    },
    /**
     * 灏嗘樉绀哄尯鍩熸粴鍔ㄥ埌鏄剧ず鑺傜偣鐨勪綅缃�
     * @function
     * @param    {Node}   node    鑺傜偣
     * @param    {window}   win      window瀵硅薄
     * @param    {Number}    offsetTop    璺濈涓婃柟鐨勫亸绉婚噺
     */
    scrollToView:function (node, win, offsetTop) {
        var getViewPaneSize = function () {
                var doc = win.document,
                    mode = doc.compatMode == 'CSS1Compat';
                return {
                    width:( mode ? doc.documentElement.clientWidth : doc.body.clientWidth ) || 0,
                    height:( mode ? doc.documentElement.clientHeight : doc.body.clientHeight ) || 0
                };
            },
            getScrollPosition = function (win) {
                if ('pageXOffset' in win) {
                    return {
                        x:win.pageXOffset || 0,
                        y:win.pageYOffset || 0
                    };
                }
                else {
                    var doc = win.document;
                    return {
                        x:doc.documentElement.scrollLeft || doc.body.scrollLeft || 0,
                        y:doc.documentElement.scrollTop || doc.body.scrollTop || 0
                    };
                }
            };
        var winHeight = getViewPaneSize().height, offset = winHeight * -1 + offsetTop;
        offset += (node.offsetHeight || 0);
        var elementPosition = domUtils.getXY(node);
        offset += elementPosition.y;
        var currentScroll = getScrollPosition(win).y;
        // offset += 50;
        if (offset > currentScroll || offset < currentScroll - winHeight) {
            win.scrollTo(0, offset + (offset < 0 ? -20 : 20));
        }
    },
    /**
     * 鍒ゆ柇鑺傜偣鏄惁涓篵r
     * @function
     * @param {Node}    node   鑺傜偣
     */
    isBr:function (node) {
        return node.nodeType == 1 && node.tagName == 'BR';
    },
    isFillChar:function (node,isInStart) {
        return node.nodeType == 3 && !node.nodeValue.replace(new RegExp((isInStart ? '^' : '' ) + domUtils.fillChar), '').length
    },
    isStartInblock:function (range) {
        var tmpRange = range.cloneRange(),
            flag = 0,
            start = tmpRange.startContainer,
            tmp;
        if(start.nodeType == 1 && start.childNodes[tmpRange.startOffset]){
            start = start.childNodes[tmpRange.startOffset];
            var pre = start.previousSibling;
            while(pre && domUtils.isFillChar(pre)){
                start = pre;
                pre = pre.previousSibling;
            }
        }
        if(this.isFillChar(start,true) && tmpRange.startOffset == 1){
            tmpRange.setStartBefore(start);
            start = tmpRange.startContainer;
        }

        while (start && domUtils.isFillChar(start)) {
            tmp = start;
            start = start.previousSibling
        }
        if (tmp) {
            tmpRange.setStartBefore(tmp);
            start = tmpRange.startContainer;
        }
        if (start.nodeType == 1 && domUtils.isEmptyNode(start) && tmpRange.startOffset == 1) {
            tmpRange.setStart(start, 0).collapse(true);
        }
        while (!tmpRange.startOffset) {
            start = tmpRange.startContainer;
            if (domUtils.isBlockElm(start) || domUtils.isBody(start)) {
                flag = 1;
                break;
            }
            var pre = tmpRange.startContainer.previousSibling,
                tmpNode;
            if (!pre) {
                tmpRange.setStartBefore(tmpRange.startContainer);
            } else {
                while (pre && domUtils.isFillChar(pre)) {
                    tmpNode = pre;
                    pre = pre.previousSibling;
                }
                if (tmpNode) {
                    tmpRange.setStartBefore(tmpNode);
                } else {
                    tmpRange.setStartBefore(tmpRange.startContainer);
                }
            }
        }
        return flag && !domUtils.isBody(tmpRange.startContainer) ? 1 : 0;
    },
    isEmptyBlock:function (node,reg) {
        if(node.nodeType != 1)
            return 0;
        reg = reg || new RegExp('[ \t\r\n' + domUtils.fillChar + ']', 'g');
        if (node[browser.ie ? 'innerText' : 'textContent'].replace(reg, '').length > 0) {
            return 0;
        }
        for (var n in dtd.$isNotEmpty) {
            if (node.getElementsByTagName(n).length) {
                return 0;
            }
        }
        return 1;
    },

    setViewportOffset:function (element, offset) {
        var left = parseInt(element.style.left) | 0;
        var top = parseInt(element.style.top) | 0;
        var rect = element.getBoundingClientRect();
        var offsetLeft = offset.left - rect.left;
        var offsetTop = offset.top - rect.top;
        if (offsetLeft) {
            element.style.left = left + offsetLeft + 'px';
        }
        if (offsetTop) {
            element.style.top = top + offsetTop + 'px';
        }
    },
    fillNode:function (doc, node) {
        var tmpNode = browser.ie ? doc.createTextNode(domUtils.fillChar) : doc.createElement('br');
        node.innerHTML = '';
        node.appendChild(tmpNode);
    },
    moveChild:function (src, tag, dir) {
        while (src.firstChild) {
            if (dir && tag.firstChild) {
                tag.insertBefore(src.lastChild, tag.firstChild);
            } else {
                tag.appendChild(src.firstChild);
            }
        }
    },
    //鍒ゆ柇鏄惁鏈夐澶栧睘鎬�
    hasNoAttributes:function (node) {
        return browser.ie ? /^<\w+\s*?>/.test(node.outerHTML) : node.attributes.length == 0;
    },
    //鍒ゆ柇鏄惁鏄紪杈戝櫒鑷畾涔夌殑鍙傛暟
    isCustomeNode:function (node) {
        return node.nodeType == 1 && node.getAttribute('_ue_custom_node_');
    },
    isTagNode:function (node, tagName) {
        return node.nodeType == 1 && new RegExp('^' + node.tagName + '$','i').test(tagName)
    },
    /**
     * 瀵逛簬nodelist鐢╢ilter杩涜杩囨护
     * @name filterNodeList
     * @since 1.2.4+
     * @grammar UE.dom.domUtils.filterNodeList(nodelist,filter,onlyFirst)  => 鑺傜偣
     * @example
     * UE.dom.domUtils.filterNodeList(document.getElementsByTagName('*'),'div p') //杩斿洖绗竴涓槸div鎴栬�p鐨勮妭鐐�
     * UE.dom.domUtils.filterNodeList(document.getElementsByTagName('*'),function(n){return n.getAttribute('src')})
     * //杩斿洖绗竴涓甫src灞炴�鐨勮妭鐐�
     * UE.dom.domUtils.filterNodeList(document.getElementsByTagName('*'),'i',true) //杩斿洖鏁扮粍锛岄噷杈归兘鏄痠鑺傜偣
     */
    filterNodeList : function(nodelist,filter,forAll){
        var results = [];
        if(!utils .isFunction(filter)){
            var str = filter;
            filter = function(n){
                return utils.indexOf(utils.isArray(str) ? str:str.split(' '), n.tagName.toLowerCase()) != -1
            };
        }
        utils.each(nodelist,function(n){
            filter(n) && results.push(n)
        });
        return results.length  == 0 ? null : results.length == 1 || !forAll ? results[0] : results
    },

    isInNodeEndBoundary : function (rng,node){
        var start = rng.startContainer;
        if(start.nodeType == 3 && rng.startOffset != start.nodeValue.length){
            return 0;
        }
        if(start.nodeType == 1 && rng.startOffset != start.childNodes.length){
            return 0;
        }
        while(start !== node){
            if(start.nextSibling){
                return 0
            };
            start = start.parentNode;
        }
        return 1;
    },
    isBoundaryNode : function (node,dir){
        var tmp;
        while(!domUtils.isBody(node)){
            tmp = node;
            node = node.parentNode;
            if(tmp !== node[dir]){
                return false;
            }
        }
        return true;
    }
};
var fillCharReg = new RegExp(domUtils.fillChar, 'g');
///import editor.js
///import core/utils.js
///import core/browser.js
///import core/dom/dom.js
///import core/dom/dtd.js
///import core/dom/domUtils.js
/**
 * @file
 * @name UE.dom.Range
 * @anthor zhanyi
 * @short Range
 * @import editor.js,core/utils.js,core/browser.js,core/dom/domUtils.js,core/dom/dtd.js
 * @desc Range鑼冨洿瀹炵幇绫伙紝鏈被鏄疷Editor搴曞眰鏍稿績绫伙紝缁熶竴w3cRange鍜宨eRange涔嬮棿鐨勫樊寮傦紝鍖呮嫭鎺ュ彛鍜屽睘鎬�
 */
(function () {
    var guid = 0,
        fillChar = domUtils.fillChar,
        fillData;

    /**
     * 鏇存柊range鐨刢ollapse鐘舵�
     * @param  {Range}   range    range瀵硅薄
     */
    function updateCollapse(range) {
        range.collapsed =
            range.startContainer && range.endContainer &&
                range.startContainer === range.endContainer &&
                range.startOffset == range.endOffset;
    }

    function selectOneNode(rng){
        return !rng.collapsed && rng.startContainer.nodeType == 1 && rng.startContainer === rng.endContainer && rng.endOffset - rng.startOffset == 1
    }
    function setEndPoint(toStart, node, offset, range) {
        //濡傛灉node鏄嚜闂悎鏍囩瑕佸鐞�
        if (node.nodeType == 1 && (dtd.$empty[node.tagName] || dtd.$nonChild[node.tagName])) {
            offset = domUtils.getNodeIndex(node) + (toStart ? 0 : 1);
            node = node.parentNode;
        }
        if (toStart) {
            range.startContainer = node;
            range.startOffset = offset;
            if (!range.endContainer) {
                range.collapse(true);
            }
        } else {
            range.endContainer = node;
            range.endOffset = offset;
            if (!range.startContainer) {
                range.collapse(false);
            }
        }
        updateCollapse(range);
        return range;
    }

    function execContentsAction(range, action) {
        //璋冩暣杈圭晫
        //range.includeBookmark();
        var start = range.startContainer,
            end = range.endContainer,
            startOffset = range.startOffset,
            endOffset = range.endOffset,
            doc = range.document,
            frag = doc.createDocumentFragment(),
            tmpStart, tmpEnd;
        if (start.nodeType == 1) {
            start = start.childNodes[startOffset] || (tmpStart = start.appendChild(doc.createTextNode('')));
        }
        if (end.nodeType == 1) {
            end = end.childNodes[endOffset] || (tmpEnd = end.appendChild(doc.createTextNode('')));
        }
        if (start === end && start.nodeType == 3) {
            frag.appendChild(doc.createTextNode(start.substringData(startOffset, endOffset - startOffset)));
            //is not clone
            if (action) {
                start.deleteData(startOffset, endOffset - startOffset);
                range.collapse(true);
            }
            return frag;
        }
        var current, currentLevel, clone = frag,
            startParents = domUtils.findParents(start, true), endParents = domUtils.findParents(end, true);
        for (var i = 0; startParents[i] == endParents[i];) {
            i++;
        }
        for (var j = i, si; si = startParents[j]; j++) {
            current = si.nextSibling;
            if (si == start) {
                if (!tmpStart) {
                    if (range.startContainer.nodeType == 3) {
                        clone.appendChild(doc.createTextNode(start.nodeValue.slice(startOffset)));
                        //is not clone
                        if (action) {
                            start.deleteData(startOffset, start.nodeValue.length - startOffset);
                        }
                    } else {
                        clone.appendChild(!action ? start.cloneNode(true) : start);
                    }
                }
            } else {
                currentLevel = si.cloneNode(false);
                clone.appendChild(currentLevel);
            }
            while (current) {
                if (current === end || current === endParents[j]) {
                    break;
                }
                si = current.nextSibling;
                clone.appendChild(!action ? current.cloneNode(true) : current);
                current = si;
            }
            clone = currentLevel;
        }
        clone = frag;
        if (!startParents[i]) {
            clone.appendChild(startParents[i - 1].cloneNode(false));
            clone = clone.firstChild;
        }
        for (var j = i, ei; ei = endParents[j]; j++) {
            current = ei.previousSibling;
            if (ei == end) {
                if (!tmpEnd && range.endContainer.nodeType == 3) {
                    clone.appendChild(doc.createTextNode(end.substringData(0, endOffset)));
                    //is not clone
                    if (action) {
                        end.deleteData(0, endOffset);
                    }
                }
            } else {
                currentLevel = ei.cloneNode(false);
                clone.appendChild(currentLevel);
            }
            //濡傛灉涓ょ鍚岀骇锛屽彸杈圭涓�宸茬粡琚紑濮嬪仛浜�
            if (j != i || !startParents[i]) {
                while (current) {
                    if (current === start) {
                        break;
                    }
                    ei = current.previousSibling;
                    clone.insertBefore(!action ? current.cloneNode(true) : current, clone.firstChild);
                    current = ei;
                }
            }
            clone = currentLevel;
        }
        if (action) {
            range.setStartBefore(!endParents[i] ? endParents[i - 1] : !startParents[i] ? startParents[i - 1] : endParents[i]).collapse(true);
        }
        tmpStart && domUtils.remove(tmpStart);
        tmpEnd && domUtils.remove(tmpEnd);
        return frag;
    }

    /**
     * @name Range
     * @grammar new UE.dom.Range(document)  => Range 瀹炰緥
     * @desc 鍒涘缓涓�釜璺焏ocument缁戝畾鐨勭┖鐨凴ange瀹炰緥
     * - ***startContainer*** 寮�杈圭晫鐨勫鍣ㄨ妭鐐�鍙互鏄痚lementNode鎴栬�鏄痶extNode
     * - ***startOffset*** 瀹瑰櫒鑺傜偣涓殑鍋忕Щ閲忥紝濡傛灉鏄痚lementNode灏辨槸childNodes涓殑绗嚑涓紝濡傛灉鏄痶extNode灏辨槸nodeValue鐨勭鍑犱釜瀛楃
     * - ***endContainer*** 缁撴潫杈圭晫鐨勫鍣ㄨ妭鐐�鍙互鏄痚lementNode鎴栬�鏄痶extNode
     * - ***endOffset*** 瀹瑰櫒鑺傜偣涓殑鍋忕Щ閲忥紝濡傛灉鏄痚lementNode灏辨槸childNodes涓殑绗嚑涓紝濡傛灉鏄痶extNode灏辨槸nodeValue鐨勭鍑犱釜瀛楃
     * - ***document*** 璺焤ange鍏宠仈鐨刣ocument瀵硅薄
     * - ***collapsed*** 鏄惁鏄棴鍚堢姸鎬�
     */
    var Range = dom.Range = function (document) {
        var me = this;
        me.startContainer =
            me.startOffset =
                me.endContainer =
                    me.endOffset = null;
        me.document = document;
        me.collapsed = true;
    };

    /**
     * 鍒犻櫎fillData
     * @param doc
     * @param excludeNode
     */
    function removeFillData(doc, excludeNode) {
        try {
            if (fillData && domUtils.inDoc(fillData, doc)) {
                if (!fillData.nodeValue.replace(fillCharReg, '').length) {
                    var tmpNode = fillData.parentNode;
                    domUtils.remove(fillData);
                    while (tmpNode && domUtils.isEmptyInlineElement(tmpNode) &&
                        //safari鐨刢ontains鏈塨ug
                        (browser.safari ? !(domUtils.getPosition(tmpNode,excludeNode) & domUtils.POSITION_CONTAINS) : !tmpNode.contains(excludeNode))
                        ) {
                        fillData = tmpNode.parentNode;
                        domUtils.remove(tmpNode);
                        tmpNode = fillData;
                    }
                } else {
                    fillData.nodeValue = fillData.nodeValue.replace(fillCharReg, '');
                }
            }
        } catch (e) {
        }
    }

    /**
     *
     * @param node
     * @param dir
     */
    function mergeSibling(node, dir) {
        var tmpNode;
        node = node[dir];
        while (node && domUtils.isFillChar(node)) {
            tmpNode = node[dir];
            domUtils.remove(node);
            node = tmpNode;
        }
    }

    Range.prototype = {
        /**
         * @name cloneContents
         * @grammar range.cloneContents()  => DocumentFragment
         * @desc 鍏嬮殕閫変腑鐨勫唴瀹瑰埌涓�釜fragment閲岋紝濡傛灉閫夊尯鏄┖鐨勫皢杩斿洖null
         */
        cloneContents:function () {
            return this.collapsed ? null : execContentsAction(this, 0);
        },
        /**
         * @name deleteContents
         * @grammar range.deleteContents()  => Range
         * @desc 鍒犻櫎褰撳墠閫夊尯鑼冨洿涓殑鎵�湁鍐呭骞惰繑鍥瀝ange瀹炰緥锛岃繖鏃剁殑range宸茬粡鍙樻垚浜嗛棴鍚堢姸鎬�
         * @example
         * DOM Element :
         * <b>x<i>x[x<i>xx]x</b>
         * //鎵ц鏂规硶鍚�
         * <b>x<i>x<i>|x</b>
         * 娉ㄦ剰range鏀瑰彉浜�
         * range.startContainer => b
         * range.startOffset  => 2
         * range.endContainer => b
         * range.endOffset => 2
         * range.collapsed => true
         */
        deleteContents:function () {
            var txt;
            if (!this.collapsed) {
                execContentsAction(this, 1);
            }
            if (browser.webkit) {
                txt = this.startContainer;
                if (txt.nodeType == 3 && !txt.nodeValue.length) {
                    this.setStartBefore(txt).collapse(true);
                    domUtils.remove(txt);
                }
            }
            return this;
        },
        /**
         * @name extractContents
         * @grammar range.extractContents()  => DocumentFragment
         * @desc 灏嗗綋鍓嶇殑鍐呭鏀惧埌涓�釜fragment閲屽苟杩斿洖杩欎釜fragment锛岃繖鏃剁殑range宸茬粡鍙樻垚浜嗛棴鍚堢姸鎬�
         * @example
         * DOM Element :
         * <b>x<i>x[x<i>xx]x</b>
         * //鎵ц鏂规硶鍚�
         * 杩斿洖鐨刦ragment閲岀殑 dom缁撴瀯鏄�
         * <i>x<i>xx
         * dom鏍戜笂鐨勭粨鏋勬槸
         * <b>x<i>x<i>|x</b>
         * 娉ㄦ剰range鏀瑰彉浜�
         * range.startContainer => b
         * range.startOffset  => 2
         * range.endContainer => b
         * range.endOffset => 2
         * range.collapsed => true
         */
        extractContents:function () {
            return this.collapsed ? null : execContentsAction(this, 2);
        },
        /**
         * @name  setStart
         * @grammar range.setStart(node,offset)  => Range
         * @desc    璁剧疆range鐨勫紑濮嬩綅缃綅浜巒ode鑺傜偣鍐咃紝鍋忕Щ閲忎负offset
         * 濡傛灉node鏄痚lementNode閭ffset鎸囩殑鏄痗hildNodes涓殑绗嚑涓紝濡傛灉鏄痶extNode閭ffset鎸囩殑鏄痭odeValue鐨勭鍑犱釜瀛楃
         */
        setStart:function (node, offset) {
            return setEndPoint(true, node, offset, this);
        },
        /**
         * 璁剧疆range鐨勭粨鏉熶綅缃綅浜巒ode鑺傜偣锛屽亸绉婚噺涓簅ffset
         * 濡傛灉node鏄痚lementNode閭ffset鎸囩殑鏄痗hildNodes涓殑绗嚑涓紝濡傛灉鏄痶extNode閭ffset鎸囩殑鏄痭odeValue鐨勭鍑犱釜瀛楃
         * @name  setEnd
         * @grammar range.setEnd(node,offset)  => Range
         */
        setEnd:function (node, offset) {
            return setEndPoint(false, node, offset, this);
        },
        /**
         * 灏哛ange寮�浣嶇疆璁剧疆鍒皀ode鑺傜偣涔嬪悗
         * @name  setStartAfter
         * @grammar range.setStartAfter(node)  => Range
         * @example
         * <b>xx<i>x|x</i>x</b>
         * 鎵цsetStartAfter(i)鍚�
         * range.startContainer =>b
         * range.startOffset =>2
         */
        setStartAfter:function (node) {
            return this.setStart(node.parentNode, domUtils.getNodeIndex(node) + 1);
        },
        /**
         * 灏哛ange寮�浣嶇疆璁剧疆鍒皀ode鑺傜偣涔嬪墠
         * @name  setStartBefore
         * @grammar range.setStartBefore(node)  => Range
         * @example
         * <b>xx<i>x|x</i>x</b>
         * 鎵цsetStartBefore(i)鍚�
         * range.startContainer =>b
         * range.startOffset =>1
         */
        setStartBefore:function (node) {
            return this.setStart(node.parentNode, domUtils.getNodeIndex(node));
        },
        /**
         * 灏哛ange缁撴潫浣嶇疆璁剧疆鍒皀ode鑺傜偣涔嬪悗
         * @name  setEndAfter
         * @grammar range.setEndAfter(node)  => Range
         * @example
         * <b>xx<i>x|x</i>x</b>
         * setEndAfter(i)鍚�
         * range.endContainer =>b
         * range.endtOffset =>2
         */
        setEndAfter:function (node) {
            return this.setEnd(node.parentNode, domUtils.getNodeIndex(node) + 1);
        },
        /**
         * 灏哛ange缁撴潫浣嶇疆璁剧疆鍒皀ode鑺傜偣涔嬪墠
         * @name  setEndBefore
         * @grammar range.setEndBefore(node)  => Range
         * @example
         * <b>xx<i>x|x</i>x</b>
         * 鎵цsetEndBefore(i)鍚�
         * range.endContainer =>b
         * range.endtOffset =>1
         */
        setEndBefore:function (node) {
            return this.setEnd(node.parentNode, domUtils.getNodeIndex(node));
        },
        /**
         * 灏哛ange寮�浣嶇疆璁剧疆鍒皀ode鑺傜偣鍐呯殑寮�浣嶇疆
         * @name  setStartAtFirst
         * @grammar range.setStartAtFirst(node)  => Range
         */
        setStartAtFirst:function (node) {
            return this.setStart(node, 0);
        },
        /**
         * 灏哛ange寮�浣嶇疆璁剧疆鍒皀ode鑺傜偣鍐呯殑缁撴潫浣嶇疆
         * @name  setStartAtLast
         * @grammar range.setStartAtLast(node)  => Range
         */
        setStartAtLast:function (node) {
            return this.setStart(node, node.nodeType == 3 ? node.nodeValue.length : node.childNodes.length);
        },
        /**
         * 灏哛ange缁撴潫浣嶇疆璁剧疆鍒皀ode鑺傜偣鍐呯殑寮�浣嶇疆
         * @name  setEndAtFirst
         * @grammar range.setEndAtFirst(node)  => Range
         */
        setEndAtFirst:function (node) {
            return this.setEnd(node, 0);
        },
        /**
         * 灏哛ange缁撴潫浣嶇疆璁剧疆鍒皀ode鑺傜偣鍐呯殑缁撴潫浣嶇疆
         * @name  setEndAtLast
         * @grammar range.setEndAtLast(node)  => Range
         */
        setEndAtLast:function (node) {
            return this.setEnd(node, node.nodeType == 3 ? node.nodeValue.length : node.childNodes.length);
        },

        /**
         * 閫変腑瀹屾暣鐨勬寚瀹氳妭鐐�骞惰繑鍥炲寘鍚鑺傜偣鐨剅ange
         * @name  selectNode
         * @grammar range.selectNode(node)  => Range
         */
        selectNode:function (node) {
            return this.setStartBefore(node).setEndAfter(node);
        },
        /**
         * 閫変腑node鍐呴儴鐨勬墍鏈夎妭鐐癸紝骞惰繑鍥炲搴旂殑range
         * @name selectNodeContents
         * @grammar range.selectNodeContents(node)  => Range
         * @example
         * <b>xx[x<i>xxx</i>]xxx</b>
         * 鎵ц鍚�
         * <b>[xxx<i>xxx</i>xxx]</b>
         * range.startContainer =>b
         * range.startOffset =>0
         * range.endContainer =>b
         * range.endOffset =>3
         */
        selectNodeContents:function (node) {
            return this.setStart(node, 0).setEndAtLast(node);
        },

        /**
         * 鍏嬮殕涓�釜鏂扮殑range瀵硅薄
         * @name  cloneRange
         * @grammar range.cloneRange() => Range
         */
        cloneRange:function () {
            var me = this;
            return new Range(me.document).setStart(me.startContainer, me.startOffset).setEnd(me.endContainer, me.endOffset);

        },

        /**
         * 璁╅�鍖洪棴鍚堝埌灏鹃儴锛岃嫢toStart涓虹湡锛屽垯闂悎鍒板ご閮�
         * @name  collapse
         * @grammar range.collapse() => Range
         * @grammar range.collapse(true) => Range   //闂悎閫夊尯鍒板ご閮�
         */
        collapse:function (toStart) {
            var me = this;
            if (toStart) {
                me.endContainer = me.startContainer;
                me.endOffset = me.startOffset;
            } else {
                me.startContainer = me.endContainer;
                me.startOffset = me.endOffset;
            }
            me.collapsed = true;
            return me;
        },

        /**
         * 璋冩暣range鐨勮竟鐣岋紝浣垮叾"鏀剁缉"鍒版渶灏忕殑浣嶇疆
         * @name  shrinkBoundary
         * @grammar range.shrinkBoundary()  => Range  //range寮�浣嶇疆鍜岀粨鏉熶綅缃兘璋冩暣锛屽弬瑙�code><a href="#adjustmentboundary">adjustmentBoundary</a></code>
         * @grammar range.shrinkBoundary(true)  => Range  //浠呰皟鏁村紑濮嬩綅缃紝蹇界暐缁撴潫浣嶇疆
         * @example
         * <b>xx[</b>xxxxx] ==> <b>xx</b>[xxxxx]
         * <b>x[xx</b><i>]xxx</i> ==> <b>x[xx]</b><i>xxx</i>
         * [<b><i>xxxx</i>xxxxxxx</b>] ==> <b><i>[xxxx</i>xxxxxxx]</b>
         */
        shrinkBoundary:function (ignoreEnd) {
            var me = this, child,
                collapsed = me.collapsed;
            function check(node){
                return node.nodeType == 1 && !domUtils.isBookmarkNode(node) && !dtd.$empty[node.tagName] && !dtd.$nonChild[node.tagName]
            }
            while (me.startContainer.nodeType == 1 //鏄痚lement
                && (child = me.startContainer.childNodes[me.startOffset]) //瀛愯妭鐐逛篃鏄痚lement
                && check(child)) {
                me.setStart(child, 0);
            }
            if (collapsed) {
                return me.collapse(true);
            }
            if (!ignoreEnd) {
                while (me.endContainer.nodeType == 1//鏄痚lement
                    && me.endOffset > 0 //濡傛灉鏄┖鍏冪礌灏遍�鍑�endOffset=0閭ｄ箞endOffst-1涓鸿礋鍊硷紝childNodes[endOffset]鎶ラ敊
                    && (child = me.endContainer.childNodes[me.endOffset - 1]) //瀛愯妭鐐逛篃鏄痚lement
                    && check(child)) {
                    me.setEnd(child, child.childNodes.length);
                }
            }
            return me;
        },
        /**
         * 鑾峰彇褰撳墠range鎵�湪浣嶇疆鐨勫叕鍏辩鍏堣妭鐐癸紝褰撳墠range浣嶇疆鍙互浣嶄簬鏂囨湰鑺傜偣鍐咃紝涔熷彲浠ュ寘鍚暣涓厓绱犺妭鐐癸紝涔熷彲浠ヤ綅浜庝袱涓妭鐐逛箣闂�
         * @name  getCommonAncestor
         * @grammar range.getCommonAncestor([includeSelf, ignoreTextNode])  => Element
         * @example
         * <b>xx[xx<i>xx]x</i>xxx</b> ==>getCommonAncestor() ==> b
         * <b>[<img/>]</b>
         * range.startContainer ==> b
         * range.startOffset ==> 0
         * range.endContainer ==> b
         * range.endOffset ==> 1
         * range.getCommonAncestor() ==> b
         * range.getCommonAncestor(true) ==> img
         * <b>xxx|xx</b>
         * range.startContainer ==> textNode
         * range.startOffset ==> 3
         * range.endContainer ==> textNode
         * range.endOffset ==> 3
         * range.getCommonAncestor() ==> textNode
         * range.getCommonAncestor(null,true) ==> b
         */
        getCommonAncestor:function (includeSelf, ignoreTextNode) {
            var me = this,
                start = me.startContainer,
                end = me.endContainer;
            if (start === end) {
                if (includeSelf && selectOneNode(this)) {
                    start = start.childNodes[me.startOffset];
                    if(start.nodeType == 1)
                        return start;
                }
                //鍙湁鍦ㄤ笂鏉ュ氨鐩哥瓑鐨勬儏鍐典笅鎵嶄細鍑虹幇鏄枃鏈殑鎯呭喌
                return ignoreTextNode && start.nodeType == 3 ? start.parentNode : start;
            }
            return domUtils.getCommonAncestor(start, end);
        },
        /**
         * 璋冩暣杈圭晫瀹瑰櫒锛屽鏋滄槸textNode,灏辫皟鏁村埌elementNode涓�
         * @name trimBoundary
         * @grammar range.trimBoundary([ignoreEnd])  => Range //true蹇界暐缁撴潫杈圭晫
         * @example
         * DOM Element :
         * <b>|xxx</b>
         * startContainer = xxx; startOffset = 0
         * //鎵ц鍚庢湰鏂规硶鍚�
         * startContainer = <b>;  startOffset = 0
         * @example
         * Dom Element :
         * <b>xx|x</b>
         * startContainer = xxx;  startOffset = 2
         * //鎵ц鏈柟娉曞悗锛寈xx琚疄瀹炲湪鍦ㄥ湴鍒囧垎鎴愪袱涓猅extNode
         * startContainer = <b>; startOffset = 1
         */
        trimBoundary:function (ignoreEnd) {
            this.txtToElmBoundary();
            var start = this.startContainer,
                offset = this.startOffset,
                collapsed = this.collapsed,
                end = this.endContainer;
            if (start.nodeType == 3) {
                if (offset == 0) {
                    this.setStartBefore(start);
                } else {
                    if (offset >= start.nodeValue.length) {
                        this.setStartAfter(start);
                    } else {
                        var textNode = domUtils.split(start, offset);
                        //璺熸柊缁撴潫杈圭晫
                        if (start === end) {
                            this.setEnd(textNode, this.endOffset - offset);
                        } else if (start.parentNode === end) {
                            this.endOffset += 1;
                        }
                        this.setStartBefore(textNode);
                    }
                }
                if (collapsed) {
                    return this.collapse(true);
                }
            }
            if (!ignoreEnd) {
                offset = this.endOffset;
                end = this.endContainer;
                if (end.nodeType == 3) {
                    if (offset == 0) {
                        this.setEndBefore(end);
                    } else {
                        offset < end.nodeValue.length && domUtils.split(end, offset);
                        this.setEndAfter(end);
                    }
                }
            }
            return this;
        },
        /**
         * 濡傛灉閫夊尯鍦ㄦ枃鏈殑杈圭晫涓婏紝灏辨墿灞曢�鍖哄埌鏂囨湰鐨勭埗鑺傜偣涓�
         * @name  txtToElmBoundary
         * @example
         * Dom Element :
         * <b> |xxx</b>
         * startContainer = xxx;  startOffset = 0
         * //鏈柟娉曟墽琛屽悗
         * startContainer = <b>; startOffset = 0
         * @example
         * Dom Element :
         * <b> xxx| </b>
         * startContainer = xxx; startOffset = 3
         * //鏈柟娉曟墽琛屽悗
         * startContainer = <b>; startOffset = 1
         */
        txtToElmBoundary:function (ignoreCollapsed) {
            function adjust(r, c) {
                var container = r[c + 'Container'],
                    offset = r[c + 'Offset'];
                if (container.nodeType == 3) {
                    if (!offset) {
                        r['set' + c.replace(/(\w)/, function (a) {
                            return a.toUpperCase();
                        }) + 'Before'](container);
                    } else if (offset >= container.nodeValue.length) {
                        r['set' + c.replace(/(\w)/, function (a) {
                            return a.toUpperCase();
                        }) + 'After' ](container);
                    }
                }
            }

            if (ignoreCollapsed || !this.collapsed) {
                adjust(this, 'start');
                adjust(this, 'end');
            }
            return this;
        },

        /**
         * 鍦ㄥ綋鍓嶉�鍖虹殑寮�浣嶇疆鍓嶆彃鍏ヤ竴涓妭鐐规垨鑰協ragment锛宺ange鐨勫紑濮嬩綅缃細鍦ㄦ彃鍏ヨ妭鐐圭殑鍓嶈竟
         * @name  insertNode
         * @grammar range.insertNode(node)  => Range //node鍙互鏄痶extNode,elementNode,fragment
         * @example
         * Range :
         * xxx[x<p>xxxx</p>xxxx]x<p>sdfsdf</p>
         * 寰呮彃鍏ode :
         * <p>ssss</p>
         * 鎵ц鏈柟娉曞悗鐨凴ange :
         * xxx[<p>ssss</p>x<p>xxxx</p>xxxx]x<p>sdfsdf</p>
         */
        insertNode:function (node) {
            var first = node, length = 1;
            if (node.nodeType == 11) {
                first = node.firstChild;
                length = node.childNodes.length;
            }
            this.trimBoundary(true);
            var start = this.startContainer,
                offset = this.startOffset;
            var nextNode = start.childNodes[ offset ];
            if (nextNode) {
                start.insertBefore(node, nextNode);
            } else {
                start.appendChild(node);
            }
            if (first.parentNode === this.endContainer) {
                this.endOffset = this.endOffset + length;
            }
            return this.setStartBefore(first);
        },
        /**
         * 璁剧疆鍏夋爣闂悎浣嶇疆,toEnd璁剧疆涓簍rue鏃跺厜鏍囧皢闂悎鍒伴�鍖虹殑缁撳熬
         * @name  setCursor
         * @grammar range.setCursor([toEnd])  =>  Range   //toEnd涓簍rue鏃讹紝鍏夋爣闂悎鍒伴�鍖虹殑鏈熬
         */
        setCursor:function (toEnd, noFillData) {
            return this.collapse(!toEnd).select(noFillData);
        },
        /**
         * 鍒涘缓褰撳墠range鐨勪竴涓功绛撅紝璁板綍涓嬪綋鍓峳ange鐨勪綅缃紝鏂逛究褰揹om鏍戞敼鍙樻椂锛岃繕鑳芥壘鍥炲師鏉ョ殑閫夊尯浣嶇疆
         * @name createBookmark
         * @grammar range.createBookmark([serialize])  => Object  //{start:寮�鏍囪,end:缁撴潫鏍囪,id:serialize} serialize涓虹湡鏃讹紝寮�缁撴潫鏍囪鏄彃鍏ヨ妭鐐圭殑id锛屽惁鍒欐槸鎻掑叆鑺傜偣鐨勫紩鐢�
         */
        createBookmark:function (serialize, same) {
            var endNode,
                startNode = this.document.createElement('span');
            startNode.style.cssText = 'display:none;line-height:0px;';
            startNode.appendChild(this.document.createTextNode('\u200D'));
            startNode.id = '_baidu_bookmark_start_' + (same ? '' : guid++);

            if (!this.collapsed) {
                endNode = startNode.cloneNode(true);
                endNode.id = '_baidu_bookmark_end_' + (same ? '' : guid++);
            }
            this.insertNode(startNode);
            if (endNode) {
                this.collapse().insertNode(endNode).setEndBefore(endNode);
            }
            this.setStartAfter(startNode);
            return {
                start:serialize ? startNode.id : startNode,
                end:endNode ? serialize ? endNode.id : endNode : null,
                id:serialize
            }
        },
        /**
         *  绉诲姩杈圭晫鍒颁功绛句綅缃紝骞跺垹闄ゆ彃鍏ョ殑涔︾鑺傜偣
         *  @name  moveToBookmark
         *  @grammar range.moveToBookmark(bookmark)  => Range //璁╁綋鍓嶇殑range閫夊埌缁欏畾bookmark鐨勪綅缃�bookmark瀵硅薄鏄敱range.createBookmark鍒涘缓鐨�
         */
        moveToBookmark:function (bookmark) {
            var start = bookmark.id ? this.document.getElementById(bookmark.start) : bookmark.start,
                end = bookmark.end && bookmark.id ? this.document.getElementById(bookmark.end) : bookmark.end;
            this.setStartBefore(start);
            domUtils.remove(start);
            if (end) {
                this.setEndBefore(end);
                domUtils.remove(end);
            } else {
                this.collapse(true);
            }
            return this;
        },
        /**
         * 璋冩暣range鐨勮竟鐣岋紝浣垮叾"鏀惧ぇ"鍒版渶杩戠殑鐖禸lock鑺傜偣
         * @name  enlarge
         * @grammar range.enlarge()  =>  Range
         * @example
         * <p><span>xxx</span><b>x[x</b>xxxxx]</p><p>xxx</p> ==> [<p><span>xxx</span><b>xx</b>xxxxx</p>]<p>xxx</p>
         */
        enlarge:function (toBlock, stopFn) {
            var isBody = domUtils.isBody,
                pre, node, tmp = this.document.createTextNode('');
            if (toBlock) {
                node = this.startContainer;
                if (node.nodeType == 1) {
                    if (node.childNodes[this.startOffset]) {
                        pre = node = node.childNodes[this.startOffset]
                    } else {
                        node.appendChild(tmp);
                        pre = node = tmp;
                    }
                } else {
                    pre = node;
                }
                while (1) {
                    if (domUtils.isBlockElm(node)) {
                        node = pre;
                        while ((pre = node.previousSibling) && !domUtils.isBlockElm(pre)) {
                            node = pre;
                        }
                        this.setStartBefore(node);
                        break;
                    }
                    pre = node;
                    node = node.parentNode;
                }
                node = this.endContainer;
                if (node.nodeType == 1) {
                    if (pre = node.childNodes[this.endOffset]) {
                        node.insertBefore(tmp, pre);
                    } else {
                        node.appendChild(tmp);
                    }
                    pre = node = tmp;
                } else {
                    pre = node;
                }
                while (1) {
                    if (domUtils.isBlockElm(node)) {
                        node = pre;
                        while ((pre = node.nextSibling) && !domUtils.isBlockElm(pre)) {
                            node = pre;
                        }
                        this.setEndAfter(node);
                        break;
                    }
                    pre = node;
                    node = node.parentNode;
                }
                if (tmp.parentNode === this.endContainer) {
                    this.endOffset--;
                }
                domUtils.remove(tmp);
            }

            // 鎵╁睍杈圭晫鍒版渶澶�
            if (!this.collapsed) {
                while (this.startOffset == 0) {
                    if (stopFn && stopFn(this.startContainer)) {
                        break;
                    }
                    if (isBody(this.startContainer)) {
                        break;
                    }
                    this.setStartBefore(this.startContainer);
                }
                while (this.endOffset == (this.endContainer.nodeType == 1 ? this.endContainer.childNodes.length : this.endContainer.nodeValue.length)) {
                    if (stopFn && stopFn(this.endContainer)) {
                        break;
                    }
                    if (isBody(this.endContainer)) {
                        break;
                    }
                    this.setEndAfter(this.endContainer);
                }
            }
            return this;
        },
        /**
         * 璋冩暣Range鐨勮竟鐣岋紝浣垮叾"缂╁皬"鍒版渶鍚堥�鐨勪綅缃�
         * @name adjustmentBoundary
         * @grammar range.adjustmentBoundary() => Range   //鍙傝<code><a href="#shrinkboundary">shrinkBoundary</a></code>
         * @example
         * <b>xx[</b>xxxxx] ==> <b>xx</b>[xxxxx]
         * <b>x[xx</b><i>]xxx</i> ==> <b>x[xx</b>]<i>xxx</i>
         */
        adjustmentBoundary:function () {
            if (!this.collapsed) {
                while (!domUtils.isBody(this.startContainer) &&
                    this.startOffset == this.startContainer[this.startContainer.nodeType == 3 ? 'nodeValue' : 'childNodes'].length &&
                    this.startContainer[this.startContainer.nodeType == 3 ? 'nodeValue' : 'childNodes'].length
                    ) {

                    this.setStartAfter(this.startContainer);
                }
                while (!domUtils.isBody(this.endContainer) && !this.endOffset &&
                    this.endContainer[this.endContainer.nodeType == 3 ? 'nodeValue' : 'childNodes'].length
                    ) {
                    this.setEndBefore(this.endContainer);
                }
            }
            return this;
        },
        /**
         * 缁檙ange閫夊尯涓殑鍐呭娣诲姞缁欏畾鐨勬爣绛撅紝涓昏鐢ㄤ簬inline鏍囩
         * @name applyInlineStyle
         * @grammar range.applyInlineStyle(tagName)        =>  Range    //tagName涓洪渶瑕佹坊鍔犵殑鏍峰紡鏍囩鍚�
         * @grammar range.applyInlineStyle(tagName,attrs)  =>  Range    //attrs涓哄睘鎬son瀵硅薄
         * @desc
         * <code type="html"><p>xxxx[xxxx]x</p>  ==>  range.applyInlineStyle("strong")  ==>  <p>xxxx[<strong>xxxx</strong>]x</p>
         * <p>xx[dd<strong>yyyy</strong>]x</p>  ==>  range.applyInlineStyle("strong")  ==>  <p>xx[<strong>ddyyyy</strong>]x</p>
         * <p>xxxx[xxxx]x</p>  ==>  range.applyInlineStyle("strong",{"style":"font-size:12px"})  ==>  <p>xxxx[<strong style="font-size:12px">xxxx</strong>]x</p></code>
         */
        applyInlineStyle:function (tagName, attrs, list) {
            if (this.collapsed)return this;
            this.trimBoundary().enlarge(false,
                function (node) {
                    return node.nodeType == 1 && domUtils.isBlockElm(node)
                }).adjustmentBoundary();
            var bookmark = this.createBookmark(),
                end = bookmark.end,
                filterFn = function (node) {
                    return node.nodeType == 1 ? node.tagName.toLowerCase() != 'br' : !domUtils.isWhitespace(node);
                },
                current = domUtils.getNextDomNode(bookmark.start, false, filterFn),
                node,
                pre,
                range = this.cloneRange();
            while (current && (domUtils.getPosition(current, end) & domUtils.POSITION_PRECEDING)) {
                if (current.nodeType == 3 || dtd[tagName][current.tagName]) {
                    range.setStartBefore(current);
                    node = current;
                    while (node && (node.nodeType == 3 || dtd[tagName][node.tagName]) && node !== end) {
                        pre = node;
                        node = domUtils.getNextDomNode(node, node.nodeType == 1, null, function (parent) {
                            return dtd[tagName][parent.tagName];
                        });
                    }
                    var frag = range.setEndAfter(pre).extractContents(), elm;
                    if (list && list.length > 0) {
                        var level, top;
                        top = level = list[0].cloneNode(false);
                        for (var i = 1, ci; ci = list[i++];) {
                            level.appendChild(ci.cloneNode(false));
                            level = level.firstChild;
                        }
                        elm = level;
                    } else {
                        elm = range.document.createElement(tagName);
                    }
                    if (attrs) {
                        domUtils.setAttributes(elm, attrs);
                    }
                    elm.appendChild(frag);
                    range.insertNode(list ? top : elm);
                    //澶勭悊涓嬫粦绾垮湪a涓婄殑鎯呭喌
                    var aNode;
                    if (tagName == 'span' && attrs.style && /text\-decoration/.test(attrs.style) && (aNode = domUtils.findParentByTagName(elm, 'a', true))) {
                        domUtils.setAttributes(aNode, attrs);
                        domUtils.remove(elm, true);
                        elm = aNode;
                    } else {
                        domUtils.mergeSibling(elm);
                        domUtils.clearEmptySibling(elm);
                    }
                    //鍘婚櫎瀛愯妭鐐圭浉鍚岀殑
                    domUtils.mergeChild(elm, attrs);
                    current = domUtils.getNextDomNode(elm, false, filterFn);
                    domUtils.mergeToParent(elm);
                    if (node === end) {
                        break;
                    }
                } else {
                    current = domUtils.getNextDomNode(current, true, filterFn);
                }
            }
            return this.moveToBookmark(bookmark);
        },
        /**
         * 瀵瑰綋鍓峳ange閫変腑鐨勮妭鐐癸紝鍘绘帀缁欏畾鐨勬爣绛捐妭鐐癸紝浣嗘爣绛句腑鐨勫唴瀹逛繚鐣欙紝涓昏鐢ㄤ簬澶勭悊inline鍏冪礌
         * @name removeInlineStyle
         * @grammar range.removeInlineStyle(tagNames)  => Range  //tagNames 涓洪渶瑕佸幓鎺夌殑鏍峰紡鏍囩鍚�鏀寔"b"鎴栬�["b","i","u"]
         * @desc
         * <code type="html">xx[x<span>xxx<em>yyy</em>zz]z</span>  => range.removeInlineStyle(["em"])  => xx[x<span>xxxyyyzz]z</span></code>
         */
        removeInlineStyle:function (tagNames) {
            if (this.collapsed)return this;
            tagNames = utils.isArray(tagNames) ? tagNames : [tagNames];
            this.shrinkBoundary().adjustmentBoundary();
            var start = this.startContainer, end = this.endContainer;
            while (1) {
                if (start.nodeType == 1) {
                    if (utils.indexOf(tagNames, start.tagName.toLowerCase()) > -1) {
                        break;
                    }
                    if (start.tagName.toLowerCase() == 'body') {
                        start = null;
                        break;
                    }
                }
                start = start.parentNode;
            }
            while (1) {
                if (end.nodeType == 1) {
                    if (utils.indexOf(tagNames, end.tagName.toLowerCase()) > -1) {
                        break;
                    }
                    if (end.tagName.toLowerCase() == 'body') {
                        end = null;
                        break;
                    }
                }
                end = end.parentNode;
            }
            var bookmark = this.createBookmark(),
                frag,
                tmpRange;
            if (start) {
                tmpRange = this.cloneRange().setEndBefore(bookmark.start).setStartBefore(start);
                frag = tmpRange.extractContents();
                tmpRange.insertNode(frag);
                domUtils.clearEmptySibling(start, true);
                start.parentNode.insertBefore(bookmark.start, start);
            }
            if (end) {
                tmpRange = this.cloneRange().setStartAfter(bookmark.end).setEndAfter(end);
                frag = tmpRange.extractContents();
                tmpRange.insertNode(frag);
                domUtils.clearEmptySibling(end, false, true);
                end.parentNode.insertBefore(bookmark.end, end.nextSibling);
            }
            var current = domUtils.getNextDomNode(bookmark.start, false, function (node) {
                return node.nodeType == 1;
            }), next;
            while (current && current !== bookmark.end) {
                next = domUtils.getNextDomNode(current, true, function (node) {
                    return node.nodeType == 1;
                });
                if (utils.indexOf(tagNames, current.tagName.toLowerCase()) > -1) {
                    domUtils.remove(current, true);
                }
                current = next;
            }
            return this.moveToBookmark(bookmark);
        },
        /**
         * 寰楀埌涓�釜鑷棴鍚堢殑鑺傜偣,甯哥敤浜庤幏鍙栬嚜闂拰鐨勮妭鐐癸紝渚嬪鍥剧墖鑺傜偣
         * @name  getClosedNode
         * @grammar range.getClosedNode()  => node|null
         * @example
         * <b>xxxx[<img />]xxx</b>
         */
        getClosedNode:function () {
            var node;
            if (!this.collapsed) {
                var range = this.cloneRange().adjustmentBoundary().shrinkBoundary();
                if (selectOneNode(range)) {
                    var child = range.startContainer.childNodes[range.startOffset];
                    if (child && child.nodeType == 1 && (dtd.$empty[child.tagName] || dtd.$nonChild[child.tagName])) {
                        node = child;
                    }
                }
            }
            return node;
        },
        /**
         * 鏍规嵁褰撳墠range閫変腑鍐呭鑺傜偣锛堝湪椤甸潰涓婅〃鐜颁负鍙嶇櫧鏄剧ず锛�
         * @name select
         * @grammar range.select();  => Range
         */
        select:browser.ie ? function (noFillData, textRange) {
            var nativeRange;
            if (!this.collapsed)
                this.shrinkBoundary();
            var node = this.getClosedNode();
            if (node && !textRange) {
                try {
                    nativeRange = this.document.body.createControlRange();
                    nativeRange.addElement(node);
                    nativeRange.select();
                } catch (e) {}
                return this;
            }
            var bookmark = this.createBookmark(),
                start = bookmark.start,
                end;
            nativeRange = this.document.body.createTextRange();
            nativeRange.moveToElementText(start);
            nativeRange.moveStart('character', 1);
            if (!this.collapsed) {
                var nativeRangeEnd = this.document.body.createTextRange();
                end = bookmark.end;
                nativeRangeEnd.moveToElementText(end);
                nativeRange.setEndPoint('EndToEnd', nativeRangeEnd);
            } else {
                if (!noFillData && this.startContainer.nodeType != 3) {
                    //浣跨敤<span>|x<span>鍥哄畾浣忓厜鏍�
                    var tmpText = this.document.createTextNode(fillChar),
                        tmp = this.document.createElement('span');
                    tmp.appendChild(this.document.createTextNode(fillChar));
                    start.parentNode.insertBefore(tmp, start);
                    start.parentNode.insertBefore(tmpText, start);
                    //褰撶偣b,i,u鏃讹紝涓嶈兘娓呴櫎i涓婅竟鐨刡
                    removeFillData(this.document, tmpText);
                    fillData = tmpText;
                    mergeSibling(tmp, 'previousSibling');
                    mergeSibling(start, 'nextSibling');
                    nativeRange.moveStart('character', -1);
                    nativeRange.collapse(true);
                }
            }
            this.moveToBookmark(bookmark);
            tmp && domUtils.remove(tmp);
            //IE鍦ㄩ殣钘忕姸鎬佷笅涓嶆敮鎸乺ange鎿嶄綔锛宑atch涓�笅
            try {
                nativeRange.select();
            } catch (e) {
            }
            return this;
        } : function (notInsertFillData) {
            function checkOffset(rng){

                function check(node,offset,dir){
                    if(node.nodeType == 3 && node.nodeValue.length < offset){
                        rng[dir + 'Offset'] = node.nodeValue.length
                    }
                }
                check(rng.startContainer,rng.startOffset,'start');
                check(rng.endContainer,rng.endOffset,'end');
            }
            var win = domUtils.getWindow(this.document),
                sel = win.getSelection(),
                txtNode;
            //FF涓嬪叧闂嚜鍔ㄩ暱楂樻椂婊氬姩鏉″湪鍏抽棴dialog鏃朵細璺�
            //ff涓嬪鏋滀笉body.focus灏嗕笉鑳藉畾浣嶉棴鍚堝厜鏍囧埌缂栬緫鍣ㄥ唴
            browser.gecko ? this.document.body.focus() : win.focus();
            if (sel) {
                sel.removeAllRanges();
                // trace:870 chrome/safari鍚庤竟鏄痓r瀵逛簬闂悎寰梤ange涓嶈兘瀹氫綅 鎵�互鍘绘帀浜嗗垽鏂�
                // this.startContainer.nodeType != 3 &&! ((child = this.startContainer.childNodes[this.startOffset]) && child.nodeType == 1 && child.tagName == 'BR'
                if (this.collapsed && !notInsertFillData) {
//                    //opear濡傛灉娌℃湁鑺傜偣鎺ョ潃锛屽師鐢熺殑涓嶈兘澶熷畾浣�涓嶈兘鍦╞ody鐨勭涓�骇鎻掑叆绌虹櫧鑺傜偣
//                    if (notInsertFillData && browser.opera && !domUtils.isBody(this.startContainer) && this.startContainer.nodeType == 1) {
//                        var tmp = this.document.createTextNode('');
//                        this.insertNode(tmp).setStart(tmp, 0).collapse(true);
//                    }
//
                    //澶勭悊鍏夋爣钀藉湪鏂囨湰鑺傜偣鐨勬儏鍐�
                    //澶勭悊浠ヤ笅鐨勬儏鍐�
                    //<b>|xxxx</b>
                    //<b>xxxx</b>|xxxx
                    //xxxx<b>|</b>
                    var start = this.startContainer,child = start;
                    if(start.nodeType == 1){
                        child = start.childNodes[this.startOffset];

                    }
                    if( !(start.nodeType == 3 && this.startOffset)  &&
                        (child ?
                            (!child.previousSibling || child.previousSibling.nodeType != 3)
                            :
                            (!start.lastChild || start.lastChild.nodeType != 3)
                        )
                    ){
                        txtNode = this.document.createTextNode(fillChar);
                        //璺熺潃鍓嶈竟璧�
                        this.insertNode(txtNode);
                        removeFillData(this.document, txtNode);
                        mergeSibling(txtNode, 'previousSibling');
                        mergeSibling(txtNode, 'nextSibling');
                        fillData = txtNode;
                        this.setStart(txtNode, browser.webkit ? 1 : 0).collapse(true);
                    }
                }
                var nativeRange = this.document.createRange();
                if(this.collapsed && browser.opera && this.startContainer.nodeType == 1){
                    var child = this.startContainer.childNodes[this.startOffset];
                    if(!child){
                        //寰�墠闈犳嫝
                        child = this.startContainer.lastChild;
                        if( child && domUtils.isBr(child)){
                            this.setStartBefore(child).collapse(true);
                        }
                    }else{
                        //鍚戝悗闈犳嫝
                        while(child && domUtils.isBlockElm(child)){
                            if(child.nodeType == 1 && child.childNodes[0]){
                                child = child.childNodes[0]
                            }else{
                                break;
                            }
                        }
                        child && this.setStartBefore(child).collapse(true)
                    }

                }
                //鏄痗reateAddress鏈�悗涓�綅绠楃殑涓嶅噯锛岀幇鍦ㄨ繖閲岃繘琛屽井璋�
                checkOffset(this);
                nativeRange.setStart(this.startContainer, this.startOffset);
                nativeRange.setEnd(this.endContainer, this.endOffset);
                sel.addRange(nativeRange);
            }
            return this;
        },
        /**
         * 婊氬姩鏉¤烦鍒板綋鐒秗ange寮�鐨勪綅缃�
         * @name scrollToView
         * @grammar range.scrollToView([win,offset]) => Range //閽堝window瀵硅薄锛岃嫢涓嶆寚瀹氾紝灏嗕互缂栬緫鍖哄煙鐨勭獥鍙ｄ负鍑�offset鍋忕Щ閲�
         */
        scrollToView:function (win, offset) {
            win = win ? window : domUtils.getWindow(this.document);
            var me = this,
                span = me.document.createElement('span');
            //trace:717
            span.innerHTML = '&nbsp;';
            me.cloneRange().insertNode(span);
            domUtils.scrollToView(span, win, offset);
            domUtils.remove(span);
            return me;
        },
        inFillChar : function(){
            var start = this.startContainer;
            if(this.collapsed && start.nodeType == 3
                && start.nodeValue.replace(new RegExp('^' + domUtils.fillChar),'').length + 1 == start.nodeValue.length
                ){
                return true;
            }
            return false;
        },
        createAddress : function(ignoreEnd,ignoreTxt){
            var addr = {},me = this;

            function getAddress(isStart){
                var node = isStart ? me.startContainer : me.endContainer;
                var parents = domUtils.findParents(node,true,function(node){return !domUtils.isBody(node)}),
                    addrs = [];
                for(var i = 0,ci;ci = parents[i++];){
                    addrs.push(domUtils.getNodeIndex(ci,ignoreTxt));
                }
                var firstIndex = 0;

                if(ignoreTxt){
                    if(node.nodeType == 3){
                        var tmpNode = node.previousSibling;
                        while(tmpNode && tmpNode.nodeType == 3){
                            firstIndex += tmpNode.nodeValue.replace(fillCharReg,'').length;
                            tmpNode = tmpNode.previousSibling;
                        }
                        firstIndex +=  (isStart ? me.startOffset : me.endOffset)// - (fillCharReg.test(node.nodeValue) ? 1 : 0 )
                    }else{
                        node =  node.childNodes[ isStart ? me.startOffset : me.endOffset];
                        if(node){
                            firstIndex = domUtils.getNodeIndex(node,ignoreTxt);
                        }else{
                            node = isStart ? me.startContainer : me.endContainer;
                            var first = node.firstChild;
                            while(first){
                                if(domUtils.isFillChar(first)){
                                    first = first.nextSibling;
                                    continue;
                                }
                                firstIndex++;
                                if(first.nodeType == 3){
                                    while( first && first.nodeType == 3){
                                        first = first.nextSibling;
                                    }
                                }else{
                                    first = first.nextSibling;
                                }
                            }
                        }
                    }

                }else{
                    firstIndex = isStart ? domUtils.isFillChar(node) ? 0 : me.startOffset  : me.endOffset
                }
                if(firstIndex < 0){
                    firstIndex = 0;
                }
                addrs.push(firstIndex);
                return addrs;
            }
            addr.startAddress = getAddress(true);
            if(!ignoreEnd){
                addr.endAddress = me.collapsed ? [].concat(addr.startAddress) : getAddress();
            }
            return addr;
        },
        moveToAddress : function(addr,ignoreEnd){
            var me = this;
            function getNode(address,isStart){
                var tmpNode = me.document.body,
                    parentNode,offset;
                for(var i= 0,ci,l=address.length;i<l;i++){
                    ci = address[i];
                    parentNode = tmpNode;
                    tmpNode = tmpNode.childNodes[ci];
                    if(!tmpNode){
                        offset = ci;
                        break;
                    }
                }
                if(isStart){
                    if(tmpNode){
                        me.setStartBefore(tmpNode)
                    }else{
                        me.setStart(parentNode,offset)
                    }
                }else{
                    if(tmpNode){
                        me.setEndBefore(tmpNode)
                    }else{
                        me.setEnd(parentNode,offset)
                    }
                }
            }
            getNode(addr.startAddress,true);
            !ignoreEnd && addr.endAddress &&  getNode(addr.endAddress);
            return me;
        },
        equals : function(rng){
            for(var p in this){
                if(this.hasOwnProperty(p)){
                    if(this[p] !== rng[p])
                        return false
                }
            }
            return true;

        },
        traversal:function(doFn,filterFn){
            if (this.collapsed)
                return this;
            var bookmark = this.createBookmark(),
                end = bookmark.end,
                current = domUtils.getNextDomNode(bookmark.start, false, filterFn);
            while (current && current !== end && (domUtils.getPosition(current, end) & domUtils.POSITION_PRECEDING)) {
                var tmpNode = domUtils.getNextDomNode(current,false,filterFn);
                doFn(current);
                current = tmpNode;
            }
            return this.moveToBookmark(bookmark);
        }
    };
})();
///import editor.js
///import core/browser.js
///import core/dom/dom.js
///import core/dom/dtd.js
///import core/dom/domUtils.js
///import core/dom/Range.js
/**
 * @class baidu.editor.dom.Selection    Selection绫�
 */
(function () {

    function getBoundaryInformation( range, start ) {
        var getIndex = domUtils.getNodeIndex;
        range = range.duplicate();
        range.collapse( start );
        var parent = range.parentElement();
        //濡傛灉鑺傜偣閲屾病鏈夊瓙鑺傜偣锛岀洿鎺ラ�鍑�
        if ( !parent.hasChildNodes() ) {
            return  {container:parent, offset:0};
        }
        var siblings = parent.children,
            child,
            testRange = range.duplicate(),
            startIndex = 0, endIndex = siblings.length - 1, index = -1,
            distance;
        while ( startIndex <= endIndex ) {
            index = Math.floor( (startIndex + endIndex) / 2 );
            child = siblings[index];
            testRange.moveToElementText( child );
            var position = testRange.compareEndPoints( 'StartToStart', range );
            if ( position > 0 ) {
                endIndex = index - 1;
            } else if ( position < 0 ) {
                startIndex = index + 1;
            } else {
                //trace:1043
                return  {container:parent, offset:getIndex( child )};
            }
        }
        if ( index == -1 ) {
            testRange.moveToElementText( parent );
            testRange.setEndPoint( 'StartToStart', range );
            distance = testRange.text.replace( /(\r\n|\r)/g, '\n' ).length;
            siblings = parent.childNodes;
            if ( !distance ) {
                child = siblings[siblings.length - 1];
                return  {container:child, offset:child.nodeValue.length};
            }

            var i = siblings.length;
            while ( distance > 0 ){
                distance -= siblings[ --i ].nodeValue.length;
            }
            return {container:siblings[i], offset:-distance};
        }
        testRange.collapse( position > 0 );
        testRange.setEndPoint( position > 0 ? 'StartToStart' : 'EndToStart', range );
        distance = testRange.text.replace( /(\r\n|\r)/g, '\n' ).length;
        if ( !distance ) {
            return  dtd.$empty[child.tagName] || dtd.$nonChild[child.tagName] ?
            {container:parent, offset:getIndex( child ) + (position > 0 ? 0 : 1)} :
            {container:child, offset:position > 0 ? 0 : child.childNodes.length}
        }
        while ( distance > 0 ) {
            try {
                var pre = child;
                child = child[position > 0 ? 'previousSibling' : 'nextSibling'];
                distance -= child.nodeValue.length;
            } catch ( e ) {
                return {container:parent, offset:getIndex( pre )};
            }
        }
        return  {container:child, offset:position > 0 ? -distance : child.nodeValue.length + distance}
    }

    /**
     * 灏唅eRange杞崲涓篟ange瀵硅薄
     * @param {Range}   ieRange    ieRange瀵硅薄
     * @param {Range}   range      Range瀵硅薄
     * @return  {Range}  range       杩斿洖杞崲鍚庣殑Range瀵硅薄
     */
    function transformIERangeToRange( ieRange, range ) {
        if ( ieRange.item ) {
            range.selectNode( ieRange.item( 0 ) );
        } else {
            var bi = getBoundaryInformation( ieRange, true );
            range.setStart( bi.container, bi.offset );
            if ( ieRange.compareEndPoints( 'StartToEnd', ieRange ) != 0 ) {
                bi = getBoundaryInformation( ieRange, false );
                range.setEnd( bi.container, bi.offset );
            }
        }
        return range;
    }

    /**
     * 鑾峰緱ieRange
     * @param {Selection} sel    Selection瀵硅薄
     * @return {ieRange}    寰楀埌ieRange
     */
    function _getIERange( sel ) {
        var ieRange;
        //ie涓嬫湁鍙兘鎶ラ敊
        try {
            ieRange = sel.getNative().createRange();
        } catch ( e ) {
            return null;
        }
        var el = ieRange.item ? ieRange.item( 0 ) : ieRange.parentElement();
        if ( ( el.ownerDocument || el ) === sel.document ) {
            return ieRange;
        }
        return null;
    }

    var Selection = dom.Selection = function ( doc ) {
        var me = this, iframe;
        me.document = doc;
        if ( ie ) {
            iframe = domUtils.getWindow( doc ).frameElement;
            domUtils.on( iframe, 'beforedeactivate', function () {
                me._bakIERange = me.getIERange();
            } );
            domUtils.on( iframe, 'activate', function () {
                try {
                    if ( !_getIERange( me ) && me._bakIERange ) {
                        me._bakIERange.select();
                    }
                } catch ( ex ) {
                }
                me._bakIERange = null;
            } );
        }
        iframe = doc = null;
    };

    Selection.prototype = {
        /**
         * 鑾峰彇鍘熺敓seleciton瀵硅薄
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.getNative
         * @return {Selection}    鑾峰緱selection瀵硅薄
         */
        getNative:function () {
            var doc = this.document;
            try {
                return !doc ? null : ie && browser.ie < 9 ? doc.selection : domUtils.getWindow( doc ).getSelection();
            } catch ( e ) {
                return null;
            }
        },
        /**
         * 鑾峰緱ieRange
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.getIERange
         * @return {ieRange}    杩斿洖ie鍘熺敓鐨凴ange
         */
        getIERange:function () {
            var ieRange = _getIERange( this );
            if ( !ieRange ) {
                if ( this._bakIERange ) {
                    return this._bakIERange;
                }
            }
            return ieRange;
        },

        /**
         * 缂撳瓨褰撳墠閫夊尯鐨剅ange鍜岄�鍖虹殑寮�鑺傜偣
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.cache
         */
        cache:function () {
            this.clear();
            this._cachedRange = this.getRange();
            this._cachedStartElement = this.getStart();
            this._cachedStartElementPath = this.getStartElementPath();
        },

        getStartElementPath:function () {
            if ( this._cachedStartElementPath ) {
                return this._cachedStartElementPath;
            }
            var start = this.getStart();
            if ( start ) {
                return domUtils.findParents( start, true, null, true )
            }
            return [];
        },
        /**
         * 娓呯┖缂撳瓨
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.clear
         */
        clear:function () {
            this._cachedStartElementPath = this._cachedRange = this._cachedStartElement = null;
        },
        /**
         * 缂栬緫鍣ㄦ槸鍚﹀緱鍒颁簡閫夊尯
         */
        isFocus:function () {
            try {
                return browser.ie && _getIERange( this ) || !browser.ie && this.getNative().rangeCount ? true : false;
            } catch ( e ) {
                return false;
            }

        },
        /**
         * 鑾峰彇閫夊尯瀵瑰簲鐨凴ange
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.getRange
         * @returns {baidu.editor.dom.Range}    寰楀埌Range瀵硅薄
         */
        getRange:function () {
            var me = this;
            function optimze( range ) {
                var child = me.document.body.firstChild,
                    collapsed = range.collapsed;
                while ( child && child.firstChild ) {
                    range.setStart( child, 0 );
                    child = child.firstChild;
                }
                if ( !range.startContainer ) {
                    range.setStart( me.document.body, 0 )
                }
                if ( collapsed ) {
                    range.collapse( true );
                }
            }

            if ( me._cachedRange != null ) {
                return this._cachedRange;
            }
            var range = new baidu.editor.dom.Range( me.document );
            if ( ie && browser.ie < 9 ) {
                var nativeRange = me.getIERange();
                if ( nativeRange ) {
                    //澶囦唤鐨刜bakIERange鍙兘宸茬粡瀹炴晥浜嗭紝dom鏍戝彂鐢熶簡鍙樺寲姣斿浠庢簮鐮佹ā寮忓垏鍥炴潵锛屾墍浠ry涓�笅锛屽疄鏁堝氨鏀惧埌body寮�浣嶇疆
                    try{
                        transformIERangeToRange( nativeRange, range );
                    }catch(e){
                        optimze( range );
                    }

                } else {
                    optimze( range );
                }
            } else {
                var sel = me.getNative();
                if ( sel && sel.rangeCount ) {
                    var firstRange = sel.getRangeAt( 0 );
                    var lastRange = sel.getRangeAt( sel.rangeCount - 1 );
                    range.setStart( firstRange.startContainer, firstRange.startOffset ).setEnd( lastRange.endContainer, lastRange.endOffset );
                    if ( range.collapsed && domUtils.isBody( range.startContainer ) && !range.startOffset ) {
                        optimze( range );
                    }
                } else {
                    //trace:1734 鏈夊彲鑳藉凡缁忎笉鍦╠om鏍戜笂浜嗭紝鏍囪瘑鐨勮妭鐐�
                    if ( this._bakRange && domUtils.inDoc( this._bakRange.startContainer, this.document ) ){
                        return this._bakRange;
                    }
                    optimze( range );
                }
            }
            return this._bakRange = range;
        },

        /**
         * 鑾峰彇寮�鍏冪礌锛岀敤浜庣姸鎬佸弽灏�
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.getStart
         * @return {Element}     鑾峰緱寮�鍏冪礌
         */
        getStart:function () {
            if ( this._cachedStartElement ) {
                return this._cachedStartElement;
            }
            var range = ie ? this.getIERange() : this.getRange(),
                tmpRange,
                start, tmp, parent;
            if ( ie ) {
                if ( !range ) {
                    //todo 缁欑涓�釜鍊煎彲鑳戒細鏈夐棶棰�
                    return this.document.body.firstChild;
                }
                //control鍏冪礌
                if ( range.item ){
                    return range.item( 0 );
                }
                tmpRange = range.duplicate();
                //淇ie涓�b>x</b>[xx] 闂悎鍚�<b>x|</b>xx
                tmpRange.text.length > 0 && tmpRange.moveStart( 'character', 1 );
                tmpRange.collapse( 1 );
                start = tmpRange.parentElement();
                parent = tmp = range.parentElement();
                while ( tmp = tmp.parentNode ) {
                    if ( tmp == start ) {
                        start = parent;
                        break;
                    }
                }
            } else {
                range.shrinkBoundary();
                start = range.startContainer;
                if ( start.nodeType == 1 && start.hasChildNodes() ){
                    start = start.childNodes[Math.min( start.childNodes.length - 1, range.startOffset )];
                }
                if ( start.nodeType == 3 ){
                    return start.parentNode;
                }
            }
            return start;
        },
        /**
         * 寰楀埌閫夊尯涓殑鏂囨湰
         * @public
         * @function
         * @name    baidu.editor.dom.Selection.getText
         * @return  {String}    閫夊尯涓寘鍚殑鏂囨湰
         */
        getText:function () {
            var nativeSel, nativeRange;
            if ( this.isFocus() && (nativeSel = this.getNative()) ) {
                nativeRange = browser.ie ? nativeSel.createRange() : nativeSel.getRangeAt( 0 );
                return browser.ie ? nativeRange.text : nativeRange.toString();
            }
            return '';
        },
        clearRange : function(){
            this.getNative()[browser.ie ? 'empty' : 'removeAllRanges']();
        }
    };
})();
/**
 * @file
 * @name UE.Editor
 * @short Editor
 * @import editor.js,core/utils.js,core/EventBase.js,core/browser.js,core/dom/dtd.js,core/dom/domUtils.js,core/dom/Range.js,core/dom/Selection.js,plugins/serialize.js
 * @desc 缂栬緫鍣ㄤ富绫伙紝鍖呭惈缂栬緫鍣ㄦ彁渚涚殑澶ч儴鍒嗗叕鐢ㄦ帴鍙�
 */
(function () {
    var uid = 0, _selectionChangeTimer;

    /**
     * @private
     * @ignore
     * @param form  缂栬緫鍣ㄦ墍鍦ㄧ殑form鍏冪礌
     * @param editor  缂栬緫鍣ㄥ疄渚嬪璞�
     */
    function setValue(form, editor) {
        var textarea;
        if (editor.textarea) {
            if (utils.isString(editor.textarea)) {
                for (var i = 0, ti, tis = domUtils.getElementsByTagName(form, 'textarea'); ti = tis[i++];) {
                    if (ti.id == 'ueditor_textarea_' + editor.options.textarea) {
                        textarea = ti;
                        break;
                    }
                }
            } else {
                textarea = editor.textarea;
            }
        }
        if (!textarea) {
            form.appendChild(textarea = domUtils.createElement(document, 'textarea', {
                'name': editor.options.textarea,
                'id': 'ueditor_textarea_' + editor.options.textarea,
                'style': "display:none"
            }));
            //涓嶈浜х敓澶氫釜textarea
            editor.textarea = textarea;
        }
        textarea.value = editor.hasContents() ?
            (editor.options.allHtmlEnabled ? editor.getAllHtml() : editor.getContent(null, null, true)) :
            ''
    }
    function loadPlugins(me){
        //鍒濆鍖栨彃浠�
        for (var pi in UE.plugins) {
            UE.plugins[pi].call(me);
        }
        me.langIsReady = true;

        me.fireEvent("langReady");
    }
    function checkCurLang(I18N){
        for(var lang in I18N){
            return lang
        }
    }
    /**
     * UEditor缂栬緫鍣ㄧ被
     * @name Editor
     * @desc 鍒涘缓涓�釜璺熺紪杈戝櫒瀹炰緥
     * - ***container*** 缂栬緫鍣ㄥ鍣ㄥ璞�
     * - ***iframe*** 缂栬緫鍖哄煙鎵�湪鐨刬frame瀵硅薄
     * - ***window*** 缂栬緫鍖哄煙鎵�湪鐨剋indow
     * - ***document*** 缂栬緫鍖哄煙鎵�湪鐨刣ocument瀵硅薄
     * - ***body*** 缂栬緫鍖哄煙鎵�湪鐨刡ody瀵硅薄
     * - ***selection*** 缂栬緫鍖哄煙鐨勯�鍖哄璞�
     */
    var Editor = UE.Editor = function (options) {
        var me = this;
        me.uid = uid++;
        EventBase.call(me);
        me.commands = {};
        me.options = utils.extend(utils.clone(options || {}), UEDITOR_CONFIG, true);
        me.shortcutkeys = {};
        me.inputRules = [];
        me.outputRules = [];
        //璁剧疆榛樿鐨勫父鐢ㄥ睘鎬�
        me.setOpt({
            isShow: true,
            initialContent: '',
            initialStyle:'',
            autoClearinitialContent: false,
            iframeCssUrl: me.options.UEDITOR_HOME_URL + 'themes/iframe.css',
            textarea: 'editorValue',
            focus: false,
            focusInEnd: true,
            autoClearEmptyNode: true,
            fullscreen: false,
            readonly: false,
            zIndex: 999,
            imagePopup: true,
            enterTag: 'p',
            customDomain: false,
            lang: 'zh-cn',
            langPath: me.options.UEDITOR_HOME_URL + 'lang/',
            theme: 'default',
            themePath: me.options.UEDITOR_HOME_URL + 'themes/',
            allHtmlEnabled: false,
            scaleEnabled: false,
            tableNativeEditInFF: false,
            autoSyncData : true
        });

        if(!utils.isEmptyObject(UE.I18N)){
            //淇敼榛樿鐨勮瑷�被鍨�
            me.options.lang = checkCurLang(UE.I18N);
            loadPlugins(me)
        }else{
            utils.loadFile(document, {
                src: me.options.langPath + me.options.lang + "/" + me.options.lang + ".js",
                tag: "script",
                type: "text/javascript",
                defer: "defer"
            }, function () {
                loadPlugins(me)
            });
        }

        UE.instants['ueditorInstant' + me.uid] = me;
    };
    Editor.prototype = {
        /**
         * 褰撶紪杈戝櫒ready鍚庢墽琛屼紶鍏ョ殑fn,濡傛灉缂栬緫鍣ㄥ凡缁忓畬鎴恟eady锛屽氨椹笂鎵цfn锛宖n鐨勪腑鐨則his鏄紪杈戝櫒瀹炰緥銆�
         * 澶ч儴鍒嗙殑瀹炰緥鎺ュ彛閮介渶瑕佹斁鍦ㄨ鏂规硶鍐呴儴鎵ц锛屽惁鍒欏湪IE涓嬪彲鑳戒細鎶ラ敊銆�
         * @name ready
         * @grammar editor.ready(fn) fn鏄綋缂栬緫鍣ㄦ覆鏌撳ソ鍚庢墽琛岀殑function
         * @example
         * var editor = new UE.ui.Editor();
         * editor.render("myEditor");
         * editor.ready(function(){
         *     editor.setContent("娆㈣繋浣跨敤UEditor锛�);
         * })
         */
        ready: function (fn) {
            var me = this;
            if (fn) {
                me.isReady ? fn.apply(me) : me.addListener('ready', fn);
            }
        },
        /**
         * 涓虹紪杈戝櫒璁剧疆榛樿鍙傛暟鍊笺�鑻ョ敤鎴烽厤缃负绌猴紝鍒欎互榛樿閰嶇疆涓哄噯
         * @grammar editor.setOpt(key,value);      //浼犲叆涓�釜閿�鍊煎
         * @grammar editor.setOpt({ key:value});   //浼犲叆涓�釜json瀵硅薄
         */
        setOpt: function (key, val) {
            var obj = {};
            if (utils.isString(key)) {
                obj[key] = val
            } else {
                obj = key;
            }
            utils.extend(this.options, obj, true);
        },
        /**
         * 閿�瘉缂栬緫鍣ㄥ疄渚嬪璞�
         * @name destroy
         * @grammar editor.destroy();
         */
        destroy: function () {

            var me = this;
            me.fireEvent('destroy');
            var container = me.container.parentNode;
            var textarea = me.textarea;
            if (!textarea) {
                textarea = document.createElement('textarea');
                container.parentNode.insertBefore(textarea, container);
            } else {
                textarea.style.display = ''
            }

            textarea.style.width = me.iframe.offsetWidth + 'px';
            textarea.style.height = me.iframe.offsetHeight + 'px';
            textarea.value = me.getContent();
            textarea.id = me.key;
            container.innerHTML = '';
            domUtils.remove(container);
            var key = me.key;
            //trace:2004
            for (var p in me) {
                if (me.hasOwnProperty(p)) {
                    delete this[p];
                }
            }
            UE.delEditor(key);
        },
        /**
         * 娓叉煋缂栬緫鍣ㄧ殑DOM鍒版寚瀹氬鍣紝蹇呴』涓斿彧鑳借皟鐢ㄤ竴娆�
         * @name render
         * @grammar editor.render(containerId);    //鍙互鎸囧畾涓�釜瀹瑰櫒ID
         * @grammar editor.render(containerDom);   //涔熷彲浠ョ洿鎺ユ寚瀹氬鍣ㄥ璞�
         */
        render: function (container) {
            var me = this,
                options = me.options,
                getStyleValue=function(attr){
                   return parseInt(domUtils.getComputedStyle(container,attr));
                };
            if (utils.isString(container)) {
                container = document.getElementById(container);
            }
            if (container) {
                if(options.initialFrameWidth){
                    options.minFrameWidth = options.initialFrameWidth
                }else{
                    options.minFrameWidth = options.initialFrameWidth = container.offsetWidth;
                }
                if(options.initialFrameHeight){
                    options.minFrameHeight = options.initialFrameHeight
                }else{
                    options.initialFrameHeight = options.minFrameHeight = container.offsetHeight;
                }

                container.style.width = /%$/.test(options.initialFrameWidth) ?  '100%' : options.initialFrameWidth-
                   getStyleValue("padding-left")- getStyleValue("padding-right") +'px';
                container.style.height = /%$/.test(options.initialFrameHeight) ?  '100%' : options.initialFrameHeight -
                    getStyleValue("padding-top")- getStyleValue("padding-bottom") +'px';

                container.style.zIndex = options.zIndex;

                var html = ( ie && browser.version < 9  ? '' : '<!DOCTYPE html>') +
                        '<html xmlns=\'http://www.w3.org/1999/xhtml\' class=\'view\' ><head>' +
                        '<style type=\'text/css\'>' +
                        //璁剧疆鍥涘懆鐨勭暀杈�
                        '.view{padding:0;word-wrap:break-word;cursor:text;height:90%;}\n' +
                        //璁剧疆榛樿瀛椾綋鍜屽瓧鍙�
                        //font-family涓嶈兘鍛㈤殢渚挎敼锛屽湪safari涓媐illchar浼氭湁瑙ｆ瀽闂
                        'body{margin:8px;font-family:sans-serif;font-size:16px;}' +
                        //璁剧疆娈佃惤闂磋窛
                        'p{margin:5px 0;}</style>' +
                        ( options.iframeCssUrl ? '<link rel=\'stylesheet\' type=\'text/css\' href=\'' + utils.unhtml(options.iframeCssUrl) + '\'/>' : '' ) +
                        (options.initialStyle ? '<style>' + options.initialStyle + '</style>' : '') +
                        '</head><body class=\'view\' ></body>' +
                        '<script type=\'text/javascript\' ' + (ie ? 'defer=\'defer\'' : '' ) +' id=\'_initialScript\'>' +
                        'setTimeout(function(){window.parent.UE.instants[\'ueditorInstant' + me.uid + '\']._setup(document);},0);' +
                        'var _tmpScript = document.getElementById(\'_initialScript\');_tmpScript.parentNode.removeChild(_tmpScript);</script></html>';
                container.appendChild(domUtils.createElement(document, 'iframe', {
                    id: 'ueditor_' + me.uid,
                    width: "100%",
                    height: "100%",
                    frameborder: "0",
                    src: 'javascript:void(function(){document.open();' + (options.customDomain && document.domain != location.hostname ?  'document.domain="' + document.domain + '";' : '') +
                        'document.write("' + html + '");document.close();}())'
                }));
                container.style.overflow = 'hidden';
                //瑙ｅ喅濡傛灉鏄粰瀹氱殑鐧惧垎姣旓紝浼氬鑷撮珮搴︾畻涓嶅鐨勯棶棰�
                setTimeout(function(){
                    if( /%$/.test(options.initialFrameWidth)){
                        options.minFrameWidth = options.initialFrameWidth = container.offsetWidth;
                        container.style.width = options.initialFrameWidth + 'px';
                    }
                    if(/%$/.test(options.initialFrameHeight)){
                        options.minFrameHeight = options.initialFrameHeight = container.offsetHeight;
                        container.style.height = options.initialFrameHeight + 'px';
                    }
                })
            }
        },
        /**
         * 缂栬緫鍣ㄥ垵濮嬪寲
         * @private
         * @ignore
         * @param {Element} doc 缂栬緫鍣↖frame涓殑鏂囨。瀵硅薄
         */
        _setup: function (doc) {

            var me = this,
                options = me.options;
            if (ie) {
                doc.body.disabled = true;
                doc.body.contentEditable = true;
                doc.body.disabled = false;
            } else {
                doc.body.contentEditable = true;
            }
            doc.body.spellcheck = false;
            me.document = doc;
            me.window = doc.defaultView || doc.parentWindow;
            me.iframe = me.window.frameElement;
            me.body = doc.body;

            me.selection = new dom.Selection(doc);
            //gecko鍒濆鍖栧氨鑳藉緱鍒皉ange,鏃犳硶鍒ゆ柇isFocus浜�
            var geckoSel;
            if (browser.gecko && (geckoSel = this.selection.getNative())) {
                geckoSel.removeAllRanges();
            }
            this._initEvents();
            //涓篺orm鎻愪氦鎻愪緵涓�釜闅愯棌鐨則extarea
            for (var form = this.iframe.parentNode; !domUtils.isBody(form); form = form.parentNode) {
                if (form.tagName == 'FORM') {
                    me.form = form;
                    if(me.options.autoSyncData){
                        domUtils.on(me.window,'blur',function(){
                            setValue(form,me);
                        });
                    }else{
                        domUtils.on(form, 'submit', function () {
                            setValue(this, me);
                        });
                    }
                    break;
                }
            }
            if (options.initialContent) {
                if (options.autoClearinitialContent) {
                    var oldExecCommand = me.execCommand;
                    me.execCommand = function () {
                        me.fireEvent('firstBeforeExecCommand');
                        return oldExecCommand.apply(me, arguments);
                    };
                    this._setDefaultContent(options.initialContent);
                } else
                    this.setContent(options.initialContent, false, true);
            }

            //缂栬緫鍣ㄤ笉鑳戒负绌哄唴瀹�

            if (domUtils.isEmptyNode(me.body)) {
                me.body.innerHTML = '<p>' + (browser.ie ? '' : '<br/>') + '</p>';
            }
            //濡傛灉瑕佹眰focus, 灏辨妸鍏夋爣瀹氫綅鍒板唴瀹瑰紑濮�
            if (options.focus) {
                setTimeout(function () {
                    me.focus(me.options.focusInEnd);
                    //濡傛灉鑷姩娓呴櫎寮�潃锛屽氨涓嶉渶瑕佸仛selectionchange;
                    !me.options.autoClearinitialContent && me._selectionChange();
                }, 0);
            }
            if (!me.container) {
                me.container = this.iframe.parentNode;
            }
            if (options.fullscreen && me.ui) {
                me.ui.setFullScreen(true);
            }

            try {
                me.document.execCommand('2D-position', false, false);
            } catch (e) {
            }
            try {
                me.document.execCommand('enableInlineTableEditing', false, false);
            } catch (e) {
            }
            try {
                me.document.execCommand('enableObjectResizing', false, false);
            } catch (e) {
//                domUtils.on(me.body,browser.ie ? 'resizestart' : 'resize', function( evt ) {
//                    domUtils.preventDefault(evt)
//                });
            }
            me._bindshortcutKeys();
            me.isReady = 1;
            me.fireEvent('ready');
            options.onready && options.onready.call(me);
            if (!browser.ie) {
                domUtils.on(me.window, ['blur', 'focus'], function (e) {
                    //chrome涓嬩細鍑虹幇alt+tab鍒囨崲鏃讹紝瀵艰嚧閫夊尯浣嶇疆涓嶅
                    if (e.type == 'blur') {
                        me._bakRange = me.selection.getRange();
                        try {
                            me._bakNativeRange = me.selection.getNative().getRangeAt(0);
                            me.selection.getNative().removeAllRanges();
                        } catch (e) {
                            me._bakNativeRange = null;
                        }

                    } else {
                        try {
                            me._bakRange && me._bakRange.select();
                        } catch (e) {
                        }
                    }
                });
            }
            //trace:1518 ff3.6body涓嶅瀵涳紝浼氬鑷寸偣鍑荤┖鐧藉鏃犳硶鑾峰緱鐒︾偣
            if (browser.gecko && browser.version <= 10902) {
                //淇ff3.6鍒濆鍖栬繘鏉ワ紝涓嶈兘鐐瑰嚮鑾峰緱鐒︾偣
                me.body.contentEditable = false;
                setTimeout(function () {
                    me.body.contentEditable = true;
                }, 100);
                setInterval(function () {
                    me.body.style.height = me.iframe.offsetHeight - 20 + 'px'
                }, 100)
            }
            !options.isShow && me.setHide();
            options.readonly && me.setDisabled();
        },
        /**
         * 鍚屾缂栬緫鍣ㄧ殑鏁版嵁锛屼负鎻愪氦鏁版嵁鍋氬噯澶囷紝涓昏鐢ㄤ簬浣犳槸鎵嬪姩鎻愪氦鐨勬儏鍐�
         * @name sync
         * @grammar editor.sync(); //浠庣紪杈戝櫒鐨勫鍣ㄥ悜涓婃煡鎵撅紝濡傛灉鎵惧埌灏卞悓姝ユ暟鎹�
         * @grammar editor.sync(formID); //formID鍒跺畾涓�釜瑕佸悓姝ユ暟鎹殑form鐨刬d,缂栬緫鍣ㄧ殑鏁版嵁浼氬悓姝ュ埌浣犳寚瀹歠orm涓�
         * @desc
         * 鍚庡彴鍙栧緱鏁版嵁寰楅敭鍊间娇鐢ㄤ綘瀹瑰櫒涓婂緱''name''灞炴�锛屽鏋滄病鏈夊氨浣跨敤鍙傛暟浼犲叆鐨�'textarea''
         * @example
         * editor.sync();
         * form.sumbit(); //form鍙橀噺宸茬粡鎸囧悜浜唂orm鍏冪礌
         *
         */
        sync: function (formId) {
            var me = this,
                form = formId ? document.getElementById(formId) :
                    domUtils.findParent(me.iframe.parentNode, function (node) {
                        return node.tagName == 'FORM'
                    }, true);
            form && setValue(form, me);
        },
        /**
         * 璁剧疆缂栬緫鍣ㄩ珮搴�
         * @name setHeight
         * @grammar editor.setHeight(number);  //绾暟鍊硷紝涓嶅甫鍗曚綅
         */
        setHeight: function (height,notSetHeight) {
            if (height !== parseInt(this.iframe.parentNode.style.height)) {
                this.iframe.parentNode.style.height = height + 'px';
            }
            !notSetHeight && (this.options.minFrameHeight = this.options.initialFrameHeight = height);

            this.body.style.height = height + 'px';
        },

        addshortcutkey: function (cmd, keys) {
            var obj = {};
            if (keys) {
                obj[cmd] = keys
            } else {
                obj = cmd;
            }
            utils.extend(this.shortcutkeys, obj)
        },
        _bindshortcutKeys: function () {
            var me = this, shortcutkeys = this.shortcutkeys;
            me.addListener('keydown', function (type, e) {
                var keyCode = e.keyCode || e.which;
                for (var i in shortcutkeys) {
                    var tmp = shortcutkeys[i].split(',');
                    for (var t = 0, ti; ti = tmp[t++];) {
                        ti = ti.split(':');
                        var key = ti[0], param = ti[1];
                        if (/^(ctrl)(\+shift)?\+(\d+)$/.test(key.toLowerCase()) || /^(\d+)$/.test(key)) {
                            if (( (RegExp.$1 == 'ctrl' ? (e.ctrlKey || e.metaKey) : 0)
                                && (RegExp.$2 != "" ? e[RegExp.$2.slice(1) + "Key"] : 1)
                                && keyCode == RegExp.$3
                                ) ||
                                keyCode == RegExp.$1
                                ) {
                                if (me.queryCommandState(i,param) != -1)
                                    me.execCommand(i, param);
                                domUtils.preventDefault(e);
                            }
                        }
                    }

                }
            });
        },
        /**
         * 鑾峰彇缂栬緫鍣ㄥ唴瀹�
         * @name getContent
         * @grammar editor.getContent()  => String //鑻ョ紪杈戝櫒涓彧鍖呭惈瀛楃"&lt;p&gt;&lt;br /&gt;&lt;/p/&gt;"浼氳繑鍥炵┖銆�
         * @grammar editor.getContent(fn)  => String
         * @example
         * getContent榛樿鏄細鐜拌皟鐢╤asContents鏉ュ垽鏂紪杈戝櫒鏄惁涓虹┖锛屽鏋滄槸锛屽氨鐩存帴杩斿洖绌哄瓧绗︿覆
         * 浣犱篃鍙互浼犲叆涓�釜fn鏉ユ帴鏇縣asContents鐨勫伐浣滐紝瀹氬埗鍒ゆ柇鐨勮鍒�
         * editor.getContent(function(){
         *     return false //缂栬緫鍣ㄦ病鏈夊唴瀹�锛実etContent鐩存帴杩斿洖绌�
         * })
         */
        getContent: function (cmd, fn,notSetCursor,ignoreBlank,formatter) {
            var me = this;
            if (cmd && utils.isFunction(cmd)) {
                fn = cmd;
                cmd = '';
            }
            if (fn ? !fn() : !this.hasContents()) {
                return '';
            }
            me.fireEvent('beforegetcontent');
            var root = UE.htmlparser(me.body.innerHTML,ignoreBlank);
            me.filterOutputRule(root);
            me.fireEvent('aftergetcontent', cmd);
            return  root.toHtml(formatter);
        },
        /**
         * 鍙栧緱瀹屾暣鐨刪tml浠ｇ爜锛屽彲浠ョ洿鎺ユ樉绀烘垚瀹屾暣鐨刪tml鏂囨。
         * @name getAllHtml
         * @grammar editor.getAllHtml()  => String
         */
        getAllHtml: function () {
            var me = this,
                headHtml = [],
                html = '';
            me.fireEvent('getAllHtml', headHtml);
            if (browser.ie && browser.version > 8) {
                var headHtmlForIE9 = '';
                utils.each(me.document.styleSheets, function (si) {
                    headHtmlForIE9 += ( si.href ? '<link rel="stylesheet" type="text/css" href="' + si.href + '" />' : '<style>' + si.cssText + '</style>');
                });
                utils.each(me.document.getElementsByTagName('script'), function (si) {
                    headHtmlForIE9 += si.outerHTML;
                });

            }
            return '<html><head>' + (me.options.charset ? '<meta http-equiv="Content-Type" content="text/html; charset=' + me.options.charset + '"/>' : '')
                + (headHtmlForIE9 || me.document.getElementsByTagName('head')[0].innerHTML) + headHtml.join('\n') + '</head>'
                + '<body ' + (ie && browser.version < 9 ? 'class="view"' : '') + '>' + me.getContent(null, null, true) + '</body></html>';
        },
        /**
         * 寰楀埌缂栬緫鍣ㄧ殑绾枃鏈唴瀹癸紝浣嗕細淇濈暀娈佃惤鏍煎紡
         * @name getPlainTxt
         * @grammar editor.getPlainTxt()  => String
         */
        getPlainTxt: function () {
            var reg = new RegExp(domUtils.fillChar, 'g'),
                html = this.body.innerHTML.replace(/[\n\r]/g, '');//ie瑕佸厛鍘讳簡\n鍦ㄥ鐞�
            html = html.replace(/<(p|div)[^>]*>(<br\/?>|&nbsp;)<\/\1>/gi, '\n')
                .replace(/<br\/?>/gi, '\n')
                .replace(/<[^>/]+>/g, '')
                .replace(/(\n)?<\/([^>]+)>/g, function (a, b, c) {
                    return dtd.$block[c] ? '\n' : b ? b : '';
                });
            //鍙栧嚭鏉ョ殑绌烘牸浼氭湁c2a0浼氬彉鎴愪贡鐮侊紝澶勭悊杩欑鎯呭喌\u00a0
            return html.replace(reg, '').replace(/\u00a0/g, ' ').replace(/&nbsp;/g, ' ');
        },

        /**
         * 鑾峰彇缂栬緫鍣ㄤ腑鐨勭函鏂囨湰鍐呭,娌℃湁娈佃惤鏍煎紡
         * @name getContentTxt
         * @grammar editor.getContentTxt()  => String
         */
        getContentTxt: function () {
            var reg = new RegExp(domUtils.fillChar, 'g');
            //鍙栧嚭鏉ョ殑绌烘牸浼氭湁c2a0浼氬彉鎴愪贡鐮侊紝澶勭悊杩欑鎯呭喌\u00a0
            return this.body[browser.ie ? 'innerText' : 'textContent'].replace(reg, '').replace(/\u00a0/g, ' ');
        },

        /**
         * 灏唄tml璁剧疆鍒扮紪杈戝櫒涓� 濡傛灉鏄敤浜庡垵濮嬪寲鏃剁粰缂栬緫鍣ㄨ祴鍒濆�锛屽垯蹇呴』鏀惧湪ready鏂规硶鍐呴儴鎵ц
         * @name setContent
         * @grammar editor.setContent(html)
         * @example
         * var editor = new UE.ui.Editor()
         * editor.ready(function(){
         *     //闇�ready鍚庢墽琛岋紝鍚﹀垯鍙兘鎶ラ敊
         *     editor.setContent("娆㈣繋浣跨敤UEditor锛�);
         * })
         */
        setContent: function (html, isAppendTo, notFireSelectionchange) {
            var me = this;

            me.fireEvent('beforesetcontent', html);
            var root = UE.htmlparser(html);
            me.filterInputRule(root);
            html = root.toHtml();


            me.body.innerHTML = (isAppendTo ? me.body.innerHTML : '') + html;


            function isCdataDiv(node){
                return  node.tagName == 'DIV' && node.getAttribute('cdata_tag');
            }
            //缁欐枃鏈垨鑰卛nline鑺傜偣濂梡鏍囩
            if (me.options.enterTag == 'p') {

                var child = this.body.firstChild, tmpNode;
                if (!child || child.nodeType == 1 &&
                    (dtd.$cdata[child.tagName] || isCdataDiv(child) ||
                        domUtils.isCustomeNode(child)
                        )
                    && child === this.body.lastChild) {
                    this.body.innerHTML = '<p>' + (browser.ie ? '&nbsp;' : '<br/>') + '</p>' + this.body.innerHTML;

                } else {
                    var p = me.document.createElement('p');
                    while (child) {
                        while (child && (child.nodeType == 3 || child.nodeType == 1 && dtd.p[child.tagName] && !dtd.$cdata[child.tagName])) {
                            tmpNode = child.nextSibling;
                            p.appendChild(child);
                            child = tmpNode;
                        }
                        if (p.firstChild) {
                            if (!child) {
                                me.body.appendChild(p);
                                break;
                            } else {
                                child.parentNode.insertBefore(p, child);
                                p = me.document.createElement('p');
                            }
                        }
                        child = child.nextSibling;
                    }
                }
            }
            me.fireEvent('aftersetcontent');
            me.fireEvent('contentchange');

            !notFireSelectionchange && me._selectionChange();
            //娓呴櫎淇濆瓨鐨勯�鍖�
            me._bakRange = me._bakIERange = me._bakNativeRange = null;
            //trace:1742 setContent鍚巊ecko鑳藉緱鍒扮劍鐐归棶棰�
            var geckoSel;
            if (browser.gecko && (geckoSel = this.selection.getNative())) {
                geckoSel.removeAllRanges();
            }
            if(me.options.autoSyncData){
                me.form && setValue(me.form,me);
            }
        },

        /**
         * 璁╃紪杈戝櫒鑾峰緱鐒︾偣锛宼oEnd纭畾focus浣嶇疆
         * @name focus
         * @grammar editor.focus([toEnd])   //榛樿focus鍒扮紪杈戝櫒澶撮儴锛宼oEnd涓簍rue鏃秄ocus鍒板唴瀹瑰熬閮�
         */
        focus: function (toEnd) {
            try {
                var me = this,
                    rng = me.selection.getRange();
                if (toEnd) {
                    rng.setStartAtLast(me.body.lastChild).setCursor(false, true);
                } else {
                    rng.select(true);
                }
                this.fireEvent('focus');
            } catch (e) {
            }
        },

        /**
         * 鍒濆鍖朥E浜嬩欢鍙婇儴鍒嗕簨浠朵唬鐞�
         * @private
         * @ignore
         */
        _initEvents: function () {
            var me = this,
                doc = me.document,
                win = me.window;
            me._proxyDomEvent = utils.bind(me._proxyDomEvent, me);
            domUtils.on(doc, ['click', 'contextmenu', 'mousedown', 'keydown', 'keyup', 'keypress', 'mouseup', 'mouseover', 'mouseout', 'selectstart'], me._proxyDomEvent);
            domUtils.on(win, ['focus', 'blur'], me._proxyDomEvent);
            domUtils.on(doc, ['mouseup', 'keydown'], function (evt) {
                //鐗规畩閿笉瑙﹀彂selectionchange
                if (evt.type == 'keydown' && (evt.ctrlKey || evt.metaKey || evt.shiftKey || evt.altKey)) {
                    return;
                }
                if (evt.button == 2)return;
                me._selectionChange(250, evt);
            });
//            //澶勭悊鎷栨嫿
//            //ie ff涓嶈兘浠庡杈规嫋鍏�
//            //chrome鍙拡瀵逛粠澶栬竟鎷栧叆鐨勫唴瀹硅繃婊�
//            var innerDrag = 0, source = browser.ie ? me.body : me.document, dragoverHandler;
//            domUtils.on(source, 'dragstart', function () {
//                innerDrag = 1;
//            });
//            domUtils.on(source, browser.webkit ? 'dragover' : 'drop', function () {
//                return browser.webkit ?
//                    function () {
//                        clearTimeout(dragoverHandler);
//                        dragoverHandler = setTimeout(function () {
//                            if (!innerDrag) {
//                                var sel = me.selection,
//                                    range = sel.getRange();
//                                if (range) {
//                                    var common = range.getCommonAncestor();
//                                    if (common && me.serialize) {
//                                        var f = me.serialize,
//                                            node =
//                                                f.filter(
//                                                    f.transformInput(
//                                                        f.parseHTML(
//                                                            f.word(common.innerHTML)
//                                                        )
//                                                    )
//                                                );
//                                        common.innerHTML = f.toHTML(node);
//                                    }
//                                }
//                            }
//                            innerDrag = 0;
//                        }, 200);
//                    } :
//                    function (e) {
//                        if (!innerDrag) {
//                            e.preventDefault ? e.preventDefault() : (e.returnValue = false);
//                        }
//                        innerDrag = 0;
//                    }
//            }());
        },
        /**
         * 瑙﹀彂浜嬩欢浠ｇ悊
         * @private
         * @ignore
         */
        _proxyDomEvent: function (evt) {
            return this.fireEvent(evt.type.replace(/^on/, ''), evt);
        },
        /**
         * 鍙樺寲閫夊尯
         * @private
         * @ignore
         */
        _selectionChange: function (delay, evt) {
            var me = this;
            //鏈夊厜鏍囨墠鍋歴electionchange 涓轰簡瑙ｅ喅鏈猣ocus鏃剁偣鍑籹ource涓嶈兘瑙﹀彂鏇存敼宸ュ叿鏍忕姸鎬佺殑闂锛坰ource鍛戒护notNeedUndo=1锛�
//            if ( !me.selection.isFocus() ){
//                return;
//            }


            var hackForMouseUp = false;
            var mouseX, mouseY;
            if (browser.ie && browser.version < 9 && evt && evt.type == 'mouseup') {
                var range = this.selection.getRange();
                if (!range.collapsed) {
                    hackForMouseUp = true;
                    mouseX = evt.clientX;
                    mouseY = evt.clientY;
                }
            }
            clearTimeout(_selectionChangeTimer);
            _selectionChangeTimer = setTimeout(function () {
                if (!me.selection.getNative()) {
                    return;
                }
                //淇涓�釜IE涓嬬殑bug: 榧犳爣鐐瑰嚮涓�宸查�鎷╃殑鏂囨湰涓棿鏃讹紝鍙兘鍦╩ouseup鍚庣殑涓�鏃堕棿鍐呭彇鍒扮殑range鏄湪selection鐨則ype涓篘one涓嬬殑閿欒鍊�
                //IE涓嬪鏋滅敤鎴锋槸鎷栨嫿涓�宸查�鎷╂枃鏈紝鍒欎笉浼氳Е鍙憁ouseup浜嬩欢锛屾墍浠ヨ繖閲岀殑鐗规畩澶勭悊涓嶄細瀵瑰叾鏈夊奖鍝�
                var ieRange;
                if (hackForMouseUp && me.selection.getNative().type == 'None') {
                    ieRange = me.document.body.createTextRange();
                    try {
                        ieRange.moveToPoint(mouseX, mouseY);
                    } catch (ex) {
                        ieRange = null;
                    }
                }
                var bakGetIERange;
                if (ieRange) {
                    bakGetIERange = me.selection.getIERange;
                    me.selection.getIERange = function () {
                        return ieRange;
                    };
                }
                me.selection.cache();
                if (bakGetIERange) {
                    me.selection.getIERange = bakGetIERange;
                }
                if (me.selection._cachedRange && me.selection._cachedStartElement) {
                    me.fireEvent('beforeselectionchange');
                    // 绗簩涓弬鏁癱auseByUi涓簍rue浠ｈ〃鐢辩敤鎴蜂氦浜掗�鎴愮殑selectionchange.
                    me.fireEvent('selectionchange', !!evt);
                    me.fireEvent('afterselectionchange');
                    me.selection.clear();
                }
            }, delay || 50);
        },
        _callCmdFn: function (fnName, args) {
            var cmdName = args[0].toLowerCase(),
                cmd, cmdFn;
            cmd = this.commands[cmdName] || UE.commands[cmdName];
            cmdFn = cmd && cmd[fnName];
            //娌℃湁querycommandstate鎴栬�娌℃湁command鐨勯兘榛樿杩斿洖0
            if ((!cmd || !cmdFn) && fnName == 'queryCommandState') {
                return 0;
            } else if (cmdFn) {
                return cmdFn.apply(this, args);
            }
        },

        /**
         * 鎵ц缂栬緫鍛戒护cmdName锛屽畬鎴愬瘜鏂囨湰缂栬緫鏁堟灉
         * @name execCommand
         * @grammar editor.execCommand(cmdName)   => {*}
         */
        execCommand: function (cmdName) {
            cmdName = cmdName.toLowerCase();
            var me = this,
                result,
                cmd = me.commands[cmdName] || UE.commands[cmdName];
            if (!cmd || !cmd.execCommand) {
                return null;
            }
            if (!cmd.notNeedUndo && !me.__hasEnterExecCommand) {
                me.__hasEnterExecCommand = true;
                if (me.queryCommandState.apply(me,arguments) != -1) {
                    me.fireEvent('beforeexeccommand', cmdName);
                    result = this._callCmdFn('execCommand', arguments);
                    !me._ignoreContentChange && me.fireEvent('contentchange');
                    me.fireEvent('afterexeccommand', cmdName);
                }
                me.__hasEnterExecCommand = false;
            } else {
                result = this._callCmdFn('execCommand', arguments);
                !me._ignoreContentChange && me.fireEvent('contentchange')
            }
            !me._ignoreContentChange && me._selectionChange();
            return result;
        },
        /**
         * 鏍规嵁浼犲叆鐨刢ommand鍛戒护锛屾煡閫夌紪杈戝櫒褰撳墠鐨勯�鍖猴紝杩斿洖鍛戒护鐨勭姸鎬�
         * @name  queryCommandState
         * @grammar editor.queryCommandState(cmdName)  => (-1|0|1)
         * @desc
         * * ''-1'' 褰撳墠鍛戒护涓嶅彲鐢�
         * * ''0'' 褰撳墠鍛戒护鍙敤
         * * ''1'' 褰撳墠鍛戒护宸茬粡鎵ц杩囦簡
         */
        queryCommandState: function (cmdName) {
            return this._callCmdFn('queryCommandState', arguments);
        },

        /**
         * 鏍规嵁浼犲叆鐨刢ommand鍛戒护锛屾煡閫夌紪杈戝櫒褰撳墠鐨勯�鍖猴紝鏍规嵁鍛戒护杩斿洖鐩稿叧鐨勫�
         * @name  queryCommandValue
         * @grammar editor.queryCommandValue(cmdName)  =>  {*}
         */
        queryCommandValue: function (cmdName) {
            return this._callCmdFn('queryCommandValue', arguments);
        },
        /**
         * 妫�煡缂栬緫鍖哄煙涓槸鍚︽湁鍐呭锛岃嫢鍖呭惈tags涓殑鑺傜偣绫诲瀷锛岀洿鎺ヨ繑鍥瀟rue
         * @name  hasContents
         * @desc
         * 榛樿鏈夋枃鏈唴瀹癸紝鎴栬�鏈変互涓嬭妭鐐归兘涓嶈涓烘槸绌�
         * <code>{table:1,ul:1,ol:1,dl:1,iframe:1,area:1,base:1,col:1,hr:1,img:1,embed:1,input:1,link:1,meta:1,param:1}</code>
         * @grammar editor.hasContents()  => (true|false)
         * @grammar editor.hasContents(tags)  =>  (true|false)  //鑻ユ枃妗ｄ腑鍖呭惈tags鏁扮粍閲屽搴旂殑tag锛岀洿鎺ヨ繑鍥瀟rue
         * @example
         * editor.hasContents(['span']) //濡傛灉缂栬緫鍣ㄩ噷鏈夎繖浜涳紝涓嶈涓烘槸绌�
         */
        hasContents: function (tags) {
            if (tags) {
                for (var i = 0, ci; ci = tags[i++];) {
                    if (this.document.getElementsByTagName(ci).length > 0) {
                        return true;
                    }
                }
            }
            if (!domUtils.isEmptyBlock(this.body)) {
                return true
            }
            //闅忔椂娣诲姞,瀹氫箟鐨勭壒娈婃爣绛惧鏋滃瓨鍦紝涓嶈兘璁や负鏄┖
            tags = ['div'];
            for (i = 0; ci = tags[i++];) {
                var nodes = domUtils.getElementsByTagName(this.document, ci);
                for (var n = 0, cn; cn = nodes[n++];) {
                    if (domUtils.isCustomeNode(cn)) {
                        return true;
                    }
                }
            }
            return false;
        },
        /**
         * 閲嶇疆缂栬緫鍣紝鍙敤鏉ュ仛澶氫釜tab浣跨敤鍚屼竴涓紪杈戝櫒瀹炰緥
         * @name  reset
         * @desc
         * * 娓呯┖缂栬緫鍣ㄥ唴瀹�
         * * 娓呯┖鍥為�鍒楄〃
         * @grammar editor.reset()
         */
        reset: function () {
            this.fireEvent('reset');
        },
        setEnabled: function () {
            var me = this, range;
            if (me.body.contentEditable == 'false') {
                me.body.contentEditable = true;
                range = me.selection.getRange();
                //鏈夊彲鑳藉唴瀹逛涪澶变簡
                try {
                    range.moveToBookmark(me.lastBk);
                    delete me.lastBk
                } catch (e) {
                    range.setStartAtFirst(me.body).collapse(true)
                }
                range.select(true);
                if (me.bkqueryCommandState) {
                    me.queryCommandState = me.bkqueryCommandState;
                    delete me.bkqueryCommandState;
                }
                me.fireEvent('selectionchange');
            }
        },
        /**
         * 璁剧疆褰撳墠缂栬緫鍖哄煙鍙互缂栬緫
         * @name enable
         * @grammar editor.enable()
         */
        enable: function () {
            return this.setEnabled();
        },
        setDisabled: function (except) {
            var me = this;
            except = except ? utils.isArray(except) ? except : [except] : [];
            if (me.body.contentEditable == 'true') {
                if (!me.lastBk) {
                    me.lastBk = me.selection.getRange().createBookmark(true);
                }
                me.body.contentEditable = false;
                me.bkqueryCommandState = me.queryCommandState;
                me.queryCommandState = function (type) {
                    if (utils.indexOf(except, type) != -1) {
                        return me.bkqueryCommandState.apply(me, arguments);
                    }
                    return -1;
                };
                me.fireEvent('selectionchange');
            }
        },
        /** 璁剧疆褰撳墠缂栬緫鍖哄煙涓嶅彲缂栬緫,except涓殑鍛戒护闄ゅ
         * @name disable
         * @grammar editor.disable()
         * @grammar editor.disable(except)  //渚嬪鐨勫懡浠わ紝涔熷嵆鍗充娇璁剧疆浜哾isable锛屾澶勯厤缃殑鍛戒护浠嶇劧鍙互鎵ц
         * @example
         * //绂佺敤宸ュ叿鏍忎腑闄ゅ姞绮楀拰鎻掑叆鍥剧墖涔嬪鐨勬墍鏈夊姛鑳�
         * editor.disable(['bold','insertimage']);//鍙互鏄崟涓�殑String,涔熷彲浠ユ槸Array
         */
        disable: function (except) {
            return this.setDisabled(except);
        },
        /**
         * 璁剧疆榛樿鍐呭
         * @ignore
         * @private
         * @param  {String} cont 瑕佸瓨鍏ョ殑鍐呭
         */
        _setDefaultContent: function () {
            function clear() {
                var me = this;
                if (me.document.getElementById('initContent')) {
                    me.body.innerHTML = '<p>' + (ie ? '' : '<br/>') + '</p>';
                    me.removeListener('firstBeforeExecCommand focus', clear);
                    setTimeout(function () {
                        me.focus();
                        me._selectionChange();
                    }, 0)
                }
            }

            return function (cont) {
                var me = this;
                me.body.innerHTML = '<p id="initContent">' + cont + '</p>';

                me.addListener('firstBeforeExecCommand focus', clear);
            }
        }(),
        /**
         * show鏂规硶鐨勫吋瀹圭増鏈�
         * @private
         * @ignore
         */
        setShow: function () {
            var me = this, range = me.selection.getRange();
            if (me.container.style.display == 'none') {
                //鏈夊彲鑳藉唴瀹逛涪澶变簡
                try {
                    range.moveToBookmark(me.lastBk);
                    delete me.lastBk
                } catch (e) {
                    range.setStartAtFirst(me.body).collapse(true)
                }
                //ie涓媐ocus瀹炴晥锛屾墍浠ュ仛浜嗕釜寤惰繜
                setTimeout(function () {
                    range.select(true);
                }, 100);
                me.container.style.display = '';
            }

        },
        /**
         * 鏄剧ず缂栬緫鍣�
         * @name show
         * @grammar editor.show()
         */
        show: function () {
            return this.setShow();
        },
        /**
         * hide鏂规硶鐨勫吋瀹圭増鏈�
         * @private
         * @ignore
         */
        setHide: function () {
            var me = this;
            if (!me.lastBk) {
                me.lastBk = me.selection.getRange().createBookmark(true);
            }
            me.container.style.display = 'none'
        },
        /**
         * 闅愯棌缂栬緫鍣�
         * @name hide
         * @grammar editor.hide()
         */
        hide: function () {
            return this.setHide();
        },
        /**
         * 鏍规嵁鍒跺畾鐨勮矾寰勶紝鑾峰彇瀵瑰簲鐨勮瑷�祫婧�
         * @name  getLang
         * @grammar editor.getLang(path)  =>  锛圝SON|String) 璺緞鏍规嵁鐨勬槸lang鐩綍涓嬬殑璇█鏂囦欢鐨勮矾寰勭粨鏋�
         * @example
         * editor.getLang('contextMenu.delete') //濡傛灉褰撳墠鏄腑鏂囷紝閭ｈ繑鍥炴槸鐨勬槸鍒犻櫎
         */
        getLang: function (path) {
            var lang = UE.I18N[this.options.lang];
            if (!lang) {
                throw Error("not import language file");
            }
            path = (path || "").split(".");
            for (var i = 0, ci; ci = path[i++];) {
                lang = lang[ci];
                if (!lang)break;
            }
            return lang;
        },
        /**
         * 璁＄畻缂栬緫鍣ㄥ綋鍓嶅唴瀹圭殑闀垮害
         * @name  getContentLength
         * @grammar editor.getContentLength(ingoneHtml,tagNames)  =>
         * @example
         * editor.getLang(true)
         */
        getContentLength: function (ingoneHtml, tagNames) {
            var count = this.getContent(false,false,true).length;
            if (ingoneHtml) {
                tagNames = (tagNames || []).concat([ 'hr', 'img', 'iframe']);
                count = this.getContentTxt().replace(/[\t\r\n]+/g, '').length;
                for (var i = 0, ci; ci = tagNames[i++];) {
                    count += this.document.getElementsByTagName(ci).length;
                }
            }
            return count;
        },
        addInputRule: function (rule) {
            this.inputRules.push(rule);
        },
        filterInputRule: function (root) {
            for (var i = 0, ci; ci = this.inputRules[i++];) {
                ci.call(this, root)
            }
        },
        addOutputRule: function (rule) {
            this.outputRules.push(rule)
        },
        filterOutputRule: function (root) {
            for (var i = 0, ci; ci = this.outputRules[i++];) {
                ci.call(this, root)
            }
        }
        /**
         * 寰楀埌dialog瀹炰緥瀵硅薄
         * @name getDialog
         * @grammar editor.getDialog(dialogName) => Object
         * @example
         * var dialog = editor.getDialog("insertimage");
         * dialog.open();   //鎵撳紑dialog
         * dialog.close();  //鍏抽棴dialog
         */
    };
    utils.inherits(Editor, EventBase);
})();

/**
 * @file
 * @name UE.ajax
 * @short Ajax
 * @desc UEditor鍐呯疆鐨刟jax璇锋眰妯″潡
 * @import core/utils.js
 * @user: taoqili
 * @date: 11-8-18
 * @time: 涓嬪崍3:18
 */
UE.ajax = function() {
    /**
     * 鍒涘缓涓�釜ajaxRequest瀵硅薄
     */
    var fnStr = 'XMLHttpRequest()';
    try {
        new ActiveXObject("Msxml2.XMLHTTP");
        fnStr = 'ActiveXObject(\'Msxml2.XMLHTTP\')';
    } catch (e) {
        try {
            new ActiveXObject("Microsoft.XMLHTTP");
            fnStr = 'ActiveXObject(\'Microsoft.XMLHTTP\')'
        } catch (e) {
        }
    }
    var creatAjaxRequest = new Function('return new ' + fnStr);


    /**
     * 灏唈son鍙傛暟杞寲鎴愰�鍚坅jax鎻愪氦鐨勫弬鏁板垪琛�
     * @param json
     */
    function json2str(json) {
        var strArr = [];
        for (var i in json) {
            //蹇界暐榛樿鐨勫嚑涓弬鏁�
            if(i=="method" || i=="timeout" || i=="async") continue;
            //浼犻�杩囨潵鐨勫璞″拰鍑芥暟涓嶅湪鎻愪氦涔嬪垪
            if (!((typeof json[i]).toLowerCase() == "function" || (typeof json[i]).toLowerCase() == "object")) {
                strArr.push( encodeURIComponent(i) + "="+encodeURIComponent(json[i]) );
            }
        }
        return strArr.join("&");

    }


    return {
		/**
         * @name request
         * @desc 鍙戝嚭ajax璇锋眰锛宎jaxOpt涓粯璁ゅ寘鍚玬ethod锛宼imeout锛宎sync锛宒ata锛宱nsuccess浠ュ強onerror绛夊叚涓紝鏀寔鑷畾涔夋坊鍔犲弬鏁�
         * @grammar UE.ajax.request(url,ajaxOpt);
         * @example
         * UE.ajax.request('http://www.xxxx.com/test.php',{
         *     //鍙渷鐣ワ紝榛樿POST
         *     method:'POST',
         *     //鍙互鑷畾涔夊弬鏁�
         *     content:'杩欓噷鏄彁浜ょ殑鍐呭',
         *     //涔熷彲浠ョ洿鎺ヤ紶json锛屼絾鏄彧鑳藉懡鍚嶄负data锛屽惁鍒欏綋鍋氫竴鑸瓧绗︿覆澶勭悊
         *     data:{
         *         name:'UEditor',
         *         age:'1'
         *     }
         *     onsuccess:function(xhr){
         *         console.log(xhr.responseText);
         *     },
         *     onerror:function(xhr){
         *         console.log(xhr.responseText);
         *     }
         * })
		 * @param ajaxOptions
		 */
		request:function(url, ajaxOptions) {
            var ajaxRequest = creatAjaxRequest(),
                //鏄惁瓒呮椂
                timeIsOut = false,
                //榛樿鍙傛暟
                defaultAjaxOptions = {
                    method:"POST",
                    timeout:5000,
                    async:true,
                    data:{},//闇�浼犻�瀵硅薄鐨勮瘽鍙兘瑕嗙洊
                    onsuccess:function() {
                    },
                    onerror:function() {
                    }
                };

			if (typeof url === "object") {
				ajaxOptions = url;
				url = ajaxOptions.url;
			}
			if (!ajaxRequest || !url) return;
			var ajaxOpts = ajaxOptions ? utils.extend(defaultAjaxOptions,ajaxOptions) : defaultAjaxOptions;

			var submitStr = json2str(ajaxOpts);  // { name:"Jim",city:"Beijing" } --> "name=Jim&city=Beijing"
			//濡傛灉鐢ㄦ埛鐩存帴閫氳繃data鍙傛暟浼犻�json瀵硅薄杩囨潵锛屽垯涔熻灏嗘json瀵硅薄杞寲涓哄瓧绗︿覆
			if (!utils.isEmptyObject(ajaxOpts.data)){
                submitStr += (submitStr? "&":"") + json2str(ajaxOpts.data);
			}
            //瓒呮椂妫�祴
            var timerID = setTimeout(function() {
                if (ajaxRequest.readyState != 4) {
                    timeIsOut = true;
                    ajaxRequest.abort();
                    clearTimeout(timerID);
                }
            }, ajaxOpts.timeout);

			var method = ajaxOpts.method.toUpperCase();
            var str = url + (url.indexOf("?")==-1?"?":"&") + (method=="POST"?"":submitStr+ "&noCache=" + +new Date);
			ajaxRequest.open(method, str, ajaxOpts.async);
			ajaxRequest.onreadystatechange = function() {
				if (ajaxRequest.readyState == 4) {
					if (!timeIsOut && ajaxRequest.status == 200) {
						ajaxOpts.onsuccess(ajaxRequest);
					} else {
						ajaxOpts.onerror(ajaxRequest);
					}
				}
			};
			if (method == "POST") {
				ajaxRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				ajaxRequest.send(submitStr);
			} else {
				ajaxRequest.send(null);
			}
		}
	};


}();

/**
 * @file
 * @name UE.filterWord
 * @short filterWord
 * @desc 鐢ㄦ潵杩囨护word绮樿创杩囨潵鐨勫瓧绗︿覆
 * @import editor.js,core/utils.js
 * @anthor zhanyi
 */
var filterWord = UE.filterWord = function () {

    //鏄惁鏄痺ord杩囨潵鐨勫唴瀹�
    function isWordDocument( str ) {
        return /(class="?Mso|style="[^"]*\bmso\-|w:WordDocument|<v:)/ig.test( str );
    }
    //鍘绘帀灏忔暟
    function transUnit( v ) {
        v = v.replace( /[\d.]+\w+/g, function ( m ) {
            return utils.transUnitToPx(m);
        } );
        return v;
    }

    function filterPasteWord( str ) {
        return str.replace( /[\t\r\n]+/g, "" )
                .replace( /<!--[\s\S]*?-->/ig, "" )
                //杞崲鍥剧墖
                .replace(/<v:shape [^>]*>[\s\S]*?.<\/v:shape>/gi,function(str){
                    //opera鑳借嚜宸辫В鏋愬嚭image鎵�繖閲岀洿鎺ヨ繑鍥炵┖
                    if(browser.opera){
                        return '';
                    }
                    try{
                        var width = str.match(/width:([ \d.]*p[tx])/i)[1],
                            height = str.match(/height:([ \d.]*p[tx])/i)[1],
                            src =  str.match(/src=\s*"([^"]*)"/i)[1];
                        return '<img width="'+ transUnit(width) +'" height="'+transUnit(height) +'" src="' + src + '" />';
                    } catch(e){
                        return '';
                    }
                })
                //閽堝wps娣诲姞鐨勫浣欐爣绛惧鐞�
                .replace(/<\/?div[^>]*>/g,'')
                //鍘绘帀澶氫綑鐨勫睘鎬�
                .replace( /v:\w+=(["']?)[^'"]+\1/g, '' )
                .replace( /<(!|script[^>]*>.*?<\/script(?=[>\s])|\/?(\?xml(:\w+)?|xml|meta|link|style|\w+:\w+)(?=[\s\/>]))[^>]*>/gi, "" )
                .replace( /<p [^>]*class="?MsoHeading"?[^>]*>(.*?)<\/p>/gi, "<p><strong>$1</strong></p>" )
                //鍘绘帀澶氫綑鐨勫睘鎬�
                .replace( /\s+(class|lang|align)\s*=\s*(['"]?)([\w-]+)\2/ig, function(str,name,marks,val){
                    //淇濈暀list鐨勬爣绀�
                    return name == 'class' && val == 'MsoListParagraph' ? str : ''
                })
                //娓呴櫎澶氫綑鐨刦ont/span涓嶈兘鍖归厤&nbsp;鏈夊彲鑳芥槸绌烘牸
                .replace( /<(font|span)[^>]*>\s*<\/\1>/gi, '' )
                //澶勭悊style鐨勯棶棰�
                .replace( /(<[a-z][^>]*)\sstyle=(["'])([^\2]*?)\2/gi, function( str, tag, tmp, style ) {
                    var n = [],
                        s = style.replace( /^\s+|\s+$/, '' )
                            .replace(/&#39;/g,'\'')
                            .replace( /&quot;/gi, "'" )
                            .split( /;\s*/g );

                    for ( var i = 0,v; v = s[i];i++ ) {

                        var name, value,
                            parts = v.split( ":" );

                        if ( parts.length == 2 ) {
                            name = parts[0].toLowerCase();
                            value = parts[1].toLowerCase();
                            if(/^(background)\w*/.test(name) && value.replace(/(initial|\s)/g,'').length == 0
                                ||
                                /^(margin)\w*/.test(name) && /^0\w+$/.test(value)
                            ){
                                continue;
                            }

                            switch ( name ) {
                                case "mso-padding-alt":
                                case "mso-padding-top-alt":
                                case "mso-padding-right-alt":
                                case "mso-padding-bottom-alt":
                                case "mso-padding-left-alt":
                                case "mso-margin-alt":
                                case "mso-margin-top-alt":
                                case "mso-margin-right-alt":
                                case "mso-margin-bottom-alt":
                                case "mso-margin-left-alt":
                                //ie涓嬩細鍑虹幇鎸ゅ埌涓�捣鐨勬儏鍐�
                               //case "mso-table-layout-alt":
                                case "mso-height":
                                case "mso-width":
                                case "mso-vertical-align-alt":
                                    //trace:1819 ff涓嬩細瑙ｆ瀽鍑簆adding鍦╰able涓�
                                    if(!/<table/.test(tag))
                                        n[i] = name.replace( /^mso-|-alt$/g, "" ) + ":" + transUnit( value );
                                    continue;
                                case "horiz-align":
                                    n[i] = "text-align:" + value;
                                    continue;

                                case "vert-align":
                                    n[i] = "vertical-align:" + value;
                                    continue;

                                case "font-color":
                                case "mso-foreground":
                                    n[i] = "color:" + value;
                                    continue;

                                case "mso-background":
                                case "mso-highlight":
                                    n[i] = "background:" + value;
                                    continue;

                                case "mso-default-height":
                                    n[i] = "min-height:" + transUnit( value );
                                    continue;

                                case "mso-default-width":
                                    n[i] = "min-width:" + transUnit( value );
                                    continue;

                                case "mso-padding-between-alt":
                                    n[i] = "border-collapse:separate;border-spacing:" + transUnit( value );
                                    continue;

                                case "text-line-through":
                                    if ( (value == "single") || (value == "double") ) {
                                        n[i] = "text-decoration:line-through";
                                    }
                                    continue;
                                case "mso-zero-height":
                                    if ( value == "yes" ) {
                                        n[i] = "display:none";
                                    }
                                    continue;
                                case 'background':
                                    break;
                                case 'margin':
                                    if ( !/[1-9]/.test( value ) ) {
                                        continue;
                                    }

                            }

                            if ( /^(mso|column|font-emph|lang|layout|line-break|list-image|nav|panose|punct|row|ruby|sep|size|src|tab-|table-border|text-(?:decor|trans)|top-bar|version|vnd|word-break)/.test( name )
                                ||
                                /text\-indent|padding|margin/.test(name) && /\-[\d.]+/.test(value)
                            ) {
                                continue;
                            }

                            n[i] = name + ":" + parts[1];
                        }
                    }
                    return tag + (n.length ? ' style="' + n.join( ';').replace(/;{2,}/g,';') + '"' : '');
                })
            .replace(/[\d.]+(cm|pt)/g,function(str){
                return utils.transUnitToPx(str)
            })

    }

    return function ( html ) {
        return (isWordDocument( html ) ? filterPasteWord( html ) : html);
    };
}();
///import editor.js
///import core/utils.js
///import core/dom/dom.js
///import core/dom/dtd.js
///import core/htmlparser.js
//妯℃嫙鐨勮妭鐐圭被
//by zhanyi
(function () {
    var uNode = UE.uNode = function (obj) {
        this.type = obj.type;
        this.data = obj.data;
        this.tagName = obj.tagName;
        this.parentNode = obj.parentNode;
        this.attrs = obj.attrs || {};
        this.children = obj.children;
    };
    var indentChar = '    ',
        breakChar = '\n';

    function insertLine(arr, current, begin) {
        arr.push(breakChar);
        return current + (begin ? 1 : -1);
    }

    function insertIndent(arr, current) {
        //鎻掑叆缂╄繘
        for (var i = 0; i < current; i++) {
            arr.push(indentChar);
        }
    }

    //鍒涘缓uNode鐨勯潤鎬佹柟娉�    //鏀寔鏍囩鍜宧tml
    uNode.createElement = function (html) {
        if (/[<>]/.test(html)) {
            return UE.htmlparser(html).children[0]
        } else {
            return new uNode({
                type:'element',
                children:[],
                tagName:html
            })
        }
    };
    uNode.createText = function (data) {
        return new UE.uNode({
            type:'text',
            'data':utils.unhtml(data || '')
        })
    };
    function nodeToHtml(node, arr, formatter, current) {
        switch (node.type) {
            case 'root':
                for (var i = 0, ci; ci = node.children[i++];) {
                    //鎻掑叆鏂拌
                    if (formatter && ci.type == 'element' && !dtd.$inlineWithA[ci.tagName] && i > 1) {
                        insertLine(arr, current, true);
                        insertIndent(arr, current)
                    }
                    nodeToHtml(ci, arr, formatter, current)
                }
                break;
            case 'text':
                isText(node, arr);
                break;
            case 'element':
                isElement(node, arr, formatter, current);
                break;
            case 'comment':
                isComment(node, arr, formatter);
        }
        return arr;
    }

    function isText(node, arr) {
        arr.push(node.parentNode.tagName == 'pre' ? node.data : node.data.replace(/[ ]{2}/g,' &nbsp;'))
    }

    function isElement(node, arr, formatter, current) {
        var attrhtml = '';
        if (node.attrs) {
            attrhtml = [];
            var attrs = node.attrs;
            for (var a in attrs) {
                attrhtml.push(a + (attrs[a] !== undefined ? '="' + utils.unhtml(attrs[a]) + '"' : ''))
            }
            attrhtml = attrhtml.join(' ');
        }
        arr.push('<' + node.tagName +
            (attrhtml ? ' ' + attrhtml  : '') +
            (dtd.$empty[node.tagName] ? '\/' : '' ) + '>'
        );
        //鎻掑叆鏂拌
        if (formatter  &&  !dtd.$inlineWithA[node.tagName] && node.tagName != 'pre') {
            if(node.children && node.children.length){
                current = insertLine(arr, current, true);
                insertIndent(arr, current)
            }

        }
        if (node.children && node.children.length) {
            for (var i = 0, ci; ci = node.children[i++];) {
                if (formatter && ci.type == 'element' &&  !dtd.$inlineWithA[ci.tagName] && i > 1) {
                    insertLine(arr, current);
                    insertIndent(arr, current)
                }
                nodeToHtml(ci, arr, formatter, current)
            }
        }
        if (!dtd.$empty[node.tagName]) {
            if (formatter && !dtd.$inlineWithA[node.tagName]  && node.tagName != 'pre') {

                if(node.children && node.children.length){
                    current = insertLine(arr, current);
                    insertIndent(arr, current)
                }
            }
            arr.push('<\/' + node.tagName + '>');
        }

    }

    function isComment(node, arr) {
        arr.push('<!--' + node.data + '-->');
    }

    function getNodeById(root, id) {
        var node;
        if (root.type == 'element' && root.getAttr('id') == id) {
            return root;
        }
        if (root.children && root.children.length) {
            for (var i = 0, ci; ci = root.children[i++];) {
                if (node = getNodeById(ci, id)) {
                    return node;
                }
            }
        }
    }

    function getNodesByTagName(node, tagName, arr) {
        if (node.type == 'element' && node.tagName == tagName) {
            arr.push(node);
        }
        if (node.children && node.children.length) {
            for (var i = 0, ci; ci = node.children[i++];) {
                getNodesByTagName(ci, tagName, arr)
            }
        }
    }
    function nodeTraversal(root,fn){
        if(root.children && root.children.length){
            for(var i= 0,ci;ci=root.children[i];){
                nodeTraversal(ci,fn);
                //ci琚浛鎹㈢殑鎯呭喌锛岃繖閲屽氨涓嶅啀璧�fn浜�                if(ci.parentNode ){
                    if(ci.children && ci.children.length){
                        fn(ci)
                    }
                    if(ci.parentNode) i++
                }
            }
        }else{
            fn(root)
        }

    }
    uNode.prototype = {
        toHtml:function (formatter) {
            var arr = [];
            nodeToHtml(this, arr, formatter, 0);
            return arr.join('')
        },
        innerHTML:function (htmlstr) {
            if (this.type != 'element' || dtd.$empty[this.tagName]) {
                return this;
            }
            if (utils.isString(htmlstr)) {
                if(this.children){
                    for (var i = 0, ci; ci = this.children[i++];) {
                        ci.parentNode = null;
                    }
                }
                this.children = [];
                var tmpRoot = UE.htmlparser(htmlstr);
                for (var i = 0, ci; ci = tmpRoot.children[i++];) {
                    this.children.push(ci);
                    ci.parentNode = this;
                }
                return this;
            } else {
                var tmpRoot = new UE.uNode({
                    type:'root',
                    children:this.children
                });
                return tmpRoot.toHtml();
            }
        },
        innerText:function (textStr) {
            if (this.type != 'element' || dtd.$empty[this.tagName]) {
                return this;
            }
            if (textStr) {
                if(this.children){
                    for (var i = 0, ci; ci = this.children[i++];) {
                        ci.parentNode = null;
                    }
                }
                this.children = [];
                this.appendChild(uNode.createText(textStr));
                return this;
            } else {
                return this.toHtml().replace(/<[^>]+>/g, '');
            }
        },
        getData:function () {
            if (this.type == 'element')
                return '';
            return this.data
        },
        firstChild:function () {
//            if (this.type != 'element' || dtd.$empty[this.tagName]) {
//                return this;
//            }
            return this.children ? this.children[0] : null;
        },
        lastChild:function () {
//            if (this.type != 'element' || dtd.$empty[this.tagName] ) {
//                return this;
//            }
            return this.children ? this.children[this.children.length - 1] : null;
        },
        previousSibling : function(){
            var parent = this.parentNode;
            for (var i = 0, ci; ci = parent.children[i]; i++) {
                if (ci === this) {
                   return i == 0 ? null : parent.children[i-1];
                }
            }

        },
        nextSibling : function(){
            var parent = this.parentNode;
            for (var i = 0, ci; ci = parent.children[i++];) {
                if (ci === this) {
                    return parent.children[i];
                }
            }
        },
        replaceChild:function (target, source) {
            if (this.children) {
                if(target.parentNode){
                    target.parentNode.removeChild(target);
                }
                for (var i = 0, ci; ci = this.children[i]; i++) {
                    if (ci === source) {
                        this.children.splice(i, 1, target);
                        source.parentNode = null;
                        target.parentNode = this;
                        return target;
                    }
                }
            }
        },
        appendChild:function (node) {
            if (this.type == 'root' || (this.type == 'element' && !dtd.$empty[this.tagName])) {
                if (!this.children) {
                    this.children = []
                }
                if(node.parentNode){
                    node.parentNode.removeChild(node);
                }
                for (var i = 0, ci; ci = this.children[i]; i++) {
                    if (ci === node) {
                        this.children.splice(i, 1);
                        break;
                    }
                }
                this.children.push(node);
                node.parentNode = this;
                return node;
            }


        },
        insertBefore:function (target, source) {
            if (this.children) {
                if(target.parentNode){
                    target.parentNode.removeChild(target);
                }
                for (var i = 0, ci; ci = this.children[i]; i++) {
                    if (ci === source) {
                        this.children.splice(i, 0, target);
                        target.parentNode = this;
                        return target;
                    }
                }

            }
        },
        insertAfter:function (target, source) {
            if (this.children) {
                if(target.parentNode){
                    target.parentNode.removeChild(target);
                }
                for (var i = 0, ci; ci = this.children[i]; i++) {
                    if (ci === source) {
                        this.children.splice(i + 1, 0, target);
                        target.parentNode = this;
                        return target;
                    }

                }
            }
        },
        removeChild:function (node,keepChildren) {
            if (this.children) {
                for (var i = 0, ci; ci = this.children[i]; i++) {
                    if (ci === node) {
                        this.children.splice(i, 1);
                        ci.parentNode = null;
                        if(keepChildren && ci.children && ci.children.length){
                            for(var j= 0,cj;cj=ci.children[j];j++){
                                this.children.splice(i+j,0,cj);
                                cj.parentNode = this;

                            }
                        }
                        return ci;
                    }
                }
            }
        },
        getAttr:function (attrName) {
            return this.attrs && this.attrs[attrName.toLowerCase()]
        },
        setAttr:function (attrName, attrVal) {
            if (!attrName) {
                delete this.attrs;
                return;
            }
            if(!this.attrs){
                this.attrs = {};
            }
            if (utils.isObject(attrName)) {
                for (var a in attrName) {
                    if (!attrName[a]) {
                        delete this.attrs[a]
                    } else {
                        this.attrs[a.toLowerCase()] = attrName[a];
                    }
                }
            } else {
                if (!attrVal) {
                    delete this.attrs[attrName]
                } else {
                    this.attrs[attrName.toLowerCase()] = attrVal;
                }

            }
        },
        getIndex:function(){
            var parent = this.parentNode;
            for(var i= 0,ci;ci=parent.children[i];i++){
                if(ci === this){
                    return i;
                }
            }
            return -1;
        },
        getNodeById:function (id) {
            var node;
            if (this.children && this.children.length) {
                for (var i = 0, ci; ci = this.children[i++];) {
                    if (node = getNodeById(ci, id)) {
                        return node;
                    }
                }
            }
        },
        getNodesByTagName:function (tagNames) {
            tagNames = utils.trim(tagNames).replace(/[ ]{2,}/g, ' ').split(' ');
            var arr = [], me = this;
            utils.each(tagNames, function (tagName) {
                if (me.children && me.children.length) {
                    for (var i = 0, ci; ci = me.children[i++];) {
                        getNodesByTagName(ci, tagName, arr)
                    }
                }
            });
            return arr;
        },
        getStyle:function (name) {
            var cssStyle = this.getAttr('style');
            if (!cssStyle) {
                return ''
            }
            var reg = new RegExp(name + ':([^;]+)','i');
            var match = cssStyle.match(reg);
            if (match && match[0]) {
                return match[1]
            }
            return '';
        },
        setStyle:function (name, val) {
            function exec(name, val) {
                var reg = new RegExp(name + ':([^;]+;?)', 'gi');
                cssStyle = cssStyle.replace(reg, '');
                if (val) {
                    cssStyle = name + ':' + utils.unhtml(val) + ';' + cssStyle
                }

            }

            var cssStyle = this.getAttr('style');
            if (!cssStyle) {
                cssStyle = '';
            }
            if (utils.isObject(name)) {
                for (var a in name) {
                    exec(a, name[a])
                }
            } else {
                exec(name, val)
            }
            this.setAttr('style', utils.trim(cssStyle))
        },
        traversal:function(fn){
            if(this.children && this.children.length){
                nodeTraversal(this,fn);
            }
            return this;
        }
    }
})();

//html瀛楃涓茶浆鎹㈡垚uNode鑺傜偣
//by zhanyi
var htmlparser = UE.htmlparser = function (htmlstr,ignoreBlank) {
    var re_tag = /<(?:(?:\/([^>]+)>)|(?:!--([\S|\s]*?)-->)|(?:([^\s\/>]+)\s*((?:(?:"[^"]*")|(?:'[^']*')|[^"'<>])*)\/?>))/g,
        re_attr = /([\w\-:.]+)(?:(?:\s*=\s*(?:(?:"([^"]*)")|(?:'([^']*)')|([^\s>]+)))|(?=\s|$))/g;

    //ie涓嬪彇寰楃殑html鍙兘浼氭湁\n瀛樺湪锛岃鍘绘帀锛屽湪澶勭悊replace(/[\t\r\n]*/g,'');浠ｇ爜楂橀噺鐨刓n涓嶈兘鍘婚櫎
    var allowEmptyTags = {
        b:1,code:1,i:1,u:1,strike:1,s:1,tt:1,strong:1,q:1,samp:1,em:1,span:1,
        sub:1,img:1,sup:1,font:1,big:1,small:1,iframe:1,a:1,br:1,pre:1
    };
    htmlstr = htmlstr.replace(new RegExp(domUtils.fillChar, 'g'), '');
    if(!ignoreBlank){
        htmlstr = htmlstr.replace(new RegExp('[\\r\\t\\n'+(ignoreBlank?'':' ')+']*<\/?(\\w+)\\s*(?:[^>]*)>[\\r\\t\\n'+(ignoreBlank?'':' ')+']*','g'), function(a,b){
            //br鏆傛椂鍗曠嫭澶勭悊
            if(b && allowEmptyTags[b.toLowerCase()]){
                return a.replace(/(^[\n\r]+)|([\n\r]+$)/g,'');
            }
            return a.replace(new RegExp('^[\\r\\n'+(ignoreBlank?'':' ')+']+'),'').replace(new RegExp('[\\r\\n'+(ignoreBlank?'':' ')+']+$'),'');
        });
    }



    var uNode = UE.uNode,
        needParentNode = {
            'td':'tr',
            'tr':['tbody','thead','tfoot'],
            'tbody':'table',
            'th':'tr',
            'thead':'table',
            'tfoot':'table',
            'caption':'table',
            'li':['ul', 'ol'],
            'dt':'dl',
            'dd':'dl',
            'option':'select'
        },
        needChild = {
            'ol':'li',
            'ul':'li'
        };

    function text(parent, data) {

        if(needChild[parent.tagName]){
            var tmpNode = uNode.createElement(needChild[parent.tagName]);
            parent.appendChild(tmpNode);
            tmpNode.appendChild(uNode.createText(data));
            parent = tmpNode;
        }else{

            parent.appendChild(uNode.createText(data));
        }
    }

    function element(parent, tagName, htmlattr) {
        var needParentTag;
        if (needParentTag = needParentNode[tagName]) {
            var tmpParent = parent,hasParent;
            while(tmpParent.type != 'root'){
                if(utils.isArray(needParentTag) ? utils.indexOf(needParentTag, tmpParent.tagName) != -1 : needParentTag == tmpParent.tagName){
                    parent = tmpParent;
                    hasParent = true;
                    break;
                }
                tmpParent = tmpParent.parentNode;
            }
            if(!hasParent){
                parent = element(parent, utils.isArray(needParentTag) ? needParentTag[0] : needParentTag)
            }
        }
        //鎸塪td澶勭悊宓屽
//        if(parent.type != 'root' && !dtd[parent.tagName][tagName])
//            parent = parent.parentNode;
        var elm = new uNode({
            parentNode:parent,
            type:'element',
            tagName:tagName.toLowerCase(),
            //鏄嚜闂悎鐨勫鐞嗕竴涓�            children:dtd.$empty[tagName] ? null : []
        });
        //濡傛灉灞炴�瀛樺湪锛屽鐞嗗睘鎬�        if (htmlattr) {
            var attrs = {}, match;
            while (match = re_attr.exec(htmlattr)) {
                attrs[match[1].toLowerCase()] = utils.unhtml(match[2] || match[3] || match[4])
            }
            elm.attrs = attrs;
        }

        parent.children.push(elm);
        //濡傛灉鏄嚜闂悎鑺傜偣杩斿洖鐖朵翰鑺傜偣
        return  dtd.$empty[tagName] ? parent : elm
    }

    function comment(parent, data) {
        parent.children.push(new uNode({
            type:'comment',
            data:data,
            parentNode:parent
        }));
    }

    var match, currentIndex = 0, nextIndex = 0;
    //璁剧疆鏍硅妭鐐�    var root = new uNode({
        type:'root',
        children:[]
    });
    var currentParent = root;
    while (match = re_tag.exec(htmlstr)) {
        currentIndex = match.index;
        try{
            if (currentIndex > nextIndex) {
                //text node
                text(currentParent, htmlstr.slice(nextIndex, currentIndex));
            }
            if (match[3]) {
                //start tag
                currentParent = element(currentParent, match[3].toLowerCase(), match[4]);

            } else if (match[1]) {
                if(currentParent.type != 'root'){
                    var tmpParent = currentParent;
                    while(currentParent.type == 'element' && currentParent.tagName != match[1].toLowerCase()){
                        currentParent = currentParent.parentNode;
                        if(currentParent.type == 'root'){
                            currentParent = tmpParent;
                            throw 'break'
                        }
                    }
                    //end tag
                    currentParent = currentParent.parentNode;
                }

            } else if (match[2]) {
                //comment
                comment(currentParent, match[2])
            }
        }catch(e){}

        nextIndex = re_tag.lastIndex;

    }
    //濡傛灉缁撴潫鏄枃鏈紝灏辨湁鍙兘涓㈡帀锛屾墍浠ヨ繖閲屾墜鍔ㄥ垽鏂竴涓�    //渚嬪 <li>sdfsdfsdf<li>sdfsdfsdfsdf
    if (nextIndex < htmlstr.length) {
        text(currentParent, htmlstr.slice(nextIndex));
    }
    return root;
};
/**
 * @file
 * @name UE.filterNode
 * @short filterNode
 * @desc 鏍规嵁缁欏畾鐨勮鍒欒繃婊よ妭鐐�
 * @import editor.js,core/utils.js
 * @anthor zhanyi
 */
var filterNode = UE.filterNode = function () {
    function filterNode(node,rules){
        switch (node.type) {
            case 'text':
                break;
            case 'element':
                var val;
                if(val = rules[node.tagName]){
                   if(val === '-'){
                       node.parentNode.removeChild(node)
                   }else if(utils.isFunction(val)){
                       var parentNode = node.parentNode,
                           index = node.getIndex();
                       val(node);
                       if(node.parentNode){
                           if(node.children){
                               for(var i = 0,ci;ci=node.children[i];){
                                   filterNode(ci,rules);
                                   if(ci.parentNode){
                                       i++;
                                   }
                               }
                           }
                       }else{
                           for(var i = index,ci;ci=parentNode.children[i];){
                               filterNode(ci,rules);
                               if(ci.parentNode){
                                   i++;
                               }
                           }
                       }


                   }else{
                       var attrs = val['$'];
                       if(attrs && node.attrs){
                           var tmpAttrs = {},tmpVal;
                           for(var a in attrs){
                               tmpVal = node.getAttr(a);
                               //todo 鍙厛瀵箂tyle鍗曠嫭澶勭悊
                               if(a == 'style' && utils.isArray(attrs[a])){
                                   var tmpCssStyle = [];
                                   utils.each(attrs[a],function(v){
                                       var tmp;
                                       if(tmp = node.getStyle(v)){
                                           tmpCssStyle.push(v + ':' + tmp);
                                       }
                                   });
                                   tmpVal = tmpCssStyle.join(';')
                               }
                               if(tmpVal){
                                   tmpAttrs[a] = tmpVal;
                               }

                           }
                           node.attrs = tmpAttrs;
                       }
                       if(node.children){
                           for(var i = 0,ci;ci=node.children[i];){
                               filterNode(ci,rules);
                               if(ci.parentNode){
                                   i++;
                               }
                           }
                       }
                   }
                }else{
                    //濡傛灉涓嶅湪鍚嶅崟閲屾墸鍑哄瓙鑺傜偣骞跺垹闄よ鑺傜偣,cdata闄ゅ
                    if(dtd.$cdata[node.tagName]){
                        node.parentNode.removeChild(node)
                    }else{
                        var parentNode = node.parentNode,
                            index = node.getIndex();
                        node.parentNode.removeChild(node,true);
                        for(var i = index,ci;ci=parentNode.children[i];){
                            filterNode(ci,rules);
                            if(ci.parentNode){
                                i++;
                            }
                        }
                    }
                }
                break;
            case 'comment':
                node.parentNode.removeChild(node)
        }

    }
    return function(root,rules){
        if(utils.isEmptyObject(rules)){
            return root;
        }
        var val;
        if(val = rules['-']){
            utils.each(val.split(' '),function(k){
                rules[k] = '-'
            })
        }
        for(var i= 0,ci;ci=root.children[i];){
            filterNode(ci,rules);
            if(ci.parentNode){
               i++;
            }
        }
        return root;
    }
}();
///import core
///plugin 缂栬緫鍣ㄩ粯璁ょ殑杩囨护杞崲鏈哄埗

UE.plugins['defaultfilter'] = function () {
    var me = this;
    me.setOpt('allowDivTransToP',true);
    //榛樿鐨勮繃婊ゅ鐞�
    //杩涘叆缂栬緫鍣ㄧ殑鍐呭澶勭悊
    me.addInputRule(function (root) {
        var allowDivTransToP = this.options.allowDivTransToP;
        var val;
        //杩涜榛樿鐨勫鐞�
        root.traversal(function (node) {
            if (node.type == 'element') {
                if (!dtd.$cdata[node.tagName] && me.options.autoClearEmptyNode && dtd.$inline[node.tagName] && !dtd.$empty[node.tagName] && (!node.attrs || utils.isEmptyObject(node.attrs))) {
                    if (!node.firstChild()) node.parentNode.removeChild(node);
                    else if (node.tagName == 'span' && (!node.attrs || utils.isEmptyObject(node.attrs))) {
                        node.parentNode.removeChild(node, true)
                    }
                    return;
                }
                switch (node.tagName) {
                    case 'style':
                    case 'script':
                        node.setAttr({
                            cdata_tag: node.tagName,
                            cdata_data: encodeURIComponent(node.innerText() || '')
                        });
                        node.tagName = 'div';
                        node.removeChild(node.firstChild());
                        break;
                    case 'a':
                        if (val = node.getAttr('href')) {
                            node.setAttr('_href', val)
                        }
                        break;
                    case 'img':
                        //todo base64鏆傛椂鍘绘帀锛屽悗杈瑰仛杩滅▼鍥剧墖涓婁紶鍚庯紝骞叉帀杩欎釜
                        if (val = node.getAttr('src')) {
                            if (/^data:/.test(val)) {
                                node.parentNode.removeChild(node);
                                break;
                            }
                        }
                        node.setAttr('_src', node.getAttr('src'));
                        break;
                    case 'span':
                        if (browser.webkit && (val = node.getStyle('white-space'))) {
                            if (/nowrap|normal/.test(val)) {
                                node.setStyle('white-space', '');
                                if (me.options.autoClearEmptyNode && utils.isEmptyObject(node.attrs)) {
                                    node.parentNode.removeChild(node, true)
                                }
                            }
                        }
                        break;
                    case 'p':
                        if (val = node.getAttr('align')) {
                            node.setAttr('align');
                            node.setStyle('text-align', val)
                        }
                        //trace:3431
//                        var cssStyle = node.getAttr('style');
//                        if (cssStyle) {
//                            cssStyle = cssStyle.replace(/(margin|padding)[^;]+/g, '');
//                            node.setAttr('style', cssStyle)
//
//                        }
                        if (!node.firstChild()) {
                            node.innerHTML(browser.ie ? '&nbsp;' : '<br/>')
                        }
                        break;
                    case 'div':
                        if(node.getAttr('cdata_tag')){
                            break;
                        }
                        //閽堝浠ｇ爜杩欓噷涓嶅鐞嗘彃鍏ヤ唬鐮佺殑div
                        val = node.getAttr('class');
                        if(val && /^line number\d+/.test(val)){
                            break;
                        }
                        if(!allowDivTransToP){
                            break;
                        }
                        var tmpNode, p = UE.uNode.createElement('p');
                        while (tmpNode = node.firstChild()) {
                            if (tmpNode.type == 'text' || !UE.dom.dtd.$block[tmpNode.tagName]) {
                                p.appendChild(tmpNode);
                            } else {
                                if (p.firstChild()) {
                                    node.parentNode.insertBefore(p, node);
                                    p = UE.uNode.createElement('p');
                                } else {
                                    node.parentNode.insertBefore(tmpNode, node);
                                }
                            }
                        }
                        if (p.firstChild()) {
                            node.parentNode.insertBefore(p, node);
                        }
                        node.parentNode.removeChild(node);
                        break;
                    case 'dl':
                        node.tagName = 'ul';
                        break;
                    case 'dt':
                    case 'dd':
                        node.tagName = 'li';
                        break;
                    case 'li':
                        var className = node.getAttr('class');
                        if (!className || !/list\-/.test(className)) {
                            node.setAttr()
                        }
                        var tmpNodes = node.getNodesByTagName('ol ul');
                        UE.utils.each(tmpNodes, function (n) {
                            node.parentNode.insertAfter(n, node);
                        });
                        break;
                    case 'td':
                    case 'th':
                    case 'caption':
                        if(!node.children || !node.children.length){

                            node.appendChild(browser.ie ? UE.uNode.createText(' ') : UE.uNode.createElement('br'))
                        }
                }

            }
            if(node.type == 'comment'){
                node.parentNode.removeChild(node);
            }
        })

    });

    //浠庣紪杈戝櫒鍑哄幓鐨勫唴瀹瑰鐞�
    me.addOutputRule(function (root) {

        var val;
        root.traversal(function (node) {
            if (node.type == 'element') {

                if (me.options.autoClearEmptyNode && dtd.$inline[node.tagName] && !dtd.$empty[node.tagName] && (!node.attrs || utils.isEmptyObject(node.attrs))) {

                    if (!node.firstChild()) node.parentNode.removeChild(node);
                    else if (node.tagName == 'span' && (!node.attrs || utils.isEmptyObject(node.attrs))) {
                        node.parentNode.removeChild(node, true)
                    }
                    return;
                }
                switch (node.tagName) {
                    case 'div':
                        if (val = node.getAttr('cdata_tag')) {
                            node.tagName = val;
                            node.appendChild(UE.uNode.createText(node.getAttr('cdata_data')));
                            node.setAttr({cdata_tag: '', cdata_data: ''});
                        }
                        break;
                    case 'a':
                        if (val = node.getAttr('_href')) {
                            node.setAttr({
                                'href': val,
                                '_href': ''
                            })
                        }
                        break;
                    case 'img':
                        if (val = node.getAttr('_src')) {
                            node.setAttr({
                                'src': node.getAttr('_src'),
                                '_src': ''
                            })
                        }


                }
            }

        })


    });
};

///import core
/**
 * @description 鎻掑叆鍐呭
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     inserthtml鎻掑叆鍐呭鐨勫懡浠�
 * @param   {String}   html                瑕佹彃鍏ョ殑鍐呭
 * @author zhanyi
 */
UE.commands['inserthtml'] = {
    execCommand: function (command,html,notNeedFilter){
        var me = this,
            range,
            div;
        if(!html){
            return;
        }
        if(me.fireEvent('beforeinserthtml',html) === true){
            return;
        }
        range = me.selection.getRange();
        div = range.document.createElement( 'div' );
        div.style.display = 'inline';

        if (!notNeedFilter) {
            var root = UE.htmlparser(html);
            //濡傛灉缁欎簡杩囨护瑙勫垯灏卞厛杩涜杩囨护
            if(me.options.filterRules){
                UE.filterNode(root,me.options.filterRules);
            }
            //鎵ц榛樿鐨勫鐞�
            me.filterInputRule(root);
            html = root.toHtml()
        }
        div.innerHTML = utils.trim( html );

        if ( !range.collapsed ) {
            var tmpNode = range.startContainer;
            if(domUtils.isFillChar(tmpNode)){
                range.setStartBefore(tmpNode)
            }
            tmpNode = range.endContainer;
            if(domUtils.isFillChar(tmpNode)){
                range.setEndAfter(tmpNode)
            }
            range.txtToElmBoundary();
            //缁撴潫杈圭晫鍙兘鏀惧埌浜哹r鐨勫墠杈癸紝瑕佹妸br鍖呭惈杩涙潵
            // x[xxx]<br/>
            if(range.endContainer && range.endContainer.nodeType == 1){
                tmpNode = range.endContainer.childNodes[range.endOffset];
                if(tmpNode && domUtils.isBr(tmpNode)){
                    range.setEndAfter(tmpNode);
                }
            }
            if(range.startOffset == 0){
                tmpNode = range.startContainer;
                if(domUtils.isBoundaryNode(tmpNode,'firstChild') ){
                    tmpNode = range.endContainer;
                    if(range.endOffset == (tmpNode.nodeType == 3 ? tmpNode.nodeValue.length : tmpNode.childNodes.length) && domUtils.isBoundaryNode(tmpNode,'lastChild')){
                        me.body.innerHTML = '<p>'+(browser.ie ? '' : '<br/>')+'</p>';
                        range.setStart(me.body.firstChild,0).collapse(true)

                    }
                }
            }
            !range.collapsed && range.deleteContents();
            if(range.startContainer.nodeType == 1){
                var child = range.startContainer.childNodes[range.startOffset],pre;
                if(child && domUtils.isBlockElm(child) && (pre = child.previousSibling) && domUtils.isBlockElm(pre)){
                    range.setEnd(pre,pre.childNodes.length).collapse();
                    while(child.firstChild){
                        pre.appendChild(child.firstChild);
                    }
                    domUtils.remove(child);
                }
            }

        }


        var child,parent,pre,tmp,hadBreak = 0, nextNode;
        //濡傛灉褰撳墠浣嶇疆閫変腑浜唂illchar瑕佸共鎺夛紝瑕佷笉浼氫骇鐢熺┖琛�
        if(range.inFillChar()){
            child = range.startContainer;
            if(domUtils.isFillChar(child)){
                range.setStartBefore(child).collapse(true);
                domUtils.remove(child);
            }else if(domUtils.isFillChar(child,true)){
                child.nodeValue = child.nodeValue.replace(fillCharReg,'');
                range.startOffset--;
                range.collapsed && range.collapse(true)
            }
        }
        //鍒楄〃鍗曠嫭澶勭悊
        var li = domUtils.findParentByTagName(range.startContainer,'li',true);
        if(li){
            var next,last;
            while(child = div.firstChild){
                //閽堝hr鍗曠嫭澶勭悊涓�笅鍏�
                while(child && (child.nodeType == 3 || !domUtils.isBlockElm(child) || child.tagName=='HR' )){
                    next = child.nextSibling;
                    range.insertNode( child).collapse();
                    last = child;
                    child = next;

                }
                if(child){
                    if(/^(ol|ul)$/i.test(child.tagName)){
                        while(child.firstChild){
                            last = child.firstChild;
                            domUtils.insertAfter(li,child.firstChild);
                            li = li.nextSibling;
                        }
                        domUtils.remove(child)
                    }else{
                        var tmpLi;
                        next = child.nextSibling;
                        tmpLi = me.document.createElement('li');
                        domUtils.insertAfter(li,tmpLi);
                        tmpLi.appendChild(child);
                        last = child;
                        child = next;
                        li = tmpLi;
                    }
                }
            }
            li = domUtils.findParentByTagName(range.startContainer,'li',true);
            if(domUtils.isEmptyBlock(li)){
                domUtils.remove(li)
            }
            if(last){

                range.setStartAfter(last).collapse(true).select(true)
            }
        }else{
            while ( child = div.firstChild ) {
                if(hadBreak){
                    var p = me.document.createElement('p');
                    while(child && (child.nodeType == 3 || !dtd.$block[child.tagName])){
                        nextNode = child.nextSibling;
                        p.appendChild(child);
                        child = nextNode;
                    }
                    if(p.firstChild){

                        child = p
                    }
                }
                range.insertNode( child );
                nextNode = child.nextSibling;
                if ( !hadBreak && child.nodeType == domUtils.NODE_ELEMENT && domUtils.isBlockElm( child ) ){

                    parent = domUtils.findParent( child,function ( node ){ return domUtils.isBlockElm( node ); } );
                    if ( parent && parent.tagName.toLowerCase() != 'body' && !(dtd[parent.tagName][child.nodeName] && child.parentNode === parent)){
                        if(!dtd[parent.tagName][child.nodeName]){
                            pre = parent;
                        }else{
                            tmp = child.parentNode;
                            while (tmp !== parent){
                                pre = tmp;
                                tmp = tmp.parentNode;

                            }
                        }


                        domUtils.breakParent( child, pre || tmp );
                        //鍘绘帀break鍚庡墠涓�釜澶氫綑鐨勮妭鐐� <p>|<[p> ==> <p></p><div></div><p>|</p>
                        var pre = child.previousSibling;
                        domUtils.trimWhiteTextNode(pre);
                        if(!pre.childNodes.length){
                            domUtils.remove(pre);
                        }
                        //trace:2012,鍦ㄩ潪ie鐨勬儏鍐碉紝鍒囧紑鍚庡墿涓嬬殑鑺傜偣鏈夊彲鑳戒笉鑳界偣鍏ュ厜鏍囨坊鍔燽r鍗犱綅

                        if(!browser.ie &&
                            (next = child.nextSibling) &&
                            domUtils.isBlockElm(next) &&
                            next.lastChild &&
                            !domUtils.isBr(next.lastChild)){
                            next.appendChild(me.document.createElement('br'));
                        }
                        hadBreak = 1;
                    }
                }
                var next = child.nextSibling;
                if(!div.firstChild && next && domUtils.isBlockElm(next)){

                    range.setStart(next,0).collapse(true);
                    break;
                }
                range.setEndAfter( child ).collapse();

            }

            child = range.startContainer;

            if(nextNode && domUtils.isBr(nextNode)){
                domUtils.remove(nextNode)
            }
            //鐢╟hrome鍙兘鏈夌┖鐧藉睍浣嶇
            if(domUtils.isBlockElm(child) && domUtils.isEmptyNode(child)){
                if(nextNode = child.nextSibling){
                    domUtils.remove(child);
                    if(nextNode.nodeType == 1 && dtd.$block[nextNode.tagName]){

                        range.setStart(nextNode,0).collapse(true).shrinkBoundary()
                    }
                }else{

                    try{
                        child.innerHTML = browser.ie ? domUtils.fillChar : '<br/>';
                    }catch(e){
                        range.setStartBefore(child);
                        domUtils.remove(child)
                    }

                }

            }
            //鍔犱笂true鍥犱负鍦ㄥ垹闄よ〃鎯呯瓑鏃朵細鍒犱袱娆★紝绗竴娆℃槸鍒犵殑fillData
            try{
                range.select(true);
            }catch(e){}

        }



        setTimeout(function(){
            range = me.selection.getRange();
            range.scrollToView(me.autoHeightEnabled,me.autoHeightEnabled ? domUtils.getXY(me.iframe).y:0);
            me.fireEvent('afterinserthtml');
        },200);
    }
};

///import core
///commands 鑷姩鎺掔増
///commandsName  autotypeset
///commandsTitle  鑷姩鎺掔増
/**
 * 鑷姩鎺掔増
 * @function
 * @name baidu.editor.execCommands
 */

UE.plugins['autotypeset'] = function(){

    this.setOpt({'autotypeset':{
        mergeEmptyline : true,          //鍚堝苟绌鸿
            removeClass : true,            //鍘绘帀鍐椾綑鐨刢lass
            removeEmptyline : false,        //鍘绘帀绌鸿
            textAlign : "left",             //娈佃惤鐨勬帓鐗堟柟寮忥紝鍙互鏄�left,right,center,justify 鍘绘帀杩欎釜灞炴�琛ㄧず涓嶆墽琛屾帓鐗�
            imageBlockLine : 'center',      //鍥剧墖鐨勬诞鍔ㄦ柟寮忥紝鐙崰涓�鍓т腑,宸﹀彸娴姩锛岄粯璁� center,left,right,none 鍘绘帀杩欎釜灞炴�琛ㄧず涓嶆墽琛屾帓鐗�
            pasteFilter : false,             //鏍规嵁瑙勫垯杩囨护娌′簨绮樿创杩涙潵鐨勫唴瀹�
            clearFontSize : false,           //鍘绘帀鎵�湁鐨勫唴宓屽瓧鍙凤紝浣跨敤缂栬緫鍣ㄩ粯璁ょ殑瀛楀彿
            clearFontFamily : false,         //鍘绘帀鎵�湁鐨勫唴宓屽瓧浣擄紝浣跨敤缂栬緫鍣ㄩ粯璁ょ殑瀛椾綋
            removeEmptyNode : false,         // 鍘绘帀绌鸿妭鐐�
            //鍙互鍘绘帀鐨勬爣绛�
            removeTagNames : utils.extend({div:1},dtd.$removeEmpty),
            indent : false,                  // 琛岄缂╄繘
            indentValue : '2em'             //琛岄缂╄繘鐨勫ぇ灏�
    }});
    var me = this,
        opt = me.options.autotypeset,
        remainClass = {
            'selectTdClass':1,
            'pagebreak':1,
            'anchorclass':1
        },
        remainTag = {
            'li':1
        },
        tags = {
            div:1,
            p:1,
            //trace:2183 杩欎簺涔熻涓烘槸琛�
            blockquote:1,center:1,h1:1,h2:1,h3:1,h4:1,h5:1,h6:1,
            span:1
        },
        highlightCont;
    //鍗囩骇浜嗙増鏈紝浣嗛厤缃」鐩噷娌℃湁autotypeset
    if(!opt){
        return;
    }
    function isLine(node,notEmpty){
        if(!node || node.nodeType == 3)
            return 0;
        if(domUtils.isBr(node))
            return 1;
        if(node && node.parentNode && tags[node.tagName.toLowerCase()]){
            if(highlightCont && highlightCont.contains(node)
                ||
                node.getAttribute('pagebreak')
            ){
                return 0;
            }

            return notEmpty ? !domUtils.isEmptyBlock(node) : domUtils.isEmptyBlock(node,new RegExp('[\\s'+domUtils.fillChar
                +']','g'));
        }
    }

    function removeNotAttributeSpan(node){
        if(!node.style.cssText){
            domUtils.removeAttributes(node,['style']);
            if(node.tagName.toLowerCase() == 'span' && domUtils.hasNoAttributes(node)){
                domUtils.remove(node,true);
            }
        }
    }
    function autotype(type,html){
        var me = this,cont;
        if(html){
            if(!opt.pasteFilter){
                return;
            }
            cont = me.document.createElement('div');
            cont.innerHTML = html.html;
        }else{
            cont = me.document.body;
        }
        var nodes = domUtils.getElementsByTagName(cont,'*');

          // 琛岄缂╄繘锛屾钀芥柟鍚戯紝娈甸棿璺濓紝娈靛唴闂磋窛
        for(var i=0,ci;ci=nodes[i++];){

            if(me.fireEvent('excludeNodeinautotype',ci) === true){
                continue;
            }
             //font-size
            if(opt.clearFontSize && ci.style.fontSize){
                domUtils.removeStyle(ci,'font-size');

                removeNotAttributeSpan(ci);

            }
            //font-family
            if(opt.clearFontFamily && ci.style.fontFamily){
                domUtils.removeStyle(ci,'font-family');
                removeNotAttributeSpan(ci);
            }

            if(isLine(ci)){
                //鍚堝苟绌鸿
                if(opt.mergeEmptyline ){
                    var next = ci.nextSibling,tmpNode,isBr = domUtils.isBr(ci);
                    while(isLine(next)){
                        tmpNode = next;
                        next = tmpNode.nextSibling;
                        if(isBr && (!next || next && !domUtils.isBr(next))){
                            break;
                        }
                        domUtils.remove(tmpNode);
                    }

                }
                 //鍘绘帀绌鸿锛屼繚鐣欏崰浣嶇殑绌鸿
                if(opt.removeEmptyline && domUtils.inDoc(ci,cont) && !remainTag[ci.parentNode.tagName.toLowerCase()] ){
                    if(domUtils.isBr(ci)){
                        next = ci.nextSibling;
                        if(next && !domUtils.isBr(next)){
                            continue;
                        }
                    }
                    domUtils.remove(ci);
                    continue;

                }

            }
            if(isLine(ci,true) && ci.tagName != 'SPAN'){
                if(opt.indent){
                    ci.style.textIndent = opt.indentValue;
                }
                if(opt.textAlign){
                    ci.style.textAlign = opt.textAlign;
                }
//                if(opt.lineHeight)
//                    ci.style.lineHeight = opt.lineHeight + 'cm';


            }

            //鍘绘帀class,淇濈暀鐨刢lass涓嶅幓鎺�
            if(opt.removeClass && ci.className && !remainClass[ci.className.toLowerCase()]){

                if(highlightCont && highlightCont.contains(ci)){
                     continue;
                }
                domUtils.removeAttributes(ci,['class']);
            }

            //琛ㄦ儏涓嶅鐞�
            if(opt.imageBlockLine && ci.tagName.toLowerCase() == 'img' && !ci.getAttribute('emotion')){
                if(html){
                    var img = ci;
                    switch (opt.imageBlockLine){
                        case 'left':
                        case 'right':
                        case 'none':
                            var pN = img.parentNode,tmpNode,pre,next;
                            while(dtd.$inline[pN.tagName] || pN.tagName == 'A'){
                                pN = pN.parentNode;
                            }
                            tmpNode = pN;
                            if(tmpNode.tagName == 'P' && domUtils.getStyle(tmpNode,'text-align') == 'center'){
                                if(!domUtils.isBody(tmpNode) && domUtils.getChildCount(tmpNode,function(node){return !domUtils.isBr(node) && !domUtils.isWhitespace(node)}) == 1){
                                    pre = tmpNode.previousSibling;
                                    next = tmpNode.nextSibling;
                                    if(pre && next && pre.nodeType == 1 &&  next.nodeType == 1 && pre.tagName == next.tagName && domUtils.isBlockElm(pre)){
                                        pre.appendChild(tmpNode.firstChild);
                                        while(next.firstChild){
                                            pre.appendChild(next.firstChild);
                                        }
                                        domUtils.remove(tmpNode);
                                        domUtils.remove(next);
                                    }else{
                                        domUtils.setStyle(tmpNode,'text-align','');
                                    }


                                }


                            }
                            domUtils.setStyle(img,'float',opt.imageBlockLine);
                            break;
                        case 'center':
                            if(me.queryCommandValue('imagefloat') != 'center'){
                                pN = img.parentNode;
                                domUtils.setStyle(img,'float','none');
                                tmpNode = img;
                                while(pN && domUtils.getChildCount(pN,function(node){return !domUtils.isBr(node) && !domUtils.isWhitespace(node)}) == 1
                                    && (dtd.$inline[pN.tagName] || pN.tagName == 'A')){
                                    tmpNode = pN;
                                    pN = pN.parentNode;
                                }
                                var pNode = me.document.createElement('p');
                                domUtils.setAttributes(pNode,{

                                    style:'text-align:center'
                                });
                                tmpNode.parentNode.insertBefore(pNode,tmpNode);
                                pNode.appendChild(tmpNode);
                                domUtils.setStyle(tmpNode,'float','');

                            }


                    }
                }else{
                    var range = me.selection.getRange();
                    range.selectNode(ci).select();
                    me.execCommand('imagefloat',opt.imageBlockLine);
                }



            }

            //鍘绘帀鍐椾綑鐨勬爣绛�
            if(opt.removeEmptyNode){
                if(opt.removeTagNames[ci.tagName.toLowerCase()] && domUtils.hasNoAttributes(ci) && domUtils.isEmptyBlock(ci)){
                    domUtils.remove(ci);
                }
            }
        }
        if(html){
            html.html = cont.innerHTML;
        }
    }
    if(opt.pasteFilter){
        me.addListener('beforepaste',autotype);
    }

    me.commands['autotypeset'] = {
        execCommand:function () {
            me.removeListener('beforepaste',autotype);
            if(opt.pasteFilter){
                me.addListener('beforepaste',autotype);
            }
            autotype.call(me)
        }

    };

};


///import core
///commands 鑷姩鎻愪氦
///commandsName  autosubmit
///commandsTitle  鑷姩鎻愪氦
UE.plugins['autosubmit'] = function(){
    var me = this;
    me.commands['autosubmit'] = {
        execCommand:function () {
            var me=this,
                form = domUtils.findParentByTagName(me.iframe,"form", false);
            if (form)    {
                if(me.fireEvent("beforesubmit")===false){
                    return;
                }
                me.sync();
                form.submit();
            }
        }
    };
    //蹇嵎閿�
    me.addshortcutkey({
        "autosubmit" : "ctrl+13" //鎵嬪姩鎻愪氦
    });
};

///import core
///commands 鎻掑叆鑳屾櫙
///commandsName  background
///commandsTitle  鎻掑叆鑳屾櫙
///commandsDialog  dialogs\background
UE.plugins['background'] = function(){
    var me = this;
    me.addListener("getAllHtml",function(type,headHtml){
        var body = this.body,
            su = domUtils.getComputedStyle(body,"background-image"),
            url="";
        if(su.indexOf(me.options.imagePath)>0){
            url =  su.substring(su.indexOf(me.options.imagePath),su.length-1).replace(/"|\(|\)/ig,"");
        }else{
            url =  su!="none" ? su.replace(/url\("?|"?\)/ig,""):"";
        }
        var html = '<style type="text/css">body{';
        var bgObj = {
            "background-color" : domUtils.getComputedStyle(body,"background-color")||"#ffffff",
            'background-image' : url ? 'url('+url+')' : '',
            'background-repeat':domUtils.getComputedStyle(body,"background-repeat")||"",
            'background-position': browser.ie?(domUtils.getComputedStyle(body,"background-position-x")+" "+domUtils.getComputedStyle(body,"background-position-y")):domUtils.getComputedStyle(body,"background-position"),
            'height':domUtils.getComputedStyle(body,"height")
        };
        for ( var name in bgObj ) {
            if ( bgObj.hasOwnProperty( name ) ) {
                html += name+":"+bgObj[name]+";";
            }
        }
        html += '}</style> ';
        headHtml.push(html);
    });
}
///import core
///import plugins\inserthtml.js
///commands 鎻掑叆鍥剧墖锛屾搷浣滃浘鐗囩殑瀵归綈鏂瑰紡
///commandsName  InsertImage,ImageNone,ImageLeft,ImageRight,ImageCenter
///commandsTitle  鍥剧墖,榛樿,灞呭乏,灞呭彸,灞呬腑
///commandsDialog  dialogs\image
/**
 * Created by .
 * User: zhanyi
 * for image
 */

UE.commands['imagefloat'] = {
    execCommand:function (cmd, align) {
        var me = this,
            range = me.selection.getRange();
        if (!range.collapsed) {
            var img = range.getClosedNode();
            if (img && img.tagName == 'IMG') {
                switch (align) {
                    case 'left':
                    case 'right':
                    case 'none':
                        var pN = img.parentNode, tmpNode, pre, next;
                        while (dtd.$inline[pN.tagName] || pN.tagName == 'A') {
                            pN = pN.parentNode;
                        }
                        tmpNode = pN;
                        if (tmpNode.tagName == 'P' && domUtils.getStyle(tmpNode, 'text-align') == 'center') {
                            if (!domUtils.isBody(tmpNode) && domUtils.getChildCount(tmpNode, function (node) {
                                return !domUtils.isBr(node) && !domUtils.isWhitespace(node);
                            }) == 1) {
                                pre = tmpNode.previousSibling;
                                next = tmpNode.nextSibling;
                                if (pre && next && pre.nodeType == 1 && next.nodeType == 1 && pre.tagName == next.tagName && domUtils.isBlockElm(pre)) {
                                    pre.appendChild(tmpNode.firstChild);
                                    while (next.firstChild) {
                                        pre.appendChild(next.firstChild);
                                    }
                                    domUtils.remove(tmpNode);
                                    domUtils.remove(next);
                                } else {
                                    domUtils.setStyle(tmpNode, 'text-align', '');
                                }


                            }

                            range.selectNode(img).select();
                        }
                        domUtils.setStyle(img, 'float', align == 'none' ? '' : align);
                        if(align == 'none'){
                            domUtils.removeAttributes(img,'align');
                        }

                        break;
                    case 'center':
                        if (me.queryCommandValue('imagefloat') != 'center') {
                            pN = img.parentNode;
                            domUtils.setStyle(img, 'float', '');
                            domUtils.removeAttributes(img,'align');
                            tmpNode = img;
                            while (pN && domUtils.getChildCount(pN, function (node) {
                                return !domUtils.isBr(node) && !domUtils.isWhitespace(node);
                            }) == 1
                                && (dtd.$inline[pN.tagName] || pN.tagName == 'A')) {
                                tmpNode = pN;
                                pN = pN.parentNode;
                            }
                            range.setStartBefore(tmpNode).setCursor(false);
                            pN = me.document.createElement('div');
                            pN.appendChild(tmpNode);
                            domUtils.setStyle(tmpNode, 'float', '');

                            me.execCommand('insertHtml', '<p id="_img_parent_tmp" style="text-align:center">' + pN.innerHTML + '</p>');

                            tmpNode = me.document.getElementById('_img_parent_tmp');
                            tmpNode.removeAttribute('id');
                            tmpNode = tmpNode.firstChild;
                            range.selectNode(tmpNode).select();
                            //鍘绘帀鍚庤竟澶氫綑鐨勫厓绱�                            next = tmpNode.parentNode.nextSibling;
                            if (next && domUtils.isEmptyNode(next)) {
                                domUtils.remove(next);
                            }

                        }

                        break;
                }

            }
        }
    },
    queryCommandValue:function () {
        var range = this.selection.getRange(),
            startNode, floatStyle;
        if (range.collapsed) {
            return 'none';
        }
        startNode = range.getClosedNode();
        if (startNode && startNode.nodeType == 1 && startNode.tagName == 'IMG') {
            floatStyle = startNode.getAttribute('align')||domUtils.getComputedStyle(startNode, 'float');
            if (floatStyle == 'none') {
                floatStyle = domUtils.getComputedStyle(startNode.parentNode, 'text-align') == 'center' ? 'center' : floatStyle;
            }
            return {
                left:1,
                right:1,
                center:1
            }[floatStyle] ? floatStyle : 'none';
        }
        return 'none';


    },
    queryCommandState:function () {
        var range = this.selection.getRange(),
            startNode;

        if (range.collapsed)  return -1;

        startNode = range.getClosedNode();
        if (startNode && startNode.nodeType == 1 && startNode.tagName == 'IMG') {
            return 0;
        }
        return -1;
    }
};

UE.commands['insertimage'] = {
    execCommand:function (cmd, opt) {

        opt = utils.isArray(opt) ? opt : [opt];
        if (!opt.length) {
            return;
        }
        var me = this,
            range = me.selection.getRange(),
            img = range.getClosedNode();
        if (img && /img/i.test(img.tagName) && img.className != "edui-faked-video" && !img.getAttribute("word_img")) {
            var first = opt.shift();
            var floatStyle = first['floatStyle'];
            delete first['floatStyle'];
////                img.style.border = (first.border||0) +"px solid #000";
////                img.style.margin = (first.margin||0) +"px";
//                img.style.cssText += ';margin:' + (first.margin||0) +"px;" + 'border:' + (first.border||0) +"px solid #000";
            domUtils.setAttributes(img, first);
            me.execCommand('imagefloat', floatStyle);
            if (opt.length > 0) {
                range.setStartAfter(img).setCursor(false, true);
                me.execCommand('insertimage', opt);
            }

        } else {
            var html = [], str = '', ci;
            ci = opt[0];
            if (opt.length == 1) {
                str = '<img src="' + ci.src + '" ' + (ci._src ? ' _src="' + ci._src + '" ' : '') +
                    (ci.width ? 'width="' + ci.width + '" ' : '') +
                    (ci.height ? ' height="' + ci.height + '" ' : '') +
                    (ci['floatStyle'] == 'left' || ci['floatStyle'] == 'right' ? ' style="float:' + ci['floatStyle'] + ';"' : '') +
                    (ci.title && ci.title != "" ? ' title="' + ci.title + '"' : '') +
                    (ci.border && ci.border != "0" ? ' border="' + ci.border + '"' : '') +
                    (ci.alt && ci.alt != "" ? ' alt="' + ci.alt + '"' : '') +
                    (ci.hspace && ci.hspace != "0" ? ' hspace = "' + ci.hspace + '"' : '') +
                    (ci.vspace && ci.vspace != "0" ? ' vspace = "' + ci.vspace + '"' : '') + '/>';
                if (ci['floatStyle'] == 'center') {
                    str = '<p style="text-align: center">' + str + '</p>';
                }
                html.push(str);

            } else {
                for (var i = 0; ci = opt[i++];) {
                    str = '<p ' + (ci['floatStyle'] == 'center' ? 'style="text-align: center" ' : '') + '><img src="' + ci.src + '" ' +
                        (ci.width ? 'width="' + ci.width + '" ' : '') + (ci._src ? ' _src="' + ci._src + '" ' : '') +
                        (ci.height ? ' height="' + ci.height + '" ' : '') +
                        ' style="' + (ci['floatStyle'] && ci['floatStyle'] != 'center' ? 'float:' + ci['floatStyle'] + ';' : '') +
                        (ci.border || '') + '" ' +
                        (ci.title ? ' title="' + ci.title + '"' : '') + ' /></p>';
                    html.push(str);
                }
            }

            me.execCommand('insertHtml', html.join(''));
        }
    }
};
///import core
///commands 娈佃惤鏍煎紡,灞呭乏,灞呭彸,灞呬腑,涓ょ瀵归綈
///commandsName  JustifyLeft,JustifyCenter,JustifyRight,JustifyJustify
///commandsTitle  灞呭乏瀵归綈,灞呬腑瀵归綈,灞呭彸瀵归綈,涓ょ瀵归綈
/**
 * @description 灞呭乏鍙充腑
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     justify鎵ц瀵归綈鏂瑰紡鐨勫懡浠�
 * @param   {String}   align               瀵归綈鏂瑰紡锛歭eft灞呭乏锛宺ight灞呭彸锛宑enter灞呬腑锛宩ustify涓ょ瀵归綈
 * @author zhanyi
 */
UE.plugins['justify']=function(){
    var me=this,
        block = domUtils.isBlockElm,
        defaultValue = {
            left:1,
            right:1,
            center:1,
            justify:1
        },
        doJustify = function (range, style) {
            var bookmark = range.createBookmark(),
                filterFn = function (node) {
                    return node.nodeType == 1 ? node.tagName.toLowerCase() != 'br' && !domUtils.isBookmarkNode(node) : !domUtils.isWhitespace(node);
                };

            range.enlarge(true);
            var bookmark2 = range.createBookmark(),
                current = domUtils.getNextDomNode(bookmark2.start, false, filterFn),
                tmpRange = range.cloneRange(),
                tmpNode;
            while (current && !(domUtils.getPosition(current, bookmark2.end) & domUtils.POSITION_FOLLOWING)) {
                if (current.nodeType == 3 || !block(current)) {
                    tmpRange.setStartBefore(current);
                    while (current && current !== bookmark2.end && !block(current)) {
                        tmpNode = current;
                        current = domUtils.getNextDomNode(current, false, null, function (node) {
                            return !block(node);
                        });
                    }
                    tmpRange.setEndAfter(tmpNode);
                    var common = tmpRange.getCommonAncestor();
                    if (!domUtils.isBody(common) && block(common)) {
                        domUtils.setStyles(common, utils.isString(style) ? {'text-align':style} : style);
                        current = common;
                    } else {
                        var p = range.document.createElement('p');
                        domUtils.setStyles(p, utils.isString(style) ? {'text-align':style} : style);
                        var frag = tmpRange.extractContents();
                        p.appendChild(frag);
                        tmpRange.insertNode(p);
                        current = p;
                    }
                    current = domUtils.getNextDomNode(current, false, filterFn);
                } else {
                    current = domUtils.getNextDomNode(current, true, filterFn);
                }
            }
            return range.moveToBookmark(bookmark2).moveToBookmark(bookmark);
        };

    UE.commands['justify'] = {
        execCommand:function (cmdName, align) {
            var range = this.selection.getRange(),
                txt;

            //闂悎鏃跺崟鐙鐞�
            if (range.collapsed) {
                txt = this.document.createTextNode('p');
                range.insertNode(txt);
            }
            doJustify(range, align);
            if (txt) {
                range.setStartBefore(txt).collapse(true);
                domUtils.remove(txt);
            }

            range.select();


            return true;
        },
        queryCommandValue:function () {
            var startNode = this.selection.getStart(),
                value = domUtils.getComputedStyle(startNode, 'text-align');
            return defaultValue[value] ? value : 'left';
        },
        queryCommandState:function () {
            var start = this.selection.getStart(),
                cell = start && domUtils.findParentByTagName(start, ["td", "th","caption"], true);

            return cell? -1:0;
        }

    };
};

///import core
///import plugins\removeformat.js
///commands 瀛椾綋棰滆壊,鑳屾櫙鑹�瀛楀彿,瀛椾綋,涓嬪垝绾�鍒犻櫎绾�
///commandsName  ForeColor,BackColor,FontSize,FontFamily,Underline,StrikeThrough
///commandsTitle  瀛椾綋棰滆壊,鑳屾櫙鑹�瀛楀彿,瀛椾綋,涓嬪垝绾�鍒犻櫎绾�
/**
 * @description 瀛椾綋
 * @name baidu.editor.execCommand
 * @param {String}     cmdName    鎵ц鐨勫姛鑳藉悕绉�
 * @param {String}    value             浼犲叆鐨勫�
 */
UE.plugins['font'] = function () {
    var me = this,
        fonts = {
            'forecolor': 'color',
            'backcolor': 'background-color',
            'fontsize': 'font-size',
            'fontfamily': 'font-family',
            'underline': 'text-decoration',
            'strikethrough': 'text-decoration',
            'fontborder': 'border'
        },
        needCmd = {'underline': 1, 'strikethrough': 1, 'fontborder': 1},
        needSetChild = {
            'forecolor': 'color',
            'backcolor': 'background-color',
            'fontsize': 'font-size',
            'fontfamily': 'font-family'

        };
    me.setOpt({
        'fontfamily': [
            { name: 'songti', val: '瀹嬩綋,SimSun'},
            { name: 'yahei', val: '寰蒋闆呴粦,Microsoft YaHei'},
            { name: 'kaiti', val: '妤蜂綋,妤蜂綋_GB2312, SimKai'},
            { name: 'heiti', val: '榛戜綋, SimHei'},
            { name: 'lishu', val: '闅朵功, SimLi'},
            { name: 'andaleMono', val: 'andale mono'},
            { name: 'arial', val: 'arial, helvetica,sans-serif'},
            { name: 'arialBlack', val: 'arial black,avant garde'},
            { name: 'comicSansMs', val: 'comic sans ms'},
            { name: 'impact', val: 'impact,chicago'},
            { name: 'timesNewRoman', val: 'times new roman'}
        ],
        'fontsize': [10, 11, 12, 14, 16, 18, 20, 24, 36]
    });

    function mergeWithParent(node){
        var parent;
        while(parent = node.parentNode){
            if(parent.tagName == 'SPAN' && domUtils.getChildCount(parent,function(child){
                return !domUtils.isBookmarkNode(child) && !domUtils.isBr(child)
            }) == 1) {
                parent.style.cssText += node.style.cssText;
                domUtils.remove(node,true);
                node = parent;

            }else{
                break;
            }
        }

    }
    function mergeChild(rng,cmdName,value){
        if(needSetChild[cmdName]){
            rng.adjustmentBoundary();
            if(!rng.collapsed && rng.startContainer.nodeType == 1){
                var start = rng.startContainer.childNodes[rng.startOffset];
                if(start && domUtils.isTagNode(start,'span')){
                    var bk = rng.createBookmark();
                    utils.each(domUtils.getElementsByTagName(start, 'span'), function (span) {
                        if (!span.parentNode || domUtils.isBookmarkNode(span))return;
                        if(cmdName == 'backcolor' && domUtils.getComputedStyle(span,'background-color').toLowerCase() === value){
                            return;
                        }
                        domUtils.removeStyle(span,needSetChild[cmdName]);
                        if(span.style.cssText.replace(/^\s+$/,'').length == 0){
                            domUtils.remove(span,true)
                        }
                    });
                    rng.moveToBookmark(bk)
                }
            }
        }

    }
    function mergesibling(rng,cmdName,value) {
        var collapsed = rng.collapsed,
            bk = rng.createBookmark(), common;
        if (collapsed) {
            common = bk.start.parentNode;
            while (dtd.$inline[common.tagName]) {
                common = common.parentNode;
            }
        } else {
            common = domUtils.getCommonAncestor(bk.start, bk.end);
        }
        utils.each(domUtils.getElementsByTagName(common, 'span'), function (span) {
            if (!span.parentNode || domUtils.isBookmarkNode(span))return;
            if (/\s*border\s*:\s*none;?\s*/i.test(span.style.cssText)) {
                if(/^\s*border\s*:\s*none;?\s*$/.test(span.style.cssText)){
                    domUtils.remove(span, true);
                }else{
                    domUtils.removeStyle(span,'border');
                }
                return
            }
            if (/border/i.test(span.style.cssText) && span.parentNode.tagName == 'SPAN' && /border/i.test(span.parentNode.style.cssText)) {
                span.style.cssText = span.style.cssText.replace(/border[^:]*:[^;]+;?/gi, '');
            }
            if(!(cmdName=='fontborder' && value=='none')){
                var next = span.nextSibling;
                while (next && next.nodeType == 1 && next.tagName == 'SPAN' ) {
                    if(domUtils.isBookmarkNode(next) && cmdName == 'fontborder') {
                        span.appendChild(next);
                        next = span.nextSibling;
                        continue;
                    }
                    if (next.style.cssText == span.style.cssText) {
                        domUtils.moveChild(next, span);
                        domUtils.remove(next);
                    }
                    if (span.nextSibling === next)
                        break;
                    next = span.nextSibling;
                }
            }


            mergeWithParent(span);
            if(browser.ie && browser.version > 8 ){
                //鎷疯礉鐖朵翰浠殑鐗瑰埆鐨勫睘鎬�杩欓噷鍙仛鑳屾櫙棰滆壊鐨勫鐞�
                var parent = domUtils.findParent(span,function(n){return n.tagName == 'SPAN' && /background-color/.test(n.style.cssText)});
                if(parent && !/background-color/.test(span.style.cssText)){
                    span.style.backgroundColor = parent.style.backgroundColor;
                }
            }

        });
        rng.moveToBookmark(bk);
        mergeChild(rng,cmdName,value)
    }

    me.addInputRule(function (root) {
        utils.each(root.getNodesByTagName('u s del font strike'), function (node) {
            if (node.tagName == 'font') {
                var cssStyle = [];
                for (var p in node.attrs) {
                    switch (p) {
                        case 'size':
                            cssStyle.push('font-size:' + node.attrs[p] + 'px');
                            break;
                        case 'color':
                            cssStyle.push('color:' + node.attrs[p]);
                            break;
                        case 'face':
                            cssStyle.push('font-family:' + node.attrs[p]);
                            break;
                        case 'style':
                            cssStyle.push(node.attrs[p]);
                    }
                }
                node.attrs = {
                    'style': cssStyle.join(';')
                };
            } else {
                var val = node.tagName == 'u' ? 'underline' : 'line-through';
                node.attrs = {
                    'style': (node.getAttr('style') || '') + 'text-decoration:' + val + ';'
                }
            }
            node.tagName = 'span';
        });
//        utils.each(root.getNodesByTagName('span'), function (node) {
//            var val;
//            if(val = node.getAttr('class')){
//                if(/fontstrikethrough/.test(val)){
//                    node.setStyle('text-decoration','line-through');
//                    if(node.attrs['class']){
//                        node.attrs['class'] = node.attrs['class'].replace(/fontstrikethrough/,'');
//                    }else{
//                        node.setAttr('class')
//                    }
//                }
//                if(/fontborder/.test(val)){
//                    node.setStyle('border','1px solid #000');
//                    if(node.attrs['class']){
//                        node.attrs['class'] = node.attrs['class'].replace(/fontborder/,'');
//                    }else{
//                        node.setAttr('class')
//                    }
//                }
//            }
//        });
    });
//    me.addOutputRule(function(root){
//        utils.each(root.getNodesByTagName('span'), function (node) {
//            var val;
//            if(val = node.getStyle('text-decoration')){
//                if(/line-through/.test(val)){
//                    if(node.attrs['class']){
//                        node.attrs['class'] += ' fontstrikethrough';
//                    }else{
//                        node.setAttr('class','fontstrikethrough')
//                    }
//                }
//
//                node.setStyle('text-decoration')
//            }
//            if(val = node.getStyle('border')){
//                if(/1px/.test(val) && /solid/.test(val)){
//                    if(node.attrs['class']){
//                        node.attrs['class'] += ' fontborder';
//
//                    }else{
//                        node.setAttr('class','fontborder')
//                    }
//                }
//                node.setStyle('border')
//
//            }
//        });
//    });
    for (var p in fonts) {
        (function (cmd, style) {
            UE.commands[cmd] = {
                execCommand: function (cmdName, value) {
                    value = value || (this.queryCommandState(cmdName) ? 'none' : cmdName == 'underline' ? 'underline' :
                        cmdName == 'fontborder' ? '1px solid #000' :
                            'line-through');
                    var me = this,
                        range = this.selection.getRange(),
                        text;

                    if (value == 'default') {

                        if (range.collapsed) {
                            text = me.document.createTextNode('font');
                            range.insertNode(text).select();

                        }
                        me.execCommand('removeFormat', 'span,a', style);
                        if (text) {
                            range.setStartBefore(text).collapse(true);
                            domUtils.remove(text);
                        }
                        mergesibling(range,cmdName,value);
                        range.select()
                    } else {
                        if (!range.collapsed) {
                            if (needCmd[cmd] && me.queryCommandValue(cmd)) {
                                me.execCommand('removeFormat', 'span,a', style);
                            }
                            range = me.selection.getRange();

                            range.applyInlineStyle('span', {'style': style + ':' + value});
                            mergesibling(range, cmdName,value);
                            range.select();
                        } else {

                            var span = domUtils.findParentByTagName(range.startContainer, 'span', true);
                            text = me.document.createTextNode('font');
                            if (span && !span.children.length && !span[browser.ie ? 'innerText' : 'textContent'].replace(fillCharReg, '').length) {
                                //for ie hack when enter
                                range.insertNode(text);
                                if (needCmd[cmd]) {
                                    range.selectNode(text).select();
                                    me.execCommand('removeFormat', 'span,a', style, null);

                                    span = domUtils.findParentByTagName(text, 'span', true);
                                    range.setStartBefore(text);

                                }
                                span && (span.style.cssText += ';' + style + ':' + value);
                                range.collapse(true).select();


                            } else {
                                range.insertNode(text);
                                range.selectNode(text).select();
                                span = range.document.createElement('span');

                                if (needCmd[cmd]) {
                                    //a鏍囩鍐呯殑涓嶅鐞嗚烦杩�
                                    if (domUtils.findParentByTagName(text, 'a', true)) {
                                        range.setStartBefore(text).setCursor();
                                        domUtils.remove(text);
                                        return;
                                    }
                                    me.execCommand('removeFormat', 'span,a', style);
                                }

                                span.style.cssText = style + ':' + value;


                                text.parentNode.insertBefore(span, text);
                                //淇锛宻pan濂梥pan 浣嗘牱寮忎笉缁ф壙鐨勯棶棰�
                                if (!browser.ie || browser.ie && browser.version == 9) {
                                    var spanParent = span.parentNode;
                                    while (!domUtils.isBlockElm(spanParent)) {
                                        if (spanParent.tagName == 'SPAN') {
                                            //opera鍚堝苟style涓嶄細鍔犲叆";"
                                            span.style.cssText = spanParent.style.cssText + ";" + span.style.cssText;
                                        }
                                        spanParent = spanParent.parentNode;
                                    }
                                }


                                if (opera) {
                                    setTimeout(function () {
                                        range.setStart(span, 0).collapse(true);
                                        mergesibling(range, cmdName,value);
                                        range.select();
                                    });
                                } else {
                                    range.setStart(span, 0).collapse(true);
                                    mergesibling(range,cmdName,value);
                                    range.select();
                                }

                                //trace:981
                                //domUtils.mergeToParent(span)
                            }
                            domUtils.remove(text);
                        }


                    }
                    return true;
                },
                queryCommandValue: function (cmdName) {
                    var startNode = this.selection.getStart();

                    //trace:946
                    if (cmdName == 'underline' || cmdName == 'strikethrough') {
                        var tmpNode = startNode, value;
                        while (tmpNode && !domUtils.isBlockElm(tmpNode) && !domUtils.isBody(tmpNode)) {
                            if (tmpNode.nodeType == 1) {
                                value = domUtils.getComputedStyle(tmpNode, style);

                                if (value != 'none') {
                                    return value;
                                }
                            }

                            tmpNode = tmpNode.parentNode;
                        }
                        return 'none';
                    }
                    if (cmdName == 'fontborder') {
                        var tmp = startNode, val;
                        while (tmp && dtd.$inline[tmp.tagName]) {
                            if (val = domUtils.getComputedStyle(tmp, 'border')) {
                                if (/1px/.test(val) && /solid/.test(val)) {
                                    return val;
                                }
                            }
                            tmp = tmp.parentNode;
                        }
                        return ''
                    }

                    if( cmdName == 'FontSize' ) {
                        var styleVal = domUtils.getComputedStyle(startNode, style),
                            tmp = /^([\d\.]+)(\w+)$/.exec( styleVal );

                        if( tmp ) {

                            return Math.floor( tmp[1] ) + tmp[2];

                        }

                        return styleVal;

                    }

                    return  domUtils.getComputedStyle(startNode, style);
                },
                queryCommandState: function (cmdName) {
                    if (!needCmd[cmdName])
                        return 0;
                    var val = this.queryCommandValue(cmdName);
                    if (cmdName == 'fontborder') {
                        return /1px/.test(val) && /solid/.test(val)
                    } else {
                        return  val == (cmdName == 'underline' ?
                            'underline' : 'line-through');
                    }

                }
            };
        })(p, fonts[p]);
    }
};
///import core
///commands 瓒呴摼鎺�鍙栨秷閾炬帴
///commandsName  Link,Unlink
///commandsTitle  瓒呴摼鎺�鍙栨秷閾炬帴
///commandsDialog  dialogs\link
/**
 * 瓒呴摼鎺�
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     link鎻掑叆瓒呴摼鎺�
 * @param   {Object}  options         url鍦板潃锛宼itle鏍囬锛宼arget鏄惁鎵撳紑鏂伴〉
 * @author zhanyi
 */
/**
 * 鍙栨秷閾炬帴
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     unlink鍙栨秷閾炬帴
 * @author zhanyi
 */

UE.plugins['link'] = function(){
    function optimize( range ) {
        var start = range.startContainer,end = range.endContainer;

        if ( start = domUtils.findParentByTagName( start, 'a', true ) ) {
            range.setStartBefore( start );
        }
        if ( end = domUtils.findParentByTagName( end, 'a', true ) ) {
            range.setEndAfter( end );
        }
    }


    UE.commands['unlink'] = {
        execCommand : function() {
            var range = this.selection.getRange(),
                bookmark;
            if(range.collapsed && !domUtils.findParentByTagName( range.startContainer, 'a', true )){
                return;
            }
            bookmark = range.createBookmark();
            optimize( range );
            range.removeInlineStyle( 'a' ).moveToBookmark( bookmark ).select();
        },
        queryCommandState : function(){
            return !this.highlight && this.queryCommandValue('link') ?  0 : -1;
        }

    };
    function doLink(range,opt,me){
        var rngClone = range.cloneRange(),
            link = me.queryCommandValue('link');
        optimize( range = range.adjustmentBoundary() );
        var start = range.startContainer;
        if(start.nodeType == 1 && link){
            start = start.childNodes[range.startOffset];
            if(start && start.nodeType == 1 && start.tagName == 'A' && /^(?:https?|ftp|file)\s*:\s*\/\//.test(start[browser.ie?'innerText':'textContent'])){
                start[browser.ie ? 'innerText' : 'textContent'] =  utils.html(opt.textValue||opt.href);

            }
        }
        if( !rngClone.collapsed || link){
            range.removeInlineStyle( 'a' );
            rngClone = range.cloneRange();
        }

        if ( rngClone.collapsed ) {
            var a = range.document.createElement( 'a'),
                text = '';
            if(opt.textValue){

                text =   utils.html(opt.textValue);
                delete opt.textValue;
            }else{
                text =   utils.html(opt.href);

            }
            domUtils.setAttributes( a, opt );
            start =  domUtils.findParentByTagName( rngClone.startContainer, 'a', true );
            if(start && domUtils.isInNodeEndBoundary(rngClone,start)){
                range.setStartAfter(start).collapse(true);

            }
            a[browser.ie ? 'innerText' : 'textContent'] = text;
            range.insertNode(a).selectNode( a );
        } else {
            range.applyInlineStyle( 'a', opt );

        }
    }
    UE.commands['link'] = {
        execCommand : function( cmdName, opt ) {
            var range;
            opt._href && (opt._href = utils.unhtml(opt._href,/[<">]/g));
            opt.href && (opt.href = utils.unhtml(opt.href,/[<">]/g));
            opt.textValue && (opt.textValue = utils.unhtml(opt.textValue,/[<">]/g));
            doLink(range=this.selection.getRange(),opt,this);
            //闂悎閮戒笉鍔犲崰浣嶇锛屽鏋滃姞浜嗕細鍦╝鍚庤竟澶氫釜鍗犱綅绗﹁妭鐐癸紝瀵艰嚧a鏄浘鐗囪儗鏅粍鎴愮殑鍒楄〃锛屽嚭鐜扮┖鐧介棶棰�
            range.collapse().select(true);

        },
        queryCommandValue : function() {
            var range = this.selection.getRange(),
                node;
            if ( range.collapsed ) {
//                    node = this.selection.getStart();
                //鍦╥e涓媑etstart()鍙栧�鍋忎笂浜�
                node = range.startContainer;
                node = node.nodeType == 1 ? node : node.parentNode;

                if ( node && (node = domUtils.findParentByTagName( node, 'a', true )) && ! domUtils.isInNodeEndBoundary(range,node)) {

                    return node;
                }
            } else {
                //trace:1111  濡傛灉鏄�p><a>xx</a></p> startContainer鏄痯灏变細鎵句笉鍒癮
                range.shrinkBoundary();
                var start = range.startContainer.nodeType  == 3 || !range.startContainer.childNodes[range.startOffset] ? range.startContainer : range.startContainer.childNodes[range.startOffset],
                    end =  range.endContainer.nodeType == 3 || range.endOffset == 0 ? range.endContainer : range.endContainer.childNodes[range.endOffset-1],
                    common = range.getCommonAncestor();
                node = domUtils.findParentByTagName( common, 'a', true );
                if ( !node && common.nodeType == 1){

                    var as = common.getElementsByTagName( 'a' ),
                        ps,pe;

                    for ( var i = 0,ci; ci = as[i++]; ) {
                        ps = domUtils.getPosition( ci, start ),pe = domUtils.getPosition( ci,end);
                        if ( (ps & domUtils.POSITION_FOLLOWING || ps & domUtils.POSITION_CONTAINS)
                            &&
                            (pe & domUtils.POSITION_PRECEDING || pe & domUtils.POSITION_CONTAINS)
                            ) {
                            node = ci;
                            break;
                        }
                    }
                }
                return node;
            }

        },
        queryCommandState : function() {
            //鍒ゆ柇濡傛灉鏄棰戠殑璇濊繛鎺ヤ笉鍙敤
            //fix 853
            var img = this.selection.getRange().getClosedNode(),
                flag = img && (img.className == "edui-faked-video");
            return flag ? -1 : 0;
        }
    };
};
///import core
///import plugins\inserthtml.js
///commands 鎻掑叆妗嗘灦
///commandsName  InsertFrame
///commandsTitle  鎻掑叆Iframe
///commandsDialog  dialogs\insertframe

UE.plugins['insertframe'] = function() {
   var me =this;
    function deleteIframe(){
        me._iframe && delete me._iframe;
    }

    me.addListener("selectionchange",function(){
        deleteIframe();
    });

};


///import core
///commands 娑傞甫
///commandsName  Scrawl
///commandsTitle  娑傞甫
///commandsDialog  dialogs\scrawl
UE.commands['scrawl'] = {
    queryCommandState : function(){
        return ( browser.ie && browser.version  <= 8 ) ? -1 :0;
    }
};

///import core
///commands 娓呴櫎鏍煎紡
///commandsName  RemoveFormat
///commandsTitle  娓呴櫎鏍煎紡
/**
 * @description 娓呴櫎鏍煎紡
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     removeformat娓呴櫎鏍煎紡鍛戒护
 * @param   {String}   tags                浠ラ�鍙烽殧寮�殑鏍囩銆傚锛歴pan,a
 * @param   {String}   style               鏍峰紡
 * @param   {String}   attrs               灞炴�
 * @param   {String}   notIncluedA    鏄惁鎶奱鏍囩鍒囧紑
 * @author zhanyi
 */
UE.plugins['removeformat'] = function(){
    var me = this;
    me.setOpt({
       'removeFormatTags': 'b,big,code,del,dfn,em,font,i,ins,kbd,q,samp,small,span,strike,strong,sub,sup,tt,u,var',
       'removeFormatAttributes':'class,style,lang,width,height,align,hspace,valign'
    });
    me.commands['removeformat'] = {
        execCommand : function( cmdName, tags, style, attrs,notIncludeA ) {

            var tagReg = new RegExp( '^(?:' + (tags || this.options.removeFormatTags).replace( /,/g, '|' ) + ')$', 'i' ) ,
                removeFormatAttributes = style ? [] : (attrs || this.options.removeFormatAttributes).split( ',' ),
                range = new dom.Range( this.document ),
                bookmark,node,parent,
                filter = function( node ) {
                    return node.nodeType == 1;
                };

            function isRedundantSpan (node) {
                if (node.nodeType == 3 || node.tagName.toLowerCase() != 'span'){
                    return 0;
                }
                if (browser.ie) {
                    //ie 涓嬪垽鏂疄鏁堬紝鎵�互鍙兘绠�崟鐢╯tyle鏉ュ垽鏂�
                    //return node.style.cssText == '' ? 1 : 0;
                    var attrs = node.attributes;
                    if ( attrs.length ) {
                        for ( var i = 0,l = attrs.length; i<l; i++ ) {
                            if ( attrs[i].specified ) {
                                return 0;
                            }
                        }
                        return 1;
                    }
                }
                return !node.attributes.length;
            }
            function doRemove( range ) {

                var bookmark1 = range.createBookmark();
                if ( range.collapsed ) {
                    range.enlarge( true );
                }

                //涓嶈兘鎶奱鏍囩鍒囦簡
                if(!notIncludeA){
                    var aNode = domUtils.findParentByTagName(range.startContainer,'a',true);
                    if(aNode){
                        range.setStartBefore(aNode);
                    }

                    aNode = domUtils.findParentByTagName(range.endContainer,'a',true);
                    if(aNode){
                        range.setEndAfter(aNode);
                    }

                }


                bookmark = range.createBookmark();

                node = bookmark.start;

                //鍒囧紑濮�
                while ( (parent = node.parentNode) && !domUtils.isBlockElm( parent ) ) {
                    domUtils.breakParent( node, parent );

                    domUtils.clearEmptySibling( node );
                }
                if ( bookmark.end ) {
                    //鍒囩粨鏉�
                    node = bookmark.end;
                    while ( (parent = node.parentNode) && !domUtils.isBlockElm( parent ) ) {
                        domUtils.breakParent( node, parent );
                        domUtils.clearEmptySibling( node );
                    }

                    //寮�鍘婚櫎鏍峰紡
                    var current = domUtils.getNextDomNode( bookmark.start, false, filter ),
                        next;
                    while ( current ) {
                        if ( current == bookmark.end ) {
                            break;
                        }

                        next = domUtils.getNextDomNode( current, true, filter );

                        if ( !dtd.$empty[current.tagName.toLowerCase()] && !domUtils.isBookmarkNode( current ) ) {
                            if ( tagReg.test( current.tagName ) ) {
                                if ( style ) {
                                    domUtils.removeStyle( current, style );
                                    if ( isRedundantSpan( current ) && style != 'text-decoration'){
                                        domUtils.remove( current, true );
                                    }
                                } else {
                                    domUtils.remove( current, true );
                                }
                            } else {
                                //trace:939  涓嶈兘鎶妉ist涓婄殑鏍峰紡鍘绘帀
                                if(!dtd.$tableContent[current.tagName] && !dtd.$list[current.tagName]){
                                    domUtils.removeAttributes( current, removeFormatAttributes );
                                    if ( isRedundantSpan( current ) ){
                                        domUtils.remove( current, true );
                                    }
                                }

                            }
                        }
                        current = next;
                    }
                }
                //trace:1035
                //trace:1096 涓嶈兘鎶妕d涓婄殑鏍峰紡鍘绘帀锛屾瘮濡傝竟妗�
                var pN = bookmark.start.parentNode;
                if(domUtils.isBlockElm(pN) && !dtd.$tableContent[pN.tagName] && !dtd.$list[pN.tagName]){
                    domUtils.removeAttributes(  pN,removeFormatAttributes );
                }
                pN = bookmark.end.parentNode;
                if(bookmark.end && domUtils.isBlockElm(pN) && !dtd.$tableContent[pN.tagName]&& !dtd.$list[pN.tagName]){
                    domUtils.removeAttributes(  pN,removeFormatAttributes );
                }
                range.moveToBookmark( bookmark ).moveToBookmark(bookmark1);
                //娓呴櫎鍐椾綑鐨勪唬鐮�<b><bookmark></b>
                var node = range.startContainer,
                    tmp,
                    collapsed = range.collapsed;
                while(node.nodeType == 1 && domUtils.isEmptyNode(node) && dtd.$removeEmpty[node.tagName]){
                    tmp = node.parentNode;
                    range.setStartBefore(node);
                    //trace:937
                    //鏇存柊缁撴潫杈圭晫
                    if(range.startContainer === range.endContainer){
                        range.endOffset--;
                    }
                    domUtils.remove(node);
                    node = tmp;
                }

                if(!collapsed){
                    node = range.endContainer;
                    while(node.nodeType == 1 && domUtils.isEmptyNode(node) && dtd.$removeEmpty[node.tagName]){
                        tmp = node.parentNode;
                        range.setEndBefore(node);
                        domUtils.remove(node);

                        node = tmp;
                    }


                }
            }



            range = this.selection.getRange();
            doRemove( range );
            range.select();

        }

    };

};

///import core
///commands 寮曠敤
///commandsName  BlockQuote
///commandsTitle  寮曠敤
/**
 * 
 * 寮曠敤妯″潡瀹炵幇
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     blockquote寮曠敤
 */


UE.plugins['blockquote'] = function(){
    var me = this;
    function getObj(editor){
        return domUtils.filterNodeList(editor.selection.getStartElementPath(),'blockquote');
    }
    me.commands['blockquote'] = {
        execCommand : function( cmdName, attrs ) {
            var range = this.selection.getRange(),
                obj = getObj(this),
                blockquote = dtd.blockquote,
                bookmark = range.createBookmark();

            if ( obj ) {

                    var start = range.startContainer,
                        startBlock = domUtils.isBlockElm(start) ? start : domUtils.findParent(start,function(node){return domUtils.isBlockElm(node)}),

                        end = range.endContainer,
                        endBlock = domUtils.isBlockElm(end) ? end :  domUtils.findParent(end,function(node){return domUtils.isBlockElm(node)});

                    //澶勭悊涓�笅li
                    startBlock = domUtils.findParentByTagName(startBlock,'li',true) || startBlock;
                    endBlock = domUtils.findParentByTagName(endBlock,'li',true) || endBlock;


                    if(startBlock.tagName == 'LI' || startBlock.tagName == 'TD' || startBlock === obj || domUtils.isBody(startBlock)){
                        domUtils.remove(obj,true);
                    }else{
                        domUtils.breakParent(startBlock,obj);
                    }

                    if(startBlock !== endBlock){
                        obj = domUtils.findParentByTagName(endBlock,'blockquote');
                        if(obj){
                            if(endBlock.tagName == 'LI' || endBlock.tagName == 'TD'|| domUtils.isBody(endBlock)){
                                obj.parentNode && domUtils.remove(obj,true);
                            }else{
                                domUtils.breakParent(endBlock,obj);
                            }

                        }
                    }

                    var blockquotes = domUtils.getElementsByTagName(this.document,'blockquote');
                    for(var i=0,bi;bi=blockquotes[i++];){
                        if(!bi.childNodes.length){
                            domUtils.remove(bi);
                        }else if(domUtils.getPosition(bi,startBlock)&domUtils.POSITION_FOLLOWING && domUtils.getPosition(bi,endBlock)&domUtils.POSITION_PRECEDING){
                            domUtils.remove(bi,true);
                        }
                    }




            } else {

                var tmpRange = range.cloneRange(),
                    node = tmpRange.startContainer.nodeType == 1 ? tmpRange.startContainer : tmpRange.startContainer.parentNode,
                    preNode = node,
                    doEnd = 1;

                //璋冩暣寮�
                while ( 1 ) {
                    if ( domUtils.isBody(node) ) {
                        if ( preNode !== node ) {
                            if ( range.collapsed ) {
                                tmpRange.selectNode( preNode );
                                doEnd = 0;
                            } else {
                                tmpRange.setStartBefore( preNode );
                            }
                        }else{
                            tmpRange.setStart(node,0);
                        }

                        break;
                    }
                    if ( !blockquote[node.tagName] ) {
                        if ( range.collapsed ) {
                            tmpRange.selectNode( preNode );
                        } else{
                            tmpRange.setStartBefore( preNode);
                        }
                        break;
                    }

                    preNode = node;
                    node = node.parentNode;
                }

                //璋冩暣缁撴潫
                if ( doEnd ) {
                    preNode = node =  node = tmpRange.endContainer.nodeType == 1 ? tmpRange.endContainer : tmpRange.endContainer.parentNode;
                    while ( 1 ) {

                        if ( domUtils.isBody( node ) ) {
                            if ( preNode !== node ) {

                                tmpRange.setEndAfter( preNode );

                            } else {
                                tmpRange.setEnd( node, node.childNodes.length );
                            }

                            break;
                        }
                        if ( !blockquote[node.tagName] ) {
                            tmpRange.setEndAfter( preNode );
                            break;
                        }

                        preNode = node;
                        node = node.parentNode;
                    }

                }


                node = range.document.createElement( 'blockquote' );
                domUtils.setAttributes( node, attrs );
                node.appendChild( tmpRange.extractContents() );
                tmpRange.insertNode( node );
                //鍘婚櫎閲嶅鐨�
                var childs = domUtils.getElementsByTagName(node,'blockquote');
                for(var i=0,ci;ci=childs[i++];){
                    if(ci.parentNode){
                        domUtils.remove(ci,true);
                    }
                }

            }
            range.moveToBookmark( bookmark ).select();
        },
        queryCommandState : function() {
            return getObj(this) ? 1 : 0;
        }
    };
};


///import core
///commands 澶у皬鍐欒浆鎹�
///commandsName touppercase,tolowercase
///commandsTitle  澶у啓,灏忓啓
/**
 * 澶у皬鍐欒浆鎹�
 * @function
 * @name baidu.editor.execCommands
 * @param    {String}    cmdName     cmdName="convertcase"
 */
UE.commands['touppercase'] =
UE.commands['tolowercase'] = {
    execCommand:function (cmd) {
        var me = this;
        var rng = me.selection.getRange();
        if(rng.collapsed){
            return rng;
        }
        var bk = rng.createBookmark(),
            bkEnd = bk.end,
            filterFn = function( node ) {
                return !domUtils.isBr(node) && !domUtils.isWhitespace( node );
            },
            curNode = domUtils.getNextDomNode( bk.start, false, filterFn );
        while ( curNode && (domUtils.getPosition( curNode, bkEnd ) & domUtils.POSITION_PRECEDING) ) {

            if ( curNode.nodeType == 3 ) {
                curNode.nodeValue = curNode.nodeValue[cmd == 'touppercase' ? 'toUpperCase' : 'toLowerCase']();
            }
            curNode = domUtils.getNextDomNode( curNode, true, filterFn );
            if(curNode === bkEnd){
                break;
            }

        }
        rng.moveToBookmark(bk).select();
    }
};


///import core
///import plugins\paragraph.js
///commands 棣栬缂╄繘
///commandsName  Outdent,Indent
///commandsTitle  鍙栨秷缂╄繘,棣栬缂╄繘
/**
 * 棣栬缂╄繘
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     outdent鍙栨秷缂╄繘锛宨ndent缂╄繘
 */
UE.commands['indent'] = {
    execCommand : function() {
         var me = this,value = me.queryCommandState("indent") ? "0em" : (me.options.indentValue || '2em');
         me.execCommand('Paragraph','p',{style:'text-indent:'+ value});
    },
    queryCommandState : function() {
        var pN = domUtils.filterNodeList(this.selection.getStartElementPath(),'p h1 h2 h3 h4 h5 h6');
        return pN && pN.style.textIndent && parseInt(pN.style.textIndent) ?  1 : 0;
    }

};

///import core
///commands 鎵撳嵃
///commandsName  Print
///commandsTitle  鎵撳嵃
/**
 * @description 鎵撳嵃
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     print鎵撳嵃缂栬緫鍣ㄥ唴瀹�
 * @author zhanyi
 */
UE.commands['print'] = {
    execCommand : function(){
        this.window.print();
    },
    notNeedUndo : 1
};


///import core
///commands 棰勮
///commandsName  Preview
///commandsTitle  棰勮
/**
 * 棰勮
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     preview棰勮缂栬緫鍣ㄥ唴瀹�
 */
UE.commands['preview'] = {
    execCommand : function(){
        var w = window.open('', '_blank', ''),
            d = w.document;
        d.open();
        d.write('<html><head><script src="'+this.options.UEDITOR_HOME_URL+'ueditor.parse.js"></script><script>' +
            "setTimeout(function(){uParse('div',{" +
            "    'highlightJsUrl':'"+this.options.UEDITOR_HOME_URL+"third-party/SyntaxHighlighter/shCore.js'," +
                "    'highlightCssUrl':'"+this.options.UEDITOR_HOME_URL+"third-party/SyntaxHighlighter/shCoreDefault.css'" +
            "})},300)" +
            '</script></head><body><div>'+this.getContent(null,null,true)+'</div></body></html>');
        d.close();
    },
    notNeedUndo : 1
};

///import core
///commands 鍏ㄩ�
///commandsName  SelectAll
///commandsTitle  鍏ㄩ�
/**
 * 閫変腑鎵�湁
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName    selectall閫変腑缂栬緫鍣ㄩ噷鐨勬墍鏈夊唴瀹�
 * @author zhanyi
*/
UE.plugins['selectall'] = function(){
    var me = this;
    me.commands['selectall'] = {
        execCommand : function(){
            //鍘绘帀浜嗗師鐢熺殑selectAll,鍥犱负浼氬嚭鐜版姤閿欏拰褰撳唴瀹逛负绌烘椂锛屼笉鑳藉嚭鐜伴棴鍚堢姸鎬佺殑鍏夋爣
            var me = this,body = me.body,
                range = me.selection.getRange();
            range.selectNodeContents(body);
            if(domUtils.isEmptyBlock(body)){
                //opera涓嶈兘鑷姩鍚堝苟鍒板厓绱犵殑閲岃竟锛岃鎵嬪姩澶勭悊涓�笅
                if(browser.opera && body.firstChild && body.firstChild.nodeType == 1){
                    range.setStartAtFirst(body.firstChild);
                }
                range.collapse(true);
            }
            range.select(true);
        },
        notNeedUndo : 1
    };


    //蹇嵎閿�
    me.addshortcutkey({
         "selectAll" : "ctrl+65"
    });
};

///import core
///commands 鏍煎紡
///commandsName  Paragraph
///commandsTitle  娈佃惤鏍煎紡
/**
 * 娈佃惤鏍峰紡
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     paragraph鎻掑叆娈佃惤鎵ц鍛戒护
 * @param   {String}   style               鏍囩鍊间负锛�p', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6'
 * @param   {String}   attrs               鏍囩鐨勫睘鎬�
 * @author zhanyi
 */
UE.plugins['paragraph'] = function() {
    var me = this,
        block = domUtils.isBlockElm,
        notExchange = ['TD','LI','PRE'],

        doParagraph = function(range,style,attrs,sourceCmdName){
            var bookmark = range.createBookmark(),
                filterFn = function( node ) {
                    return   node.nodeType == 1 ? node.tagName.toLowerCase() != 'br' &&  !domUtils.isBookmarkNode(node) : !domUtils.isWhitespace( node );
                },
                para;

            range.enlarge( true );
            var bookmark2 = range.createBookmark(),
                current = domUtils.getNextDomNode( bookmark2.start, false, filterFn ),
                tmpRange = range.cloneRange(),
                tmpNode;
            while ( current && !(domUtils.getPosition( current, bookmark2.end ) & domUtils.POSITION_FOLLOWING) ) {
                if ( current.nodeType == 3 || !block( current ) ) {
                    tmpRange.setStartBefore( current );
                    while ( current && current !== bookmark2.end && !block( current ) ) {
                        tmpNode = current;
                        current = domUtils.getNextDomNode( current, false, null, function( node ) {
                            return !block( node );
                        } );
                    }
                    tmpRange.setEndAfter( tmpNode );
                    
                    para = range.document.createElement( style );
                    if(attrs){
                        domUtils.setAttributes(para,attrs);
                        if(sourceCmdName && sourceCmdName == 'customstyle' && attrs.style){
                            para.style.cssText = attrs.style;
                        }
                    }
                    para.appendChild( tmpRange.extractContents() );
                    //闇�鍐呭鍗犱綅
                    if(domUtils.isEmptyNode(para)){
                        domUtils.fillChar(range.document,para);
                        
                    }

                    tmpRange.insertNode( para );

                    var parent = para.parentNode;
                    //濡傛灉para涓婁竴绾ф槸涓�釜block鍏冪礌涓斾笉鏄痓ody,td灏卞垹闄ゅ畠
                    if ( block( parent ) && !domUtils.isBody( para.parentNode ) && utils.indexOf(notExchange,parent.tagName)==-1) {
                        //瀛樺偍dir,style
                        if(!(sourceCmdName && sourceCmdName == 'customstyle')){
                            parent.getAttribute('dir') && para.setAttribute('dir',parent.getAttribute('dir'));
                            //trace:1070
                            parent.style.cssText && (para.style.cssText = parent.style.cssText + ';' + para.style.cssText);
                            //trace:1030
                            parent.style.textAlign && !para.style.textAlign && (para.style.textAlign = parent.style.textAlign);
                            parent.style.textIndent && !para.style.textIndent && (para.style.textIndent = parent.style.textIndent);
                            parent.style.padding && !para.style.padding && (para.style.padding = parent.style.padding);
                        }

                        //trace:1706 閫夋嫨鐨勫氨鏄痟1-6瑕佸垹闄�
                        if(attrs && /h\d/i.test(parent.tagName) && !/h\d/i.test(para.tagName) ){
                            domUtils.setAttributes(parent,attrs);
                            if(sourceCmdName && sourceCmdName == 'customstyle' && attrs.style){
                                parent.style.cssText = attrs.style;
                            }
                            domUtils.remove(para,true);
                            para = parent;
                        }else{
                            domUtils.remove( para.parentNode, true );
                        }

                    }
                    if(  utils.indexOf(notExchange,parent.tagName)!=-1){
                        current = parent;
                    }else{
                       current = para;
                    }


                    current = domUtils.getNextDomNode( current, false, filterFn );
                } else {
                    current = domUtils.getNextDomNode( current, true, filterFn );
                }
            }
            return range.moveToBookmark( bookmark2 ).moveToBookmark( bookmark );
        };
    me.setOpt('paragraph',{'p':'', 'h1':'', 'h2':'', 'h3':'', 'h4':'', 'h5':'', 'h6':''});
    me.commands['paragraph'] = {
        execCommand : function( cmdName, style,attrs,sourceCmdName ) {
            var range = this.selection.getRange();
             //闂悎鏃跺崟鐙鐞�
            if(range.collapsed){
                var txt = this.document.createTextNode('p');
                range.insertNode(txt);
                //鍘绘帀鍐椾綑鐨刦illchar
                if(browser.ie){
                    var node = txt.previousSibling;
                    if(node && domUtils.isWhitespace(node)){
                        domUtils.remove(node);
                    }
                    node = txt.nextSibling;
                    if(node && domUtils.isWhitespace(node)){
                        domUtils.remove(node);
                    }
                }

            }
            range = doParagraph(range,style,attrs,sourceCmdName);
            if(txt){
                range.setStartBefore(txt).collapse(true);
                pN = txt.parentNode;

                domUtils.remove(txt);

                if(domUtils.isBlockElm(pN)&&domUtils.isEmptyNode(pN)){
                    domUtils.fillNode(this.document,pN);
                }

            }

            if(browser.gecko && range.collapsed && range.startContainer.nodeType == 1){
                var child = range.startContainer.childNodes[range.startOffset];
                if(child && child.nodeType == 1 && child.tagName.toLowerCase() == style){
                    range.setStart(child,0).collapse(true);
                }
            }
            //trace:1097 鍘熸潵鏈塼rue锛屽師鍥犲繕浜嗭紝浣嗗幓浜嗗氨涓嶈兘娓呴櫎澶氫綑鐨勫崰浣嶇浜�
            range.select();


            return true;
        },
        queryCommandValue : function() {
            var node = domUtils.filterNodeList(this.selection.getStartElementPath(),'p h1 h2 h3 h4 h5 h6');
            return node ? node.tagName.toLowerCase() : '';
        }
    };
};

///import core
///commands 杈撳叆鐨勬柟鍚�
///commandsName  DirectionalityLtr,DirectionalityRtl
///commandsTitle  浠庡乏鍚戝彸杈撳叆,浠庡彸鍚戝乏杈撳叆
/**
 * 杈撳叆鐨勬柟鍚�
 * @function
 * @name baidu.editor.execCommand
 * @param {String}   cmdName    directionality鎵ц鍑芥暟鐨勫弬鏁�
 * @param {String}    forward    ltr浠庡乏鍚戝彸杈撳叆锛宺tl浠庡彸鍚戝乏杈撳叆
 */
(function() {
    var block = domUtils.isBlockElm ,
        getObj = function(editor){
//            var startNode = editor.selection.getStart(),
//                parents;
//            if ( startNode ) {
//                //鏌ユ壘鎵�湁鐨勬槸block鐨勭埗浜茶妭鐐�
//                parents = domUtils.findParents( startNode, true, block, true );
//                for ( var i = 0,ci; ci = parents[i++]; ) {
//                    if ( ci.getAttribute( 'dir' ) ) {
//                        return ci;
//                    }
//                }
//            }
            return domUtils.filterNodeList(editor.selection.getStartElementPath(),function(n){return n.getAttribute('dir')});

        },
        doDirectionality = function(range,editor,forward){
            
            var bookmark,
                filterFn = function( node ) {
                    return   node.nodeType == 1 ? !domUtils.isBookmarkNode(node) : !domUtils.isWhitespace(node);
                },

                obj = getObj( editor );

            if ( obj && range.collapsed ) {
                obj.setAttribute( 'dir', forward );
                return range;
            }
            bookmark = range.createBookmark();
            range.enlarge( true );
            var bookmark2 = range.createBookmark(),
                current = domUtils.getNextDomNode( bookmark2.start, false, filterFn ),
                tmpRange = range.cloneRange(),
                tmpNode;
            while ( current &&  !(domUtils.getPosition( current, bookmark2.end ) & domUtils.POSITION_FOLLOWING) ) {
                if ( current.nodeType == 3 || !block( current ) ) {
                    tmpRange.setStartBefore( current );
                    while ( current && current !== bookmark2.end && !block( current ) ) {
                        tmpNode = current;
                        current = domUtils.getNextDomNode( current, false, null, function( node ) {
                            return !block( node );
                        } );
                    }
                    tmpRange.setEndAfter( tmpNode );
                    var common = tmpRange.getCommonAncestor();
                    if ( !domUtils.isBody( common ) && block( common ) ) {
                        //閬嶅巻鍒颁簡block鑺傜偣
                        common.setAttribute( 'dir', forward );
                        current = common;
                    } else {
                        //娌℃湁閬嶅巻鍒帮紝娣诲姞涓�釜block鑺傜偣
                        var p = range.document.createElement( 'p' );
                        p.setAttribute( 'dir', forward );
                        var frag = tmpRange.extractContents();
                        p.appendChild( frag );
                        tmpRange.insertNode( p );
                        current = p;
                    }

                    current = domUtils.getNextDomNode( current, false, filterFn );
                } else {
                    current = domUtils.getNextDomNode( current, true, filterFn );
                }
            }
            return range.moveToBookmark( bookmark2 ).moveToBookmark( bookmark );
        };
    UE.commands['directionality'] = {
        execCommand : function( cmdName,forward ) {
            var range = this.selection.getRange();
            //闂悎鏃跺崟鐙鐞�
            if(range.collapsed){
                var txt = this.document.createTextNode('d');
                range.insertNode(txt);
            }
            doDirectionality(range,this,forward);
            if(txt){
                range.setStartBefore(txt).collapse(true);
                domUtils.remove(txt);
            }

            range.select();
            return true;
        },
        queryCommandValue : function() {
            var node = getObj(this);
            return node ? node.getAttribute('dir') : 'ltr';
        }
    };
})();


///import core
///import plugins\inserthtml.js
///commands 鍒嗗壊绾�
///commandsName  Horizontal
///commandsTitle  鍒嗛殧绾�
/**
 * 鍒嗗壊绾�
 * @function
 * @name baidu.editor.execCommand
 * @param {String}     cmdName    horizontal鎻掑叆鍒嗗壊绾�
 */
UE.plugins['horizontal'] = function(){
    var me = this;
    me.commands['horizontal'] = {
        execCommand : function( cmdName ) {
            var me = this;
            if(me.queryCommandState(cmdName)!==-1){
                me.execCommand('insertHtml','<hr>');
                var range = me.selection.getRange(),
                    start = range.startContainer;
                if(start.nodeType == 1 && !start.childNodes[range.startOffset] ){

                    var tmp;
                    if(tmp = start.childNodes[range.startOffset - 1]){
                        if(tmp.nodeType == 1 && tmp.tagName == 'HR'){
                            if(me.options.enterTag == 'p'){
                                tmp = me.document.createElement('p');
                                range.insertNode(tmp);
                                range.setStart(tmp,0).setCursor();

                            }else{
                                tmp = me.document.createElement('br');
                                range.insertNode(tmp);
                                range.setStartBefore(tmp).setCursor();
                            }
                        }
                    }

                }
                return true;
            }

        },
        //杈圭晫鍦╰able閲屼笉鑳藉姞鍒嗛殧绾�
        queryCommandState : function() {
            return domUtils.filterNodeList(this.selection.getStartElementPath(),'table') ? -1 : 0;
        }
    };
//    me.addListener('delkeyup',function(){
//        var rng = this.selection.getRange();
//        if(browser.ie && browser.version > 8){
//            rng.txtToElmBoundary(true);
//            if(domUtils.isStartInblock(rng)){
//                var tmpNode = rng.startContainer;
//                var pre = tmpNode.previousSibling;
//                if(pre && domUtils.isTagNode(pre,'hr')){
//                    domUtils.remove(pre);
//                    rng.select();
//                    return;
//                }
//            }
//        }
//        if(domUtils.isBody(rng.startContainer)){
//            var hr = rng.startContainer.childNodes[rng.startOffset -1];
//            if(hr && hr.nodeName == 'HR'){
//                var next = hr.nextSibling;
//                if(next){
//                    rng.setStart(next,0)
//                }else if(hr.previousSibling){
//                    rng.setStartAtLast(hr.previousSibling)
//                }else{
//                    var p = this.document.createElement('p');
//                    hr.parentNode.insertBefore(p,hr);
//                    domUtils.fillNode(this.document,p);
//                    rng.setStart(p,0);
//                }
//                domUtils.remove(hr);
//                rng.setCursor(false,true);
//            }
//        }
//    })
    me.addListener('delkeydown',function(name,evt){
        var rng = this.selection.getRange();
        rng.txtToElmBoundary(true);
        if(domUtils.isStartInblock(rng)){
            var tmpNode = rng.startContainer;
            var pre = tmpNode.previousSibling;
            if(pre && domUtils.isTagNode(pre,'hr')){
                domUtils.remove(pre);
                rng.select();
                domUtils.preventDefault(evt);
                return true;

            }
        }

    })
};


///import core
///import plugins\inserthtml.js
///commands 鏃ユ湡,鏃堕棿
///commandsName  Date,Time
///commandsTitle  鏃ユ湡,鏃堕棿
/**
 * 鎻掑叆鏃ユ湡
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName    date鎻掑叆鏃ユ湡
 * @author zhuwenxuan
*/
/**
 * 鎻掑叆鏃堕棿
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName    time鎻掑叆鏃堕棿
 * @author zhuwenxuan
*/
UE.commands['time'] = UE.commands["date"] = {
    execCommand : function(cmd){
        var date = new Date;
        this.execCommand('insertHtml',cmd == "time" ?
            (date.getHours()+":"+ (date.getMinutes()<10 ? "0"+date.getMinutes() : date.getMinutes())+":"+(date.getSeconds()<10 ? "0"+date.getSeconds() : date.getSeconds())) :
            (date.getFullYear()+"-"+((date.getMonth()+1)<10 ? "0"+(date.getMonth()+1) : date.getMonth()+1)+"-"+(date.getDate()<10?"0"+date.getDate():date.getDate())));
    }
};




///import core
///import plugins\paragraph.js
///commands 娈甸棿璺�
///commandsName  RowSpacingBottom,RowSpacingTop
///commandsTitle  娈甸棿璺�
/**
 * @description 璁剧疆娈靛墠璺�娈靛悗璺�
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     rowspacing璁剧疆娈甸棿璺�
 * @param   {String}   value              鍊硷紝浠x涓哄崟浣�
 * @param   {String}   dir          top鎴朾ottom娈靛墠鍚庢鍚�
 * @author zhanyi
 */
UE.plugins['rowspacing'] = function(){
    var me = this;
    me.setOpt({
        'rowspacingtop':['5', '10', '15', '20', '25'],
        'rowspacingbottom':['5', '10', '15', '20', '25']

    });
    me.commands['rowspacing'] =  {
        execCommand : function( cmdName,value,dir ) {
            this.execCommand('paragraph','p',{style:'margin-'+dir+':'+value + 'px'});
            return true;
        },
        queryCommandValue : function(cmdName,dir) {
            var pN = domUtils.filterNodeList(this.selection.getStartElementPath(),function(node){return domUtils.isBlockElm(node) }),
                value;
            //trace:1026
            if(pN){
                value = domUtils.getComputedStyle(pN,'margin-'+dir).replace(/[^\d]/g,'');
                return !value ? 0 : value;
            }
            return 0;

        }
    };
};



///import core
///import plugins\paragraph.js
///commands 琛岄棿璺�
///commandsName  LineHeight
///commandsTitle  琛岄棿璺�
/**
 * @description 璁剧疆琛屽唴闂磋窛
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     lineheight璁剧疆琛屽唴闂磋窛
 * @param   {String}   value              鍊�
 * @author zhuwenxuan
 */
UE.plugins['lineheight'] = function(){
    var me = this;
    me.setOpt({'lineheight':['1', '1.5','1.75','2', '3', '4', '5']});
    me.commands['lineheight'] =  {
        execCommand : function( cmdName,value ) {
            this.execCommand('paragraph','p',{style:'line-height:'+ (value == "1" ? "normal" : value + 'em') });
            return true;
        },
        queryCommandValue : function() {
            var pN = domUtils.filterNodeList(this.selection.getStartElementPath(),function(node){return domUtils.isBlockElm(node)});
            if(pN){
                var value = domUtils.getComputedStyle(pN,'line-height');
                return value == 'normal' ? 1 : value.replace(/[^\d.]*/ig,"");
            }
        }
    };
};



///import core
///import plugins/inserthtml.js
///commands 鎻掑叆浠ｇ爜
///commandsName  code
///commandsTitle  鎻掑叆浠ｇ爜
UE.plugins['insertcode'] = function() {
    var me = this;
    me.ready(function(){
        utils.cssRule('pre','pre{margin:.5em 0;padding:.4em .6em;border-radius:8px;background:#f8f8f8;}',
            me.document)
    });
    me.setOpt('insertcode',{
            'as3':'ActionScript3',
            'bash':'Bash/Shell',
            'cpp':'C/C++',
            'css':'Css',
            'cf':'CodeFunction',
            'c#':'C#',
            'delphi':'Delphi',
            'diff':'Diff',
            'erlang':'Erlang',
            'groovy':'Groovy',
            'html':'Html',
            'java':'Java',
            'jfx':'JavaFx',
            'js':'Javascript',
            'pl':'Perl',
            'php':'Php',
            'plain':'Plain Text',
            'ps':'PowerShell',
            'python':'Python',
            'ruby':'Ruby',
            'scala':'Scala',
            'sql':'Sql',
            'vb':'Vb',
            'xml':'Xml'
    });
    me.commands['insertcode'] = {
        execCommand : function(cmd,lang){
            var me = this,
                rng = me.selection.getRange(),
                pre = domUtils.findParentByTagName(rng.startContainer,'pre',true);
            if(pre){
                pre.className = 'brush:'+lang+';toolbar:false;';
            }else{
                var code = '';
                if(rng.collapsed){
                    code = browser.ie? (browser.version > 8 ? '' : '&nbsp;'):'<br/>';
                }else{
                    var frag = rng.extractContents();
                    var div = me.document.createElement('div');
                    div.appendChild(frag);

                    utils.each(UE.filterNode(UE.htmlparser(div.innerHTML.replace(/[\r\t]/g,'')),me.options.filterTxtRules).children,function(node){
                        if(browser.ie && browser.version > 8){

                            if(node.type =='element'){
                                if(node.tagName == 'br'){
                                    code += '\n'
                                }else if(!dtd.$empty[node.tagName]){
                                    utils.each(node.children,function(cn){
                                        if(cn.type =='element'){
                                            if(cn.tagName == 'br'){
                                                code += '\n'
                                            }else if(!dtd.$empty[node.tagName]){
                                                code += cn.innerText();
                                            }
                                        }else{
                                            code += cn.data
                                        }
                                    })
                                    if(!/\n$/.test(code)){
                                        code += '\n';
                                    }
                                }
                            }else{
                                code += node.data + '\n'
                            }
                            if(!node.nextSibling() && /\n$/.test(code)){
                                code = code.replace(/\n$/,'');
                            }
                        }else{
                            if(browser.ie){

                                if(node.type =='element'){
                                    if(node.tagName == 'br'){
                                        code += '<br>'
                                    }else if(!dtd.$empty[node.tagName]){
                                        utils.each(node.children,function(cn){
                                            if(cn.type =='element'){
                                                if(cn.tagName == 'br'){
                                                    code += '<br>'
                                                }else if(!dtd.$empty[node.tagName]){
                                                    code += cn.innerText();
                                                }
                                            }else{
                                                code += cn.data
                                            }
                                        });
                                        if(!/br>$/.test(code)){
                                            code += '<br>';
                                        }
                                    }
                                }else{
                                    code += node.data + '<br>'
                                }
                                if(!node.nextSibling() && /<br>$/.test(code)){
                                    code = code.replace(/<br>$/,'');
                                }

                            }else{
                                code += (node.type == 'element' ? (dtd.$empty[node.tagName] ?  '' : node.innerText()) : node.data);
                                if(!/br\/?\s*>$/.test(code)){
                                    if(!node.nextSibling())
                                        return;
                                    code += '<br>'
                                }
                            }

                        }

                    });
                }
                me.execCommand('inserthtml','<pre id="coder"class="brush:'+lang+';toolbar:false">'+code+'</pre>',true);

                pre = me.document.getElementById('coder');
                domUtils.removeAttributes(pre,'id');
                var tmpNode = pre.previousSibling;

                if(tmpNode && (tmpNode.nodeType == 3 && tmpNode.nodeValue.length == 1 && browser.ie && browser.version == 6 ||  domUtils.isEmptyBlock(tmpNode))){

                    domUtils.remove(tmpNode)
                }
                var rng = me.selection.getRange();
                if(domUtils.isEmptyBlock(pre)){
                    rng.setStart(pre,0).setCursor(false,true)
                }else{
                    rng.selectNodeContents(pre).select()
                }
            }



        },
        queryCommandValue : function(){
            var path = this.selection.getStartElementPath();
            var lang = '';
            utils.each(path,function(node){
                if(node.nodeName =='PRE'){
                    var match = node.className.match(/brush:([^;]+)/);
                    lang = match && match[1] ? match[1] : '';
                    return false;
                }
            });
            return lang;
        }
    };

    me.addInputRule(function(root){
       utils.each(root.getNodesByTagName('pre'),function(pre){
           var brs = pre.getNodesByTagName('br');
           if(brs.length){
               browser.ie && browser.version > 8 && utils.each(brs,function(br){
                   var txt = UE.uNode.createText('\n');
                   br.parentNode.insertBefore(txt,br);
                   br.parentNode.removeChild(br);
               });
               return;
            }
           if(browser.ie && browser.version > 8)
                return;
            var code = pre.innerText().split(/\n/);
            pre.innerHTML('');
            utils.each(code,function(c){
                if(c.length){
                    pre.appendChild(UE.uNode.createText(c));
                }
                pre.appendChild(UE.uNode.createElement('br'))
            })
       })
    });
    me.addOutputRule(function(root){
        utils.each(root.getNodesByTagName('pre'),function(pre){
            var code = '';
            utils.each(pre.children,function(n){
               if(n.type == 'text'){
                   //鍦╥e涓嬫枃鏈唴瀹规湁鍙兘鏈熬甯︽湁\n瑕佸幓鎺�                   //trace:3396
                   code += n.data.replace(/[ ]/g,'&nbsp;').replace(/\n$/,'');
               }else{
                   if(n.tagName == 'br'){
                       code  += '\n'
                   }else{
                       code += (!dtd.$empty[n.tagName] ? '' : n.innerText());
                   }

               }

            });

            pre.innerText(code.replace(/(&nbsp;|\n)+$/,''))
        })
    });
    //涓嶉渶瑕佸垽鏂環ighlight鐨刢ommand鍒楄〃
    me.notNeedCodeQuery ={
        help:1,
        undo:1,
        redo:1,
        source:1,
        print:1,
        searchreplace:1,
        fullscreen:1,
        preview:1,
        insertparagraph:1,
        elementpath:1,
        highlightcode:1,
        insertcode:1,
        inserthtml:1,
        selectall:1
    };
    //灏唓ueyCommamndState閲嶇疆
    var orgQuery = me.queryCommandState;
    me.queryCommandState = function(cmd){
        var me = this;

        if(!me.notNeedCodeQuery[cmd.toLowerCase()] && me.selection && me.queryCommandValue('insertcode')){
            return -1;
        }
        return UE.Editor.prototype.queryCommandState.apply(this,arguments)
    };
    me.addListener('beforeenterkeydown',function(){
        var rng = me.selection.getRange();
        var pre = domUtils.findParentByTagName(rng.startContainer,'pre',true);
        if(pre){
            me.fireEvent('saveScene');
            if(!rng.collapsed){
               rng.deleteContents();
            }
            if(!browser.ie ){
                var tmpNode = me.document.createElement('br'),pre;
                rng.insertNode(tmpNode).setStartAfter(tmpNode).collapse(true);
                var next = tmpNode.nextSibling;
                if(!next){
                    rng.insertNode(tmpNode.cloneNode(false));
                }else{
                    rng.setStartAfter(tmpNode);
                }
                pre = tmpNode.previousSibling;
                var tmp;
                while(pre ){
                    tmp = pre;
                    pre = pre.previousSibling;
                    if(!pre || pre.nodeName == 'BR'){
                        pre = tmp;
                        break;
                    }
                }
                if(pre){
                    var str = '';
                    while(pre && pre.nodeName != 'BR' &&  new RegExp('^[\\s'+domUtils.fillChar+']*$').test(pre.nodeValue)){
                        str += pre.nodeValue;
                        pre = pre.nextSibling;
                    }
                    if(pre.nodeName != 'BR'){
                        var match = pre.nodeValue.match(new RegExp('^([\\s'+domUtils.fillChar+']+)'));
                        if(match && match[1]){
                            str += match[1]
                        }

                    }
                    if(str){
                        str = me.document.createTextNode(str);
                        rng.insertNode(str).setStartAfter(str);
                    }
                }
                rng.collapse(true).select(true);
            }else{
                if(browser.version > 8){

                    var txt = me.document.createTextNode('\n');
                    var start = rng.startContainer;
                    if(rng.startOffset == 0){
                        var preNode = start.previousSibling;
                        if(preNode){
                            rng.insertNode(txt);
                            var fillchar = me.document.createTextNode(' ');
                            rng.setStartAfter(txt).insertNode(fillchar).setStart(fillchar,0).collapse(true).select(true)
                        }
                    }else{
                        rng.insertNode(txt).setStartAfter(txt);
                        var fillchar = me.document.createTextNode(' ');
                        start = rng.startContainer.childNodes[rng.startOffset];
                        if(start && !/^\n/.test(start.nodeValue)){
                            rng.setStartBefore(txt)
                        }
                        rng.insertNode(fillchar).setStart(fillchar,0).collapse(true).select(true)
                    }

                }else{
                    var tmpNode = me.document.createElement('br');
                    rng.insertNode(tmpNode);
                    rng.insertNode(me.document.createTextNode(domUtils.fillChar));
                    rng.setStartAfter(tmpNode);
                    pre = tmpNode.previousSibling;
                    var tmp;
                    while(pre ){
                        tmp = pre;
                        pre = pre.previousSibling;
                        if(!pre || pre.nodeName == 'BR'){
                            pre = tmp;
                            break;
                        }
                    }
                    if(pre){
                        var str = '';
                        while(pre && pre.nodeName != 'BR' &&  new RegExp('^[ '+domUtils.fillChar+']*$').test(pre.nodeValue)){
                            str += pre.nodeValue;
                            pre = pre.nextSibling;
                        }
                        if(pre.nodeName != 'BR'){
                            var match = pre.nodeValue.match(new RegExp('^([ '+domUtils.fillChar+']+)'));
                            if(match && match[1]){
                                str += match[1]
                            }

                        }

                        str = me.document.createTextNode(str);
                        rng.insertNode(str).setStartAfter(str);
                    }
                    rng.collapse(true).select();
                }


            }
            me.fireEvent('saveScene');
            return true;
        }


    });

    me.addListener('tabkeydown',function(cmd,evt){
        var rng = me.selection.getRange();
        var pre = domUtils.findParentByTagName(rng.startContainer,'pre',true);
        if(pre){
            me.fireEvent('saveScene');
            if(evt.shiftKey){

//                if(!rng.collapsed){
//                    var bk = rng.createBookmark();
//                    var start = bk.start.previousSibling;
//                    if(start === pre.firstChild){
//                        start.nodeValue = start.nodeValue.replace(/^\s{4}/,'');
//                    }else{
//                        while(start){
//                            if(domUtils.isBr(start)){
//                                start = start.nextSibling;
//                                start.nodeValue = start.nodeValue.replace(/^\s{4}/,'');
//                                break;
//                            }
//                            while(start.previousSibling && start.previousSibling.nodeType == 3){
//                                start.nodeValue = start.previousSibling.nodeValue + start.nodeValue;
//                                domUtils.remove(start.previousSibling)
//                            }
//                            start = start.previousSibling;
//                        }
//                    }
//
//                    var end = bk.end;
//                    start = bk.start.nextSibling;
//
//                    while(start && start !== end){
//                        if(domUtils.isBr(start) && start.nextSibling){
//                            if(start.nextSibling === end){
//                                break;
//                            }
//                            start = start.nextSibling;
//                            while(start.nextSibling && start.nextSibling.nodeType == 3){
//                                start.nodeValue += start.nextSibling.nodeValue;
//                                domUtils.remove(start.nextSibling)
//                            }
//
//                            start.nodeValue = start.nodeValue.replace(/^\s{4}/,'');
//                        }
//
//                        start = start.nextSibling;
//                    }
//                    rng.moveToBookmark(bk).select();
//                }else{
//                    var bk = rng.createBookmark();
//                    var start = bk.start.previousSibling;
//                    if(start === pre.firstChild){
//                        start.nodeValue = start.nodeValue.replace(/^\s{4}/,'');
//                    }else{
//                        while(start){
//                            if(domUtils.isBr(start)){
//                                start = start.nextSibling;
//                                start.nodeValue = start.nodeValue.replace(/^\s{4}/,'');
//                                break;
//                            }
//                            while(start.previousSibling && start.previousSibling.nodeType == 3){
//                                start.nodeValue = start.previousSibling.nodeValue + start.nodeValue;
//                                domUtils.remove(start.previousSibling)
//                            }
//                            start = start.previousSibling;
//                        }
//                    }
//                }
            }else{
                if(!rng.collapsed){
                    var bk = rng.createBookmark();
                    var start = bk.start.previousSibling;

                    while(start){
                        if(pre.firstChild === start && !domUtils.isBr(start)){
                            pre.insertBefore(me.document.createTextNode('    '),start);

                            break;
                        }
                        if(domUtils.isBr(start)){
                            pre.insertBefore(me.document.createTextNode('    '),start.nextSibling);

                            break;
                        }
                        start = start.previousSibling;
                    }
                    var end = bk.end;
                    start = bk.start.nextSibling;
                    if(pre.firstChild === bk.start){
                        pre.insertBefore(me.document.createTextNode('    '),start.nextSibling)

                    }
                    while(start && start !== end){
                        if(domUtils.isBr(start) && start.nextSibling){
                            if(start.nextSibling === end){
                                break;
                            }
                            pre.insertBefore(me.document.createTextNode('    '),start.nextSibling)
                        }

                        start = start.nextSibling;
                    }
                    rng.moveToBookmark(bk).select();
                }else{
                    var tmpNode = me.document.createTextNode('    ');
                    rng.insertNode(tmpNode).setStartAfter(tmpNode).collapse(true).select(true);
                }
            }


            me.fireEvent('saveScene');
            return true;
        }


    });


    me.addListener('beforeinserthtml',function(evtName,html){
        var me = this,
            rng = me.selection.getRange(),
            pre = domUtils.findParentByTagName(rng.startContainer,'pre',true);
        if(pre){
            if(!rng.collapsed){
                rng.deleteContents()
            }
            var htmlstr = '';
            if(browser.ie && browser.version > 8){

                utils.each(UE.filterNode(UE.htmlparser(html),me.options.filterTxtRules).children,function(node){
                    if(node.type =='element'){
                        if(node.tagName == 'br'){
                            htmlstr += '\n'
                        }else if(!dtd.$empty[node.tagName]){
                            utils.each(node.children,function(cn){
                                if(cn.type =='element'){
                                    if(cn.tagName == 'br'){
                                        htmlstr += '\n'
                                    }else if(!dtd.$empty[node.tagName]){
                                        htmlstr += cn.innerText();
                                    }
                                }else{
                                    htmlstr += cn.data
                                }
                            })
                            if(!/\n$/.test(htmlstr)){
                                htmlstr += '\n';
                            }
                        }
                    }else{
                        htmlstr += node.data + '\n'
                    }
                    if(!node.nextSibling() && /\n$/.test(htmlstr)){
                        htmlstr = htmlstr.replace(/\n$/,'');
                    }
                });
                var tmpNode = me.document.createTextNode(utils.html(htmlstr.replace(/&nbsp;/g,' ')));
                rng.insertNode(tmpNode).selectNode(tmpNode).select();
            }else{
                var frag = me.document.createDocumentFragment();

                utils.each(UE.filterNode(UE.htmlparser(html),me.options.filterTxtRules).children,function(node){
                    if(node.type =='element'){
                        if(node.tagName == 'br'){
                            frag.appendChild(me.document.createElement('br'))
                        }else if(!dtd.$empty[node.tagName]){
                            utils.each(node.children,function(cn){
                                if(cn.type =='element'){
                                    if(cn.tagName == 'br'){

                                        frag.appendChild(me.document.createElement('br'))
                                    }else if(!dtd.$empty[node.tagName]){
                                        frag.appendChild(me.document.createTextNode(utils.html(cn.innerText().replace(/&nbsp;/g,' '))));

                                    }
                                }else{
                                    frag.appendChild(me.document.createTextNode(utils.html( cn.data.replace(/&nbsp;/g,' '))));

                                }
                            })
                            if(frag.lastChild.nodeName != 'BR'){
                                frag.appendChild(me.document.createElement('br'))
                            }
                        }
                    }else{
                        frag.appendChild(me.document.createTextNode(utils.html( node.data.replace(/&nbsp;/g,' '))));
                    }
                    if(!node.nextSibling() && frag.lastChild.nodeName == 'BR'){
                       frag.removeChild(frag.lastChild)
                    }


                });
                rng.insertNode(frag).select();

            }

            return true;
        }
    });
    //鏂瑰悜閿殑澶勭悊
    me.addListener('keydown',function(cmd,evt){
        var me = this,keyCode = evt.keyCode || evt.which;
        if(keyCode == 40){
            var rng = me.selection.getRange(),pre,start = rng.startContainer;
            if(rng.collapsed && (pre = domUtils.findParentByTagName(rng.startContainer,'pre',true)) && !pre.nextSibling){
                var last = pre.lastChild
                while(last && last.nodeName == 'BR'){
                    last = last.previousSibling;
                }
                if(last === start || rng.startContainer === pre && rng.startOffset == pre.childNodes.length){
                    me.execCommand('insertparagraph');
                    domUtils.preventDefault(evt)
                }

            }
        }
    });
    //trace:3395
    me.addListener('delkeydown',function(type,evt){
        var rng = this.selection.getRange();
        rng.txtToElmBoundary(true);
        var start = rng.startContainer;
        if(domUtils.isTagNode(start,'pre') && rng.collapsed && domUtils.isStartInblock(rng)){
            var p = me.document.createElement('p');
            domUtils.fillNode(me.document,p);
            start.parentNode.insertBefore(p,start);
            domUtils.remove(start);
            rng.setStart(p,0).setCursor(false,true);
            domUtils.preventDefault(evt);
            return true;
        }
    })
};

///import core
///commands 娓呯┖鏂囨。
///commandsName  ClearDoc
///commandsTitle  娓呯┖鏂囨。
/**
 *
 * 娓呯┖鏂囨。
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     cleardoc娓呯┖鏂囨。
 */

UE.commands['cleardoc'] = {
    execCommand : function( cmdName) {
        var me = this,
            enterTag = me.options.enterTag,
            range = me.selection.getRange();
        if(enterTag == "br"){
            me.body.innerHTML = "<br/>";
            range.setStart(me.body,0).setCursor();
        }else{
            me.body.innerHTML = "<p>"+(ie ? "" : "<br/>")+"</p>";
            range.setStart(me.body.firstChild,0).setCursor(false,true);
        }
        setTimeout(function(){
            me.fireEvent("clearDoc");
        },0);

    }
};


///import core
///commands 閿氱偣
///commandsName  Anchor
///commandsTitle  閿氱偣
///commandsDialog  dialogs\anchor
/**
 * 閿氱偣
 * @function
 * @name baidu.editor.execCommands
 * @param {String} cmdName     cmdName="anchor"鎻掑叆閿氱偣
 */
UE.plugins['anchor'] = function (){
    var me = this;

    me.ready(function(){
        utils.cssRule('anchor',
            '.anchorclass{background: url(\''
                + me.options.UEDITOR_HOME_URL +
                'themes/default/images/anchor.gif\') no-repeat scroll left center transparent;border: 1px dotted #0000FF;cursor: auto;display: inline-block;height: 16px;width: 15px;}',
            me.document)
    });
    me.addOutputRule(function(root){
        utils.each(root.getNodesByTagName('img'),function(a){
            var val;
            if(val = a.getAttr('anchorname')){
                a.tagName = 'a';
                a.setAttr({
                    anchorname : '',
                    name : val,
                    'class' : ''
                })
            }
        })
    });
    me.addInputRule(function(root){
        utils.each(root.getNodesByTagName('a'),function(a){
            var val;
            if((val = a.getAttr('name')) && !a.getAttr('href')){
                a.tagName = 'img';
                a.setAttr({
                    anchorname :a.getAttr('name'),
                    'class' : 'anchorclass'
                });
                a.setAttr('name')

            }
        })
    });
    me.commands['anchor'] = {
        execCommand:function (cmd, name) {
            var range = this.selection.getRange(),img = range.getClosedNode();
            if (img && img.getAttribute('anchorname')) {
                if (name) {
                    img.setAttribute('anchorname', name);
                } else {
                    range.setStartBefore(img).setCursor();
                    domUtils.remove(img);
                }
            } else {
                if (name) {
                    //鍙湪閫夊尯鐨勫紑濮嬫彃鍏�
                    var anchor = this.document.createElement('img');
                    range.collapse(true);
                    domUtils.setAttributes(anchor,{
                        'anchorname':name,
                        'class':'anchorclass'
                    });
                    range.insertNode(anchor).setStartAfter(anchor).setCursor(false,true);
                }
            }
        }

    };


};

///import core
///commands 瀛楁暟缁熻
///commandsName  WordCount,wordCount
///commandsTitle  瀛楁暟缁熻
/**
 * Created by JetBrains WebStorm.
 * User: taoqili
 * Date: 11-9-7
 * Time: 涓嬪崍8:18
 * To change this template use File | Settings | File Templates.
 */

UE.plugins['wordcount'] = function(){
    var me = this;
    me.addListener('contentchange',function(){
        me.fireEvent('wordcount');
    });
    var timer;
    me.addListener('ready',function(){
        var me = this;
        domUtils.on(me.body,"keyup",function(evt){
            var code = evt.keyCode||evt.which,
                //蹇界暐鐨勬寜閿�ctr,alt,shift,鏂瑰悜閿�
                ignores = {"16":1,"18":1,"20":1,"37":1,"38":1,"39":1,"40":1};
            if(code in ignores) return;
            clearTimeout(timer);
            timer = setTimeout(function(){
                me.fireEvent('wordcount');
            },200)
        })
    });
};

///import core
///commands 娣诲姞鍒嗛〉鍔熻兘
///commandsName  PageBreak
///commandsTitle  鍒嗛〉
/**
 * @description 娣诲姞鍒嗛〉鍔熻兘
 * @author zhanyi
 */
UE.plugins['pagebreak'] = function () {
    var me = this,
        notBreakTags = ['td'];
    me.setOpt('pageBreakTag','_ueditor_page_break_tag_');

    function fillNode(node){
        if(domUtils.isEmptyBlock(node)){
            var firstChild = node.firstChild,tmpNode;

            while(firstChild && firstChild.nodeType == 1 && domUtils.isEmptyBlock(firstChild)){
                tmpNode = firstChild;
                firstChild = firstChild.firstChild;
            }
            !tmpNode && (tmpNode = node);
            domUtils.fillNode(me.document,tmpNode);
        }
    }
    //鍒嗛〉绗︽牱寮忔坊鍔�

    me.ready(function(){
        utils.cssRule('pagebreak','.pagebreak{display:block;clear:both !important;cursor:default !important;width: 100% !important;margin:0;}',me.document);
    });
    function isHr(node){
        return node && node.nodeType == 1 && node.tagName == 'HR' && node.className == 'pagebreak';
    }
    me.addInputRule(function(root){
        root.traversal(function(node){
            if(node.type == 'text' && node.data == me.options.pageBreakTag){
                var hr = UE.uNode.createElement('<hr class="pagebreak" noshade="noshade" size="5" style="-webkit-user-select: none;">');
                node.parentNode.insertBefore(hr,node);
                node.parentNode.removeChild(node)
            }
        })
    });
    me.addOutputRule(function(node){
        utils.each(node.getNodesByTagName('hr'),function(n){
            if(n.getAttr('class') == 'pagebreak'){
                var txt = UE.uNode.createText(me.options.pageBreakTag);
                n.parentNode.insertBefore(txt,n);
                n.parentNode.removeChild(n);
            }
        })

    });
    me.commands['pagebreak'] = {
        execCommand:function () {
            var range = me.selection.getRange(),hr = me.document.createElement('hr');
            domUtils.setAttributes(hr,{
                'class' : 'pagebreak',
                noshade:"noshade",
                size:"5"
            });
            domUtils.unSelectable(hr);
            //table鍗曠嫭澶勭悊
            var node = domUtils.findParentByTagName(range.startContainer, notBreakTags, true),

                parents = [], pN;
            if (node) {
                switch (node.tagName) {
                    case 'TD':
                        pN = node.parentNode;
                        if (!pN.previousSibling) {
                            var table = domUtils.findParentByTagName(pN, 'table');
//                            var tableWrapDiv = table.parentNode;
//                            if(tableWrapDiv && tableWrapDiv.nodeType == 1
//                                && tableWrapDiv.tagName == 'DIV'
//                                && tableWrapDiv.getAttribute('dropdrag')
//                                ){
//                                domUtils.remove(tableWrapDiv,true);
//                            }
                            table.parentNode.insertBefore(hr, table);
                            parents = domUtils.findParents(hr, true);

                        } else {
                            pN.parentNode.insertBefore(hr, pN);
                            parents = domUtils.findParents(hr);

                        }
                        pN = parents[1];
                        if (hr !== pN) {
                            domUtils.breakParent(hr, pN);

                        }
                        //table瑕侀噸鍐欑粦瀹氫竴涓嬫嫋鎷�
                        me.fireEvent('afteradjusttable',me.document);
                }

            } else {

                if (!range.collapsed) {
                    range.deleteContents();
                    var start = range.startContainer;
                    while ( !domUtils.isBody(start) && domUtils.isBlockElm(start) && domUtils.isEmptyNode(start)) {
                        range.setStartBefore(start).collapse(true);
                        domUtils.remove(start);
                        start = range.startContainer;
                    }

                }
                range.insertNode(hr);

                var pN = hr.parentNode, nextNode;
                while (!domUtils.isBody(pN)) {
                    domUtils.breakParent(hr, pN);
                    nextNode = hr.nextSibling;
                    if (nextNode && domUtils.isEmptyBlock(nextNode)) {
                        domUtils.remove(nextNode);
                    }
                    pN = hr.parentNode;
                }
                nextNode = hr.nextSibling;
                var pre = hr.previousSibling;
                if(isHr(pre)){
                    domUtils.remove(pre);
                }else{
                    pre && fillNode(pre);
                }

                if(!nextNode){
                    var p = me.document.createElement('p');

                    hr.parentNode.appendChild(p);
                    domUtils.fillNode(me.document,p);
                    range.setStart(p,0).collapse(true);
                }else{
                    if(isHr(nextNode)){
                        domUtils.remove(nextNode);
                    }else{
                        fillNode(nextNode);
                    }
                    range.setEndAfter(hr).collapse(false);
                }

                range.select(true);

            }

        }
    };
};
///import core
///commands 鏈湴鍥剧墖寮曞涓婁紶
///commandsName  WordImage
///commandsTitle  鏈湴鍥剧墖寮曞涓婁紶
///commandsDialog  dialogs\wordimage


UE.plugins["wordimage"] = function () {
    var me = this,
        images;
    me.addInputRule(function (root) {
        utils.each(root.getNodesByTagName('img'), function (img) {
            var attrs = img.attrs,
                flag = parseInt(attrs.width) < 128 || parseInt(attrs.height) < 43,
                opt = me.options,
                src = opt.UEDITOR_HOME_URL + 'themes/default/images/spacer.gif';
            if (attrs['_src'] && attrs['_src'].indexOf("file:///")!==-1) {
                img.setAttr({
                    width:attrs.width,
                    height:attrs.height,
                    alt:attrs.alt,
                    word_img:attrs._src,
                    src:src,
                    _src:src,
                    'style':'background:url(' + ( flag ? opt.themePath + opt.theme + '/images/word.gif' : opt.langPath + opt.lang + '/images/localimage.png') + ') no-repeat center center;border:1px solid #ddd'
                })
            }
        })
    });
    me.commands['wordimage'] = {
        execCommand:function () {
            images = domUtils.getElementsByTagName(me.document.body, "img");
            var urlList = [];
            for (var i = 0, ci; ci = images[i++];) {
                var url = ci.getAttribute("word_img");
                url && urlList.push(url);
            }
            if (images.length) {
                this["word_img"] = urlList;
            }
        },
        queryCommandState:function () {
            images = domUtils.getElementsByTagName(me.document.body, "img");
            for (var i = 0, ci; ci = images[i++];) {
                if (ci.getAttribute("word_img")) {
                    return 1;
                }
            }
            return -1;
        }
    };

};
UE.plugins['dragdrop'] = function (){

    var me = this;
    me.ready(function(){
        domUtils.on(this.body,'dragend',function(){
            var rng = me.selection.getRange();
            var node = rng.getClosedNode()||me.selection.getStart();

            if(node && node.tagName == 'IMG'){

                var pre = node.previousSibling,next;
                while(next = node.nextSibling){
                    if(next.nodeType == 1 && next.tagName == 'SPAN' && !next.firstChild){
                        domUtils.remove(next)
                    }else{
                        break;
                    }
                }


                if((pre && pre.nodeType == 1 && !domUtils.isEmptyBlock(pre) || !pre) && (!next || next && !domUtils.isEmptyBlock(next))){
                    if(pre && pre.tagName == 'P' && !domUtils.isEmptyBlock(pre)){
                        pre.appendChild(node);
                        domUtils.moveChild(next,pre);
                        domUtils.remove(next);
                    }else  if(next && next.tagName == 'P' && !domUtils.isEmptyBlock(next)){
                        next.insertBefore(node,next.firstChild);
                    }

                    if(pre && pre.tagName == 'P' && domUtils.isEmptyBlock(pre)){
                        domUtils.remove(pre)
                    }
                    if(next && next.tagName == 'P' && domUtils.isEmptyBlock(next)){
                        domUtils.remove(next)
                    }
                    rng.selectNode(node).select();
                    me.fireEvent('saveScene');

                }

            }

        })
    });
    me.addListener('keyup', function(type, evt) {
        var keyCode = evt.keyCode || evt.which;
        if (keyCode == 13) {
            var rng = me.selection.getRange(),node;
            if(node = domUtils.findParentByTagName(rng.startContainer,'p',true)){
                if(domUtils.getComputedStyle(node,'text-align') == 'center'){
                    domUtils.removeStyle(node,'text-align')
                }
            }
        }
    })
};

///import core
///commands 鎾ら攢鍜岄噸鍋�
///commandsName  Undo,Redo
///commandsTitle  鎾ら攢,閲嶅仛
/**
 * @description 鍥為�
 * @author zhanyi
 */

UE.plugins['undo'] = function () {
    var saveSceneTimer;
    var me = this,
        maxUndoCount = me.options.maxUndoCount || 20,
        maxInputCount = me.options.maxInputCount || 20,
        fillchar = new RegExp(domUtils.fillChar + '|<\/hr>', 'gi');// ie浼氫骇鐢熷浣欑殑</hr>
    var noNeedFillCharTags = {
        ol:1,ul:1,table:1,tbody:1,tr:1,body:1
    };
    var orgState = me.options.autoClearEmptyNode;
    function compareAddr(indexA, indexB) {
        if (indexA.length != indexB.length)
            return 0;
        for (var i = 0, l = indexA.length; i < l; i++) {
            if (indexA[i] != indexB[i])
                return 0
        }
        return 1;
    }

    function compareRangeAddress(rngAddrA, rngAddrB) {
        if (rngAddrA.collapsed != rngAddrB.collapsed) {
            return 0;
        }
        if (!compareAddr(rngAddrA.startAddress, rngAddrB.startAddress) || !compareAddr(rngAddrA.endAddress, rngAddrB.endAddress)) {
            return 0;
        }
        return 1;
    }

    function UndoManager() {
        this.list = [];
        this.index = 0;
        this.hasUndo = false;
        this.hasRedo = false;
        this.undo = function () {
            if (this.hasUndo) {
                if (!this.list[this.index - 1] && this.list.length == 1) {
                    this.reset();
                    return;
                }
                while (this.list[this.index].content == this.list[this.index - 1].content) {
                    this.index--;
                    if (this.index == 0) {
                        return this.restore(0);
                    }
                }
                this.restore(--this.index);
            }
        };
        this.redo = function () {
            if (this.hasRedo) {
                while (this.list[this.index].content == this.list[this.index + 1].content) {
                    this.index++;
                    if (this.index == this.list.length - 1) {
                        return this.restore(this.index);
                    }
                }
                this.restore(++this.index);
            }
        };

        this.restore = function () {
            var me = this.editor;
            var scene = this.list[this.index];
            var root = UE.htmlparser(scene.content.replace(fillchar, ''));
            me.options.autoClearEmptyNode = false;
            me.filterInputRule(root);
            me.options.autoClearEmptyNode = orgState;
            //trace:873
            //鍘绘帀灞曚綅绗�
            me.document.body.innerHTML = root.toHtml();
            me.fireEvent('afterscencerestore');
            //澶勭悊undo鍚庣┖鏍间笉灞曚綅鐨勯棶棰�
            if (browser.ie) {
                utils.each(domUtils.getElementsByTagName(me.document,'td th caption p'),function(node){
                    if(domUtils.isEmptyNode(node)){
                        domUtils.fillNode(me.document, node);
                    }
                })
            }

            try{
                var rng = new dom.Range(me.document).moveToAddress(scene.address);
                rng.select(noNeedFillCharTags[rng.startContainer.nodeName.toLowerCase()]);
            }catch(e){}

            this.update();
            this.clearKey();
            //涓嶈兘鎶婅嚜宸眗eset浜�
            me.fireEvent('reset', true);
        };

        this.getScene = function () {
            var me = this.editor;
            var rng = me.selection.getRange(),
                rngAddress = rng.createAddress(false,true);
            me.fireEvent('beforegetscene');
            var root = UE.htmlparser(me.body.innerHTML);
            me.options.autoClearEmptyNode = false;
            me.filterOutputRule(root);
            me.options.autoClearEmptyNode = orgState;
            var cont = root.toHtml();
            //trace:3461
            //杩欎釜浼氬紩璧峰洖閫�椂瀵艰嚧绌烘牸涓㈠け鐨勬儏鍐�
//            browser.ie && (cont = cont.replace(/>&nbsp;</g, '><').replace(/\s*</g, '<').replace(/>\s*/g, '>'));
            me.fireEvent('aftergetscene');

            return {
                address:rngAddress,
                content:cont
            }
        };
        this.save = function (notCompareRange,notSetCursor) {
            clearTimeout(saveSceneTimer);
            var currentScene = this.getScene(notSetCursor),
                lastScene = this.list[this.index];
            //鍐呭鐩稿悓浣嶇疆鐩稿悓涓嶅瓨
            if (lastScene && lastScene.content == currentScene.content &&
                ( notCompareRange ? 1 : compareRangeAddress(lastScene.address, currentScene.address) )
                ) {
                return;
            }
            this.list = this.list.slice(0, this.index + 1);
            this.list.push(currentScene);
            //濡傛灉澶т簬鏈�ぇ鏁伴噺浜嗭紝灏辨妸鏈�墠鐨勫墧闄�
            if (this.list.length > maxUndoCount) {
                this.list.shift();
            }
            this.index = this.list.length - 1;
            this.clearKey();
            //璺熸柊undo/redo鐘舵�
            this.update();

        };
        this.update = function () {
            this.hasRedo = !!this.list[this.index + 1];
            this.hasUndo = !!this.list[this.index - 1];
        };
        this.reset = function () {
            this.list = [];
            this.index = 0;
            this.hasUndo = false;
            this.hasRedo = false;
            this.clearKey();
        };
        this.clearKey = function () {
            keycont = 0;
            lastKeyCode = null;
        };
    }

    me.undoManger = new UndoManager();
    me.undoManger.editor = me;
    function saveScene() {
        this.undoManger.save();
    }

    me.addListener('saveScene', function () {
        var args = Array.prototype.splice.call(arguments,1);
        this.undoManger.save.apply(this.undoManger,args);
    });

    me.addListener('beforeexeccommand', saveScene);
    me.addListener('afterexeccommand', saveScene);

    me.addListener('reset', function (type, exclude) {
        if (!exclude) {
            this.undoManger.reset();
        }
    });
    me.commands['redo'] = me.commands['undo'] = {
        execCommand:function (cmdName) {
            this.undoManger[cmdName]();
        },
        queryCommandState:function (cmdName) {
            return this.undoManger['has' + (cmdName.toLowerCase() == 'undo' ? 'Undo' : 'Redo')] ? 0 : -1;
        },
        notNeedUndo:1
    };

    var keys = {
            //  /*Backspace*/ 8:1, /*Delete*/ 46:1,
            /*Shift*/ 16:1, /*Ctrl*/ 17:1, /*Alt*/ 18:1,
            37:1, 38:1, 39:1, 40:1

        },
        keycont = 0,
        lastKeyCode;
    //杈撳叆娉曠姸鎬佷笅涓嶈绠楀瓧绗︽暟
    var inputType = false;
    me.addListener('ready', function () {
        domUtils.on(this.body, 'compositionstart', function () {
            inputType = true;
        });
        domUtils.on(this.body, 'compositionend', function () {
            inputType = false;
        })
    });
    //蹇嵎閿�
    me.addshortcutkey({
        "Undo":"ctrl+90", //undo
        "Redo":"ctrl+89" //redo

    });
    var isCollapsed = true;
    me.addListener('keydown', function (type, evt) {

        var me = this;
        var keyCode = evt.keyCode || evt.which;
        if (!keys[keyCode] && !evt.ctrlKey && !evt.metaKey && !evt.shiftKey && !evt.altKey) {
            if (inputType)
                return;

            if(!me.selection.getRange().collapsed){
                me.undoManger.save(false,true);
                isCollapsed = false;
                return;
            }
            if (me.undoManger.list.length == 0) {
                me.undoManger.save(true);
            }
            clearTimeout(saveSceneTimer);
            function save(cont){

                if (cont.selection.getRange().collapsed)
                    cont.fireEvent('contentchange');
                cont.undoManger.save(false,true);
                cont.fireEvent('selectionchange');
            }
            saveSceneTimer = setTimeout(function(){
                if(inputType){
                    var interalTimer = setInterval(function(){
                        if(!inputType){
                            save(me);
                            clearInterval(interalTimer)
                        }
                    },300)
                    return;
                }
                save(me);
            },200);

            lastKeyCode = keyCode;
            keycont++;
            if (keycont >= maxInputCount ) {
                save(me)
            }
        }
    });
    me.addListener('keyup', function (type, evt) {
        var keyCode = evt.keyCode || evt.which;
        if (!keys[keyCode] && !evt.ctrlKey && !evt.metaKey && !evt.shiftKey && !evt.altKey) {
            if (inputType)
                return;
            if(!isCollapsed){
                this.undoManger.save(false,true);
                isCollapsed = true;
            }
        }
    });

};

///import core
///import plugins/inserthtml.js
///import plugins/undo.js
///import plugins/serialize.js
///commands 绮樿创
///commandsName  PastePlain
///commandsTitle  绾枃鏈矘璐存ā寮�/*
 ** @description 绮樿创
 * @author zhanyi
 */
UE.plugins['paste'] = function () {
    function getClipboardData(callback) {
        var doc = this.document;
        if (doc.getElementById('baidu_pastebin')) {
            return;
        }
        var range = this.selection.getRange(),
            bk = range.createBookmark(),
        //鍒涘缓鍓创鐨勫鍣╠iv
            pastebin = doc.createElement('div');
        pastebin.id = 'baidu_pastebin';
        // Safari 瑕佹眰div蹇呴』鏈夊唴瀹癸紝鎵嶈兘绮樿创鍐呭杩涙潵
        browser.webkit && pastebin.appendChild(doc.createTextNode(domUtils.fillChar + domUtils.fillChar));
        doc.body.appendChild(pastebin);
        //trace:717 闅愯棌鐨剆pan涓嶈兘寰楀埌top
        //bk.start.innerHTML = '&nbsp;';
        bk.start.style.display = '';
        pastebin.style.cssText = "position:absolute;width:1px;height:1px;overflow:hidden;left:-1000px;white-space:nowrap;top:" +
            //瑕佸湪鐜板湪鍏夋爣骞宠鐨勪綅缃姞鍏ワ紝鍚﹀垯浼氬嚭鐜拌烦鍔ㄧ殑闂
            domUtils.getXY(bk.start).y + 'px';

        range.selectNodeContents(pastebin).select(true);

        setTimeout(function () {
            if (browser.webkit) {
                for (var i = 0, pastebins = doc.querySelectorAll('#baidu_pastebin'), pi; pi = pastebins[i++];) {
                    if (domUtils.isEmptyNode(pi)) {
                        domUtils.remove(pi);
                    } else {
                        pastebin = pi;
                        break;
                    }
                }
            }
            try {
                pastebin.parentNode.removeChild(pastebin);
            } catch (e) {
            }
            range.moveToBookmark(bk).select(true);
            callback(pastebin);
        }, 0);
    }

    var me = this;

    var txtContent, htmlContent, address;

    function filter(div) {
        var html;
        if (div.firstChild) {
            //鍘绘帀cut涓坊鍔犵殑杈圭晫鍊�            var nodes = domUtils.getElementsByTagName(div, 'span');
            for (var i = 0, ni; ni = nodes[i++];) {
                if (ni.id == '_baidu_cut_start' || ni.id == '_baidu_cut_end') {
                    domUtils.remove(ni);
                }
            }

            if (browser.webkit) {

                var brs = div.querySelectorAll('div br');
                for (var i = 0, bi; bi = brs[i++];) {
                    var pN = bi.parentNode;
                    if (pN.tagName == 'DIV' && pN.childNodes.length == 1) {
                        pN.innerHTML = '<p><br/></p>';
                        domUtils.remove(pN);
                    }
                }
                var divs = div.querySelectorAll('#baidu_pastebin');
                for (var i = 0, di; di = divs[i++];) {
                    var tmpP = me.document.createElement('p');
                    di.parentNode.insertBefore(tmpP, di);
                    while (di.firstChild) {
                        tmpP.appendChild(di.firstChild);
                    }
                    domUtils.remove(di);
                }

                var metas = div.querySelectorAll('meta');
                for (var i = 0, ci; ci = metas[i++];) {
                    domUtils.remove(ci);
                }

                var brs = div.querySelectorAll('br');
                for (i = 0; ci = brs[i++];) {
                    if (/^apple-/i.test(ci.className)) {
                        domUtils.remove(ci);
                    }
                }
            }
            if (browser.gecko) {
                var dirtyNodes = div.querySelectorAll('[_moz_dirty]');
                for (i = 0; ci = dirtyNodes[i++];) {
                    ci.removeAttribute('_moz_dirty');
                }
            }
            if (!browser.ie) {
                var spans = div.querySelectorAll('span.Apple-style-span');
                for (var i = 0, ci; ci = spans[i++];) {
                    domUtils.remove(ci, true);
                }
            }

            //ie涓嬩娇鐢╥nnerHTML浼氫骇鐢熷浣欑殑\r\n瀛楃锛屼篃浼氫骇鐢�nbsp;杩欓噷杩囨护鎺�            html = div.innerHTML;//.replace(/>(?:(\s|&nbsp;)*?)</g,'><');

            //杩囨护word绮樿创杩囨潵鐨勫啑浣欏睘鎬�            html = UE.filterWord(html);
            //鍙栨秷浜嗗拷鐣ョ┖鐧界殑绗簩涓弬鏁帮紝绮樿创杩囨潵鐨勬湁浜涙槸鏈夌┖鐧界殑锛屼細琚涓婄浉鍏崇殑鏍囩
            var root = UE.htmlparser(html);
            //濡傛灉缁欎簡杩囨护瑙勫垯灏卞厛杩涜杩囨护
            if (me.options.filterRules) {
                UE.filterNode(root, me.options.filterRules);
            }
            //鎵ц榛樿鐨勫鐞�            me.filterInputRule(root);
            //閽堝chrome鐨勫鐞�            if (browser.webkit) {
                var br = root.lastChild();
                if (br && br.type == 'element' && br.tagName == 'br') {
                    root.removeChild(br)
                }
                utils.each(me.body.querySelectorAll('div'), function (node) {
                    if (domUtils.isEmptyBlock(node)) {
                        domUtils.remove(node)
                    }
                })
            }
            html = {'html': root.toHtml()};
            me.fireEvent('beforepaste', html, root);
            //鎶簡榛樿鐨勭矘璐达紝閭ｅ悗杈圭殑鍐呭灏变笉鎵ц浜嗭紝姣斿琛ㄦ牸绮樿创
            if(!html.html){
                return;
            }
            root = UE.htmlparser(html.html,true);
            //濡傛灉寮�惎浜嗙函鏂囨湰妯″紡
            if (me.queryCommandState('pasteplain') === 1) {
                me.execCommand('insertHtml', UE.filterNode(root, me.options.filterTxtRules).toHtml(), true);
            } else {
                //鏂囨湰妯″紡
                UE.filterNode(root, me.options.filterTxtRules);
                txtContent = root.toHtml();
                //瀹屽叏妯″紡
                htmlContent = html.html;

                address = me.selection.getRange().createAddress(true);
                me.execCommand('insertHtml', htmlContent, true);
            }
            me.fireEvent("afterpaste", html);
        }
    }

    me.addListener('pasteTransfer', function (cmd, plainType) {

        if (address && txtContent && htmlContent && txtContent != htmlContent) {
            var range = me.selection.getRange();
            range.moveToAddress(address, true);

            if (!range.collapsed) {

                while (!domUtils.isBody(range.startContainer)
                    ) {
                    var start = range.startContainer;
                    if(start.nodeType == 1){
                        start = start.childNodes[range.startOffset];
                        if(!start){
                            range.setStartBefore(range.startContainer);
                            continue;
                        }
                        var pre = start.previousSibling;

                        if(pre && pre.nodeType == 3 && new RegExp('^[\n\r\t '+domUtils.fillChar+']*$').test(pre.nodeValue)){
                            range.setStartBefore(pre)
                        }
                    }
                    if(range.startOffset == 0){
                        range.setStartBefore(range.startContainer);
                    }else{
                        break;
                    }

                }
                while (!domUtils.isBody(range.endContainer)
                    ) {
                    var end = range.endContainer;
                    if(end.nodeType == 1){
                        end = end.childNodes[range.endOffset];
                        if(!end){
                            range.setEndAfter(range.endContainer);
                            continue;
                        }
                        var next = end.nextSibling;
                        if(next && next.nodeType == 3 && new RegExp('^[\n\r\t'+domUtils.fillChar+']*$').test(next.nodeValue)){
                            range.setEndAfter(next)
                        }
                    }
                    if(range.endOffset == range.endContainer[range.endContainer.nodeType == 3 ? 'nodeValue' : 'childNodes'].length){
                        range.setEndAfter(range.endContainer);
                    }else{
                        break;
                    }

                }

            }

            range.deleteContents();
            range.select(true);
            me.__hasEnterExecCommand = true;
            var html = htmlContent;
            if (plainType === 2) {
                html = html.replace(/<(\/?)([\w\-]+)([^>]*)>/gi, function (a, b, tagName, attrs) {
                    tagName = tagName.toLowerCase();
                    if ({img: 1}[tagName]) {
                        return a;
                    }
                    attrs = attrs.replace(/([\w\-]*?)\s*=\s*(("([^"]*)")|('([^']*)')|([^\s>]+))/gi, function (str, atr, val) {
                        if ({
                            'src': 1,
                            'href': 1,
                            'name': 1
                        }[atr.toLowerCase()]) {
                            return atr + '=' + val + ' '
                        }
                        return ''
                    });
                    if ({
                        'span': 1,
                        'div': 1
                    }[tagName]) {
                        return ''
                    } else {

                        return '<' + b + tagName + ' ' + utils.trim(attrs) + '>'
                    }

                });
            } else if (plainType) {
                html = txtContent;
            }
            me.execCommand('inserthtml', html, true);
            me.__hasEnterExecCommand = false;
            var rng = me.selection.getRange();
            while (!domUtils.isBody(rng.startContainer) && !rng.startOffset &&
                rng.startContainer[rng.startContainer.nodeType == 3 ? 'nodeValue' : 'childNodes'].length
                ) {
                rng.setStartBefore(rng.startContainer);
            }
            var tmpAddress = rng.createAddress(true);
            address.endAddress = tmpAddress.startAddress;
        }
    });
    me.addListener('ready', function () {
        domUtils.on(me.body, 'cut', function () {
            var range = me.selection.getRange();
            if (!range.collapsed && me.undoManger) {
                me.undoManger.save();
            }
        });

        //ie涓媌eforepaste鍦ㄧ偣鍑诲彸閿椂涔熶細瑙﹀彂锛屾墍浠ョ敤鐩戞帶閿洏鎵嶅鐞�        domUtils.on(me.body, browser.ie || browser.opera ? 'keydown' : 'paste', function (e) {
            if ((browser.ie || browser.opera) && ((!e.ctrlKey && !e.metaKey) || e.keyCode != '86')) {
                return;
            }
            getClipboardData.call(me, function (div) {
                filter(div);
            });
        });

    });
};


///import core
///commands 鏈夊簭鍒楄〃,鏃犲簭鍒楄〃
///commandsName  InsertOrderedList,InsertUnorderedList
///commandsTitle  鏈夊簭鍒楄〃,鏃犲簭鍒楄〃
/**
 * 鏈夊簭鍒楄〃
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     insertorderlist鎻掑叆鏈夊簭鍒楄〃
 * @param   {String}   style               鍊间负锛歞ecimal,lower-alpha,lower-roman,upper-alpha,upper-roman
 * @author zhanyi
 */
/**
 * 鏃犲簭閾炬帴
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     insertunorderlist鎻掑叆鏃犲簭鍒楄〃
 * * @param   {String}   style            鍊间负锛歝ircle,disc,square
 * @author zhanyi
 */

UE.plugins['list'] = function () {
    var me = this,
        notExchange = {
            'TD':1,
            'PRE':1,
            'BLOCKQUOTE':1
        };
    var customStyle = {
        'cn' : 'cn-1-',
        'cn1' : 'cn-2-',
        'cn2' : 'cn-3-',
        'num':  'num-1-',
        'num1' : 'num-2-',
        'num2' : 'num-3-',
        'dash'  : 'dash',
        'dot':'dot'
    };

    me.setOpt( {
        'insertorderedlist':{
            'num':'',
            'num1':'',
            'num2':'',
            'cn':'',
            'cn1':'',
            'cn2':'',
            'decimal':'',
            'lower-alpha':'',
            'lower-roman':'',
            'upper-alpha':'',
            'upper-roman':''
        },
        'insertunorderedlist':{
            'circle':'',
            'disc':'',
            'square':'',
            'dash' : '',
            'dot':''
        },
        listDefaultPaddingLeft : '30',
        listiconpath : 'http://bs.baidu.com/listicon/',
        maxListLevel : -1//-1涓嶉檺鍒�
    } );
    function listToArray(list){
        var arr = [];
        for(var p in list){
            arr.push(p)
        }
        return arr;
    }
    var listStyle = {
        'OL':listToArray(me.options.insertorderedlist),
        'UL':listToArray(me.options.insertunorderedlist)
    };
    var liiconpath = me.options.listiconpath;

    //鏍规嵁鐢ㄦ埛閰嶇疆锛岃皟鏁碿ustomStyle
    for(var s in customStyle){
        if(!me.options.insertorderedlist.hasOwnProperty(s) && !me.options.insertunorderedlist.hasOwnProperty(s)){
            delete customStyle[s];
        }
    }

    me.ready(function () {
        var customCss = [];
        for(var p in customStyle){
            if(p == 'dash' || p == 'dot'){
                customCss.push('li.list-' + customStyle[p] + '{background-image:url(' + liiconpath +customStyle[p]+'.gif)}');
                customCss.push('ul.custom_'+p+'{list-style:none;}ul.custom_'+p+' li{background-position:0 3px;background-repeat:no-repeat}');
            }else{
                for(var i= 0;i<99;i++){
                    customCss.push('li.list-' + customStyle[p] + i + '{background-image:url(' + liiconpath + 'list-'+customStyle[p] + i + '.gif)}')
                }
                customCss.push('ol.custom_'+p+'{list-style:none;}ol.custom_'+p+' li{background-position:0 3px;background-repeat:no-repeat}');
            }
            switch(p){
                case 'cn':
                    customCss.push('li.list-'+p+'-paddingleft-1{padding-left:25px}');
                    customCss.push('li.list-'+p+'-paddingleft-2{padding-left:40px}');
                    customCss.push('li.list-'+p+'-paddingleft-3{padding-left:55px}');
                    break;
                case 'cn1':
                    customCss.push('li.list-'+p+'-paddingleft-1{padding-left:30px}');
                    customCss.push('li.list-'+p+'-paddingleft-2{padding-left:40px}');
                    customCss.push('li.list-'+p+'-paddingleft-3{padding-left:55px}');
                    break;
                case 'cn2':
                    customCss.push('li.list-'+p+'-paddingleft-1{padding-left:40px}');
                    customCss.push('li.list-'+p+'-paddingleft-2{padding-left:55px}');
                    customCss.push('li.list-'+p+'-paddingleft-3{padding-left:68px}');
                    break;
                case 'num':
                case 'num1':
                    customCss.push('li.list-'+p+'-paddingleft-1{padding-left:25px}');
                    break;
                case 'num2':
                    customCss.push('li.list-'+p+'-paddingleft-1{padding-left:35px}');
                    customCss.push('li.list-'+p+'-paddingleft-2{padding-left:40px}');
                    break;
                case 'dash':
                    customCss.push('li.list-'+p+'-paddingleft{padding-left:35px}');
                    break;
                case 'dot':
                    customCss.push('li.list-'+p+'-paddingleft{padding-left:20px}');
            }
        }
        customCss.push('.list-paddingleft-1{padding-left:0}');
        customCss.push('.list-paddingleft-2{padding-left:'+me.options.listDefaultPaddingLeft+'px}');
        customCss.push('.list-paddingleft-3{padding-left:'+me.options.listDefaultPaddingLeft*2+'px}');
        //濡傛灉涓嶇粰瀹藉害浼氬湪鑷畾搴旀牱寮忛噷鍑虹幇婊氬姩鏉�
        utils.cssRule('list', 'ol,ul{margin:0;pading:0;'+(browser.ie ? '' : 'width:95%')+'}li{clear:both;}'+customCss.join('\n'), me.document);
    });
    //鍗曠嫭澶勭悊鍓垏鐨勯棶棰�
    me.ready(function(){
        domUtils.on(me.body,'cut',function(){
            setTimeout(function(){
                var rng = me.selection.getRange(),li;
                //trace:3416
                if(!rng.collapsed){
                    if(li = domUtils.findParentByTagName(rng.startContainer,'li',true)){
                        if(!li.nextSibling && domUtils.isEmptyBlock(li)){
                            var pn = li.parentNode,node;
                            if(node = pn.previousSibling){
                                domUtils.remove(pn);
                                rng.setStartAtLast(node).collapse(true);
                                rng.select(true);
                            }else if(node = pn.nextSibling){
                                domUtils.remove(pn);
                                rng.setStartAtFirst(node).collapse(true);
                                rng.select(true);
                            }else{
                                var tmpNode = me.document.createElement('p');
                                domUtils.fillNode(me.document,tmpNode);
                                pn.parentNode.insertBefore(tmpNode,pn);
                                domUtils.remove(pn);
                                rng.setStart(tmpNode,0).collapse(true);
                                rng.select(true);
                            }
                        }
                    }
                }

            })
        })
    });

    function getStyle(node){
        var cls = node.className;
        if(domUtils.hasClass(node,/custom_/)){
            return cls.match(/custom_(\w+)/)[1]
        }
        return domUtils.getStyle(node, 'list-style-type')

    }

    me.addListener('beforepaste',function(type,html){
        var me = this,
            rng = me.selection.getRange(),li;
        var root = UE.htmlparser(html.html,true);
        if(li = domUtils.findParentByTagName(rng.startContainer,'li',true)){
            var list = li.parentNode,tagName = list.tagName == 'OL' ? 'ul':'ol';
            utils.each(root.getNodesByTagName(tagName),function(n){
                n.tagName = list.tagName;
                n.setAttr();
                if(n.parentNode === root){
                    type = getStyle(list) || (list.tagName == 'OL' ? 'decimal' : 'disc')
                }else{
                    var className = n.parentNode.getAttr('class');
                    if(className && /custom_/.test(className)){
                        type = className.match(/custom_(\w+)/)[1]
                    }else{
                        type = n.parentNode.getStyle('list-style-type');
                    }
                    if(!type){
                        type = list.tagName == 'OL' ? 'decimal' : 'disc';
                    }
                }
                var index = utils.indexOf(listStyle[list.tagName], type);
                if(n.parentNode !== root)
                    index = index + 1 == listStyle[list.tagName].length ? 0 : index + 1;
                var currentStyle = listStyle[list.tagName][index];
                if(customStyle[currentStyle]){
                    n.setAttr('class', 'custom_' + currentStyle)

                }else{
                    n.setStyle('list-style-type',currentStyle)
                }
            })

        }

        html.html = root.toHtml();
    });
    //杩涘叆缂栬緫鍣ㄧ殑li瑕佸p鏍囩
    me.addInputRule(function(root){
        utils.each(root.getNodesByTagName('li'),function(li){
            var tmpP = UE.uNode.createElement('p');
            for(var i= 0,ci;ci=li.children[i];){
                if(ci.type == 'text' || dtd.p[ci.tagName]){
                    tmpP.appendChild(ci);
                }else{
                    if(tmpP.firstChild()){
                        li.insertBefore(tmpP,ci);
                        tmpP = UE.uNode.createElement('p');
                        i = i + 2;
                    }else{
                        i++;
                    }

                }
            }
            if(tmpP.firstChild() && !tmpP.parentNode || !li.firstChild()){
                li.appendChild(tmpP);
            }
            //trace:3357
            //p涓嶈兘涓虹┖
            if (!tmpP.firstChild()) {
                tmpP.innerHTML(browser.ie ? '&nbsp;' : '<br/>')
            }
            //鍘绘帀鏈熬鐨勭┖鐧�
            var p = li.firstChild();
            var lastChild = p.lastChild();
            if(lastChild && lastChild.type == 'text' && /^\s*$/.test(lastChild.data)){
                p.removeChild(lastChild)
            }
        });
        var orderlisttype = {
                'num1':/^\d+\)/,
                'decimal':/^\d+\./,
                'lower-alpha':/^[a-z]+\)/,
                'upper-alpha':/^[A-Z]+\./,
                'cn':/^[\u4E00\u4E8C\u4E09\u56DB\u516d\u4e94\u4e03\u516b\u4e5d]+[\u3001]/,
                'cn2':/^\([\u4E00\u4E8C\u4E09\u56DB\u516d\u4e94\u4e03\u516b\u4e5d]+\)/
            },
            unorderlisttype = {
                'square':'n'
            };
        function checkListType(content,container){
            var span = container.firstChild();
            if(span &&  span.type == 'element' && span.tagName == 'span' && /Wingdings|Symbol/.test(span.getStyle('font-family'))){
                for(var p in unorderlisttype){
                    if(unorderlisttype[p] == span.data){
                        return p
                    }
                }
                return 'disc'
            }
            for(var p in orderlisttype){
                if(orderlisttype[p].test(content)){
                    return p;
                }
            }

        }
        utils.each(root.getNodesByTagName('p'),function(node){
            if(node.getAttr('class') != 'MsoListParagraph'){
                return
            }

            //word绮樿创杩囨潵鐨勪細甯︽湁margin瑕佸幓鎺�浣嗚繖鏍蜂篃鍙兘浼氳鍛戒腑涓�簺澶
            node.setStyle('margin','');
            node.setStyle('margin-left','');
            node.setAttr('class','');

            function appendLi(list,p,type){
                if(list.tagName == 'ol'){
                    if(browser.ie){
                        var first = p.firstChild();
                        if(first.type =='element' && first.tagName == 'span' && orderlisttype[type].test(first.innerText())){
                            p.removeChild(first);
                        }
                    }else{
                        p.innerHTML(p.innerHTML().replace(orderlisttype[type],''));
                    }
                }else{
                    p.removeChild(p.firstChild())
                }

                var li = UE.uNode.createElement('li');
                li.appendChild(p);
                list.appendChild(li);
            }
            var tmp = node,type,cacheNode = node;

            if(node.parentNode.tagName != 'li' && (type = checkListType(node.innerText(),node))){

                var list = UE.uNode.createElement(me.options.insertorderedlist.hasOwnProperty(type) ? 'ol' : 'ul');
                if(customStyle[type]){
                    list.setAttr('class','custom_'+type)
                }else{
                    list.setStyle('list-style-type',type)
                }
                while(node && node.parentNode.tagName != 'li' && checkListType(node.innerText(),node)){
                    tmp = node.nextSibling();
                    if(!tmp){
                        node.parentNode.insertBefore(list,node)
                    }
                    appendLi(list,node,type);
                    node = tmp;
                }
                if(!list.parentNode && node && node.parentNode){
                    node.parentNode.insertBefore(list,node)
                }
            }
            var span = cacheNode.firstChild();
            if(span && span.type == 'element' && span.tagName == 'span' && /^\s*(&nbsp;)+\s*$/.test(span.innerText())){
                span.parentNode.removeChild(span)
            }
        })
    });

    //璋冩暣绱㈠紩鏍囩
    me.addListener('contentchange',function(){
        adjustListStyle(me.document)
    });

    function adjustListStyle(doc,ignore){
        utils.each(domUtils.getElementsByTagName(doc,'ol ul'),function(node){

            if(!domUtils.inDoc(node,doc))
                return;

            var parent = node.parentNode;
            if(parent.tagName == node.tagName){
                var nodeStyleType = getStyle(node) || (node.tagName == 'OL' ? 'decimal' : 'disc'),
                    parentStyleType = getStyle(parent) || (parent.tagName == 'OL' ? 'decimal' : 'disc');
                if(nodeStyleType == parentStyleType){
                    var styleIndex = utils.indexOf(listStyle[node.tagName], nodeStyleType);
                    styleIndex = styleIndex + 1 == listStyle[node.tagName].length ? 0 : styleIndex + 1;
                    setListStyle(node,listStyle[node.tagName][styleIndex])
                }

            }
            var index = 0,type = 2;
            if( domUtils.hasClass(node,/custom_/)){
                if(!(/[ou]l/i.test(parent.tagName) && domUtils.hasClass(parent,/custom_/))){
                    type = 1;
                }
            }else{
                if(/[ou]l/i.test(parent.tagName) && domUtils.hasClass(parent,/custom_/)){
                    type = 3;
                }
            }

            var style = domUtils.getStyle(node, 'list-style-type');
            style && (node.style.cssText = 'list-style-type:' + style);
            node.className = utils.trim(node.className.replace(/list-paddingleft-\w+/,'')) + ' list-paddingleft-' + type;
            utils.each(domUtils.getElementsByTagName(node,'li'),function(li){
                li.style.cssText && (li.style.cssText = '');
                if(!li.firstChild){
                    domUtils.remove(li);
                    return;
                }
                if(li.parentNode !== node){
                    return;
                }
                index++;
                if(domUtils.hasClass(node,/custom_/) ){
                    var paddingLeft = 1,currentStyle = getStyle(node);
                    if(node.tagName == 'OL'){
                        if(currentStyle){
                            switch(currentStyle){
                                case 'cn' :
                                case 'cn1':
                                case 'cn2':
                                    if(index > 10 && (index % 10 == 0 || index > 10 && index < 20)){
                                        paddingLeft = 2
                                    }else if(index > 20){
                                        paddingLeft = 3
                                    }
                                    break;
                                case 'num2' :
                                    if(index > 9){
                                        paddingLeft = 2
                                    }
                            }
                        }
                        li.className = 'list-'+customStyle[currentStyle]+ index + ' ' + 'list-'+currentStyle+'-paddingleft-' + paddingLeft;
                    }else{
                        li.className = 'list-'+customStyle[currentStyle]  + ' ' + 'list-'+currentStyle+'-paddingleft';
                    }
                }else{
                    li.className = li.className.replace(/list-[\w\-]+/gi,'');
                }
                var className = li.getAttribute('class');
                if(className !== null && !className.replace(/\s/g,'')){
                    domUtils.removeAttributes(li,'class')
                }
            });
            !ignore && adjustList(node,node.tagName.toLowerCase(),getStyle(node)||domUtils.getStyle(node, 'list-style-type'),true);
        })
    }
    function adjustList(list, tag, style,ignoreEmpty) {
        var nextList = list.nextSibling;
        if (nextList && nextList.nodeType == 1 && nextList.tagName.toLowerCase() == tag && (getStyle(nextList) || domUtils.getStyle(nextList, 'list-style-type') || (tag == 'ol' ? 'decimal' : 'disc')) == style) {
            domUtils.moveChild(nextList, list);
            if (nextList.childNodes.length == 0) {
                domUtils.remove(nextList);
            }
        }
        if(nextList && domUtils.isFillChar(nextList)){
            domUtils.remove(nextList);
        }
        var preList = list.previousSibling;
        if (preList && preList.nodeType == 1 && preList.tagName.toLowerCase() == tag && (getStyle(preList) || domUtils.getStyle(preList, 'list-style-type') || (tag == 'ol' ? 'decimal' : 'disc')) == style) {
            domUtils.moveChild(list, preList);
        }
        if(preList && domUtils.isFillChar(preList)){
            domUtils.remove(preList);
        }
        !ignoreEmpty && domUtils.isEmptyBlock(list) && domUtils.remove(list);
        if(getStyle(list)){
            adjustListStyle(list.ownerDocument,true)
        }
    }

    function setListStyle(list,style){
        if(customStyle[style]){
            list.className = 'custom_' + style;
        }
        try{
            domUtils.setStyle(list, 'list-style-type', style);
        }catch(e){}
    }
    function clearEmptySibling(node) {
        var tmpNode = node.previousSibling;
        if (tmpNode && domUtils.isEmptyBlock(tmpNode)) {
            domUtils.remove(tmpNode);
        }
        tmpNode = node.nextSibling;
        if (tmpNode && domUtils.isEmptyBlock(tmpNode)) {
            domUtils.remove(tmpNode);
        }
    }

    me.addListener('keydown', function (type, evt) {
        function preventAndSave() {
            evt.preventDefault ? evt.preventDefault() : (evt.returnValue = false);
            me.fireEvent('contentchange');
            me.undoManger && me.undoManger.save();
        }
        function findList(node,filterFn){
            while(node && !domUtils.isBody(node)){
                if(filterFn(node)){
                    return null
                }
                if(node.nodeType == 1 && /[ou]l/i.test(node.tagName)){
                    return node;
                }
                node = node.parentNode;
            }
            return null;
        }
        var keyCode = evt.keyCode || evt.which;
        if (keyCode == 13 && !evt.shiftKey) {//鍥炶溅
            var rng = me.selection.getRange(),
                parent = domUtils.findParent(rng.startContainer,function(node){return domUtils.isBlockElm(node)},true),
                li = domUtils.findParentByTagName(rng.startContainer,'li',true);
            if(parent && parent.tagName != 'PRE' && !li){
                var html = parent.innerHTML.replace(new RegExp(domUtils.fillChar, 'g'),'');
                if(/^\s*1\s*\.[^\d]/.test(html)){
                    parent.innerHTML = html.replace(/^\s*1\s*\./,'');
                    rng.setStartAtLast(parent).collapse(true).select();
                    me.__hasEnterExecCommand = true;
                    me.execCommand('insertorderedlist');
                    me.__hasEnterExecCommand = false;
                }
            }
            var range = me.selection.getRange(),
                start = findList(range.startContainer,function (node) {
                    return node.tagName == 'TABLE';
                }),
                end = range.collapsed ? start : findList(range.endContainer,function (node) {
                    return node.tagName == 'TABLE';
                });

            if (start && end && start === end) {

                if (!range.collapsed) {
                    start = domUtils.findParentByTagName(range.startContainer, 'li', true);
                    end = domUtils.findParentByTagName(range.endContainer, 'li', true);
                    if (start && end && start === end) {
                        range.deleteContents();
                        li = domUtils.findParentByTagName(range.startContainer, 'li', true);
                        if (li && domUtils.isEmptyBlock(li)) {

                            pre = li.previousSibling;
                            next = li.nextSibling;
                            p = me.document.createElement('p');

                            domUtils.fillNode(me.document, p);
                            parentList = li.parentNode;
                            if (pre && next) {
                                range.setStart(next, 0).collapse(true).select(true);
                                domUtils.remove(li);

                            } else {
                                if (!pre && !next || !pre) {

                                    parentList.parentNode.insertBefore(p, parentList);


                                } else {
                                    li.parentNode.parentNode.insertBefore(p, parentList.nextSibling);
                                }
                                domUtils.remove(li);
                                if (!parentList.firstChild) {
                                    domUtils.remove(parentList);
                                }
                                range.setStart(p, 0).setCursor();


                            }
                            preventAndSave();
                            return;

                        }
                    } else {
                        var tmpRange = range.cloneRange(),
                            bk = tmpRange.collapse(false).createBookmark();

                        range.deleteContents();
                        tmpRange.moveToBookmark(bk);
                        var li = domUtils.findParentByTagName(tmpRange.startContainer, 'li', true);

                        clearEmptySibling(li);
                        tmpRange.select();
                        preventAndSave();
                        return;
                    }
                }


                li = domUtils.findParentByTagName(range.startContainer, 'li', true);

                if (li) {
                    if (domUtils.isEmptyBlock(li)) {
                        bk = range.createBookmark();
                        var parentList = li.parentNode;
                        if (li !== parentList.lastChild) {
                            domUtils.breakParent(li, parentList);
                            clearEmptySibling(li);
                        } else {

                            parentList.parentNode.insertBefore(li, parentList.nextSibling);
                            if (domUtils.isEmptyNode(parentList)) {
                                domUtils.remove(parentList);
                            }
                        }
                        //宓屽涓嶅鐞�
                        if (!dtd.$list[li.parentNode.tagName]) {

                            if (!domUtils.isBlockElm(li.firstChild)) {
                                p = me.document.createElement('p');
                                li.parentNode.insertBefore(p, li);
                                while (li.firstChild) {
                                    p.appendChild(li.firstChild);
                                }
                                domUtils.remove(li);
                            } else {
                                domUtils.remove(li, true);
                            }
                        }
                        range.moveToBookmark(bk).select();


                    } else {
                        var first = li.firstChild;
                        if (!first || !domUtils.isBlockElm(first)) {
                            var p = me.document.createElement('p');

                            !li.firstChild && domUtils.fillNode(me.document, p);
                            while (li.firstChild) {

                                p.appendChild(li.firstChild);
                            }
                            li.appendChild(p);
                            first = p;
                        }

                        var span = me.document.createElement('span');

                        range.insertNode(span);
                        domUtils.breakParent(span, li);

                        var nextLi = span.nextSibling;
                        first = nextLi.firstChild;

                        if (!first) {
                            p = me.document.createElement('p');

                            domUtils.fillNode(me.document, p);
                            nextLi.appendChild(p);
                            first = p;
                        }
                        if (domUtils.isEmptyNode(first)) {
                            first.innerHTML = '';
                            domUtils.fillNode(me.document, first);
                        }

                        range.setStart(first, 0).collapse(true).shrinkBoundary().select();
                        domUtils.remove(span);
                        var pre = nextLi.previousSibling;
                        if (pre && domUtils.isEmptyBlock(pre)) {
                            pre.innerHTML = '<p></p>';
                            domUtils.fillNode(me.document, pre.firstChild);
                        }

                    }
//                        }
                    preventAndSave();
                }


            }


        }
        if (keyCode == 8) {
            //淇腑ie涓璴i涓嬬殑闂
            range = me.selection.getRange();
            if (range.collapsed && domUtils.isStartInblock(range)) {
                tmpRange = range.cloneRange().trimBoundary();
                li = domUtils.findParentByTagName(range.startContainer, 'li', true);
                //瑕佸湪li鐨勬渶宸﹁竟锛屾墠鑳藉鐞�
                if (li && domUtils.isStartInblock(tmpRange)) {
                    start = domUtils.findParentByTagName(range.startContainer, 'p', true);
                    if (start && start !== li.firstChild) {
                        var parentList = domUtils.findParentByTagName(start,['ol','ul']);
                        domUtils.breakParent(start,parentList);
                        clearEmptySibling(start);
                        me.fireEvent('contentchange');
                        range.setStart(start,0).setCursor(false,true);
                        me.fireEvent('saveScene');
                        domUtils.preventDefault(evt);
                        return;
                    }

                    if (li && (pre = li.previousSibling)) {
                        if (keyCode == 46 && li.childNodes.length) {
                            return;
                        }
                        //鏈夊彲鑳戒笂杈圭殑鍏勫紵鑺傜偣鏄釜2绾ц彍鍗曪紝瑕佽拷鍔犲埌2绾ц彍鍗曠殑鏈�悗鐨刲i
                        if (dtd.$list[pre.tagName]) {
                            pre = pre.lastChild;
                        }
                        me.undoManger && me.undoManger.save();
                        first = li.firstChild;
                        if (domUtils.isBlockElm(first)) {
                            if (domUtils.isEmptyNode(first)) {
//                                    range.setEnd(pre, pre.childNodes.length).shrinkBoundary().collapse().select(true);
                                pre.appendChild(first);
                                range.setStart(first, 0).setCursor(false, true);
                                //first涓嶆槸鍞竴鐨勮妭鐐�
                                while (li.firstChild) {
                                    pre.appendChild(li.firstChild);
                                }
                            } else {

                                span = me.document.createElement('span');
                                range.insertNode(span);
                                //鍒ゆ柇pre鏄惁鏄┖鐨勮妭鐐�濡傛灉鏄�p><br/></p>绫诲瀷鐨勭┖鑺傜偣锛屽共鎺塸鏍囩闃叉瀹冨崰浣�
                                if (domUtils.isEmptyBlock(pre)) {
                                    pre.innerHTML = '';
                                }
                                domUtils.moveChild(li, pre);
                                range.setStartBefore(span).collapse(true).select(true);

                                domUtils.remove(span);

                            }
                        } else {
                            if (domUtils.isEmptyNode(li)) {
                                var p = me.document.createElement('p');
                                pre.appendChild(p);
                                range.setStart(p, 0).setCursor();
//                                    range.setEnd(pre, pre.childNodes.length).shrinkBoundary().collapse().select(true);
                            } else {
                                range.setEnd(pre, pre.childNodes.length).collapse().select(true);
                                while (li.firstChild) {
                                    pre.appendChild(li.firstChild);
                                }
                            }
                        }
                        domUtils.remove(li);
                        me.fireEvent('contentchange');
                        me.fireEvent('saveScene');
                        domUtils.preventDefault(evt);
                        return;

                    }
                    //trace:980

                    if (li && !li.previousSibling) {
                        var parentList = li.parentNode;
                        var bk = range.createBookmark();
                        if(domUtils.isTagNode(parentList.parentNode,'ol ul')){
                            parentList.parentNode.insertBefore(li,parentList);
                            if(domUtils.isEmptyNode(parentList)){
                                domUtils.remove(parentList)
                            }
                        }else{

                            while(li.firstChild){
                                parentList.parentNode.insertBefore(li.firstChild,parentList);
                            }

                            domUtils.remove(li);
                            if(domUtils.isEmptyNode(parentList)){
                                domUtils.remove(parentList)
                            }

                        }
                        range.moveToBookmark(bk).setCursor(false,true);
                        me.fireEvent('contentchange');
                        me.fireEvent('saveScene');
                        domUtils.preventDefault(evt);
                        return;

                    }


                }


            }

        }
    });

    me.addListener('keyup',function(type, evt){
        var keyCode = evt.keyCode || evt.which;
        if (keyCode == 8) {
            var rng = me.selection.getRange(),list;
            if(list = domUtils.findParentByTagName(rng.startContainer,['ol', 'ul'],true)){
                adjustList(list,list.tagName.toLowerCase(),getStyle(list)||domUtils.getComputedStyle(list,'list-style-type'),true)
            }
        }
    });
    //澶勭悊tab閿�
    me.addListener('tabkeydown',function(){

        var range = me.selection.getRange();

        //鎺у埗绾ф暟
        function checkLevel(li){
            if(me.options.maxListLevel != -1){
                var level = li.parentNode,levelNum = 0;
                while(/[ou]l/i.test(level.tagName)){
                    levelNum++;
                    level = level.parentNode;
                }
                if(levelNum >= me.options.maxListLevel){
                    return true;
                }
            }
        }
        //鍙互寮�涓哄噯
        //todo 鍚庣画鏀硅繘
        var li = domUtils.findParentByTagName(range.startContainer, 'li', true);
        if(li){

            var bk;
            if(range.collapsed){
                if(checkLevel(li))
                    return true;
                var parentLi = li.parentNode,
                    list = me.document.createElement(parentLi.tagName),
                    index = utils.indexOf(listStyle[list.tagName], getStyle(parentLi)||domUtils.getComputedStyle(parentLi, 'list-style-type'));
                index = index + 1 == listStyle[list.tagName].length ? 0 : index + 1;
                var currentStyle = listStyle[list.tagName][index];
                setListStyle(list,currentStyle);
                if(domUtils.isStartInblock(range)){
                    me.fireEvent('saveScene');
                    bk = range.createBookmark();
                    parentLi.insertBefore(list, li);
                    list.appendChild(li);
                    adjustList(list,list.tagName.toLowerCase(),currentStyle);
                    me.fireEvent('contentchange');
                    range.moveToBookmark(bk).select(true);
                    return true;
                }
            }else{
                me.fireEvent('saveScene');
                bk = range.createBookmark();
                for(var i= 0,closeList,parents = domUtils.findParents(li),ci;ci=parents[i++];){
                    if(domUtils.isTagNode(ci,'ol ul')){
                        closeList = ci;
                        break;
                    }
                }
                var current = li;
                if(bk.end){
                    while(current && !(domUtils.getPosition(current, bk.end) & domUtils.POSITION_FOLLOWING)){
                        if(checkLevel(current)){
                            current = domUtils.getNextDomNode(current,false,null,function(node){return node !== closeList});
                            continue;
                        }
                        var parentLi = current.parentNode,
                            list = me.document.createElement(parentLi.tagName),
                            index = utils.indexOf(listStyle[list.tagName], getStyle(parentLi)||domUtils.getComputedStyle(parentLi, 'list-style-type'));
                        var currentIndex = index + 1 == listStyle[list.tagName].length ? 0 : index + 1;
                        var currentStyle = listStyle[list.tagName][currentIndex];
                        setListStyle(list,currentStyle);
                        parentLi.insertBefore(list, current);
                        while(current && !(domUtils.getPosition(current, bk.end) & domUtils.POSITION_FOLLOWING)){
                            li = current.nextSibling;
                            list.appendChild(current);
                            if(!li || domUtils.isTagNode(li,'ol ul')){
                                if(li){
                                    while(li = li.firstChild){
                                        if(li.tagName == 'LI'){
                                            break;
                                        }
                                    }
                                }else{
                                    li = domUtils.getNextDomNode(current,false,null,function(node){return node !== closeList});
                                }
                                break;
                            }
                            current = li;
                        }
                        adjustList(list,list.tagName.toLowerCase(),currentStyle);
                        current = li;
                    }
                }
                me.fireEvent('contentchange');
                range.moveToBookmark(bk).select();
                return true;
            }
        }

    });
    function getLi(start){
        while(start && !domUtils.isBody(start)){
            if(start.nodeName == 'TABLE'){
                return null;
            }
            if(start.nodeName == 'LI'){
                return start
            }
            start = start.parentNode;
        }
    }
    me.commands['insertorderedlist'] =
    me.commands['insertunorderedlist'] = {
            execCommand:function (command, style) {

                if (!style) {
                    style = command.toLowerCase() == 'insertorderedlist' ? 'decimal' : 'disc';
                }
                var me = this,
                    range = this.selection.getRange(),
                    filterFn = function (node) {
                        return   node.nodeType == 1 ? node.tagName.toLowerCase() != 'br' : !domUtils.isWhitespace(node);
                    },
                    tag = command.toLowerCase() == 'insertorderedlist' ? 'ol' : 'ul',
                    frag = me.document.createDocumentFragment();
                //鍘绘帀鏄洜涓轰細鍑虹幇閫夊埌鏈熬锛屽鑷碼djustmentBoundary缂╁埌ol/ul鐨勪綅缃�
                //range.shrinkBoundary();//.adjustmentBoundary();
                range.adjustmentBoundary().shrinkBoundary();
                var bko = range.createBookmark(true),
                    start = getLi(me.document.getElementById(bko.start)),
                    modifyStart = 0,
                    end =  getLi(me.document.getElementById(bko.end)),
                    modifyEnd = 0,
                    startParent, endParent,
                    list, tmp;

                if (start || end) {
                    start && (startParent = start.parentNode);
                    if (!bko.end) {
                        end = start;
                    }
                    end && (endParent = end.parentNode);

                    if (startParent === endParent) {
                        while (start !== end) {
                            tmp = start;
                            start = start.nextSibling;
                            if (!domUtils.isBlockElm(tmp.firstChild)) {
                                var p = me.document.createElement('p');
                                while (tmp.firstChild) {
                                    p.appendChild(tmp.firstChild);
                                }
                                tmp.appendChild(p);
                            }
                            frag.appendChild(tmp);
                        }
                        tmp = me.document.createElement('span');
                        startParent.insertBefore(tmp, end);
                        if (!domUtils.isBlockElm(end.firstChild)) {
                            p = me.document.createElement('p');
                            while (end.firstChild) {
                                p.appendChild(end.firstChild);
                            }
                            end.appendChild(p);
                        }
                        frag.appendChild(end);
                        domUtils.breakParent(tmp, startParent);
                        if (domUtils.isEmptyNode(tmp.previousSibling)) {
                            domUtils.remove(tmp.previousSibling);
                        }
                        if (domUtils.isEmptyNode(tmp.nextSibling)) {
                            domUtils.remove(tmp.nextSibling)
                        }
                        var nodeStyle = getStyle(startParent) || domUtils.getComputedStyle(startParent, 'list-style-type') || (command.toLowerCase() == 'insertorderedlist' ? 'decimal' : 'disc');
                        if (startParent.tagName.toLowerCase() == tag && nodeStyle == style) {
                            for (var i = 0, ci, tmpFrag = me.document.createDocumentFragment(); ci = frag.childNodes[i++];) {
                                if(domUtils.isTagNode(ci,'ol ul')){
                                    utils.each(domUtils.getElementsByTagName(ci,'li'),function(li){
                                        while(li.firstChild){
                                            tmpFrag.appendChild(li.firstChild);
                                        }

                                    });
                                }else{
                                    while (ci.firstChild) {
                                        tmpFrag.appendChild(ci.firstChild);
                                    }
                                }

                            }
                            tmp.parentNode.insertBefore(tmpFrag, tmp);
                        } else {
                            list = me.document.createElement(tag);
                            setListStyle(list,style);
                            list.appendChild(frag);
                            tmp.parentNode.insertBefore(list, tmp);
                        }

                        domUtils.remove(tmp);
                        list && adjustList(list, tag, style);
                        range.moveToBookmark(bko).select();
                        return;
                    }
                    //寮�
                    if (start) {
                        while (start) {
                            tmp = start.nextSibling;
                            if (domUtils.isTagNode(start, 'ol ul')) {
                                frag.appendChild(start);
                            } else {
                                var tmpfrag = me.document.createDocumentFragment(),
                                    hasBlock = 0;
                                while (start.firstChild) {
                                    if (domUtils.isBlockElm(start.firstChild)) {
                                        hasBlock = 1;
                                    }
                                    tmpfrag.appendChild(start.firstChild);
                                }
                                if (!hasBlock) {
                                    var tmpP = me.document.createElement('p');
                                    tmpP.appendChild(tmpfrag);
                                    frag.appendChild(tmpP);
                                } else {
                                    frag.appendChild(tmpfrag);
                                }
                                domUtils.remove(start);
                            }

                            start = tmp;
                        }
                        startParent.parentNode.insertBefore(frag, startParent.nextSibling);
                        if (domUtils.isEmptyNode(startParent)) {
                            range.setStartBefore(startParent);
                            domUtils.remove(startParent);
                        } else {
                            range.setStartAfter(startParent);
                        }
                        modifyStart = 1;
                    }

                    if (end && domUtils.inDoc(endParent, me.document)) {
                        //缁撴潫
                        start = endParent.firstChild;
                        while (start && start !== end) {
                            tmp = start.nextSibling;
                            if (domUtils.isTagNode(start, 'ol ul')) {
                                frag.appendChild(start);
                            } else {
                                tmpfrag = me.document.createDocumentFragment();
                                hasBlock = 0;
                                while (start.firstChild) {
                                    if (domUtils.isBlockElm(start.firstChild)) {
                                        hasBlock = 1;
                                    }
                                    tmpfrag.appendChild(start.firstChild);
                                }
                                if (!hasBlock) {
                                    tmpP = me.document.createElement('p');
                                    tmpP.appendChild(tmpfrag);
                                    frag.appendChild(tmpP);
                                } else {
                                    frag.appendChild(tmpfrag);
                                }
                                domUtils.remove(start);
                            }
                            start = tmp;
                        }
                        var tmpDiv = domUtils.createElement(me.document, 'div', {
                            'tmpDiv':1
                        });
                        domUtils.moveChild(end, tmpDiv);

                        frag.appendChild(tmpDiv);
                        domUtils.remove(end);
                        endParent.parentNode.insertBefore(frag, endParent);
                        range.setEndBefore(endParent);
                        if (domUtils.isEmptyNode(endParent)) {
                            domUtils.remove(endParent);
                        }

                        modifyEnd = 1;
                    }


                }

                if (!modifyStart) {
                    range.setStartBefore(me.document.getElementById(bko.start));
                }
                if (bko.end && !modifyEnd) {
                    range.setEndAfter(me.document.getElementById(bko.end));
                }
                range.enlarge(true, function (node) {
                    return notExchange[node.tagName];
                });

                frag = me.document.createDocumentFragment();

                var bk = range.createBookmark(),
                    current = domUtils.getNextDomNode(bk.start, false, filterFn),
                    tmpRange = range.cloneRange(),
                    tmpNode,
                    block = domUtils.isBlockElm;

                while (current && current !== bk.end && (domUtils.getPosition(current, bk.end) & domUtils.POSITION_PRECEDING)) {

                    if (current.nodeType == 3 || dtd.li[current.tagName]) {
                        if (current.nodeType == 1 && dtd.$list[current.tagName]) {
                            while (current.firstChild) {
                                frag.appendChild(current.firstChild);
                            }
                            tmpNode = domUtils.getNextDomNode(current, false, filterFn);
                            domUtils.remove(current);
                            current = tmpNode;
                            continue;

                        }
                        tmpNode = current;
                        tmpRange.setStartBefore(current);

                        while (current && current !== bk.end && (!block(current) || domUtils.isBookmarkNode(current) )) {
                            tmpNode = current;
                            current = domUtils.getNextDomNode(current, false, null, function (node) {
                                return !notExchange[node.tagName];
                            });
                        }

                        if (current && block(current)) {
                            tmp = domUtils.getNextDomNode(tmpNode, false, filterFn);
                            if (tmp && domUtils.isBookmarkNode(tmp)) {
                                current = domUtils.getNextDomNode(tmp, false, filterFn);
                                tmpNode = tmp;
                            }
                        }
                        tmpRange.setEndAfter(tmpNode);

                        current = domUtils.getNextDomNode(tmpNode, false, filterFn);

                        var li = range.document.createElement('li');

                        li.appendChild(tmpRange.extractContents());
                        if(domUtils.isEmptyNode(li)){
                            var tmpNode = range.document.createElement('p');
                            while(li.firstChild){
                                tmpNode.appendChild(li.firstChild)
                            }
                            li.appendChild(tmpNode);
                        }
                        frag.appendChild(li);
                    } else {
                        current = domUtils.getNextDomNode(current, true, filterFn);
                    }
                }
                range.moveToBookmark(bk).collapse(true);
                list = me.document.createElement(tag);
                setListStyle(list,style);
                list.appendChild(frag);
                range.insertNode(list);
                //褰撳墠list涓婁笅鐪嬭兘鍚﹀悎骞�
                adjustList(list, tag, style);
                //鍘绘帀鍐椾綑鐨則mpDiv
                for (var i = 0, ci, tmpDivs = domUtils.getElementsByTagName(list, 'div'); ci = tmpDivs[i++];) {
                    if (ci.getAttribute('tmpDiv')) {
                        domUtils.remove(ci, true)
                    }
                }
                range.moveToBookmark(bko).select();

            },
            queryCommandState:function (command) {
                var tag = command.toLowerCase() == 'insertorderedlist' ? 'ol' : 'ul';
                var path = this.selection.getStartElementPath();
                for(var i= 0,ci;ci = path[i++];){
                    if(ci.nodeName == 'TABLE'){
                        return 0
                    }
                    if(tag == ci.nodeName.toLowerCase()){
                        return 1
                    };
                }
                return 0;

            },
            queryCommandValue:function (command) {
                var tag = command.toLowerCase() == 'insertorderedlist' ? 'ol' : 'ul';
                var path = this.selection.getStartElementPath(),
                    node;
                for(var i= 0,ci;ci = path[i++];){
                    if(ci.nodeName == 'TABLE'){
                        node = null;
                        break;
                    }
                    if(tag == ci.nodeName.toLowerCase()){
                        node = ci;
                        break;
                    };
                }
                return node ? getStyle(node) || domUtils.getComputedStyle(node, 'list-style-type') : null;
            }
        };
};


///import core
///import plugins/serialize.js
///import plugins/undo.js
///commands 鏌ョ湅婧愮爜
///commandsName  Source
///commandsTitle  鏌ョ湅婧愮爜
(function (){
    var sourceEditors = {
        textarea: function (editor, holder){
            var textarea = holder.ownerDocument.createElement('textarea');
            textarea.style.cssText = 'position:absolute;resize:none;width:100%;height:100%;border:0;padding:0;margin:0;overflow-y:auto;';
            // todo: IE涓嬪彧鏈塷nresize灞炴�鍙敤... 寰堢籂缁�
            if (browser.ie && browser.version < 8) {
                textarea.style.width = holder.offsetWidth + 'px';
                textarea.style.height = holder.offsetHeight + 'px';
                holder.onresize = function (){
                    textarea.style.width = holder.offsetWidth + 'px';
                    textarea.style.height = holder.offsetHeight + 'px';
                };
            }
            holder.appendChild(textarea);
            return {
                setContent: function (content){
                    textarea.value = content;
                },
                getContent: function (){
                    return textarea.value;
                },
                select: function (){
                    var range;
                    if (browser.ie) {
                        range = textarea.createTextRange();
                        range.collapse(true);
                        range.select();
                    } else {
                        //todo: chrome涓嬫棤娉曡缃劍鐐�
                        textarea.setSelectionRange(0, 0);
                        textarea.focus();
                    }
                },
                dispose: function (){
                    holder.removeChild(textarea);
                    // todo
                    holder.onresize = null;
                    textarea = null;
                    holder = null;
                }
            };
        },
        codemirror: function (editor, holder){

            var codeEditor = window.CodeMirror(holder, {
                mode: "text/html",
                tabMode: "indent",
                lineNumbers: true,
                lineWrapping:true
            });
            var dom = codeEditor.getWrapperElement();
            dom.style.cssText = 'position:absolute;left:0;top:0;width:100%;height:100%;font-family:consolas,"Courier new",monospace;font-size:13px;';
            codeEditor.getScrollerElement().style.cssText = 'position:absolute;left:0;top:0;width:100%;height:100%;';
            codeEditor.refresh();
            return {
                getCodeMirror:function(){
                    return codeEditor;
                },
                setContent: function (content){
                    codeEditor.setValue(content);
                },
                getContent: function (){
                    return codeEditor.getValue();
                },
                select: function (){
                    codeEditor.focus();
                },
                dispose: function (){
                    holder.removeChild(dom);
                    dom = null;
                    codeEditor = null;
                }
            };
        }
    };

    UE.plugins['source'] = function (){
        var me = this;
        var opt = this.options;
        var sourceMode = false;
        var sourceEditor;

        opt.sourceEditor = browser.ie  ? 'textarea' : (opt.sourceEditor || 'codemirror');

        me.setOpt({
            sourceEditorFirst:false
        });
        function createSourceEditor(holder){
            return sourceEditors[opt.sourceEditor == 'codemirror' && window.CodeMirror ? 'codemirror' : 'textarea'](me, holder);
        }

        var bakCssText;
        //瑙ｅ喅鍦ㄦ簮鐮佹ā寮忎笅getContent涓嶈兘寰楀埌鏈�柊鐨勫唴瀹归棶棰�
        var oldGetContent = me.getContent,
            bakAddress;

        me.commands['source'] = {
            execCommand: function (){

                sourceMode = !sourceMode;
                if (sourceMode) {
                    bakAddress = me.selection.getRange().createAddress(false,true);
                    me.undoManger && me.undoManger.save(true);
                    if(browser.gecko){
                        me.body.contentEditable = false;
                    }

                    bakCssText = me.iframe.style.cssText;
                    me.iframe.style.cssText += 'position:absolute;left:-32768px;top:-32768px;';


                    me.fireEvent('beforegetcontent');
                    var root = UE.htmlparser(me.body.innerHTML);
                    me.filterOutputRule(root);
                    root.traversal(function (node) {
                        if (node.type == 'element') {
                            switch (node.tagName) {
                                case 'td':
                                case 'th':
                                case 'caption':
                                if(node.children && node.children.length == 1){
                                    if(node.firstChild().tagName == 'br' ){
                                        node.removeChild(node.firstChild())
                                    }
                                };
                                break;
                                case 'pre':
                                    node.innerText(node.innerText().replace(/&nbsp;/g,' '))

                            }
                        }
                    });

                    me.fireEvent('aftergetcontent');

                    var content = root.toHtml(true);

                    sourceEditor = createSourceEditor(me.iframe.parentNode);

                    sourceEditor.setContent(content);
                    setTimeout(function (){
                        sourceEditor.select();
                        me.addListener('fullscreenchanged', function(){
                            try{
                                sourceEditor.getCodeMirror().refresh()
                            }catch(e){}
                        });
                    });
                    //閲嶇疆getContent锛屾簮鐮佹ā寮忎笅鍙栧�涔熻兘鏄渶鏂扮殑鏁版嵁
                    me.getContent = function (){
                        return sourceEditor.getContent() || '<p>' + (browser.ie ? '' : '<br/>')+'</p>';
                    };
                } else {
                    me.iframe.style.cssText = bakCssText;
                    var cont = sourceEditor.getContent() || '<p>' + (browser.ie ? '' : '<br/>')+'</p>';
                    //澶勭悊鎺塨lock鑺傜偣鍓嶅悗鐨勭┖鏍�鏈夊彲鑳戒細璇懡涓紝鏆傛椂涓嶈�铏�
                    cont = cont.replace(new RegExp('[\\r\\t\\n ]*<\/?(\\w+)\\s*(?:[^>]*)>','g'), function(a,b){
                        if(b && !dtd.$inlineWithA[b.toLowerCase()]){
                            return a.replace(/(^[\n\r\t ]*)|([\n\r\t ]*$)/g,'');
                        }
                        return a.replace(/(^[\n\r\t]*)|([\n\r\t]*$)/g,'')
                    });
                    me.setContent(cont);
                    sourceEditor.dispose();
                    sourceEditor = null;
                    //杩樺師getContent鏂规硶
                    me.getContent = oldGetContent;
                    var first = me.body.firstChild;
                    //trace:1106 閮藉垹闄ょ┖浜嗭紝涓嬭竟浼氭姤閿欙紝鎵�互琛ュ厖涓�釜p鍗犱綅
                    if(!first){
                        me.body.innerHTML = '<p>'+(browser.ie?'':'<br/>')+'</p>';
                        first = me.body.firstChild;
                    }
                    //瑕佸湪ifm涓烘樉绀烘椂ff鎵嶈兘鍙栧埌selection,鍚﹀垯鎶ラ敊
                    //杩欓噷涓嶈兘姣旇緝浣嶇疆浜�
                    me.undoManger && me.undoManger.save(true);

                    if(browser.gecko){

                        var input = document.createElement('input');
                        input.style.cssText = 'position:absolute;left:0;top:-32768px';

                        document.body.appendChild(input);

                        me.body.contentEditable = false;
                        setTimeout(function(){
                            domUtils.setViewportOffset(input, { left: -32768, top: 0 });
                            input.focus();
                            setTimeout(function(){
                                me.body.contentEditable = true;
                                me.selection.getRange().moveToAddress(bakAddress).select(true);
                                domUtils.remove(input);
                            });

                        });
                    }else{
                        //ie涓嬫湁鍙兘鎶ラ敊锛屾瘮濡傚湪浠ｇ爜椤跺ご鐨勬儏鍐�
                        try{
                            me.selection.getRange().moveToAddress(bakAddress).select(true);
                        }catch(e){}

                    }
                }
                this.fireEvent('sourcemodechanged', sourceMode);
            },
            queryCommandState: function (){
                return sourceMode|0;
            },
            notNeedUndo : 1
        };
        var oldQueryCommandState = me.queryCommandState;

        me.queryCommandState = function (cmdName){
            cmdName = cmdName.toLowerCase();
            if (sourceMode) {
                //婧愮爜妯″紡涓嬪彲浠ュ紑鍚殑鍛戒护
                return cmdName in {
                    'source' : 1,
                    'fullscreen' : 1
                } ? 1 : -1
            }
            return oldQueryCommandState.apply(this, arguments);
        };

        if(opt.sourceEditor == "codemirror"){

            me.addListener("ready",function(){
                utils.loadFile(document,{
                    src : opt.codeMirrorJsUrl || opt.UEDITOR_HOME_URL + "third-party/codemirror/codemirror.js",
                    tag : "script",
                    type : "text/javascript",
                    defer : "defer"
                },function(){
                    if(opt.sourceEditorFirst){
                        setTimeout(function(){
                            me.execCommand("source");
                        },0);
                    }
                });
                utils.loadFile(document,{
                    tag : "link",
                    rel : "stylesheet",
                    type : "text/css",
                    href : opt.codeMirrorCssUrl || opt.UEDITOR_HOME_URL + "third-party/codemirror/codemirror.css"
                });

            });
        }

    };

})();
///import core
///import plugins/undo.js
///commands 璁剧疆鍥炶溅鏍囩p鎴朾r
///commandsName  EnterKey
///commandsTitle  璁剧疆鍥炶溅鏍囩p鎴朾r
/**
 * @description 澶勭悊鍥炶溅
 * @author zhanyi
 */
UE.plugins['enterkey'] = function() {
    var hTag,
        me = this,
        tag = me.options.enterTag;
    me.addListener('keyup', function(type, evt) {

        var keyCode = evt.keyCode || evt.which;
        if (keyCode == 13) {
            var range = me.selection.getRange(),
                start = range.startContainer,
                doSave;

            //淇鍦╤1-h6閲岃竟鍥炶溅鍚庝笉鑳藉祵濂梡鐨勯棶棰�
            if (!browser.ie) {

                if (/h\d/i.test(hTag)) {
                    if (browser.gecko) {
                        var h = domUtils.findParentByTagName(start, [ 'h1', 'h2', 'h3', 'h4', 'h5', 'h6','blockquote','caption','table'], true);
                        if (!h) {
                            me.document.execCommand('formatBlock', false, '<p>');
                            doSave = 1;
                        }
                    } else {
                        //chrome remove div
                        if (start.nodeType == 1) {
                            var tmp = me.document.createTextNode(''),div;
                            range.insertNode(tmp);
                            div = domUtils.findParentByTagName(tmp, 'div', true);
                            if (div) {
                                var p = me.document.createElement('p');
                                while (div.firstChild) {
                                    p.appendChild(div.firstChild);
                                }
                                div.parentNode.insertBefore(p, div);
                                domUtils.remove(div);
                                range.setStartBefore(tmp).setCursor();
                                doSave = 1;
                            }
                            domUtils.remove(tmp);

                        }
                    }

                    if (me.undoManger && doSave) {
                        me.undoManger.save();
                    }
                }
                //娌℃湁绔欎綅绗︼紝浼氬嚭鐜板琛岀殑闂
                browser.opera &&  range.select();
            }else{
                me.fireEvent('saveScene',true,true)
            }
        }
    });

    me.addListener('keydown', function(type, evt) {
        var keyCode = evt.keyCode || evt.which;
        if (keyCode == 13) {//鍥炶溅
            if(me.fireEvent('beforeenterkeydown')){
                domUtils.preventDefault(evt);
                return;
            }
            me.fireEvent('saveScene',true,true);
            hTag = '';


            var range = me.selection.getRange();

            if (!range.collapsed) {
                //璺╰d涓嶈兘鍒�
                var start = range.startContainer,
                    end = range.endContainer,
                    startTd = domUtils.findParentByTagName(start, 'td', true),
                    endTd = domUtils.findParentByTagName(end, 'td', true);
                if (startTd && endTd && startTd !== endTd || !startTd && endTd || startTd && !endTd) {
                    evt.preventDefault ? evt.preventDefault() : ( evt.returnValue = false);
                    return;
                }
            }
            if (tag == 'p') {


                if (!browser.ie) {

                    start = domUtils.findParentByTagName(range.startContainer, ['ol','ul','p', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6','blockquote','caption'], true);

                    //opera涓嬫墽琛宖ormatblock浼氬湪table鐨勫満鏅笅鏈夐棶棰橈紝鍥炶溅鍦╫pera鍘熺敓鏀寔寰堝ソ锛屾墍浠ユ殏鏃跺湪opera鍘绘帀璋冪敤杩欎釜鍘熺敓鐨刢ommand
                    //trace:2431
                    if (!start && !browser.opera) {

                        me.document.execCommand('formatBlock', false, '<p>');

                        if (browser.gecko) {
                            range = me.selection.getRange();
                            start = domUtils.findParentByTagName(range.startContainer, 'p', true);
                            start && domUtils.removeDirtyAttr(start);
                        }


                    } else {
                        hTag = start.tagName;
                        start.tagName.toLowerCase() == 'p' && browser.gecko && domUtils.removeDirtyAttr(start);
                    }

                }

            } else {
                evt.preventDefault ? evt.preventDefault() : ( evt.returnValue = false);

                if (!range.collapsed) {
                    range.deleteContents();
                    start = range.startContainer;
                    if (start.nodeType == 1 && (start = start.childNodes[range.startOffset])) {
                        while (start.nodeType == 1) {
                            if (dtd.$empty[start.tagName]) {
                                range.setStartBefore(start).setCursor();
                                if (me.undoManger) {
                                    me.undoManger.save();
                                }
                                return false;
                            }
                            if (!start.firstChild) {
                                var br = range.document.createElement('br');
                                start.appendChild(br);
                                range.setStart(start, 0).setCursor();
                                if (me.undoManger) {
                                    me.undoManger.save();
                                }
                                return false;
                            }
                            start = start.firstChild;
                        }
                        if (start === range.startContainer.childNodes[range.startOffset]) {
                            br = range.document.createElement('br');
                            range.insertNode(br).setCursor();

                        } else {
                            range.setStart(start, 0).setCursor();
                        }


                    } else {
                        br = range.document.createElement('br');
                        range.insertNode(br).setStartAfter(br).setCursor();
                    }


                } else {
                    br = range.document.createElement('br');
                    range.insertNode(br);
                    var parent = br.parentNode;
                    if (parent.lastChild === br) {
                        br.parentNode.insertBefore(br.cloneNode(true), br);
                        range.setStartBefore(br);
                    } else {
                        range.setStartAfter(br);
                    }
                    range.setCursor();

                }

            }

        }
    });
};

/*
 *   澶勭悊鐗规畩閿殑鍏煎鎬ч棶棰�
 */
UE.plugins['keystrokes'] = function() {
    var me = this;
    var collapsed = true;
    me.addListener('keydown', function(type, evt) {
        var keyCode = evt.keyCode || evt.which,
            rng = me.selection.getRange();

        //澶勭悊鍏ㄩ�鐨勬儏鍐�
        if(!rng.collapsed && !(evt.ctrlKey || evt.shiftKey || evt.altKey || evt.metaKey) && (keyCode >= 65 && keyCode <=90
            || keyCode >= 48 && keyCode <= 57 ||
            keyCode >= 96 && keyCode <= 111 || {
                    13:1,
                    8:1,
                    46:1
                }[keyCode])
            ){

            var tmpNode = rng.startContainer;
            if(domUtils.isFillChar(tmpNode)){
                rng.setStartBefore(tmpNode)
            }
            tmpNode = rng.endContainer;
            if(domUtils.isFillChar(tmpNode)){
                rng.setEndAfter(tmpNode)
            }
            rng.txtToElmBoundary();
            //缁撴潫杈圭晫鍙兘鏀惧埌浜哹r鐨勫墠杈癸紝瑕佹妸br鍖呭惈杩涙潵
            // x[xxx]<br/>
            if(rng.endContainer && rng.endContainer.nodeType == 1){
                tmpNode = rng.endContainer.childNodes[rng.endOffset];
                if(tmpNode && domUtils.isBr(tmpNode)){
                    rng.setEndAfter(tmpNode);
                }
            }
            if(rng.startOffset == 0){
                tmpNode = rng.startContainer;
                if(domUtils.isBoundaryNode(tmpNode,'firstChild') ){
                    tmpNode = rng.endContainer;
                    if(rng.endOffset == (tmpNode.nodeType == 3 ? tmpNode.nodeValue.length : tmpNode.childNodes.length) && domUtils.isBoundaryNode(tmpNode,'lastChild')){
                        me.fireEvent('saveScene');
                        me.body.innerHTML = '<p>'+(browser.ie ? '' : '<br/>')+'</p>';
                        rng.setStart(me.body.firstChild,0).setCursor(false,true);
                        me._selectionChange();
                        return;
                    }
                }
            }
        }

        //澶勭悊backspace
        if (keyCode == 8) {
            rng = me.selection.getRange();
            collapsed = rng.collapsed;
            if(me.fireEvent('delkeydown',evt)){
                return;
            }
            var start,end;
            //閬垮厤鎸変袱娆″垹闄ゆ墠鑳界敓鏁堢殑闂
            if(rng.collapsed && rng.inFillChar()){
                start = rng.startContainer;

                if(domUtils.isFillChar(start)){
                    rng.setStartBefore(start).shrinkBoundary(true).collapse(true);
                    domUtils.remove(start)
                }else{
                    start.nodeValue = start.nodeValue.replace(new RegExp('^' + domUtils.fillChar ),'');
                    rng.startOffset--;
                    rng.collapse(true).select(true)
                }
            }

            //瑙ｅ喅閫変腑control鍏冪礌涓嶈兘鍒犻櫎鐨勯棶棰�
            if (start = rng.getClosedNode()) {
                me.fireEvent('saveScene');
                rng.setStartBefore(start);
                domUtils.remove(start);
                rng.setCursor();
                me.fireEvent('saveScene');
                domUtils.preventDefault(evt);
                return;
            }
            //闃绘鍦╰able涓婄殑鍒犻櫎
            if (!browser.ie) {
                start = domUtils.findParentByTagName(rng.startContainer, 'table', true);
                end = domUtils.findParentByTagName(rng.endContainer, 'table', true);
                if (start && !end || !start && end || start !== end) {
                    evt.preventDefault();
                    return;
                }
            }

        }
        //澶勭悊tab閿殑閫昏緫
        if (keyCode == 9) {
            //涓嶅鐞嗕互涓嬫爣绛�
            var excludeTagNameForTabKey = {
                'ol' : 1,
                'ul' : 1,
                'table':1
            };
            //澶勭悊缁勪欢閲岀殑tab鎸変笅浜嬩欢
            if(me.fireEvent('tabkeydown',evt)){
                domUtils.preventDefault(evt);
                return;
            }
            var range = me.selection.getRange();
            me.fireEvent('saveScene');
            for (var i = 0,txt = '',tabSize = me.options.tabSize|| 4,tabNode =  me.options.tabNode || '&nbsp;'; i < tabSize; i++) {
                txt += tabNode;
            }
            var span = me.document.createElement('span');
            span.innerHTML = txt + domUtils.fillChar;
            if (range.collapsed) {
                range.insertNode(span.cloneNode(true).firstChild).setCursor(true);
            } else {
                //鏅�鐨勬儏鍐�
                start = domUtils.findParent(range.startContainer, filterFn);
                end = domUtils.findParent(range.endContainer, filterFn);
                if (start && end && start === end) {
                    range.deleteContents();
                    range.insertNode(span.cloneNode(true).firstChild).setCursor(true);
                } else {
                    var bookmark = range.createBookmark(),
                        filterFn = function(node) {
                            return domUtils.isBlockElm(node) && !excludeTagNameForTabKey[node.tagName.toLowerCase()]

                        };
                    range.enlarge(true);
                    var bookmark2 = range.createBookmark(),
                        current = domUtils.getNextDomNode(bookmark2.start, false, filterFn);
                    while (current && !(domUtils.getPosition(current, bookmark2.end) & domUtils.POSITION_FOLLOWING)) {
                        current.insertBefore(span.cloneNode(true).firstChild, current.firstChild);
                        current = domUtils.getNextDomNode(current, false, filterFn);
                    }
                    range.moveToBookmark(bookmark2).moveToBookmark(bookmark).select();
                }
            }
            domUtils.preventDefault(evt)
        }
        //trace:1634
        //ff鐨刣el閿湪瀹瑰櫒绌虹殑鏃跺�锛屼篃浼氬垹闄�
        if(browser.gecko && keyCode == 46){
            range = me.selection.getRange();
            if(range.collapsed){
                start = range.startContainer;
                if(domUtils.isEmptyBlock(start)){
                    var parent = start.parentNode;
                    while(domUtils.getChildCount(parent) == 1 && !domUtils.isBody(parent)){
                        start = parent;
                        parent = parent.parentNode;
                    }
                    if(start === parent.lastChild)
                        evt.preventDefault();
                    return;
                }
            }
        }
    });
    me.addListener('keyup', function(type, evt) {
        var keyCode = evt.keyCode || evt.which,
            rng,me = this;
        if(keyCode == 8){
            if(me.fireEvent('delkeyup')){
                return;
            }
            rng = me.selection.getRange();
            if(rng.collapsed){
                var tmpNode,
                    autoClearTagName = ['h1','h2','h3','h4','h5','h6'];
                if(tmpNode = domUtils.findParentByTagName(rng.startContainer,autoClearTagName,true)){
                    if(domUtils.isEmptyBlock(tmpNode)){
                        var pre = tmpNode.previousSibling;
                        if(pre && pre.nodeName != 'TABLE'){
                            domUtils.remove(tmpNode);
                            rng.setStartAtLast(pre).setCursor(false,true);
                            return;
                        }else{
                            var next = tmpNode.nextSibling;
                            if(next && next.nodeName != 'TABLE'){
                                domUtils.remove(tmpNode);
                                rng.setStartAtFirst(next).setCursor(false,true);
                                return;
                            }
                        }
                    }
                }
                //澶勭悊褰撳垹闄ゅ埌body鏃讹紝瑕侀噸鏂扮粰p鏍囩灞曚綅
                if(domUtils.isBody(rng.startContainer)){
                    var tmpNode = domUtils.createElement(me.document,'p',{
                        'innerHTML' : browser.ie ? domUtils.fillChar : '<br/>'
                    });
                    rng.insertNode(tmpNode).setStart(tmpNode,0).setCursor(false,true);
                }
            }


            //chrome涓嬪鏋滃垹闄や簡inline鏍囩锛屾祻瑙堝櫒浼氭湁璁板繂锛屽湪杈撳叆鏂囧瓧杩樻槸浼氬涓婂垰鎵嶅垹闄ょ殑鏍囩锛屾墍浠ヨ繖閲屽啀閫変竴娆″氨涓嶄細浜�
            if( !collapsed && (rng.startContainer.nodeType == 3 || rng.startContainer.nodeType == 1 && domUtils.isEmptyBlock(rng.startContainer))){
                if(browser.ie){
                    var span = rng.document.createElement('span');
                    rng.insertNode(span).setStartBefore(span).collapse(true);
                    rng.select();
                    domUtils.remove(span)
                }else{
                    rng.select()
                }

            }
        }

    })
};
///import core
///commands 淇chrome涓嬪浘鐗囦笉鑳界偣鍑荤殑闂
///commandsName  FixImgClick
///commandsTitle  淇chrome涓嬪浘鐗囦笉鑳界偣鍑荤殑闂
//淇chrome涓嬪浘鐗囦笉鑳界偣鍑荤殑闂
//todo 鍙互鏀瑰ぇ灏�UE.plugins['fiximgclick'] = function() {
    var me = this;
    if ( browser.webkit ) {
        me.addListener( 'click', function( type, e ) {
            if ( e.target.tagName == 'IMG' ) {
                var range = new dom.Range( me.document );
                range.selectNode( e.target ).select();

            }
        } );
    }
};
///import core
///commands 涓洪潪ie娴忚鍣ㄨ嚜鍔ㄦ坊鍔燼鏍囩
///commandsName  AutoLink
///commandsTitle  鑷姩澧炲姞閾炬帴
/**
 * @description 涓洪潪ie娴忚鍣ㄨ嚜鍔ㄦ坊鍔燼鏍囩
 * @author zhanyi
 */
    UE.plugins['autolink'] = function() {
        var cont = 0;
        if (browser.ie) {
            return;
        }
        var me = this;
        me.addListener('reset',function(){
           cont = 0;
        });
        me.addListener('keydown', function(type, evt) {
            var keyCode = evt.keyCode || evt.which;

            if (keyCode == 32 || keyCode == 13) {

                var sel = me.selection.getNative(),
                    range = sel.getRangeAt(0).cloneRange(),
                    offset,
                    charCode;

                var start = range.startContainer;
                while (start.nodeType == 1 && range.startOffset > 0) {
                    start = range.startContainer.childNodes[range.startOffset - 1];
                    if (!start){
                        break;
                    }
                    range.setStart(start, start.nodeType == 1 ? start.childNodes.length : start.nodeValue.length);
                    range.collapse(true);
                    start = range.startContainer;
                }

                do{
                    if (range.startOffset == 0) {
                        start = range.startContainer.previousSibling;

                        while (start && start.nodeType == 1) {
                            start = start.lastChild;
                        }
                        if (!start || domUtils.isFillChar(start)){
                            break;
                        }
                        offset = start.nodeValue.length;
                    } else {
                        start = range.startContainer;
                        offset = range.startOffset;
                    }
                    range.setStart(start, offset - 1);
                    charCode = range.toString().charCodeAt(0);
                } while (charCode != 160 && charCode != 32);

                if (range.toString().replace(new RegExp(domUtils.fillChar, 'g'), '').match(/(?:https?:\/\/|ssh:\/\/|ftp:\/\/|file:\/|www\.)/i)) {
                    while(range.toString().length){
                        if(/^(?:https?:\/\/|ssh:\/\/|ftp:\/\/|file:\/|www\.)/i.test(range.toString())){
                            break;
                        }
                        try{
                            range.setStart(range.startContainer,range.startOffset+1);
                        }catch(e){
                            //trace:2121
                            var start = range.startContainer;
                            while(!(next = start.nextSibling)){
                                if(domUtils.isBody(start)){
                                    return;
                                }
                                start = start.parentNode;

                            }
                            range.setStart(next,0);

                        }

                    }
                    //range鐨勫紑濮嬭竟鐣屽凡缁忓湪a鏍囩閲岀殑涓嶅啀澶勭悊
                    if(domUtils.findParentByTagName(range.startContainer,'a',true)){
                        return;
                    }
                    var a = me.document.createElement('a'),text = me.document.createTextNode(' '),href;

                    me.undoManger && me.undoManger.save();
                    a.appendChild(range.extractContents());
                    a.href = a.innerHTML = a.innerHTML.replace(/<[^>]+>/g,'');
                    href = a.getAttribute("href").replace(new RegExp(domUtils.fillChar,'g'),'');
                    href = /^(?:https?:\/\/)/ig.test(href) ? href : "http://"+ href;
                    a.setAttribute('_src',utils.html(href));
                    a.href = utils.html(href);

                    range.insertNode(a);
                    a.parentNode.insertBefore(text, a.nextSibling);
                    range.setStart(text, 0);
                    range.collapse(true);
                    sel.removeAllRanges();
                    sel.addRange(range);
                    me.undoManger && me.undoManger.save();
                }
            }
        });
    };

///import core
///commands 褰撹緭鍏ュ唴瀹硅秴杩囩紪杈戝櫒楂樺害鏃讹紝缂栬緫鍣ㄨ嚜鍔ㄥ楂�
///commandsName  AutoHeight,autoHeightEnabled
///commandsTitle  鑷姩澧為珮
/*
 * @description 鑷姩浼稿睍
 * @author zhanyi
 */
UE.plugins['autoheight'] = function () {
    var me = this;
    //鎻愪緵寮�叧锛屽氨绠楀姞杞戒篃鍙互鍏抽棴
    me.autoHeightEnabled = me.options.autoHeightEnabled !== false;
    if (!me.autoHeightEnabled) {
        return;
    }

    var bakOverflow,
        lastHeight = 0,
        options = me.options,
        currentHeight,
        timer;

    function adjustHeight() {
        var me = this;
        clearTimeout(timer);
        if(isFullscreen)return;
        if (!me.queryCommandState || me.queryCommandState && me.queryCommandState('source') != 1) {
            timer = setTimeout(function(){
                var node = me.body.lastChild;
                currentHeight = Math.max(domUtils.getXY(node).y + node.offsetHeight + 25 ,Math.max(options.minFrameHeight, options.initialFrameHeight)) ;
                if (currentHeight != lastHeight) {
                    me.setHeight(currentHeight,true);
                    lastHeight = currentHeight;
                }
            },50)
        }
    }
    var isFullscreen;
    me.addListener('fullscreenchanged',function(cmd,f){
        isFullscreen = f
    });
    me.addListener('destroy', function () {
        me.removeListener('contentchange afterinserthtml keyup mouseup',adjustHeight)
    });
    me.enableAutoHeight = function () {
        var me = this;
        if (!me.autoHeightEnabled) {
            return;
        }
        var doc = me.document;
        me.autoHeightEnabled = true;
        bakOverflow = doc.body.style.overflowY;
        doc.body.style.overflowY = 'hidden';
        me.addListener('contentchange afterinserthtml keyup mouseup',adjustHeight);
        //ff涓嶇粰浜嬩欢绠楀緱涓嶅

        setTimeout(function () {
            adjustHeight.call(me);
        }, browser.gecko ? 100 : 0);
        me.fireEvent('autoheightchanged', me.autoHeightEnabled);
    };
    me.disableAutoHeight = function () {

        me.body.style.overflowY = bakOverflow || '';

        me.removeListener('contentchange', adjustHeight);
        me.removeListener('keyup', adjustHeight);
        me.removeListener('mouseup', adjustHeight);
        me.autoHeightEnabled = false;
        me.fireEvent('autoheightchanged', me.autoHeightEnabled);
    };
    me.addListener('ready', function () {
        me.enableAutoHeight();
        //trace:1764
        var timer;
        domUtils.on(browser.ie ? me.body : me.document, browser.webkit ? 'dragover' : 'drop', function () {
            clearTimeout(timer);
            timer = setTimeout(function () {
                //trace:3681
                adjustHeight.call(me);
            }, 100);

        });
    });


};


///import core
///commands 鎮诞宸ュ叿鏍�
///commandsName  AutoFloat,autoFloatEnabled
///commandsTitle  鎮诞宸ュ叿鏍�
/*
 *  modified by chengchao01
 *
 *  娉ㄦ剰锛�寮曞叆姝ゅ姛鑳藉悗锛屽湪IE6涓嬩細灏哹ody鐨勮儗鏅浘鐗囪鐩栨帀锛�
 */
    UE.plugins['autofloat'] = function() {
        var me = this,
                lang = me.getLang();
        me.setOpt({
            topOffset:0
        });
        var optsAutoFloatEnabled = me.options.autoFloatEnabled !== false,
        topOffset = me.options.topOffset;


        //濡傛灉涓嶅浐瀹歵oolbar鐨勪綅缃紝鍒欑洿鎺ラ�鍑�
        if(!optsAutoFloatEnabled){
            return;
        }
        var uiUtils = UE.ui.uiUtils,
       		LteIE6 = browser.ie && browser.version <= 6,
            quirks = browser.quirks;

        function checkHasUI(){
           if(!UE.ui){
              alert(lang.autofloatMsg);
               return 0;
           }
           return 1;
       }
        function fixIE6FixedPos(){
            var docStyle = document.body.style;
           docStyle.backgroundImage = 'url("about:blank")';
           docStyle.backgroundAttachment = 'fixed';
        }
		var	bakCssText,
			placeHolder = document.createElement('div'),
            toolbarBox,orgTop,
            getPosition,
            flag =true;   //ie7妯″紡涓嬮渶瑕佸亸绉�
		function setFloating(){
			var toobarBoxPos = domUtils.getXY(toolbarBox),
				origalFloat = domUtils.getComputedStyle(toolbarBox,'position'),
                origalLeft = domUtils.getComputedStyle(toolbarBox,'left');
			toolbarBox.style.width = toolbarBox.offsetWidth + 'px';
            toolbarBox.style.zIndex = me.options.zIndex * 1 + 1;
			toolbarBox.parentNode.insertBefore(placeHolder, toolbarBox);
			if (LteIE6 || (quirks && browser.ie)) {
                if(toolbarBox.style.position != 'absolute'){
                    toolbarBox.style.position = 'absolute';
                }
                toolbarBox.style.top = (document.body.scrollTop||document.documentElement.scrollTop) - orgTop + topOffset  + 'px';
			} else {
                if (browser.ie7Compat && flag) {
                    flag = false;
                    toolbarBox.style.left =  domUtils.getXY(toolbarBox).x - document.documentElement.getBoundingClientRect().left+2  + 'px';
                }
                if(toolbarBox.style.position != 'fixed'){
                    toolbarBox.style.position = 'fixed';
                    toolbarBox.style.top = topOffset +"px";
                    ((origalFloat == 'absolute' || origalFloat == 'relative') && parseFloat(origalLeft)) && (toolbarBox.style.left = toobarBoxPos.x + 'px');
                }
			}
		}
		function unsetFloating(){
            flag = true;
            if(placeHolder.parentNode){
                placeHolder.parentNode.removeChild(placeHolder);
            }
			toolbarBox.style.cssText = bakCssText;
		}

        function updateFloating(){
            var rect3 = getPosition(me.container);
            var offset=me.options.toolbarTopOffset||0;
            if (rect3.top < 0 && rect3.bottom - toolbarBox.offsetHeight > offset) {
                setFloating();
            }else{
                unsetFloating();
            }
        }
        var defer_updateFloating = utils.defer(function(){
            updateFloating();
        },browser.ie ? 200 : 100,true);

        me.addListener('destroy',function(){
            domUtils.un(window, ['scroll','resize'], updateFloating);
            me.removeListener('keydown', defer_updateFloating);
        });

        me.addListener('ready', function(){
            if(checkHasUI(me)){

                getPosition = uiUtils.getClientRect;
                toolbarBox = me.ui.getDom('toolbarbox');
                orgTop = getPosition(toolbarBox).top;
                bakCssText = toolbarBox.style.cssText;
                placeHolder.style.height = toolbarBox.offsetHeight + 'px';
                if(LteIE6){
                    fixIE6FixedPos();
                }
                domUtils.on(window, ['scroll','resize'], updateFloating);
                me.addListener('keydown', defer_updateFloating);

                me.addListener('beforefullscreenchange', function (t, enabled){
                    if (enabled) {
                        unsetFloating();
                    }
                });
                me.addListener('fullscreenchanged', function (t, enabled){
                    if (!enabled) {
                        updateFloating();
                    }
                });
                me.addListener('sourcemodechanged', function (t, enabled){
                    setTimeout(function (){
                        updateFloating();
                    },0);
                });
                me.addListener("clearDoc",function(){
                    setTimeout(function(){
                        updateFloating();
                    },0);

                })
            }
        });
	};

/**
 * @description 绾枃鏈矘璐�
 * @name puretxtpaste
 * @author zhanyi
 */

UE.plugins['pasteplain'] = function(){
    var me = this;
    me.setOpt({
        'pasteplain':false,
        'filterTxtRules' : function(){
            function transP(node){
                node.tagName = 'p';
                node.setStyle();
            }
            function removeNode(node){
                node.parentNode.removeChild(node,true)
            }
            return {
                //鐩存帴鍒犻櫎鍙婂叾瀛楄妭鐐瑰唴瀹�
                '-' : 'script style object iframe embed input select',
                'p': {$:{}},
                'br':{$:{}},
                div: function (node) {
                    var tmpNode, p = UE.uNode.createElement('p');
                    while (tmpNode = node.firstChild()) {
                        if (tmpNode.type == 'text' || !UE.dom.dtd.$block[tmpNode.tagName]) {
                            p.appendChild(tmpNode);
                        } else {
                            if (p.firstChild()) {
                                node.parentNode.insertBefore(p, node);
                                p = UE.uNode.createElement('p');
                            } else {
                                node.parentNode.insertBefore(tmpNode, node);
                            }
                        }
                    }
                    if (p.firstChild()) {
                        node.parentNode.insertBefore(p, node);
                    }
                    node.parentNode.removeChild(node);
                },
                ol: removeNode,
                ul: removeNode,
                dl:removeNode,
                dt:removeNode,
                dd:removeNode,
                'li':removeNode,
                'caption':transP,
                'th':transP,
                'tr':transP,
                'h1':transP,'h2':transP,'h3':transP,'h4':transP,'h5':transP,'h6':transP,
                'td':function(node){
                        //娌℃湁鍐呭鐨則d鐩存帴鍒犳帀
                        var txt = !!node.innerText();
                        if(txt){
                         node.parentNode.insertAfter(UE.uNode.createText(' &nbsp; &nbsp;'),node);
                    }
                    node.parentNode.removeChild(node,node.innerText())
                }
            }
        }()
    });
    //鏆傛椂杩欓噷鏀寔涓�笅鑰佺増鏈殑灞炴�
    var pasteplain = me.options.pasteplain;

    me.commands['pasteplain'] = {
        queryCommandState: function (){
            return pasteplain ? 1 : 0;
        },
        execCommand: function (){
            pasteplain = !pasteplain|0;
        },
        notNeedUndo : 1
    };
};
///import core
///import plugins/inserthtml.js
///commands 瑙嗛
///commandsName InsertVideo
///commandsTitle  鎻掑叆瑙嗛
///commandsDialog  dialogs\video
UE.plugins['video'] = function (){
    var me =this,
        div;

    /**
     * 鍒涘缓鎻掑叆瑙嗛瀛楃绐�
     * @param url 瑙嗛鍦板潃
     * @param width 瑙嗛瀹藉害
     * @param height 瑙嗛楂樺害
     * @param align 瑙嗛瀵归綈
     * @param toEmbed 鏄惁浠lash浠ｆ浛鏄剧ず
     * @param addParagraph  鏄惁闇�娣诲姞P 鏍囩
     */
    function creatInsertStr(url,width,height,id,align,toEmbed){
        return  !toEmbed ?

                '<img ' + (id ? 'id="' + id+'"' : '') + ' width="'+ width +'" height="' + height + '" _url="'+url+'" class="edui-faked-video"'  +
                ' src="' + me.options.UEDITOR_HOME_URL+'themes/default/images/spacer.gif" style="background:url('+me.options.UEDITOR_HOME_URL+'themes/default/images/videologo.gif) no-repeat center center; border:1px solid gray;'+(align ? 'float:' + align + ';': '')+'" />'

                :
                '<embed type="application/x-shockwave-flash" class="edui-faked-video" pluginspage="http://www.macromedia.com/go/getflashplayer"' +
                ' src="' + url + '" width="' + width  + '" height="' + height  + '"'  + (align ? ' style="float:' + align + '"': '') +
                ' wmode="transparent" play="true" loop="false" menu="false" allowscriptaccess="never" allowfullscreen="true" >';
    }

    function switchImgAndEmbed(root,img2embed){
        utils.each(root.getNodesByTagName(img2embed ? 'img' : 'embed'),function(node){
            if(node.getAttr('class') == 'edui-faked-video'){

                var html = creatInsertStr( img2embed ? node.getAttr('_url') : node.getAttr('src'),node.getAttr('width'),node.getAttr('height'),null,node.getStyle('float') || '',img2embed);
                node.parentNode.replaceChild(UE.uNode.createElement(html),node)
            }
        })
    }

    me.addOutputRule(function(root){
        switchImgAndEmbed(root,true)
    });
    me.addInputRule(function(root){
        switchImgAndEmbed(root)
    });

    me.commands["insertvideo"] = {
        execCommand: function (cmd, videoObjs){
            videoObjs = utils.isArray(videoObjs)?videoObjs:[videoObjs];
            var html = [],id = 'tmpVedio';
            for(var i=0,vi,len = videoObjs.length;i<len;i++){
                 vi = videoObjs[i];
                 html.push(creatInsertStr( vi.url, vi.width || 420,  vi.height || 280, id + i,null,false));
            }
            me.execCommand("inserthtml",html.join(""),true);
            var rng = this.selection.getRange();
            for(var i= 0,len=videoObjs.length;i<len;i++){
                var img = this.document.getElementById('tmpVedio'+i);
                domUtils.removeAttributes(img,'id');
                rng.selectNode(img).select();
                me.execCommand('imagefloat',videoObjs[i].align)
            }
        },
        queryCommandState : function(){
            var img = me.selection.getRange().getClosedNode(),
                flag = img && (img.className == "edui-faked-video");
            return flag ? 1 : 0;
        }
    };
};
/**
 * Created with JetBrains WebStorm.
 * User: taoqili
 * Date: 13-1-18
 * Time: 涓婂崍11:09
 * To change this template use File | Settings | File Templates.
 */
/**
 * UE琛ㄦ牸鎿嶄綔绫�
 * @param table
 * @constructor
 */
(function () {
    var UETable = UE.UETable = function (table) {
        this.table = table;
        this.indexTable = [];
        this.selectedTds = [];
        this.cellsRange = {};
        this.update(table);
    };

    //===浠ヤ笅涓洪潤鎬佸伐鍏锋柟娉�==
    UETable.removeSelectedClass = function (cells) {
        utils.each(cells, function (cell) {
            domUtils.removeClasses(cell, "selectTdClass");
        })
    };
    UETable.addSelectedClass = function (cells) {
        utils.each(cells, function (cell) {
            domUtils.addClass(cell, "selectTdClass");
        })
    };
    UETable.isEmptyBlock = function (node) {
        var reg = new RegExp(domUtils.fillChar, 'g');
        if (node[browser.ie ? 'innerText' : 'textContent'].replace(/^\s*$/, '').replace(reg, '').length > 0) {
            return 0;
        }
        for (var i in dtd.$isNotEmpty) if (dtd.$isNotEmpty.hasOwnProperty(i)) {
            if (node.getElementsByTagName(i).length) {
                return 0;
            }
        }
        return 1;
    };
    UETable.getWidth = function (cell) {
        if (!cell)return 0;
        return parseInt(domUtils.getComputedStyle(cell, "width"), 10);
    };

    /**
     * 鑾峰彇鍗曞厓鏍兼垨鑰呭崟鍏冩牸缁勭殑鈥滃榻愨�鐘舵�銆�濡傛灉褰撳墠鐨勬娴嬪璞℃槸涓�釜鍗曞厓鏍肩粍锛�鍙湁鍦ㄦ弧瓒虫墍鏈夊崟鍏冩牸鐨�姘村钩鍜岀珫鐩�瀵归綈灞炴�閮界浉鍚岀殑
     * 鏉′欢鏃舵墠浼氳繑鍥炲叾鐘舵�鍊硷紝鍚﹀垯灏嗚繑鍥瀗ull锛�濡傛灉褰撳墠鍙娴嬩簡涓�釜鍗曞厓鏍硷紝 鍒欑洿鎺ヨ繑鍥炲綋鍓嶅崟鍏冩牸鐨勫榻愮姸鎬侊紱
     * @param table cell or table cells , 鏀寔鍗曚釜鍗曞厓鏍糳om瀵硅薄 鎴栬� 鍗曞厓鏍糳om瀵硅薄鏁扮粍
     * @return { align: 'left' || 'right' || 'center', valign: 'top' || 'middle' || 'bottom' } 鎴栬� null
     */
    UETable.getTableCellAlignState = function ( cells ) {

        !utils.isArray( cells ) && ( cells = [cells] );

        var result = {},
            status = ['align', 'valign'],
            tempStatus = null,
            isSame = true;//鐘舵�鏄惁鐩稿悓

        utils.each( cells, function( cellNode ){

            utils.each( status, function( currentState ){

                tempStatus = cellNode.getAttribute( currentState );

                if( !result[ currentState ] && tempStatus ) {
                    result[ currentState ] = tempStatus;
                } else if( !result[ currentState ] || ( tempStatus !== result[ currentState ] ) ) {
                    isSame = false;
                    return false;
                }

            } );

            return isSame;

        });

        return isSame ? result : null;

    };

    /**
     * 鏍规嵁褰撳墠閫夊尯鑾峰彇鐩稿叧鐨則able淇℃伅
     * @return {Object}
     */
    UETable.getTableItemsByRange = function (editor) {
        var start = editor.selection.getStart();

        //ff涓嬩細閫変腑bookmark
        if( start && start.id && start.id.indexOf('_baidu_bookmark_start_') === 0 ) {
            start = start.nextSibling;
        }

        //鍦╰able鎴栬�td杈圭紭鏈夊彲鑳藉瓨鍦ㄩ�涓璽r鐨勬儏鍐�
        var cell = start && domUtils.findParentByTagName(start, ["td", "th"], true),
            tr = cell && cell.parentNode,
            caption = start && domUtils.findParentByTagName(start, 'caption', true),
            table = caption ? caption.parentNode : tr && tr.parentNode.parentNode;

        return {
            cell:cell,
            tr:tr,
            table:table,
            caption:caption
        }
    };
    UETable.getUETableBySelected = function (editor) {
        var table = UETable.getTableItemsByRange(editor).table;
        if (table && table.ueTable && table.ueTable.selectedTds.length) {
            return table.ueTable;
        }
        return null;
    };

    UETable.getDefaultValue = function (editor, table) {
        var borderMap = {
                thin:'0px',
                medium:'1px',
                thick:'2px'
            },
            tableBorder, tdPadding, tdBorder, tmpValue;
        if (!table) {
            table = editor.document.createElement('table');
            table.insertRow(0).insertCell(0).innerHTML = 'xxx';
            editor.body.appendChild(table);
            var td = table.getElementsByTagName('td')[0];
            tmpValue = domUtils.getComputedStyle(table, 'border-left-width');
            tableBorder = parseInt(borderMap[tmpValue] || tmpValue, 10);
            tmpValue = domUtils.getComputedStyle(td, 'padding-left');
            tdPadding = parseInt(borderMap[tmpValue] || tmpValue, 10);
            tmpValue = domUtils.getComputedStyle(td, 'border-left-width');
            tdBorder = parseInt(borderMap[tmpValue] || tmpValue, 10);
            domUtils.remove(table);
            return {
                tableBorder:tableBorder,
                tdPadding:tdPadding,
                tdBorder:tdBorder
            };
        } else {
            td = table.getElementsByTagName('td')[0];
            tmpValue = domUtils.getComputedStyle(table, 'border-left-width');
            tableBorder = parseInt(borderMap[tmpValue] || tmpValue, 10);
            tmpValue = domUtils.getComputedStyle(td, 'padding-left');
            tdPadding = parseInt(borderMap[tmpValue] || tmpValue, 10);
            tmpValue = domUtils.getComputedStyle(td, 'border-left-width');
            tdBorder = parseInt(borderMap[tmpValue] || tmpValue, 10);
            return {
                tableBorder:tableBorder,
                tdPadding:tdPadding,
                tdBorder:tdBorder
            };
        }
    };
    /**
     * 鏍规嵁褰撳墠鐐瑰嚮鐨則d鎴栬�table鑾峰彇绱㈠紩瀵硅薄
     * @param tdOrTable
     */
    UETable.getUETable = function (tdOrTable) {
        var tag = tdOrTable.tagName.toLowerCase();
        tdOrTable = (tag == "td" || tag == "th" || tag == 'caption') ? domUtils.findParentByTagName(tdOrTable, "table", true) : tdOrTable;
        if (!tdOrTable.ueTable) {
            tdOrTable.ueTable = new UETable(tdOrTable);
        }
        return tdOrTable.ueTable;
    };

    UETable.cloneCell = function(cell,ignoreMerge,keepPro){
        if (!cell || utils.isString(cell)) {
            return this.table.ownerDocument.createElement(cell || 'td');
        }
        var flag = domUtils.hasClass(cell, "selectTdClass");
        flag && domUtils.removeClasses(cell, "selectTdClass");
        var tmpCell = cell.cloneNode(true);
        if (ignoreMerge) {
            tmpCell.rowSpan = tmpCell.colSpan = 1;
        }
        //鍘绘帀瀹介珮
        !keepPro && domUtils.removeAttributes(tmpCell,'width height');
        !keepPro && domUtils.removeAttributes(tmpCell,'style');

        tmpCell.style.borderLeftStyle = "";
        tmpCell.style.borderTopStyle = "";
        tmpCell.style.borderLeftColor = cell.style.borderRightColor;
        tmpCell.style.borderLeftWidth = cell.style.borderRightWidth;
        tmpCell.style.borderTopColor = cell.style.borderBottomColor;
        tmpCell.style.borderTopWidth = cell.style.borderBottomWidth;
        flag && domUtils.addClass(cell, "selectTdClass");
        return tmpCell;
    }

    UETable.prototype = {
        getMaxRows:function () {
            var rows = this.table.rows, maxLen = 1;
            for (var i = 0, row; row = rows[i]; i++) {
                var currentMax = 1;
                for (var j = 0, cj; cj = row.cells[j++];) {
                    currentMax = Math.max(cj.rowSpan || 1, currentMax);
                }
                maxLen = Math.max(currentMax + i, maxLen);
            }
            return maxLen;
        },
        /**
         * 鑾峰彇褰撳墠琛ㄦ牸鐨勬渶澶у垪鏁�
         */
        getMaxCols:function () {
            var rows = this.table.rows, maxLen = 0, cellRows = {};
            for (var i = 0, row; row = rows[i]; i++) {
                var cellsNum = 0;
                for (var j = 0, cj; cj = row.cells[j++];) {
                    cellsNum += (cj.colSpan || 1);
                    if (cj.rowSpan && cj.rowSpan > 1) {
                        for (var k = 1; k < cj.rowSpan; k++) {
                            if (!cellRows['row_' + (i + k)]) {
                                cellRows['row_' + (i + k)] = (cj.colSpan || 1);
                            } else {
                                cellRows['row_' + (i + k)]++
                            }
                        }

                    }
                }
                cellsNum += cellRows['row_' + i] || 0;
                maxLen = Math.max(cellsNum, maxLen);
            }
            return maxLen;
        },
        getCellColIndex:function (cell) {

        },
        /**
         * 鑾峰彇褰撳墠cell鏃佽竟鐨勫崟鍏冩牸锛�
         * @param cell
         * @param right
         */
        getHSideCell:function (cell, right) {
            try {
                var cellInfo = this.getCellInfo(cell),
                    previewRowIndex, previewColIndex;
                var len = this.selectedTds.length,
                    range = this.cellsRange;
                //棣栬鎴栬�棣栧垪娌℃湁鍓嶇疆鍗曞厓鏍�
                if ((!right && (!len ? !cellInfo.colIndex : !range.beginColIndex)) || (right && (!len ? (cellInfo.colIndex == (this.colsNum - 1)) : (range.endColIndex == this.colsNum - 1)))) return null;

                previewRowIndex = !len ? cellInfo.rowIndex : range.beginRowIndex;
                previewColIndex = !right ? ( !len ? (cellInfo.colIndex < 1 ? 0 : (cellInfo.colIndex - 1)) : range.beginColIndex - 1)
                    : ( !len ? cellInfo.colIndex + 1 : range.endColIndex + 1);
                return this.getCell(this.indexTable[previewRowIndex][previewColIndex].rowIndex, this.indexTable[previewRowIndex][previewColIndex].cellIndex);
            } catch (e) {
                showError(e);
            }
        },
        getTabNextCell:function (cell, preRowIndex) {
            var cellInfo = this.getCellInfo(cell),
                rowIndex = preRowIndex || cellInfo.rowIndex,
                colIndex = cellInfo.colIndex + 1 + (cellInfo.colSpan - 1),
                nextCell;
            try {
                nextCell = this.getCell(this.indexTable[rowIndex][colIndex].rowIndex, this.indexTable[rowIndex][colIndex].cellIndex);
            } catch (e) {
                try {
                    rowIndex = rowIndex * 1 + 1;
                    colIndex = 0;
                    nextCell = this.getCell(this.indexTable[rowIndex][colIndex].rowIndex, this.indexTable[rowIndex][colIndex].cellIndex);
                } catch (e) {
                }
            }
            return nextCell;

        },
        /**
         * 鑾峰彇瑙嗚涓婄殑鍚庣疆鍗曞厓鏍�
         * @param cell
         * @param bottom
         */
        getVSideCell:function (cell, bottom, ignoreRange) {
            try {
                var cellInfo = this.getCellInfo(cell),
                    nextRowIndex, nextColIndex;
                var len = this.selectedTds.length && !ignoreRange,
                    range = this.cellsRange;
                //鏈鎴栬�鏈垪娌℃湁鍚庣疆鍗曞厓鏍�
                if ((!bottom && (cellInfo.rowIndex == 0)) || (bottom && (!len ? (cellInfo.rowIndex + cellInfo.rowSpan > this.rowsNum - 1) : (range.endRowIndex == this.rowsNum - 1)))) return null;

                nextRowIndex = !bottom ? ( !len ? cellInfo.rowIndex - 1 : range.beginRowIndex - 1)
                    : ( !len ? (cellInfo.rowIndex + cellInfo.rowSpan) : range.endRowIndex + 1);
                nextColIndex = !len ? cellInfo.colIndex : range.beginColIndex;
                return this.getCell(this.indexTable[nextRowIndex][nextColIndex].rowIndex, this.indexTable[nextRowIndex][nextColIndex].cellIndex);
            } catch (e) {
                showError(e);
            }
        },
        /**
         * 鑾峰彇鐩稿悓缁撴潫浣嶇疆鐨勫崟鍏冩牸锛寈OrY鎸囦唬浜嗘槸鑾峰彇x杞寸浉鍚岃繕鏄痽杞寸浉鍚�
         */
        getSameEndPosCells:function (cell, xOrY) {
            try {
                var flag = (xOrY.toLowerCase() === "x"),
                    end = domUtils.getXY(cell)[flag ? 'x' : 'y'] + cell["offset" + (flag ? 'Width' : 'Height')],
                    rows = this.table.rows,
                    cells = null, returns = [];
                for (var i = 0; i < this.rowsNum; i++) {
                    cells = rows[i].cells;
                    for (var j = 0, tmpCell; tmpCell = cells[j++];) {
                        var tmpEnd = domUtils.getXY(tmpCell)[flag ? 'x' : 'y'] + tmpCell["offset" + (flag ? 'Width' : 'Height')];
                        //瀵瑰簲琛岀殑td宸茬粡琚笂闈㈣rowSpan浜�
                        if (tmpEnd > end && flag) break;
                        if (cell == tmpCell || end == tmpEnd) {
                            //鍙幏鍙栧崟涓�殑鍗曞厓鏍�
                            //todo 浠呰幏鍙栧崟涓�崟鍏冩牸鍦ㄧ壒瀹氭儏鍐典笅浼氶�鎴恟eturns涓虹┖锛屼粠鑰屽奖鍝嶅悗缁殑鎷栨嫿瀹炵幇锛屼慨姝ｈ繖涓�闇��铏戞�鑳�
                            if (tmpCell[flag ? "colSpan" : "rowSpan"] == 1) {
                                returns.push(tmpCell);
                            }
                            if (flag) break;
                        }
                    }
                }
                return returns;
            } catch (e) {
                showError(e);
            }
        },
        setCellContent:function (cell, content) {
            cell.innerHTML = content || (browser.ie ? domUtils.fillChar : "<br />");
        },
        cloneCell:UETable.cloneCell,
        /**
         * 鑾峰彇璺熷綋鍓嶅崟鍏冩牸鐨勫彸杈圭珫绾夸负宸﹁竟鐨勬墍鏈夋湭鍚堝苟鍗曞厓鏍�
         */
        getSameStartPosXCells:function (cell) {
            try {
                var start = domUtils.getXY(cell).x + cell.offsetWidth,
                    rows = this.table.rows, cells , returns = [];
                for (var i = 0; i < this.rowsNum; i++) {
                    cells = rows[i].cells;
                    for (var j = 0, tmpCell; tmpCell = cells[j++];) {
                        var tmpStart = domUtils.getXY(tmpCell).x;
                        if (tmpStart > start) break;
                        if (tmpStart == start && tmpCell.colSpan == 1) {
                            returns.push(tmpCell);
                            break;
                        }
                    }
                }
                return returns;
            } catch (e) {
                showError(e);
            }
        },
        /**
         * 鏇存柊table瀵瑰簲鐨勭储寮曡〃
         */
        update:function (table) {
            this.table = table || this.table;
            this.selectedTds = [];
            this.cellsRange = {};
            this.indexTable = [];
            var rows = this.table.rows,
                rowsNum = this.getMaxRows(),
                dNum = rowsNum - rows.length,
                colsNum = this.getMaxCols();
            while (dNum--) {
                this.table.insertRow(rows.length);
            }
            this.rowsNum = rowsNum;
            this.colsNum = colsNum;
            for (var i = 0, len = rows.length; i < len; i++) {
                this.indexTable[i] = new Array(colsNum);
            }
            //濉厖绱㈠紩琛�
            for (var rowIndex = 0, row; row = rows[rowIndex]; rowIndex++) {
                for (var cellIndex = 0, cell, cells = row.cells; cell = cells[cellIndex]; cellIndex++) {
                    //淇鏁磋琚玶owSpan鏃跺鑷寸殑琛屾暟璁＄畻閿欒
                    if (cell.rowSpan > rowsNum) {
                        cell.rowSpan = rowsNum;
                    }
                    var colIndex = cellIndex,
                        rowSpan = cell.rowSpan || 1,
                        colSpan = cell.colSpan || 1;
                    //褰撳凡缁忚涓婁竴琛宺owSpan鎴栬�琚墠涓�垪colSpan浜嗭紝鍒欒烦鍒颁笅涓�釜鍗曞厓鏍艰繘琛�
                    while (this.indexTable[rowIndex][colIndex]) colIndex++;
                    for (var j = 0; j < rowSpan; j++) {
                        for (var k = 0; k < colSpan; k++) {
                            this.indexTable[rowIndex + j][colIndex + k] = {
                                rowIndex:rowIndex,
                                cellIndex:cellIndex,
                                colIndex:colIndex,
                                rowSpan:rowSpan,
                                colSpan:colSpan
                            }
                        }
                    }
                }
            }
            //淇娈嬬己td
            for (j = 0; j < rowsNum; j++) {
                for (k = 0; k < colsNum; k++) {
                    if (this.indexTable[j][k] === undefined) {
                        row = rows[j];
                        cell = row.cells[row.cells.length - 1];
                        cell = cell ? cell.cloneNode(true) : this.table.ownerDocument.createElement("td");
                        this.setCellContent(cell);
                        if (cell.colSpan !== 1)cell.colSpan = 1;
                        if (cell.rowSpan !== 1)cell.rowSpan = 1;
                        row.appendChild(cell);
                        this.indexTable[j][k] = {
                            rowIndex:j,
                            cellIndex:cell.cellIndex,
                            colIndex:k,
                            rowSpan:1,
                            colSpan:1
                        }
                    }
                }
            }
            //褰撴閫夊悗鍒犻櫎琛屾垨鑰呭垪鍚庢挙閿�紝闇�閲嶅缓閫夊尯銆�
            var tds = domUtils.getElementsByTagName(this.table, "td"),
                selectTds = [];
            utils.each(tds, function (td) {
                if (domUtils.hasClass(td, "selectTdClass")) {
                    selectTds.push(td);
                }
            });
            if (selectTds.length) {
                var start = selectTds[0],
                    end = selectTds[selectTds.length - 1],
                    startInfo = this.getCellInfo(start),
                    endInfo = this.getCellInfo(end);
                this.selectedTds = selectTds;
                this.cellsRange = {
                    beginRowIndex:startInfo.rowIndex,
                    beginColIndex:startInfo.colIndex,
                    endRowIndex:endInfo.rowIndex + endInfo.rowSpan - 1,
                    endColIndex:endInfo.colIndex + endInfo.colSpan - 1
                };
            }

        },
        /**
         * 鑾峰彇鍗曞厓鏍肩殑绱㈠紩淇℃伅
         */
        getCellInfo:function (cell) {
            if (!cell) return;
            var cellIndex = cell.cellIndex,
                rowIndex = cell.parentNode.rowIndex,
                rowInfo = this.indexTable[rowIndex],
                numCols = this.colsNum;
            for (var colIndex = cellIndex; colIndex < numCols; colIndex++) {
                var cellInfo = rowInfo[colIndex];
                if (cellInfo.rowIndex === rowIndex && cellInfo.cellIndex === cellIndex) {
                    return cellInfo;
                }
            }
        },
        /**
         * 鏍规嵁琛屽垪鍙疯幏鍙栧崟鍏冩牸
         */
        getCell:function (rowIndex, cellIndex) {
            return rowIndex < this.rowsNum && this.table.rows[rowIndex].cells[cellIndex] || null;
        },
        /**
         * 鍒犻櫎鍗曞厓鏍�
         */
        deleteCell:function (cell, rowIndex) {
            rowIndex = typeof rowIndex == 'number' ? rowIndex : cell.parentNode.rowIndex;
            var row = this.table.rows[rowIndex];
            row.deleteCell(cell.cellIndex);
        },
        /**
         * 鏍规嵁濮嬫湯涓や釜鍗曞厓鏍艰幏鍙栬妗嗛�鐨勬墍鏈夊崟鍏冩牸鑼冨洿
         */
        getCellsRange:function (cellA, cellB) {
            function checkRange(beginRowIndex, beginColIndex, endRowIndex, endColIndex) {
                var tmpBeginRowIndex = beginRowIndex,
                    tmpBeginColIndex = beginColIndex,
                    tmpEndRowIndex = endRowIndex,
                    tmpEndColIndex = endColIndex,
                    cellInfo, colIndex, rowIndex;
                // 閫氳繃indexTable妫�煡鏄惁瀛樺湪瓒呭嚭TableRange涓婅竟鐣岀殑鎯呭喌
                if (beginRowIndex > 0) {
                    for (colIndex = beginColIndex; colIndex < endColIndex; colIndex++) {
                        cellInfo = me.indexTable[beginRowIndex][colIndex];
                        rowIndex = cellInfo.rowIndex;
                        if (rowIndex < beginRowIndex) {
                            tmpBeginRowIndex = Math.min(rowIndex, tmpBeginRowIndex);
                        }
                    }
                }
                // 閫氳繃indexTable妫�煡鏄惁瀛樺湪瓒呭嚭TableRange鍙宠竟鐣岀殑鎯呭喌
                if (endColIndex < me.colsNum) {
                    for (rowIndex = beginRowIndex; rowIndex < endRowIndex; rowIndex++) {
                        cellInfo = me.indexTable[rowIndex][endColIndex];
                        colIndex = cellInfo.colIndex + cellInfo.colSpan - 1;
                        if (colIndex > endColIndex) {
                            tmpEndColIndex = Math.max(colIndex, tmpEndColIndex);
                        }
                    }
                }
                // 妫�煡鏄惁鏈夎秴鍑篢ableRange涓嬭竟鐣岀殑鎯呭喌
                if (endRowIndex < me.rowsNum) {
                    for (colIndex = beginColIndex; colIndex < endColIndex; colIndex++) {
                        cellInfo = me.indexTable[endRowIndex][colIndex];
                        rowIndex = cellInfo.rowIndex + cellInfo.rowSpan - 1;
                        if (rowIndex > endRowIndex) {
                            tmpEndRowIndex = Math.max(rowIndex, tmpEndRowIndex);
                        }
                    }
                }
                // 妫�煡鏄惁鏈夎秴鍑篢ableRange宸﹁竟鐣岀殑鎯呭喌
                if (beginColIndex > 0) {
                    for (rowIndex = beginRowIndex; rowIndex < endRowIndex; rowIndex++) {
                        cellInfo = me.indexTable[rowIndex][beginColIndex];
                        colIndex = cellInfo.colIndex;
                        if (colIndex < beginColIndex) {
                            tmpBeginColIndex = Math.min(cellInfo.colIndex, tmpBeginColIndex);
                        }
                    }
                }
                //閫掑綊璋冪敤鐩磋嚦鎵�湁瀹屾垚鎵�湁妗嗛�鍗曞厓鏍肩殑鎵╁睍
                if (tmpBeginRowIndex != beginRowIndex || tmpBeginColIndex != beginColIndex || tmpEndRowIndex != endRowIndex || tmpEndColIndex != endColIndex) {
                    return checkRange(tmpBeginRowIndex, tmpBeginColIndex, tmpEndRowIndex, tmpEndColIndex);
                } else {
                    // 涓嶉渶瑕佹墿灞昑ableRange鐨勬儏鍐�
                    return {
                        beginRowIndex:beginRowIndex,
                        beginColIndex:beginColIndex,
                        endRowIndex:endRowIndex,
                        endColIndex:endColIndex
                    };
                }
            }

            try {
                var me = this,
                    cellAInfo = me.getCellInfo(cellA);
                if (cellA === cellB) {
                    return {
                        beginRowIndex:cellAInfo.rowIndex,
                        beginColIndex:cellAInfo.colIndex,
                        endRowIndex:cellAInfo.rowIndex + cellAInfo.rowSpan - 1,
                        endColIndex:cellAInfo.colIndex + cellAInfo.colSpan - 1
                    };
                }
                var cellBInfo = me.getCellInfo(cellB);
                // 璁＄畻TableRange鐨勫洓涓竟
                var beginRowIndex = Math.min(cellAInfo.rowIndex, cellBInfo.rowIndex),
                    beginColIndex = Math.min(cellAInfo.colIndex, cellBInfo.colIndex),
                    endRowIndex = Math.max(cellAInfo.rowIndex + cellAInfo.rowSpan - 1, cellBInfo.rowIndex + cellBInfo.rowSpan - 1),
                    endColIndex = Math.max(cellAInfo.colIndex + cellAInfo.colSpan - 1, cellBInfo.colIndex + cellBInfo.colSpan - 1);

                return checkRange(beginRowIndex, beginColIndex, endRowIndex, endColIndex);
            } catch (e) {
                //throw e;
            }
        },
        /**
         * 渚濇嵁cellsRange鑾峰彇瀵瑰簲鐨勫崟鍏冩牸闆嗗悎
         */
        getCells:function (range) {
            //姣忔鑾峰彇cells涔嬪墠蹇呴』鍏堟竻闄や笂娆＄殑閫夋嫨锛屽惁鍒欎細瀵瑰悗缁幏鍙栨搷浣滈�鎴愬奖鍝�
            this.clearSelected();
            var beginRowIndex = range.beginRowIndex,
                beginColIndex = range.beginColIndex,
                endRowIndex = range.endRowIndex,
                endColIndex = range.endColIndex,
                cellInfo, rowIndex, colIndex, tdHash = {}, returnTds = [];
            for (var i = beginRowIndex; i <= endRowIndex; i++) {
                for (var j = beginColIndex; j <= endColIndex; j++) {
                    cellInfo = this.indexTable[i][j];
                    rowIndex = cellInfo.rowIndex;
                    colIndex = cellInfo.colIndex;
                    // 濡傛灉Cells閲屽凡缁忓寘鍚簡姝ell鍒欒烦杩�
                    var key = rowIndex + '|' + colIndex;
                    if (tdHash[key]) continue;
                    tdHash[key] = 1;
                    if (rowIndex < i || colIndex < j || rowIndex + cellInfo.rowSpan - 1 > endRowIndex || colIndex + cellInfo.colSpan - 1 > endColIndex) {
                        return null;
                    }
                    returnTds.push(this.getCell(rowIndex, cellInfo.cellIndex));
                }
            }
            return returnTds;
        },
        /**
         * 娓呯悊宸茬粡閫変腑鐨勫崟鍏冩牸
         */
        clearSelected:function () {
            UETable.removeSelectedClass(this.selectedTds);
            this.selectedTds = [];
            this.cellsRange = {};
        },
        /**
         * 鏍规嵁range璁剧疆宸茬粡閫変腑鐨勫崟鍏冩牸
         */
        setSelected:function (range) {
            var cells = this.getCells(range);
            UETable.addSelectedClass(cells);
            this.selectedTds = cells;
            this.cellsRange = range;
        },
        isFullRow:function () {
            var range = this.cellsRange;
            return (range.endColIndex - range.beginColIndex + 1) == this.colsNum;
        },
        isFullCol:function () {
            var range = this.cellsRange,
                table = this.table,
                ths = table.getElementsByTagName("th"),
                rows = range.endRowIndex - range.beginRowIndex + 1;
            return  !ths.length ? rows == this.rowsNum : rows == this.rowsNum || (rows == this.rowsNum - 1);

        },
        /**
         * 鑾峰彇瑙嗚涓婄殑鍓嶇疆鍗曞厓鏍硷紝榛樿鏄乏杈癸紝top浼犲叆鏃�
         * @param cell
         * @param top
         */
        getNextCell:function (cell, bottom, ignoreRange) {
            try {
                var cellInfo = this.getCellInfo(cell),
                    nextRowIndex, nextColIndex;
                var len = this.selectedTds.length && !ignoreRange,
                    range = this.cellsRange;
                //鏈鎴栬�鏈垪娌℃湁鍚庣疆鍗曞厓鏍�
                if ((!bottom && (cellInfo.rowIndex == 0)) || (bottom && (!len ? (cellInfo.rowIndex + cellInfo.rowSpan > this.rowsNum - 1) : (range.endRowIndex == this.rowsNum - 1)))) return null;

                nextRowIndex = !bottom ? ( !len ? cellInfo.rowIndex - 1 : range.beginRowIndex - 1)
                    : ( !len ? (cellInfo.rowIndex + cellInfo.rowSpan) : range.endRowIndex + 1);
                nextColIndex = !len ? cellInfo.colIndex : range.beginColIndex;
                return this.getCell(this.indexTable[nextRowIndex][nextColIndex].rowIndex, this.indexTable[nextRowIndex][nextColIndex].cellIndex);
            } catch (e) {
                showError(e);
            }
        },
        getPreviewCell:function (cell, top) {
            try {
                var cellInfo = this.getCellInfo(cell),
                    previewRowIndex, previewColIndex;
                var len = this.selectedTds.length,
                    range = this.cellsRange;
                //棣栬鎴栬�棣栧垪娌℃湁鍓嶇疆鍗曞厓鏍�
                if ((!top && (!len ? !cellInfo.colIndex : !range.beginColIndex)) || (top && (!len ? (cellInfo.rowIndex > (this.colsNum - 1)) : (range.endColIndex == this.colsNum - 1)))) return null;

                previewRowIndex = !top ? ( !len ? cellInfo.rowIndex : range.beginRowIndex )
                    : ( !len ? (cellInfo.rowIndex < 1 ? 0 : (cellInfo.rowIndex - 1)) : range.beginRowIndex);
                previewColIndex = !top ? ( !len ? (cellInfo.colIndex < 1 ? 0 : (cellInfo.colIndex - 1)) : range.beginColIndex - 1)
                    : ( !len ? cellInfo.colIndex : range.endColIndex + 1);
                return this.getCell(this.indexTable[previewRowIndex][previewColIndex].rowIndex, this.indexTable[previewRowIndex][previewColIndex].cellIndex);
            } catch (e) {
                showError(e);
            }
        },
        /**
         * 绉诲姩鍗曞厓鏍间腑鐨勫唴瀹�
         */
        moveContent:function (cellTo, cellFrom) {
            if (UETable.isEmptyBlock(cellFrom)) return;
            if (UETable.isEmptyBlock(cellTo)) {
                cellTo.innerHTML = cellFrom.innerHTML;
                return;
            }
            var child = cellTo.lastChild;
            if (child.nodeType == 3 || !dtd.$block[child.tagName]) {
                cellTo.appendChild(cellTo.ownerDocument.createElement('br'))
            }
            while (child = cellFrom.firstChild) {
                cellTo.appendChild(child);
            }
        },
        /**
         * 鍚戝彸鍚堝苟鍗曞厓鏍�
         */
        mergeRight:function (cell) {
            var cellInfo = this.getCellInfo(cell),
                rightColIndex = cellInfo.colIndex + cellInfo.colSpan,
                rightCellInfo = this.indexTable[cellInfo.rowIndex][rightColIndex],
                rightCell = this.getCell(rightCellInfo.rowIndex, rightCellInfo.cellIndex);
            //鍚堝苟
            cell.colSpan = cellInfo.colSpan + rightCellInfo.colSpan;
            //琚悎骞剁殑鍗曞厓鏍间笉搴斿瓨鍦ㄥ搴﹀睘鎬�
            cell.removeAttribute("width");
            //绉诲姩鍐呭
            this.moveContent(cell, rightCell);
            //鍒犳帀琚悎骞剁殑Cell
            this.deleteCell(rightCell, rightCellInfo.rowIndex);
            this.update();
        },
        /**
         * 鍚戜笅鍚堝苟鍗曞厓鏍�
         */
        mergeDown:function (cell) {
            var cellInfo = this.getCellInfo(cell),
                downRowIndex = cellInfo.rowIndex + cellInfo.rowSpan,
                downCellInfo = this.indexTable[downRowIndex][cellInfo.colIndex],
                downCell = this.getCell(downCellInfo.rowIndex, downCellInfo.cellIndex);
            cell.rowSpan = cellInfo.rowSpan + downCellInfo.rowSpan;
            cell.removeAttribute("height");
            this.moveContent(cell, downCell);
            this.deleteCell(downCell, downCellInfo.rowIndex);
            this.update();
        },
        /**
         * 鍚堝苟鏁翠釜range涓殑鍐呭
         */
        mergeRange:function () {
            //鐢变簬鍚堝苟鎿嶄綔鍙互鍦ㄤ换鎰忔椂鍒昏繘琛岋紝鎵�互鏃犳硶閫氳繃榧犳爣浣嶇疆绛変俊鎭疄鏃剁敓鎴恟ange锛屽彧鑳介�杩囩紦瀛樺疄渚嬩腑鐨刢ellsRange瀵硅薄鏉ヨ闂�
            var range = this.cellsRange,
                leftTopCell = this.getCell(range.beginRowIndex, this.indexTable[range.beginRowIndex][range.beginColIndex].cellIndex);

            if (leftTopCell.tagName == "TH" && range.endRowIndex !== range.beginRowIndex) {
                var index = this.indexTable,
                    info = this.getCellInfo(leftTopCell);
                leftTopCell = this.getCell(1, index[1][info.colIndex].cellIndex);
                range = this.getCellsRange(leftTopCell, this.getCell(index[this.rowsNum - 1][info.colIndex].rowIndex, index[this.rowsNum - 1][info.colIndex].cellIndex));
            }

            // 鍒犻櫎鍓╀綑鐨凜ells
            var cells = this.getCells(range);
            for(var i= 0,ci;ci=cells[i++];){
                if (ci !== leftTopCell) {
                    this.moveContent(leftTopCell, ci);
                    this.deleteCell(ci);
                }
            }
            // 淇敼宸︿笂瑙扖ell鐨剅owSpan鍜宑olSpan锛屽苟璋冩暣瀹藉害灞炴�璁剧疆
            leftTopCell.rowSpan = range.endRowIndex - range.beginRowIndex + 1;
            leftTopCell.rowSpan > 1 && leftTopCell.removeAttribute("height");
            leftTopCell.colSpan = range.endColIndex - range.beginColIndex + 1;
            leftTopCell.colSpan > 1 && leftTopCell.removeAttribute("width");
            if (leftTopCell.rowSpan == this.rowsNum && leftTopCell.colSpan != 1) {
                leftTopCell.colSpan = 1;
            }

            if (leftTopCell.colSpan == this.colsNum && leftTopCell.rowSpan != 1) {
                var rowIndex = leftTopCell.parentNode.rowIndex;
                //瑙ｅ喅IE涓嬬殑琛ㄦ牸鎿嶄綔闂
                if( this.table.deleteRow ) {
                    for (var i = rowIndex+ 1, curIndex=rowIndex+ 1, len=leftTopCell.rowSpan; i < len; i++) {
                        this.table.deleteRow(curIndex);
                    }
                } else {
                    for (var i = 0, len=leftTopCell.rowSpan - 1; i < len; i++) {
                        var row = this.table.rows[rowIndex + 1];
                        row.parentNode.removeChild(row);
                    }
                }
                leftTopCell.rowSpan = 1;
            }
            this.update();
        },
        /**
         * 鎻掑叆涓�鍗曞厓鏍�
         */
        insertRow:function (rowIndex, sourceCell) {
            var numCols = this.colsNum,
                table = this.table,
                row = table.insertRow(rowIndex), cell,
                width = parseInt((table.offsetWidth - numCols * 20 - numCols - 1) / numCols, 10);
            //棣栬鐩存帴鎻掑叆,鏃犻渶鑰冭檻閮ㄥ垎鍗曞厓鏍艰rowspan鐨勬儏鍐�
            if (rowIndex == 0 || rowIndex == this.rowsNum) {
                for (var colIndex = 0; colIndex < numCols; colIndex++) {
                    cell = this.cloneCell(sourceCell, true);
                    this.setCellContent(cell);
                    cell.getAttribute('vAlign') && cell.setAttribute('vAlign', cell.getAttribute('vAlign'));
                    row.appendChild(cell);
                }
            } else {
                var infoRow = this.indexTable[rowIndex],
                    cellIndex = 0;
                for (colIndex = 0; colIndex < numCols; colIndex++) {
                    var cellInfo = infoRow[colIndex];
                    //濡傛灉瀛樺湪鏌愪釜鍗曞厓鏍肩殑rowspan绌胯繃寰呮彃鍏ヨ鐨勪綅缃紝鍒欎慨鏀硅鍗曞厓鏍肩殑rowspan鍗冲彲锛屾棤闇�彃鍏ュ崟鍏冩牸
                    if (cellInfo.rowIndex < rowIndex) {
                        cell = this.getCell(cellInfo.rowIndex, cellInfo.cellIndex);
                        cell.rowSpan = cellInfo.rowSpan + 1;
                    } else {
                        cell = this.cloneCell(sourceCell, true);
                        this.setCellContent(cell);
                        row.appendChild(cell);
                    }
                }
            }
            //妗嗛�鏃舵彃鍏ヤ笉瑙﹀彂contentchange锛岄渶瑕佹墜鍔ㄦ洿鏂扮储寮曘�
            this.update();
            return row;
        },
        /**
         * 鍒犻櫎涓�鍗曞厓鏍�
         * @param rowIndex
         */
        deleteRow:function (rowIndex) {
            var row = this.table.rows[rowIndex],
                infoRow = this.indexTable[rowIndex],
                colsNum = this.colsNum,
                count = 0;     //澶勭悊璁℃暟
            for (var colIndex = 0; colIndex < colsNum;) {
                var cellInfo = infoRow[colIndex],
                    cell = this.getCell(cellInfo.rowIndex, cellInfo.cellIndex);
                if (cell.rowSpan > 1) {
                    if (cellInfo.rowIndex == rowIndex) {
                        var clone = cell.cloneNode(true);
                        clone.rowSpan = cell.rowSpan - 1;
                        clone.innerHTML = "";
                        cell.rowSpan = 1;
                        var nextRowIndex = rowIndex + 1,
                            nextRow = this.table.rows[nextRowIndex],
                            insertCellIndex,
                            preMerged = this.getPreviewMergedCellsNum(nextRowIndex, colIndex) - count;
                        if (preMerged < colIndex) {
                            insertCellIndex = colIndex - preMerged - 1;
                            //nextRow.insertCell(insertCellIndex);
                            domUtils.insertAfter(nextRow.cells[insertCellIndex], clone);
                        } else {
                            if (nextRow.cells.length) nextRow.insertBefore(clone, nextRow.cells[0])
                        }
                        count += 1;
                        //cell.parentNode.removeChild(cell);
                    }
                }
                colIndex += cell.colSpan || 1;
            }
            var deleteTds = [], cacheMap = {};
            for (colIndex = 0; colIndex < colsNum; colIndex++) {
                var tmpRowIndex = infoRow[colIndex].rowIndex,
                    tmpCellIndex = infoRow[colIndex].cellIndex,
                    key = tmpRowIndex + "_" + tmpCellIndex;
                if (cacheMap[key])continue;
                cacheMap[key] = 1;
                cell = this.getCell(tmpRowIndex, tmpCellIndex);
                deleteTds.push(cell);
            }
            var mergeTds = [];
            utils.each(deleteTds, function (td) {
                if (td.rowSpan == 1) {
                    td.parentNode.removeChild(td);
                } else {
                    mergeTds.push(td);
                }
            });
            utils.each(mergeTds, function (td) {
                td.rowSpan--;
            });
            row.parentNode.removeChild(row);
            //娴忚鍣ㄦ柟娉曟湰韬瓨鍦╞ug,閲囩敤鑷畾涔夋柟娉曞垹闄�
            //this.table.deleteRow(rowIndex);
            this.update();
        },
        insertCol:function (colIndex, sourceCell, defaultValue) {
            var rowsNum = this.rowsNum,
                rowIndex = 0,
                tableRow, cell,
                backWidth = parseInt((this.table.offsetWidth - (this.colsNum + 1) * 20 - (this.colsNum + 1)) / (this.colsNum + 1), 10);

            function replaceTdToTh(rowIndex, cell, tableRow) {
                if (rowIndex == 0) {
                    var th = cell.nextSibling || cell.previousSibling;
                    if (th.tagName == 'TH') {
                        th = cell.ownerDocument.createElement("th");
                        th.appendChild(cell.firstChild);
                        tableRow.insertBefore(th, cell);
                        domUtils.remove(cell)
                    }
                }else{
                    if (cell.tagName == 'TH') {
                        var td = cell.ownerDocument.createElement("td");
                        td.appendChild(cell.firstChild);
                        tableRow.insertBefore(td, cell);
                        domUtils.remove(cell)
                    }
                }
            }

            var preCell;
            if (colIndex == 0 || colIndex == this.colsNum) {
                for (; rowIndex < rowsNum; rowIndex++) {
                    tableRow = this.table.rows[rowIndex];
                    preCell = tableRow.cells[colIndex == 0 ? colIndex : tableRow.cells.length];
                    cell = this.cloneCell(sourceCell, true); //tableRow.insertCell(colIndex == 0 ? colIndex : tableRow.cells.length);
                    this.setCellContent(cell);
                    cell.setAttribute('vAlign', cell.getAttribute('vAlign'));
                    preCell && cell.setAttribute('width', preCell.getAttribute('width'));
                    if (!colIndex) {
                        tableRow.insertBefore(cell, tableRow.cells[0]);
                    } else {
                        domUtils.insertAfter(tableRow.cells[tableRow.cells.length - 1], cell);
                    }
                    replaceTdToTh(rowIndex, cell, tableRow)
                }
            } else {
                for (; rowIndex < rowsNum; rowIndex++) {
                    var cellInfo = this.indexTable[rowIndex][colIndex];
                    if (cellInfo.colIndex < colIndex) {
                        cell = this.getCell(cellInfo.rowIndex, cellInfo.cellIndex);
                        cell.colSpan = cellInfo.colSpan + 1;
                    } else {
                        tableRow = this.table.rows[rowIndex];
                        preCell = tableRow.cells[cellInfo.cellIndex];

                        cell = this.cloneCell(sourceCell, true);//tableRow.insertCell(cellInfo.cellIndex);
                        this.setCellContent(cell);
                        cell.setAttribute('vAlign', cell.getAttribute('vAlign'));
                        preCell && cell.setAttribute('width', preCell.getAttribute('width'));
                        //闃叉IE涓嬫姤閿�
                        preCell ? tableRow.insertBefore(cell, preCell) : tableRow.appendChild(cell);
                    }
                    replaceTdToTh(rowIndex, cell, tableRow);
                }
            }
            //妗嗛�鏃舵彃鍏ヤ笉瑙﹀彂contentchange锛岄渶瑕佹墜鍔ㄦ洿鏂扮储寮�
            this.update();
            this.updateWidth(backWidth, defaultValue || {tdPadding:10, tdBorder:1});
        },
        updateWidth:function (width, defaultValue) {
            var table = this.table,
                tmpWidth = UETable.getWidth(table) - defaultValue.tdPadding * 2 - defaultValue.tdBorder + width;
            if (tmpWidth < table.ownerDocument.body.offsetWidth) {
                table.setAttribute("width", tmpWidth);
                return;
            }
            var tds = domUtils.getElementsByTagName(this.table, "td");
            utils.each(tds, function (td) {
                td.setAttribute("width", width);
            })
        },
        deleteCol:function (colIndex) {
            var indexTable = this.indexTable,
                tableRows = this.table.rows,
                backTableWidth = this.table.getAttribute("width"),
                backTdWidth = 0,
                rowsNum = this.rowsNum,
                cacheMap = {};
            for (var rowIndex = 0; rowIndex < rowsNum;) {
                var infoRow = indexTable[rowIndex],
                    cellInfo = infoRow[colIndex],
                    key = cellInfo.rowIndex + '_' + cellInfo.colIndex;
                // 璺宠繃宸茬粡澶勭悊杩囩殑Cell
                if (cacheMap[key])continue;
                cacheMap[key] = 1;
                var cell = this.getCell(cellInfo.rowIndex, cellInfo.cellIndex);
                if (!backTdWidth) backTdWidth = cell && parseInt(cell.offsetWidth / cell.colSpan, 10).toFixed(0);
                // 濡傛灉Cell鐨刢olSpan澶т簬1, 灏变慨鏀筩olSpan, 鍚﹀垯灏卞垹鎺夎繖涓狢ell
                if (cell.colSpan > 1) {
                    cell.colSpan--;
                } else {
                    tableRows[rowIndex].deleteCell(cellInfo.cellIndex);
                }
                rowIndex += cellInfo.rowSpan || 1;
            }
            this.table.setAttribute("width", backTableWidth - backTdWidth);
            this.update();
        },
        splitToCells:function (cell) {
            var me = this,
                cells = this.splitToRows(cell);
            utils.each(cells, function (cell) {
                me.splitToCols(cell);
            })
        },
        splitToRows:function (cell) {
            var cellInfo = this.getCellInfo(cell),
                rowIndex = cellInfo.rowIndex,
                colIndex = cellInfo.colIndex,
                results = [];
            // 淇敼Cell鐨剅owSpan
            cell.rowSpan = 1;
            results.push(cell);
            // 琛ラ綈鍗曞厓鏍�
            for (var i = rowIndex, endRow = rowIndex + cellInfo.rowSpan; i < endRow; i++) {
                if (i == rowIndex)continue;
                var tableRow = this.table.rows[i],
                    tmpCell = tableRow.insertCell(colIndex - this.getPreviewMergedCellsNum(i, colIndex));
                tmpCell.colSpan = cellInfo.colSpan;
                this.setCellContent(tmpCell);
                tmpCell.setAttribute('vAlign', cell.getAttribute('vAlign'));
                tmpCell.setAttribute('align', cell.getAttribute('align'));
                if (cell.style.cssText) {
                    tmpCell.style.cssText = cell.style.cssText;
                }
                results.push(tmpCell);
            }
            this.update();
            return results;
        },
        getPreviewMergedCellsNum:function (rowIndex, colIndex) {
            var indexRow = this.indexTable[rowIndex],
                num = 0;
            for (var i = 0; i < colIndex;) {
                var colSpan = indexRow[i].colSpan,
                    tmpRowIndex = indexRow[i].rowIndex;
                num += (colSpan - (tmpRowIndex == rowIndex ? 1 : 0));
                i += colSpan;
            }
            return num;
        },
        splitToCols:function (cell) {
            var backWidth = (cell.offsetWidth / cell.colSpan - 22).toFixed(0),

                cellInfo = this.getCellInfo(cell),
                rowIndex = cellInfo.rowIndex,
                colIndex = cellInfo.colIndex,
                results = [];
            // 淇敼Cell鐨剅owSpan
            cell.colSpan = 1;
            cell.setAttribute("width", backWidth);
            results.push(cell);
            // 琛ラ綈鍗曞厓鏍�
            for (var j = colIndex, endCol = colIndex + cellInfo.colSpan; j < endCol; j++) {
                if (j == colIndex)continue;
                var tableRow = this.table.rows[rowIndex],
                    tmpCell = tableRow.insertCell(this.indexTable[rowIndex][j].cellIndex + 1);
                tmpCell.rowSpan = cellInfo.rowSpan;
                this.setCellContent(tmpCell);
                tmpCell.setAttribute('vAlign', cell.getAttribute('vAlign'));
                tmpCell.setAttribute('align', cell.getAttribute('align'));
                tmpCell.setAttribute('width', backWidth);
                if (cell.style.cssText) {
                    tmpCell.style.cssText = cell.style.cssText;
                }
                //澶勭悊th鐨勬儏鍐�
                if (cell.tagName == 'TH') {
                    var th = cell.ownerDocument.createElement('th');
                    th.appendChild(tmpCell.firstChild);
                    th.setAttribute('vAlign', cell.getAttribute('vAlign'));
                    th.rowSpan = tmpCell.rowSpan;
                    tableRow.insertBefore(th, tmpCell);
                    domUtils.remove(tmpCell);
                }
                results.push(tmpCell);
            }
            this.update();
            return results;
        },
        isLastCell:function (cell, rowsNum, colsNum) {
            rowsNum = rowsNum || this.rowsNum;
            colsNum = colsNum || this.colsNum;
            var cellInfo = this.getCellInfo(cell);
            return ((cellInfo.rowIndex + cellInfo.rowSpan) == rowsNum) &&
                ((cellInfo.colIndex + cellInfo.colSpan) == colsNum);
        },
        getLastCell:function (cells) {
            cells = cells || this.table.getElementsByTagName("td");
            var firstInfo = this.getCellInfo(cells[0]);
            var me = this, last = cells[0],
                tr = last.parentNode,
                cellsNum = 0, cols = 0, rows;
            utils.each(cells, function (cell) {
                if (cell.parentNode == tr)cols += cell.colSpan || 1;
                cellsNum += cell.rowSpan * cell.colSpan || 1;
            });
            rows = cellsNum / cols;
            utils.each(cells, function (cell) {
                if (me.isLastCell(cell, rows, cols)) {
                    last = cell;
                    return false;
                }
            });
            return last;

        },
        selectRow:function (rowIndex) {
            var indexRow = this.indexTable[rowIndex],
                start = this.getCell(indexRow[0].rowIndex, indexRow[0].cellIndex),
                end = this.getCell(indexRow[this.colsNum - 1].rowIndex, indexRow[this.colsNum - 1].cellIndex),
                range = this.getCellsRange(start, end);
            this.setSelected(range);
        },
        selectTable:function () {
            var tds = this.table.getElementsByTagName("td"),
                range = this.getCellsRange(tds[0], tds[tds.length - 1]);
            this.setSelected(range);
        },
        sortTable:function (sortByCellIndex, compareFn) {
            var table = this.table,
                rows = table.rows,
                trArray = [],
                flag = rows[0].cells[0].tagName === "TH",
                lastRowIndex = 0;
            if(this.selectedTds.length){
                var range = this.cellsRange,
                    len = range.endRowIndex + 1;
                for (var i = range.beginRowIndex; i < len; i++) {
                    trArray[i] = rows[i];
                }
                trArray.splice(0,range.beginRowIndex);
                lastRowIndex = (range.endRowIndex +1) === this.rowsNum ? 0 : range.endRowIndex +1;
            }else{
                for (var i = 0,len = rows.length; i < len; i++) {
                    trArray[i] = rows[i];
                }
            }
            //th涓嶅弬涓庢帓搴�
            flag && trArray.splice(0, 1);
            trArray = utils.sort(trArray,function (tr1, tr2) {
                var txt = function(node){
                    return node.innerText||node.textContent;
                };
                return compareFn ? (typeof compareFn === "number" ? compareFn : compareFn.call(this, tr1.cells[sortByCellIndex], tr2.cells[sortByCellIndex])) : function () {
                    var value1 = txt(tr1.cells[sortByCellIndex]),
                        value2 = txt(tr2.cells[sortByCellIndex]);
                    return value1.localeCompare(value2);
                }();
            });
            var fragment = table.ownerDocument.createDocumentFragment();
            for (var j = 0, len = trArray.length; j < len; j++) {
                fragment.appendChild(trArray[j]);
            }
            var tbody = table.getElementsByTagName("tbody")[0];
            if(!lastRowIndex){
                tbody.appendChild(fragment);
            }else{
                tbody.insertBefore(fragment,rows[lastRowIndex- range.endRowIndex + range.beginRowIndex - 1])
            }
        },
        setBackground:function (cells, value) {
            if (typeof value === "string") {
                utils.each(cells, function (cell) {
                    cell.style.backgroundColor = value;
                })
            } else if (typeof value === "object") {
                value = utils.extend({
                    repeat:true,
                    colorList:["#ddd", "#fff"]
                }, value);
                var rowIndex = this.getCellInfo(cells[0]).rowIndex,
                    count = 0,
                    colors = value.colorList,
                    getColor = function (list, index, repeat) {
                        return list[index] ? list[index] : repeat ? list[index % list.length] : "";
                    };
                for (var i = 0, cell; cell = cells[i++];) {
                    var cellInfo = this.getCellInfo(cell);
                    cell.style.backgroundColor = getColor(colors, ((rowIndex + count) == cellInfo.rowIndex) ? count : ++count, value.repeat);
                }
            }
        },
        removeBackground:function (cells) {
            utils.each(cells, function (cell) {
                cell.style.backgroundColor = "";
            })
        }


    };
    function showError(e) {
    }
})();
/**
 * Created with JetBrains PhpStorm.
 * User: taoqili
 * Date: 13-2-20
 * Time: 涓嬪崍6:25
 * To change this template use File | Settings | File Templates.
 */
;
(function () {
    var UT = UE.UETable,
        getTableItemsByRange = function (editor) {
            return UT.getTableItemsByRange(editor);
        },
        getUETableBySelected = function (editor) {
            return UT.getUETableBySelected(editor)
        },
        getDefaultValue = function (editor, table) {
            return UT.getDefaultValue(editor, table);
        },
        getUETable = function (tdOrTable) {
            return UT.getUETable(tdOrTable);
        };


    UE.commands['inserttable'] = {
        queryCommandState: function () {
            return getTableItemsByRange(this).table ? -1 : 0;
        },
        execCommand: function (cmd, opt) {
            function createTable(opt, tdWidth) {
                var html = [],
                    rowsNum = opt.numRows,
                    colsNum = opt.numCols;
                for (var r = 0; r < rowsNum; r++) {
                    html.push('<tr>');
                    for (var c = 0; c < colsNum; c++) {
                        html.push('<td width="' + tdWidth + '"  vAlign="' + opt.tdvalign + '" >' + (browser.ie ? domUtils.fillChar : '<br/>') + '</td>')
                    }
                    html.push('</tr>')
                }
                //绂佹鎸囧畾table-width
                return '<table><tbody>' + html.join('') + '</tbody></table>'
            }

            if (!opt) {
                opt = utils.extend({}, {
                    numCols: this.options.defaultCols,
                    numRows: this.options.defaultRows,
                    tdvalign: this.options.tdvalign
                })
            }
            var me = this;
            var range = this.selection.getRange(),
                start = range.startContainer,
                firstParentBlock = domUtils.findParent(start, function (node) {
                    return domUtils.isBlockElm(node);
                }, true) || me.body;

            var defaultValue = getDefaultValue(me),
                tableWidth = firstParentBlock.offsetWidth,
                tdWidth = Math.floor(tableWidth / opt.numCols - defaultValue.tdPadding * 2 - defaultValue.tdBorder);

            //todo鍏朵粬灞炴�
            !opt.tdvalign && (opt.tdvalign = me.options.tdvalign);
            me.execCommand("inserthtml", createTable(opt, tdWidth));
        }
    };

    UE.commands['insertparagraphbeforetable'] = {
        queryCommandState: function () {
            return getTableItemsByRange(this).cell ? 0 : -1;
        },
        execCommand: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                var p = this.document.createElement("p");
                p.innerHTML = browser.ie ? '&nbsp;' : '<br />';
                table.parentNode.insertBefore(p, table);
                this.selection.getRange().setStart(p, 0).setCursor();
            }
        }
    };

    UE.commands['deletetable'] = {
        queryCommandState: function () {
            var rng = this.selection.getRange();
            return domUtils.findParentByTagName(rng.startContainer, 'table', true) ? 0 : -1;
        },
        execCommand: function (cmd, table) {
            var rng = this.selection.getRange();
            table = table || domUtils.findParentByTagName(rng.startContainer, 'table', true);
            if (table) {
                var next = table.nextSibling;
                if (!next) {
                    next = domUtils.createElement(this.document, 'p', {
                        'innerHTML': browser.ie ? domUtils.fillChar : '<br/>'
                    });
                    table.parentNode.insertBefore(next, table);
                }
                domUtils.remove(table);
                rng = this.selection.getRange();
                if (next.nodeType == 3) {
                    rng.setStartBefore(next)
                } else {
                    rng.setStart(next, 0)
                }
                rng.setCursor(false, true)
                this.fireEvent("tablehasdeleted")

            }

        }
    };
    UE.commands['cellalign'] = {
        queryCommandState: function () {
            return getSelectedArr(this).length ? 0 : -1
        },
        execCommand: function (cmd, align) {
            var selectedTds = getSelectedArr(this);
            if (selectedTds.length) {
                for (var i = 0, ci; ci = selectedTds[i++];) {
                    ci.setAttribute('align', align);
                }
            }
        }
    };
    UE.commands['cellvalign'] = {
        queryCommandState: function () {
            return getSelectedArr(this).length ? 0 : -1;
        },
        execCommand: function (cmd, valign) {
            var selectedTds = getSelectedArr(this);
            if (selectedTds.length) {
                for (var i = 0, ci; ci = selectedTds[i++];) {
                    ci.setAttribute('vAlign', valign);
                }
            }
        }
    };
    UE.commands['insertcaption'] = {
        queryCommandState: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                return table.getElementsByTagName('caption').length == 0 ? 1 : -1;
            }
            return -1;
        },
        execCommand: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                var caption = this.document.createElement('caption');
                caption.innerHTML = browser.ie ? domUtils.fillChar : '<br/>';
                table.insertBefore(caption, table.firstChild);
                var range = this.selection.getRange();
                range.setStart(caption, 0).setCursor();
            }

        }
    };
    UE.commands['deletecaption'] = {
        queryCommandState: function () {
            var rng = this.selection.getRange(),
                table = domUtils.findParentByTagName(rng.startContainer, 'table');
            if (table) {
                return table.getElementsByTagName('caption').length == 0 ? -1 : 1;
            }
            return -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                table = domUtils.findParentByTagName(rng.startContainer, 'table');
            if (table) {
                domUtils.remove(table.getElementsByTagName('caption')[0]);
                var range = this.selection.getRange();
                range.setStart(table.rows[0].cells[0], 0).setCursor();
            }

        }
    };
    UE.commands['inserttitle'] = {
        queryCommandState: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                var firstRow = table.rows[0];
                return firstRow.getElementsByTagName('th').length == 0 ? 0 : -1
            }
            return -1;
        },
        execCommand: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                getUETable(table).insertRow(0, 'th');
            }
            var th = table.getElementsByTagName('th')[0];
            this.selection.getRange().setStart(th, 0).setCursor(false, true);
        }
    };
    UE.commands['deletetitle'] = {
        queryCommandState: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                var firstRow = table.rows[0];
                return firstRow.getElementsByTagName('th').length ? 0 : -1
            }
            return -1;
        },
        execCommand: function () {
            var table = getTableItemsByRange(this).table;
            if (table) {
                domUtils.remove(table.rows[0])
            }
            var td = table.getElementsByTagName('td')[0];
            this.selection.getRange().setStart(td, 0).setCursor(false, true);
        }
    };

    UE.commands["mergeright"] = {
        queryCommandState: function (cmd) {
            var tableItems = getTableItemsByRange(this);
            if (!tableItems.cell) return -1;
            var ut = getUETable(tableItems.table);
            if (ut.selectedTds.length) return -1;
            var cellInfo = ut.getCellInfo(tableItems.cell),
                rightColIndex = cellInfo.colIndex + cellInfo.colSpan;
            if (rightColIndex >= ut.colsNum) return -1;
            var rightCellInfo = ut.indexTable[cellInfo.rowIndex][rightColIndex];
            return (rightCellInfo.rowIndex == cellInfo.rowIndex
                && rightCellInfo.rowSpan == cellInfo.rowSpan) ? 0 : -1;
        },
        execCommand: function (cmd) {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell);
            ut.mergeRight(cell);
            rng.moveToBookmark(bk).select();
        }
    };
    UE.commands["mergedown"] = {
        queryCommandState: function (cmd) {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            if (!cell || cell.tagName == "TH") return -1;
            var ut = getUETable(tableItems.table);
            if (ut.selectedTds.length)return -1;
            var cellInfo = ut.getCellInfo(tableItems.cell),
                downRowIndex = cellInfo.rowIndex + cellInfo.rowSpan;
            // 濡傛灉澶勪簬鏈�笅杈瑰垯涓嶈兘f鍚戝彸鍚堝苟
            if (downRowIndex >= ut.rowsNum) return -1;
            var downCellInfo = ut.indexTable[downRowIndex][cellInfo.colIndex];
            // 褰撲笖浠呭綋涓や釜Cell鐨勫紑濮嬪垪鍙峰拰缁撴潫鍒楀彿涓�嚧鏃惰兘杩涜鍚堝苟
            return (downCellInfo.colIndex == cellInfo.colIndex
                && downCellInfo.colSpan == cellInfo.colSpan) && tableItems.cell.tagName !== 'TH' ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell);
            ut.mergeDown(cell);
            rng.moveToBookmark(bk).select();
        }
    };
    UE.commands["mergecells"] = {
        queryCommandState: function () {
            return getUETableBySelected(this) ? 0 : -1;
        },
        execCommand: function () {
            var ut = getUETableBySelected(this);
            if (ut && ut.selectedTds.length) {
                var cell = ut.selectedTds[0];
                ut.mergeRange();
                var rng = this.selection.getRange();
                if (domUtils.isEmptyBlock(cell)) {
                    rng.setStart(cell, 0).collapse(true)
                } else {
                    rng.selectNodeContents(cell)
                }
                rng.select();
            }


        }
    };
    UE.commands["insertrow"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            return cell && cell.tagName == "TD" && getUETable(tableItems.table).rowsNum < this.options.maxRowNum ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell,
                table = tableItems.table,
                ut = getUETable(table),
                cellInfo = ut.getCellInfo(cell);
            //ut.insertRow(!ut.selectedTds.length ? cellInfo.rowIndex:ut.cellsRange.beginRowIndex,'');
            if (!ut.selectedTds.length) {
                ut.insertRow(cellInfo.rowIndex, cell);
            } else {
                var range = ut.cellsRange;
                for (var i = 0, len = range.endRowIndex - range.beginRowIndex + 1; i < len; i++) {
                    ut.insertRow(range.beginRowIndex, cell);
                }
            }
            rng.moveToBookmark(bk).select();
            if (table.getAttribute("interlaced") === "enabled")this.fireEvent("interlacetable", table);
        }
    };
    //鍚庢彃鍏ヨ
    UE.commands["insertrownext"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            return cell && (cell.tagName == "TD") && getUETable(tableItems.table).rowsNum < this.options.maxRowNum ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell,
                table = tableItems.table,
                ut = getUETable(table),
                cellInfo = ut.getCellInfo(cell);
            //ut.insertRow(!ut.selectedTds.length? cellInfo.rowIndex + cellInfo.rowSpan : ut.cellsRange.endRowIndex + 1,'');
            if (!ut.selectedTds.length) {
                ut.insertRow(cellInfo.rowIndex + cellInfo.rowSpan, cell);
            } else {
                var range = ut.cellsRange;
                for (var i = 0, len = range.endRowIndex - range.beginRowIndex + 1; i < len; i++) {
                    ut.insertRow(range.endRowIndex + 1, cell);
                }
            }
            rng.moveToBookmark(bk).select();
            if (table.getAttribute("interlaced") === "enabled")this.fireEvent("interlacetable", table);
        }
    };
    UE.commands["deleterow"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this);
            if (!tableItems.cell) {
                return -1;
            }
        },
        execCommand: function () {
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell),
                cellsRange = ut.cellsRange,
                cellInfo = ut.getCellInfo(cell),
                preCell = ut.getVSideCell(cell),
                nextCell = ut.getVSideCell(cell, true),
                rng = this.selection.getRange();
            if (utils.isEmptyObject(cellsRange)) {
                ut.deleteRow(cellInfo.rowIndex);
            } else {
                for (var i = cellsRange.beginRowIndex; i < cellsRange.endRowIndex + 1; i++) {
                    ut.deleteRow(cellsRange.beginRowIndex);
                }
            }
            var table = ut.table;
            if (!table.getElementsByTagName('td').length) {
                var nextSibling = table.nextSibling;
                domUtils.remove(table);
                if (nextSibling) {
                    rng.setStart(nextSibling, 0).setCursor(false, true);
                }
            } else {
                if (cellInfo.rowSpan == 1 || cellInfo.rowSpan == cellsRange.endRowIndex - cellsRange.beginRowIndex + 1) {
                    if (nextCell || preCell) rng.selectNodeContents(nextCell || preCell).setCursor(false, true);
                } else {
                    var newCell = ut.getCell(cellInfo.rowIndex, ut.indexTable[cellInfo.rowIndex][cellInfo.colIndex].cellIndex);
                    if (newCell) rng.selectNodeContents(newCell).setCursor(false, true);
                }
            }
            if (table.getAttribute("interlaced") === "enabled")this.fireEvent("interlacetable", table);
        }
    };
    UE.commands["insertcol"] = {
        queryCommandState: function (cmd) {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            return cell && (cell.tagName == "TD" || cell.tagName == 'TH') && getUETable(tableItems.table).colsNum < this.options.maxColNum ? 0 : -1;
        },
        execCommand: function (cmd) {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            if (this.queryCommandState(cmd) == -1)return;
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell),
                cellInfo = ut.getCellInfo(cell);

            //ut.insertCol(!ut.selectedTds.length ? cellInfo.colIndex:ut.cellsRange.beginColIndex);
            if (!ut.selectedTds.length) {
                ut.insertCol(cellInfo.colIndex, cell);
            } else {
                var range = ut.cellsRange;
                for (var i = 0, len = range.endColIndex - range.beginColIndex + 1; i < len; i++) {
                    ut.insertCol(range.beginColIndex, cell);
                }
            }
            rng.moveToBookmark(bk).select(true);
        }
    };
    UE.commands["insertcolnext"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            return cell && getUETable(tableItems.table).colsNum < this.options.maxColNum ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell),
                cellInfo = ut.getCellInfo(cell);
            //ut.insertCol(!ut.selectedTds.length ? cellInfo.colIndex + cellInfo.colSpan:ut.cellsRange.endColIndex +1);
            if (!ut.selectedTds.length) {
                ut.insertCol(cellInfo.colIndex + cellInfo.colSpan, cell);
            } else {
                var range = ut.cellsRange;
                for (var i = 0, len = range.endColIndex - range.beginColIndex + 1; i < len; i++) {
                    ut.insertCol(range.endColIndex + 1, cell);
                }
            }
            rng.moveToBookmark(bk).select();
        }
    };

    UE.commands["deletecol"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this);
            if (!tableItems.cell) return -1;
        },
        execCommand: function () {
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell),
                range = ut.cellsRange,
                cellInfo = ut.getCellInfo(cell),
                preCell = ut.getHSideCell(cell),
                nextCell = ut.getHSideCell(cell, true);
            if (utils.isEmptyObject(range)) {
                ut.deleteCol(cellInfo.colIndex);
            } else {
                for (var i = range.beginColIndex; i < range.endColIndex + 1; i++) {
                    ut.deleteCol(range.beginColIndex);
                }
            }
            var table = ut.table,
                rng = this.selection.getRange();

            if (!table.getElementsByTagName('td').length) {
                var nextSibling = table.nextSibling;
                domUtils.remove(table);
                if (nextSibling) {
                    rng.setStart(nextSibling, 0).setCursor(false, true);
                }
            } else {
                if (domUtils.inDoc(cell, this.document)) {
                    rng.setStart(cell, 0).setCursor(false, true);
                } else {
                    if (nextCell && domUtils.inDoc(nextCell, this.document)) {
                        rng.selectNodeContents(nextCell).setCursor(false, true);
                    } else {
                        if (preCell && domUtils.inDoc(preCell, this.document)) {
                            rng.selectNodeContents(preCell).setCursor(true, true);
                        }
                    }
                }
            }
        }
    };
    UE.commands["splittocells"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            if (!cell) return -1;
            var ut = getUETable(tableItems.table);
            if (ut.selectedTds.length > 0) return -1;
            return cell && (cell.colSpan > 1 || cell.rowSpan > 1) ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell);
            ut.splitToCells(cell);
            rng.moveToBookmark(bk).select();
        }
    };
    UE.commands["splittorows"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            if (!cell) return -1;
            var ut = getUETable(tableItems.table);
            if (ut.selectedTds.length > 0) return -1;
            return cell && cell.rowSpan > 1 ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell);
            ut.splitToRows(cell);
            rng.moveToBookmark(bk).select();
        }
    };
    UE.commands["splittocols"] = {
        queryCommandState: function () {
            var tableItems = getTableItemsByRange(this),
                cell = tableItems.cell;
            if (!cell) return -1;
            var ut = getUETable(tableItems.table);
            if (ut.selectedTds.length > 0) return -1;
            return cell && cell.colSpan > 1 ? 0 : -1;
        },
        execCommand: function () {
            var rng = this.selection.getRange(),
                bk = rng.createBookmark(true);
            var cell = getTableItemsByRange(this).cell,
                ut = getUETable(cell);
            ut.splitToCols(cell);
            rng.moveToBookmark(bk).select();

        }
    };

    UE.commands["adaptbytext"] =
        UE.commands["adaptbywindow"] = {
            queryCommandState: function () {
                return getTableItemsByRange(this).table ? 0 : -1
            },
            execCommand: function (cmd) {
                var tableItems = getTableItemsByRange(this),
                    table = tableItems.table;
                if (table) {
                    if (cmd == 'adaptbywindow') {
                        resetTdWidth(table, this);
                    } else {
                        var cells = domUtils.getElementsByTagName(table, "td th");
                        utils.each(cells, function (cell) {
                            cell.removeAttribute("width");
                        });
                        table.removeAttribute("width");
                    }
                }
            }
        };

    //骞冲潎鍒嗛厤鍚勫垪
    UE.commands['averagedistributecol'] = {
        queryCommandState: function () {
            var ut = getUETableBySelected(this);
            if (!ut) return -1;
            return ut.isFullRow() || ut.isFullCol() ? 0 : -1;
        },
        execCommand: function (cmd) {
            var me = this,
                ut = getUETableBySelected(me);

            function getAverageWidth() {
                var tb = ut.table,
                    averageWidth, sumWidth = 0, colsNum = 0,
                    tbAttr = getDefaultValue(me, tb);

                if (ut.isFullRow()) {
                    sumWidth = tb.offsetWidth;
                    colsNum = ut.colsNum;
                } else {
                    var begin = ut.cellsRange.beginColIndex,
                        end = ut.cellsRange.endColIndex,
                        node;
                    for (var i = begin; i <= end;) {
                        node = ut.selectedTds[i];
                        sumWidth += node.offsetWidth;
                        i += node.colSpan;
                        colsNum += 1;
                    }
                }
                averageWidth = Math.ceil(sumWidth / colsNum) - tbAttr.tdBorder * 2 - tbAttr.tdPadding * 2;
                return averageWidth;
            }

            function setAverageWidth(averageWidth) {
                utils.each(domUtils.getElementsByTagName(ut.table, "th"), function (node) {
                    node.setAttribute("width", "");
                });
                var cells = ut.isFullRow() ? domUtils.getElementsByTagName(ut.table, "td") : ut.selectedTds;

                utils.each(cells, function (node) {
                    if (node.colSpan == 1) {
                        node.setAttribute("width", averageWidth);
                    }
                });
            }

            if (ut && ut.selectedTds.length) {
                setAverageWidth(getAverageWidth());
            }
        }
    };
    //骞冲潎鍒嗛厤鍚勮
    UE.commands['averagedistributerow'] = {
        queryCommandState: function () {
            var ut = getUETableBySelected(this);
            if (!ut) return -1;
            if (ut.selectedTds && /th/ig.test(ut.selectedTds[0].tagName)) return -1;
            return ut.isFullRow() || ut.isFullCol() ? 0 : -1;
        },
        execCommand: function (cmd) {
            var me = this,
                ut = getUETableBySelected(me);

            function getAverageHeight() {
                var averageHeight, rowNum, sumHeight = 0,
                    tb = ut.table,
                    tbAttr = getDefaultValue(me, tb),
                    tdpadding = parseInt(domUtils.getComputedStyle(tb.getElementsByTagName('td')[0], "padding-top"));

                if (ut.isFullCol()) {
                    var captionArr = domUtils.getElementsByTagName(tb, "caption"),
                        thArr = domUtils.getElementsByTagName(tb, "th"),
                        captionHeight, thHeight;

                    if (captionArr.length > 0) {
                        captionHeight = captionArr[0].offsetHeight;
                    }
                    if (thArr.length > 0) {
                        thHeight = thArr[0].offsetHeight;
                    }

                    sumHeight = tb.offsetHeight - (captionHeight || 0) - (thHeight || 0);
                    rowNum = thArr.length == 0 ? ut.rowsNum : (ut.rowsNum - 1);
                } else {
                    var begin = ut.cellsRange.beginRowIndex,
                        end = ut.cellsRange.endRowIndex,
                        count = 0,
                        trs = domUtils.getElementsByTagName(tb, "tr");
                    for (var i = begin; i <= end; i++) {
                        sumHeight += trs[i].offsetHeight;
                        count += 1;
                    }
                    rowNum = count;
                }
                //ie8涓嬫槸娣锋潅妯″紡
                if (browser.ie && browser.version < 9) {
                    averageHeight = Math.ceil(sumHeight / rowNum);
                } else {
                    averageHeight = Math.ceil(sumHeight / rowNum) - tbAttr.tdBorder * 2 - tdpadding * 2;
                }
                return averageHeight;
            }

            function setAverageHeight(averageHeight) {
                var cells = ut.isFullCol() ? domUtils.getElementsByTagName(ut.table, "td") : ut.selectedTds;
                utils.each(cells, function (node) {
                    if (node.rowSpan == 1) {
                        node.setAttribute("height", averageHeight);
                    }
                });
            }

            if (ut && ut.selectedTds.length) {
                setAverageHeight(getAverageHeight());
            }
        }
    };

    //鍗曞厓鏍煎榻愭柟寮�
    UE.commands['cellalignment'] = {
        queryCommandState: function () {
            return getTableItemsByRange(this).table ? 0 : -1
        },
        execCommand: function (cmd, data) {
            var me = this,
                ut = getUETableBySelected(me);

            if (!ut) {
                var start = me.selection.getStart(),
                    cell = start && domUtils.findParentByTagName(start, ["td", "th", "caption"], true);
                if (!/caption/ig.test(cell.tagName)) {
                    domUtils.setAttributes(cell, data);
                } else {
                    cell.style.textAlign = data.align;
                    cell.style.verticalAlign = data.vAlign;
                }
                me.selection.getRange().setCursor(true);
            } else {
                utils.each(ut.selectedTds, function (cell) {
                    domUtils.setAttributes(cell, data);
                });
            }
        },
        /**
         * 鏌ヨ褰撳墠鐐瑰嚮鐨勫崟鍏冩牸鐨勫榻愮姸鎬侊紝 濡傛灉褰撳墠宸茬粡閫夋嫨浜嗗涓崟鍏冩牸锛�鍒欎細杩斿洖鎵�湁鍗曞厓鏍肩粡杩囩粺涓�崗璋冭繃鍚庣殑鐘舵�
         * @see UE.UETable.getTableCellAlignState
         */
        queryCommandValue: function (cmd) {

            var activeMenuCell = getTableItemsByRange( this).cell;

            if( !activeMenuCell ) {
                activeMenuCell = getSelectedArr(this)[0];
            }

            if (!activeMenuCell) {

                return null;

            } else {

                //鑾峰彇鍚屾椂閫変腑鐨勫叾浠栧崟鍏冩牸
                var cells = UE.UETable.getUETable(activeMenuCell).selectedTds;

                !cells.length && ( cells = activeMenuCell );

                return UE.UETable.getTableCellAlignState(cells);

            }

        }
    };
    //琛ㄦ牸瀵归綈鏂瑰紡
    UE.commands['tablealignment'] = {
        queryCommandState: function () {
            if (browser.ie && browser.version < 8) {
                return -1;
            }
            return getTableItemsByRange(this).table ? 0 : -1
        },
        execCommand: function (cmd, value) {
            var me = this,
                start = me.selection.getStart(),
                table = start && domUtils.findParentByTagName(start, ["table"], true);

            if (table) {
                table.setAttribute("align",value);
            }
        }
    };

    //琛ㄦ牸灞炴�
    UE.commands['edittable'] = {
        queryCommandState: function () {
            return getTableItemsByRange(this).table ? 0 : -1
        },
        execCommand: function (cmd, color) {
            var rng = this.selection.getRange(),
                table = domUtils.findParentByTagName(rng.startContainer, 'table');
            if (table) {
                var arr = domUtils.getElementsByTagName(table, "td").concat(
                    domUtils.getElementsByTagName(table, "th"),
                    domUtils.getElementsByTagName(table, "caption")
                );
                utils.each(arr, function (node) {
                    node.style.borderColor = color;
                });
            }
        }
    };
    //鍗曞厓鏍煎睘鎬�
    UE.commands['edittd'] = {
        queryCommandState: function () {
            return getTableItemsByRange(this).table ? 0 : -1
        },
        execCommand: function (cmd, bkColor) {
            var me = this,
                ut = getUETableBySelected(me);

            if (!ut) {
                var start = me.selection.getStart(),
                    cell = start && domUtils.findParentByTagName(start, ["td", "th", "caption"], true);
                if (cell) {
                    cell.style.backgroundColor = bkColor;
                }
            } else {
                utils.each(ut.selectedTds, function (cell) {
                    cell.style.backgroundColor = bkColor;
                });
            }
        }
    };
    UE.commands['sorttable'] = {
        queryCommandState: function () {
            var me = this,
                tableItems = getTableItemsByRange(me);
            if (!tableItems.cell) return -1;
            var table = tableItems.table,
                cells = table.getElementsByTagName("td");
            for (var i = 0, cell; cell = cells[i++];) {
                if (cell.rowSpan != 1 || cell.colSpan != 1) return -1;
            }
            return 0;
        },
        execCommand: function (cmd, fn) {
            var me = this,
                range = me.selection.getRange(),
                bk = range.createBookmark(true),
                tableItems = getTableItemsByRange(me),
                cell = tableItems.cell,
                ut = getUETable(tableItems.table),
                cellInfo = ut.getCellInfo(cell);
            ut.sortTable(cellInfo.cellIndex, fn);
            range.moveToBookmark(bk).select();
        }
    };

    UE.commands["enablesort"] = UE.commands["disablesort"] = {
        queryCommandState: function () {
            return getTableItemsByRange(this).table ? 0 : -1;
        },
        execCommand: function (cmd) {
            var table = getTableItemsByRange(this).table;
            table.setAttribute("data-sort", cmd == "enablesort" ? "sortEnabled" : "sortDisabled");
        }
    };
    UE.commands["settablebackground"] = {
        queryCommandState: function () {
            return getSelectedArr(this).length > 1 ? 0 : -1;
        },
        execCommand: function (cmd, value) {
            var table, cells, ut;
            cells = getSelectedArr(this);
            ut = getUETable(cells[0]);
            ut.setBackground(cells, value);
        }
    };

    UE.commands["cleartablebackground"] = {
        queryCommandState: function () {
            var cells = getSelectedArr(this);
            if (!cells.length)return -1;
            for (var i = 0, cell; cell = cells[i++];) {
                if (cell.style.backgroundColor !== "") return 0;
            }
            return -1;
        },
        execCommand: function () {
            var cells = getSelectedArr(this),
                ut = getUETable(cells[0]);
            ut.removeBackground(cells);
        }
    };

    UE.commands["interlacetable"] = UE.commands["uninterlacetable"] = {
        queryCommandState: function (cmd) {
            var table = getTableItemsByRange(this).table;
            if (!table) return -1;
            var interlaced = table.getAttribute("interlaced");
            if (cmd == "interlacetable") {
                //TODO 寰呭畾
                //鏄惁闇�寰呭畾锛屽鏋滆缃紝鍒欏懡浠ゅ彧鑳藉崟娆℃墽琛屾垚鍔燂紝浣嗗弽灏勫叿澶噒oggle鏁堟灉锛涘惁鍒欏彲浠ヨ鐩栧墠娆″懡浠わ紝浣嗗弽灏勫皢涓嶅瓨鍦╰oggle鏁堟灉
                return (interlaced === "enabled") ? -1 : 0;
            } else {
                return (!interlaced || interlaced === "disabled") ? -1 : 0;
            }
        },
        execCommand: function (cmd, classList) {
            var table = getTableItemsByRange(this).table;
            if (cmd == "interlacetable") {
                table.setAttribute("interlaced", "enabled");
                this.fireEvent("interlacetable", table, classList);
            } else {
                table.setAttribute("interlaced", "disabled");
                this.fireEvent("uninterlacetable", table);
            }
        }
    };

    function resetTdWidth(table, editor) {
        var tds = table.getElementsByTagName("td");
        utils.each(tds, function (td) {
            td.removeAttribute("width");
        });
        table.setAttribute('width', getTableWidth(editor, true, getDefaultValue(editor, table)));
        setTimeout(function () {
            utils.each(tds, function (td) {
                (td.colSpan == 1) && td.setAttribute("width", td.offsetWidth + "");
            })
        }, 0);
    }

    function getTableWidth(editor, needIEHack, defaultValue) {
        var body = editor.body;
        return body.offsetWidth - (needIEHack ? parseInt(domUtils.getComputedStyle(body, 'margin-left'), 10) * 2 : 0) - defaultValue.tableBorder * 2 - (editor.options.offsetWidth || 0);
    }

    function getSelectedArr(editor) {
        var cell = getTableItemsByRange(editor).cell;
        if (cell) {
            var ut = getUETable(cell);
            return ut.selectedTds.length ? ut.selectedTds : [cell];
        } else {
            return [];
        }
    }
})();
/**
 * Created with JetBrains PhpStorm.
 * User: taoqili
 * Date: 12-10-12
 * Time: 涓婂崍10:05
 * To change this template use File | Settings | File Templates.
 */
UE.plugins['table'] = function () {
    var me = this,
        tabTimer = null,
        //鎷栧姩璁℃椂鍣�
        tableDragTimer = null,
        //鍙屽嚮璁℃椂鍣�
        tableResizeTimer = null,
        //鍗曞厓鏍兼渶灏忓搴�
        cellMinWidth = 5,
        isInResizeBuffer = false,
        //鍗曞厓鏍艰竟妗嗗ぇ灏�
        cellBorderWidth = 5,
        //榧犳爣鍋忕Щ璺濈
        offsetOfTableCell = 10,
        //璁板綍鍦ㄦ湁闄愭椂闂村唴鐨勭偣鍑荤姸鎬侊紝 鍏辨湁3涓彇鍊硷紝 0, 1, 2銆�0浠ｈ〃鏈垵濮嬪寲锛�1浠ｈ〃鍗曞嚮浜�娆★紝2浠ｈ〃2娆�
        singleClickState = 0,
        userActionStatus = null,
        //鍙屽嚮鍏佽鐨勬椂闂磋寖鍥�
        dblclickTime = 360,
        UT = UE.UETable,
        getUETable = function (tdOrTable) {
            return UT.getUETable(tdOrTable);
        },
        getUETableBySelected = function (editor) {
            return UT.getUETableBySelected(editor);
        },
        getDefaultValue = function (editor, table) {
            return UT.getDefaultValue(editor, table);
        },
        removeSelectedClass = function (cells) {
            return UT.removeSelectedClass(cells);
        };

    function showError(e) {
//        throw e;
    }
    me.ready(function(){
        var me = this;
        var orgGetText = me.selection.getText;
        me.selection.getText = function(){
            var table = getUETableBySelected(me);
            if(table){
                var str = '';
                utils.each(table.selectedTds,function(td){
                    str += td[browser.ie?'innerText':'textContent'];
                })
                return str;
            }else{
                return orgGetText.call(me.selection)
            }

        }
    })

    //澶勭悊鎷栧姩鍙婃閫夌浉鍏虫柟娉�
    var startTd = null, //榧犳爣鎸変笅鏃剁殑閿氱偣td
        currentTd = null, //褰撳墠榧犳爣缁忚繃鏃剁殑td
        onDrag = "", //鎸囩ず褰撳墠鎷栧姩鐘舵�锛屽叾鍊煎彲涓�","h","v" ,鍒嗗埆琛ㄧず鏈嫋鍔ㄧ姸鎬侊紝妯悜鎷栧姩鐘舵�锛岀旱鍚戞嫋鍔ㄧ姸鎬侊紝鐢ㄤ簬榧犳爣绉诲姩杩囩▼涓殑鍒ゆ柇
        onBorder = false, //妫�祴榧犳爣鎸変笅鏃舵槸鍚﹀鍦ㄥ崟鍏冩牸杈圭紭浣嶇疆
        dragButton = null,
        dragOver = false,
        dragLine = null, //妯℃嫙鐨勬嫋鍔ㄧ嚎
        dragTd = null;    //鍙戠敓鎷栧姩鐨勭洰鏍噒d

    var mousedown = false,
    //todo 鍒ゆ柇娣蜂贡妯″紡
        needIEHack = true;

    me.setOpt({
        'maxColNum':20,
        'maxRowNum':100,
        'defaultCols':5,
        'defaultRows':5,
        'tdvalign':'top',
        'cursorpath':me.options.UEDITOR_HOME_URL + "themes/default/images/cursor_",
        'tableDragable':false,
        'classList':["ue-table-interlace-color-single","ue-table-interlace-color-double"]
    });
    me.getUETable = getUETable;
    var commands = {
        'deletetable':1,
        'inserttable':1,
        'cellvalign':1,
        'insertcaption':1,
        'deletecaption':1,
        'inserttitle':1,
        'deletetitle':1,
        "mergeright":1,
        "mergedown":1,
        "mergecells":1,
        "insertrow":1,
        "insertrownext":1,
        "deleterow":1,
        "insertcol":1,
        "insertcolnext":1,
        "deletecol":1,
        "splittocells":1,
        "splittorows":1,
        "splittocols":1,
        "adaptbytext":1,
        "adaptbywindow":1,
        "adaptbycustomer":1,
        "insertparagraph":1,
        "insertparagraphbeforetable":1,
        "averagedistributecol":1,
        "averagedistributerow":1
    };
    me.ready(function () {
        utils.cssRule('table',
            //閫変腑鐨則d涓婄殑鏍峰紡
            '.selectTdClass{background-color:#edf5fa !important}' +
                'table.noBorderTable td,table.noBorderTable th,table.noBorderTable caption{border:1px dashed #ddd !important}' +
                //鎻掑叆鐨勮〃鏍肩殑榛樿鏍峰紡
                'table{margin-bottom:10px;border-collapse:collapse;display:table;}' +
                'td,th{padding: 5px 10px;border: 1px solid #DDD;}' +
                'caption{border:1px dashed #DDD;border-bottom:0;padding:3px;text-align:center;}' +
                'th{border-top:2px solid #BBB;background:#F7F7F7;}' +
                '.ue-table-interlace-color-single{ background-color: #fcfcfc; } .ue-table-interlace-color-double{ background-color: #f7faff; }' +
                'td p{margin:0;padding:0;}', me.document);

        var tableCopyList, isFullCol, isFullRow;
        //娉ㄥ唽del/backspace浜嬩欢
        me.addListener('keydown', function (cmd, evt) {
            var me = this;
            var keyCode = evt.keyCode || evt.which;

            if (keyCode == 8) {

                var ut = getUETableBySelected(me);
                if (ut && ut.selectedTds.length) {

                    if (ut.isFullCol()) {
                        me.execCommand('deletecol')
                    } else if (ut.isFullRow()) {
                        me.execCommand('deleterow')
                    } else {
                        me.fireEvent('delcells');
                    }
                    domUtils.preventDefault(evt);
                }

                var caption = domUtils.findParentByTagName(me.selection.getStart(), 'caption', true),
                    range = me.selection.getRange();
                if (range.collapsed && caption && isEmptyBlock(caption)) {
                    me.fireEvent('saveScene');
                    var table = caption.parentNode;
                    domUtils.remove(caption);
                    if (table) {
                        range.setStart(table.rows[0].cells[0], 0).setCursor(false, true);
                    }
                    me.fireEvent('saveScene');
                }

            }

            if (keyCode == 46) {

                ut = getUETableBySelected(me);
                if (ut) {
                    me.fireEvent('saveScene');
                    for (var i = 0, ci; ci = ut.selectedTds[i++];) {
                        domUtils.fillNode(me.document, ci)
                    }
                    me.fireEvent('saveScene');
                    domUtils.preventDefault(evt);

                }

            }
            if (keyCode == 13) {

                var rng = me.selection.getRange(),
                    caption = domUtils.findParentByTagName(rng.startContainer, 'caption', true);
                if (caption) {
                    var table = domUtils.findParentByTagName(caption, 'table');
                    if (!rng.collapsed) {

                        rng.deleteContents();
                        me.fireEvent('saveScene');
                    } else {
                        if (caption) {
                            rng.setStart(table.rows[0].cells[0], 0).setCursor(false, true);
                        }
                    }
                    domUtils.preventDefault(evt);
                    return;
                }
                if (rng.collapsed) {
                    var table = domUtils.findParentByTagName(rng.startContainer, 'table');
                    if (table) {
                        var cell = table.rows[0].cells[0],
                            start = domUtils.findParentByTagName(me.selection.getStart(), ['td', 'th'], true),
                            preNode = table.previousSibling;
                        if (cell === start && (!preNode || preNode.nodeType == 1 && preNode.tagName == 'TABLE' ) && domUtils.isStartInblock(rng)) {
                            var first = domUtils.findParent(me.selection.getStart(), function(n){return domUtils.isBlockElm(n)}, true);
                            if(first && ( /t(h|d)/i.test(first.tagName) || first ===  start.firstChild )){
                                me.execCommand('insertparagraphbeforetable');
                                domUtils.preventDefault(evt);
                            }

                        }
                    }
                }
            }

            if ((evt.ctrlKey || evt.metaKey) && evt.keyCode == '67') {
                tableCopyList = null;
                var ut = getUETableBySelected(me);
                if (ut) {
                    var tds = ut.selectedTds;
                    isFullCol = ut.isFullCol();
                    isFullRow = ut.isFullRow();
                    tableCopyList = [
                        [ut.cloneCell(tds[0],null,true)]
                    ];
                    for (var i = 1, ci; ci = tds[i]; i++) {
                        if (ci.parentNode !== tds[i - 1].parentNode) {
                            tableCopyList.push([ut.cloneCell(ci,null,true)]);
                        } else {
                            tableCopyList[tableCopyList.length - 1].push(ut.cloneCell(ci,null,true));
                        }

                    }
                }
            }
        });
        me.addListener("tablehasdeleted",function(){
            toggleDraggableState(this, false, "", null);
            if (dragButton)domUtils.remove(dragButton);
        });

        me.addListener('beforepaste', function (cmd, html) {
            var me = this;
            var rng = me.selection.getRange();
            if (domUtils.findParentByTagName(rng.startContainer, 'caption', true)) {
                var div = me.document.createElement("div");
                div.innerHTML = html.html;
                html.html = div[browser.ie ? 'innerText' : 'textContent'];
                return;
            }
            var table = getUETableBySelected(me);
            if (tableCopyList) {
                me.fireEvent('saveScene');
                var rng = me.selection.getRange();
                var td = domUtils.findParentByTagName(rng.startContainer, ['td', 'th'], true), tmpNode, preNode;
                if (td) {
                    var ut = getUETable(td);
                    if (isFullRow) {
                        var rowIndex = ut.getCellInfo(td).rowIndex;
                        if (td.tagName == 'TH') {
                            rowIndex++;
                        }
                        for (var i = 0, ci; ci = tableCopyList[i++];) {
                            var tr = ut.insertRow(rowIndex++, "td");
                            for (var j = 0, cj; cj = ci[j]; j++) {
                                var cell = tr.cells[j];
                                if (!cell) {
                                    cell = tr.insertCell(j)
                                }
                                cell.innerHTML = cj.innerHTML;
                                cj.getAttribute('width') && cell.setAttribute('width', cj.getAttribute('width'));
                                cj.getAttribute('vAlign') && cell.setAttribute('vAlign', cj.getAttribute('vAlign'));
                                cj.getAttribute('align') && cell.setAttribute('align', cj.getAttribute('align'));
                                cj.style.cssText && (cell.style.cssText = cj.style.cssText)
                            }
                            for (var j = 0, cj; cj = tr.cells[j]; j++) {
                                if (!ci[j])
                                    break;
                                cj.innerHTML = ci[j].innerHTML;
                                ci[j].getAttribute('width') && cj.setAttribute('width', ci[j].getAttribute('width'));
                                ci[j].getAttribute('vAlign') && cj.setAttribute('vAlign', ci[j].getAttribute('vAlign'));
                                ci[j].getAttribute('align') && cj.setAttribute('align', ci[j].getAttribute('align'));
                                ci[j].style.cssText && (cj.style.cssText = ci[j].style.cssText)
                            }
                        }
                    } else {
                        if (isFullCol) {
                            cellInfo = ut.getCellInfo(td);
                            var maxColNum = 0;
                            for (var j = 0, ci = tableCopyList[0], cj; cj = ci[j++];) {
                                maxColNum += cj.colSpan || 1;
                            }
                            me.__hasEnterExecCommand = true;
                            for (i = 0; i < maxColNum; i++) {
                                me.execCommand('insertcol');
                            }
                            me.__hasEnterExecCommand = false;
                            td = ut.table.rows[0].cells[cellInfo.cellIndex];
                            if (td.tagName == 'TH') {
                                td = ut.table.rows[1].cells[cellInfo.cellIndex];
                            }
                        }
                        for (var i = 0, ci; ci = tableCopyList[i++];) {
                            tmpNode = td;
                            for (var j = 0, cj; cj = ci[j++];) {
                                if (td) {
                                    td.innerHTML = cj.innerHTML;
                                    //todo 瀹氬埗澶勭悊
                                    cj.getAttribute('width') && td.setAttribute('width', cj.getAttribute('width'));
                                    cj.getAttribute('vAlign') && td.setAttribute('vAlign', cj.getAttribute('vAlign'));
                                    cj.getAttribute('align') && td.setAttribute('align', cj.getAttribute('align'));
                                    cj.style.cssText && (td.style.cssText = cj.style.cssText);
                                    preNode = td;
                                    td = td.nextSibling;
                                } else {
                                    var cloneTd = cj.cloneNode(true);
                                    domUtils.removeAttributes(cloneTd, ['class', 'rowSpan', 'colSpan']);

                                    preNode.parentNode.appendChild(cloneTd)
                                }
                            }
                            td = ut.getNextCell(tmpNode, true, true);
                            if (!tableCopyList[i])
                                break;
                            if (!td) {
                                var cellInfo = ut.getCellInfo(tmpNode);
                                ut.table.insertRow(ut.table.rows.length);
                                ut.update();
                                td = ut.getVSideCell(tmpNode, true);
                            }
                        }
                    }
                    ut.update();
                } else {
                    table = me.document.createElement('table');
                    for (var i = 0, ci; ci = tableCopyList[i++];) {
                        var tr = table.insertRow(table.rows.length);
                        for (var j = 0, cj; cj = ci[j++];) {
                            cloneTd = UT.cloneCell(cj,null,true);
                            domUtils.removeAttributes(cloneTd, ['class']);
                            tr.appendChild(cloneTd)
                        }
                        if (j == 2 && cloneTd.rowSpan > 1) {
                            cloneTd.rowSpan = 1;
                        }
                    }

                    var defaultValue = getDefaultValue(me),
                        width = me.body.offsetWidth -
                            (needIEHack ? parseInt(domUtils.getComputedStyle(me.body, 'margin-left'), 10) * 2 : 0) - defaultValue.tableBorder * 2 - (me.options.offsetWidth || 0);
                    me.execCommand('insertHTML', '<table  ' +
                        ( isFullCol && isFullRow ? 'width="' + width + '"' : '') +
                        '>' + table.innerHTML.replace(/>\s*</g, '><').replace(/\bth\b/gi, "td") + '</table>')
                }
                me.fireEvent('contentchange');
                me.fireEvent('saveScene');
                html.html = '';
                return true;
            } else {
                var div = me.document.createElement("div"), tables;
                div.innerHTML = html.html;
                tables = div.getElementsByTagName("table");
                if (domUtils.findParentByTagName(me.selection.getStart(), 'table')) {
                    utils.each(tables, function (t) {
                        domUtils.remove(t)
                    });
                    if (domUtils.findParentByTagName(me.selection.getStart(), 'caption', true)) {
                        div.innerHTML = div[browser.ie ? 'innerText' : 'textContent'];
                    }
                } else {
                    utils.each(tables, function (table) {
                        removeStyleSize(table, true);
                        domUtils.removeAttributes(table, ['style', 'border']);
                        utils.each(domUtils.getElementsByTagName(table, "td"), function (td) {
                            if (isEmptyBlock(td)) {
                                domUtils.fillNode(me.document, td);
                            }
                            removeStyleSize(td, true);
//                            domUtils.removeAttributes(td, ['style'])
                        });
                    });
                }
                html.html = div.innerHTML;
            }
        });

        me.addListener('afterpaste', function () {
            utils.each(domUtils.getElementsByTagName(me.body, "table"), function (table) {
                if (table.offsetWidth > me.body.offsetWidth) {
                    var defaultValue = getDefaultValue(me, table);
                    table.style.width = me.body.offsetWidth - (needIEHack ? parseInt(domUtils.getComputedStyle(me.body, 'margin-left'), 10) * 2 : 0) - defaultValue.tableBorder * 2 - (me.options.offsetWidth || 0) + 'px'
                }
            })
        });
        me.addListener('blur', function () {
            tableCopyList = null;
        });
        var timer;
        me.addListener('keydown', function () {
            clearTimeout(timer);
            timer = setTimeout(function () {
                var rng = me.selection.getRange(),
                    cell = domUtils.findParentByTagName(rng.startContainer, ['th', 'td'], true);
                if (cell) {
                    var table = cell.parentNode.parentNode.parentNode;
                    if (table.offsetWidth > table.getAttribute("width")) {
                        cell.style.wordBreak = "break-all";
                    }
                }

            }, 100);
        });
        me.addListener("selectionchange", function () {
            toggleDraggableState(me, false, "", null);
        });


        //鍐呭鍙樺寲鏃惰Е鍙戠储寮曟洿鏂�
        //todo 鍙惁鑰冭檻鏍囪妫�祴锛屽鏋滀笉娑夊強琛ㄦ牸鐨勫彉鍖栧氨涓嶈繘琛岀储寮曢噸寤哄拰鏇存柊
        me.addListener("contentchange", function () {
            var me = this;
            //灏藉彲鑳芥帓闄や竴浜涗笉闇�鏇存柊鐨勭姸鍐�
            hideDragLine(me);
            if (getUETableBySelected(me))return;
            var rng = me.selection.getRange();
            var start = rng.startContainer;
            start = domUtils.findParentByTagName(start, ['td', 'th'], true);
            utils.each(domUtils.getElementsByTagName(me.document, 'table'), function (table) {
                if (me.fireEvent("excludetable", table) === true) return;
                table.ueTable = new UT(table);
                utils.each(domUtils.getElementsByTagName(me.document, 'td'), function (td) {

                    if (domUtils.isEmptyBlock(td) && td !== start) {
                        domUtils.fillNode(me.document, td);
                        if (browser.ie && browser.version == 6) {
                            td.innerHTML = '&nbsp;'
                        }
                    }
                });
                utils.each(domUtils.getElementsByTagName(me.document, 'th'), function (th) {
                    if (domUtils.isEmptyBlock(th) && th !== start) {
                        domUtils.fillNode(me.document, th);
                        if (browser.ie && browser.version == 6) {
                            th.innerHTML = '&nbsp;'
                        }
                    }
                });
                table.onmouseover = function () {
                    me.fireEvent('tablemouseover', table);
                };
                table.onmousemove = function () {
                    me.fireEvent('tablemousemove', table);
                    me.options.tableDragable && toggleDragButton(true, this, me);
                };
                table.onmouseout = function () {
                    me.fireEvent('tablemouseout', table);
                    toggleDraggableState(me, false, "", null);
                    hideDragLine(me);
                };
                table.onclick = function (evt) {
                    evt = me.window.event || evt;
                    var target = getParentTdOrTh(evt.target || evt.srcElement);
                    if (!target)return;
                    var ut = getUETable(target),
                        table = ut.table,
                        cellInfo = ut.getCellInfo(target),
                        cellsRange,
                        rng = me.selection.getRange();
//                    if ("topLeft" == inPosition(table, mouseCoords(evt))) {
//                        cellsRange = ut.getCellsRange(ut.table.rows[0].cells[0], ut.getLastCell());
//                        ut.setSelected(cellsRange);
//                        return;
//                    }
//                    if ("bottomRight" == inPosition(table, mouseCoords(evt))) {
//
//                        return;
//                    }
                    if (inTableSide(table, target, evt, true)) {
                        var endTdCol = ut.getCell(ut.indexTable[ut.rowsNum - 1][cellInfo.colIndex].rowIndex, ut.indexTable[ut.rowsNum - 1][cellInfo.colIndex].cellIndex);
                        if (evt.shiftKey && ut.selectedTds.length) {
                            if (ut.selectedTds[0] !== endTdCol) {
                                cellsRange = ut.getCellsRange(ut.selectedTds[0], endTdCol);
                                ut.setSelected(cellsRange);
                            } else {
                                rng && rng.selectNodeContents(endTdCol).select();
                            }
                        } else {
                            if (target !== endTdCol) {
                                cellsRange = ut.getCellsRange(target, endTdCol);
                                ut.setSelected(cellsRange);
                            } else {
                                rng && rng.selectNodeContents(endTdCol).select();
                            }
                        }
                        return;
                    }
                    if (inTableSide(table, target, evt)) {
                        var endTdRow = ut.getCell(ut.indexTable[cellInfo.rowIndex][ut.colsNum - 1].rowIndex, ut.indexTable[cellInfo.rowIndex][ut.colsNum - 1].cellIndex);
                        if (evt.shiftKey && ut.selectedTds.length) {
                            if (ut.selectedTds[0] !== endTdRow) {
                                cellsRange = ut.getCellsRange(ut.selectedTds[0], endTdRow);
                                ut.setSelected(cellsRange);
                            } else {
                                rng && rng.selectNodeContents(endTdRow).select();
                            }
                        } else {
                            if (target !== endTdRow) {
                                cellsRange = ut.getCellsRange(target, endTdRow);
                                ut.setSelected(cellsRange);
                            } else {
                                rng && rng.selectNodeContents(endTdRow).select();
                            }
                        }
                    }
                };
            });

            switchBorderColor(me, true);
        });

        domUtils.on(me.document, "mousemove", mouseMoveEvent);

        domUtils.on(me.document, "mouseout", function (evt) {
            var target = evt.target || evt.srcElement;
            if (target.tagName == "TABLE") {
                toggleDraggableState(me, false, "", null);
            }
        });
        /**
         * 琛ㄦ牸闅旇鍙樿壊
         */
        me.addListener("interlacetable",function(type,table,classList){
            if(!table) return;
            var me = this,
                rows = table.rows,
                len = rows.length,
                getClass = function(list,index,repeat){
                    return list[index] ? list[index] : repeat ? list[index % list.length]: "";
                };
            for(var i = 0;i<len;i++){
                rows[i].className = getClass( classList|| me.options.classList,i,true);
            }
        });
        me.addListener("uninterlacetable",function(type,table){
            if(!table) return;
            var me = this,
                rows = table.rows,
                classList = me.options.classList,
                len = rows.length;
            for(var i = 0;i<len;i++){
                domUtils.removeClasses( rows[i], classList );
            }
        });

        me.addListener("mousedown", mouseDownEvent);
        me.addListener("mouseup", mouseUpEvent);
        //鎷栧姩鐨勬椂鍊欎笉鍑哄彂mouseup
        domUtils.on( me.body, 'dragstart', function( evt ){
            mouseUpEvent.call( me, 'dragstart', evt );
        });

        var currentRowIndex = 0;
        me.addListener("mousedown", function () {
            currentRowIndex = 0;
        });
        me.addListener('tabkeydown', function () {
            var range = this.selection.getRange(),
                common = range.getCommonAncestor(true, true),
                table = domUtils.findParentByTagName(common, 'table');
            if (table) {
                if (domUtils.findParentByTagName(common, 'caption', true)) {
                    var cell = domUtils.getElementsByTagName(table, 'th td');
                    if (cell && cell.length) {
                        range.setStart(cell[0], 0).setCursor(false, true)
                    }
                } else {
                    var cell = domUtils.findParentByTagName(common, ['td', 'th'], true),
                        ua = getUETable(cell);
                    currentRowIndex = cell.rowSpan > 1 ? currentRowIndex : ua.getCellInfo(cell).rowIndex;
                    var nextCell = ua.getTabNextCell(cell, currentRowIndex);
                    if (nextCell) {
                        if (isEmptyBlock(nextCell)) {
                            range.setStart(nextCell, 0).setCursor(false, true)
                        } else {
                            range.selectNodeContents(nextCell).select()
                        }
                    } else {
                        me.fireEvent('saveScene');
                        me.__hasEnterExecCommand = true;
                        this.execCommand('insertrownext');
                        me.__hasEnterExecCommand = false;
                        range = this.selection.getRange();
                        range.setStart(table.rows[table.rows.length - 1].cells[0], 0).setCursor();
                        me.fireEvent('saveScene');
                    }
                }
                return true;
            }

        });
        browser.ie && me.addListener('selectionchange', function () {
            toggleDraggableState(this, false, "", null);
        });
        me.addListener("keydown", function (type, evt) {
            var me = this;
            //澶勭悊鍦ㄨ〃鏍肩殑鏈�悗涓�釜杈撳叆tab浜х敓鏂扮殑琛ㄦ牸
            var keyCode = evt.keyCode || evt.which;
            if (keyCode == 8 || keyCode == 46) {
                return;
            }
            var notCtrlKey = !evt.ctrlKey && !evt.metaKey && !evt.shiftKey && !evt.altKey;
            notCtrlKey && removeSelectedClass(domUtils.getElementsByTagName(me.body, "td"));
            var ut = getUETableBySelected(me);
            if (!ut) return;
            notCtrlKey && ut.clearSelected();
        });

        me.addListener("beforegetcontent", function () {
            switchBorderColor(this, false);
            browser.ie && utils.each(this.document.getElementsByTagName('caption'), function (ci) {
                if (domUtils.isEmptyNode(ci)) {
                    ci.innerHTML = '&nbsp;'
                }
            });
        });
        me.addListener("aftergetcontent", function () {
            switchBorderColor(this, true);
        });
        me.addListener("getAllHtml", function () {
            removeSelectedClass(me.document.getElementsByTagName("td"));
        });
        //淇鍏ㄥ睆鐘舵�涓嬫彃鍏ョ殑琛ㄦ牸瀹藉害鍦ㄩ潪鍏ㄥ睆鐘舵�涓嬫拺寮�紪杈戝櫒鐨勬儏鍐�
        me.addListener("fullscreenchanged", function (type, fullscreen) {
            if (!fullscreen) {
                var ratio = this.body.offsetWidth / document.body.offsetWidth,
                    tables = domUtils.getElementsByTagName(this.body, "table");
                utils.each(tables, function (table) {
                    if (table.offsetWidth < me.body.offsetWidth) return false;
                    var tds = domUtils.getElementsByTagName(table, "td"),
                        backWidths = [];
                    utils.each(tds, function (td) {
                        backWidths.push(td.offsetWidth);
                    });
                    for (var i = 0, td; td = tds[i]; i++) {
                        td.setAttribute("width", Math.floor(backWidths[i] * ratio));
                    }
                    table.setAttribute("width", Math.floor(getTableWidth(me, needIEHack, getDefaultValue(me))))
                });
            }
        });

        //閲嶅啓execCommand鍛戒护锛岀敤浜庡鐞嗘閫夋椂鐨勫鐞�
        var oldExecCommand = me.execCommand;
        me.execCommand = function (cmd, datatat) {

            var me = this,
                args = arguments;

            cmd = cmd.toLowerCase();
            var ut = getUETableBySelected(me), tds,
                range = new dom.Range(me.document),
                cmdFun = me.commands[cmd] || UE.commands[cmd],
                result;
            if (!cmdFun) return;
            if (ut && !commands[cmd] && !cmdFun.notNeedUndo && !me.__hasEnterExecCommand) {
                me.__hasEnterExecCommand = true;
                me.fireEvent("beforeexeccommand", cmd);
                tds = ut.selectedTds;
                var lastState = -2, lastValue = -2, value, state;
                for (var i = 0, td; td = tds[i]; i++) {
                    if (isEmptyBlock(td)) {
                        range.setStart(td, 0).setCursor(false, true)
                    } else {
                        range.selectNode(td).select(true);
                    }
                    state = me.queryCommandState(cmd);
                    value = me.queryCommandValue(cmd);
                    if (state != -1) {
                        if (lastState !== state || lastValue !== value) {
                            me._ignoreContentChange = true;
                            result = oldExecCommand.apply(me, arguments);
                            me._ignoreContentChange = false;

                        }
                        lastState = me.queryCommandState(cmd);
                        lastValue = me.queryCommandValue(cmd);
                        if (domUtils.isEmptyBlock(td)) {
                            domUtils.fillNode(me.document, td)
                        }
                    }
                }
                range.setStart(tds[0], 0).shrinkBoundary(true).setCursor(false, true);
                me.fireEvent('contentchange');
                me.fireEvent("afterexeccommand", cmd);
                me.__hasEnterExecCommand = false;
                me._selectionChange();
            } else {
                result = oldExecCommand.apply(me, arguments);
            }
            return result;
        };


    });
    /**
     * 鍒犻櫎obj鐨勫楂榮tyle锛屾敼鎴愬睘鎬у楂�
     * @param obj
     * @param replaceToProperty
     */
    function removeStyleSize(obj, replaceToProperty) {
        removeStyle(obj, "width", true);
        removeStyle(obj, "height", true);
    }

    function removeStyle(obj, styleName, replaceToProperty) {
        if (obj.style[styleName]) {
            replaceToProperty && obj.setAttribute(styleName, parseInt(obj.style[styleName], 10));
            obj.style[styleName] = "";
        }
    }

    function getParentTdOrTh(ele) {
        if (ele.tagName == "TD" || ele.tagName == "TH") return ele;
        var td;
        if (td = domUtils.findParentByTagName(ele, "td", true) || domUtils.findParentByTagName(ele, "th", true)) return td;
        return null;
    }

    function isEmptyBlock(node) {
        var reg = new RegExp(domUtils.fillChar, 'g');
        if (node[browser.ie ? 'innerText' : 'textContent'].replace(/^\s*$/, '').replace(reg, '').length > 0) {
            return 0;
        }
        for (var n in dtd.$isNotEmpty) {
            if (node.getElementsByTagName(n).length) {
                return 0;
            }
        }
        return 1;
    }


    function mouseCoords(evt) {
        if (evt.pageX || evt.pageY) {
            return { x:evt.pageX, y:evt.pageY };
        }
        return {
            x:evt.clientX + me.document.body.scrollLeft - me.document.body.clientLeft,
            y:evt.clientY + me.document.body.scrollTop - me.document.body.clientTop
        };
    }

    function mouseMoveEvent(evt) {

        if( isEditorDisabled() ) {
            return;
        }

        try {

            //鏅�鐘舵�涓嬮紶鏍囩Щ鍔�
            var target = getParentTdOrTh(evt.target || evt.srcElement),
                pos;

            //鍖哄垎鐢ㄦ埛鐨勮涓烘槸鎷栧姩杩樻槸鍙屽嚮
            if( isInResizeBuffer  ) {

                me.body.style.webkitUserSelect = 'none';

                if( Math.abs( userActionStatus.x - evt.clientX ) > offsetOfTableCell || Math.abs( userActionStatus.y - evt.clientY ) > offsetOfTableCell ) {
                    clearTableDragTimer();
                    isInResizeBuffer = false;
                    singleClickState = 0;
                    //drag action
                    tableBorderDrag(evt);
                }
            }

            //淇敼鍗曞厓鏍煎ぇ灏忔椂鐨勯紶鏍囩Щ鍔�
            if (onDrag && dragTd) {
                singleClickState = 0;
                me.body.style.webkitUserSelect = 'none';
                me.selection.getNative()[browser.ie ? 'empty' : 'removeAllRanges']();
                pos = mouseCoords(evt);
                toggleDraggableState(me, true, onDrag, pos, target);
                if (onDrag == "h") {
                    dragLine.style.left = getPermissionX(dragTd, evt) + "px";
                } else if (onDrag == "v") {
                    dragLine.style.top = getPermissionY(dragTd, evt) + "px";
                }
                return;
            }
            //褰撻紶鏍囧浜巘able涓婃椂锛屼慨鏀圭Щ鍔ㄨ繃绋嬩腑鐨勫厜鏍囩姸鎬�
            if (target) {
                //閽堝浣跨敤table浣滀负瀹瑰櫒鐨勭粍浠朵笉瑙﹀彂鎷栨嫿鏁堟灉
                if (me.fireEvent('excludetable', target) === true)
                    return;
                pos = mouseCoords(evt);
                var state = getRelation(target, pos),
                    table = domUtils.findParentByTagName(target, "table", true);

                if (inTableSide(table, target, evt, true)) {
                    if (me.fireEvent("excludetable", table) === true) return;
                    me.body.style.cursor = "url(" + me.options.cursorpath + "h.png),pointer";
                } else if (inTableSide(table, target, evt)) {
                    if (me.fireEvent("excludetable", table) === true) return;
                    me.body.style.cursor = "url(" + me.options.cursorpath + "v.png),pointer";
                } else {
                    me.body.style.cursor = "text";
                    var curCell = target;
                    if (/\d/.test(state)) {
                        state = state.replace(/\d/, '');
                        target = getUETable(target).getPreviewCell(target, state == "v");
                    }
                    //浣嶄簬绗竴琛岀殑椤堕儴鎴栬�绗竴鍒楃殑宸﹁竟鏃朵笉鍙嫋鍔�
                    toggleDraggableState(me, target ? !!state : false, target ? state : '', pos, target);

                }
            } else {
                toggleDragButton(false, table, me);
            }

        } catch (e) {
            showError(e);
        }
    }

    var dragButtonTimer;

    function toggleDragButton(show, table, editor) {
        if (!show) {
            if (dragOver)return;
            dragButtonTimer = setTimeout(function () {
                !dragOver && dragButton && dragButton.parentNode && dragButton.parentNode.removeChild(dragButton);
            }, 2000);
        } else {
            createDragButton(table, editor);
        }
    }

    function createDragButton(table, editor) {
        var pos = domUtils.getXY(table),
            doc = table.ownerDocument;
        if (dragButton && dragButton.parentNode)return dragButton;
        dragButton = doc.createElement("div");
        dragButton.contentEditable = false;
        dragButton.innerHTML = "";
        dragButton.style.cssText = "width:15px;height:15px;background-image:url(" + editor.options.UEDITOR_HOME_URL + "dialogs/table/dragicon.png);position: absolute;cursor:move;top:" + (pos.y - 15) + "px;left:" + (pos.x) + "px;";
        domUtils.unSelectable(dragButton);
        dragButton.onmouseover = function (evt) {
            dragOver = true;
        };
        dragButton.onmouseout = function (evt) {
            dragOver = false;
        };
        domUtils.on(dragButton, 'click', function (type, evt) {
            doClick(evt, this);
        });
        domUtils.on(dragButton, 'dblclick', function (type, evt) {
            doDblClick(evt);
        });
        domUtils.on(dragButton, 'dragstart', function (type, evt) {
            domUtils.preventDefault(evt);
        });
        var timer;

        function doClick(evt, button) {
            // 閮ㄥ垎娴忚鍣ㄤ笅闇�娓呯悊
            clearTimeout(timer);
            timer = setTimeout(function () {
                editor.fireEvent("tableClicked", table, button);
            }, 300);
        }

        function doDblClick(evt) {
            clearTimeout(timer);
            var ut = getUETable(table),
                start = table.rows[0].cells[0],
                end = ut.getLastCell(),
                range = ut.getCellsRange(start, end);
            editor.selection.getRange().setStart(start, 0).setCursor(false, true);
            ut.setSelected(range);
        }

        doc.body.appendChild(dragButton);
    }


//    function inPosition(table, pos) {
//        var tablePos = domUtils.getXY(table),
//            width = table.offsetWidth,
//            height = table.offsetHeight;
//        if (pos.x - tablePos.x < 5 && pos.y - tablePos.y < 5) {
//            return "topLeft";
//        } else if (tablePos.x + width - pos.x < 5 && tablePos.y + height - pos.y < 5) {
//            return "bottomRight";
//        }
//    }

    function inTableSide(table, cell, evt, top) {
        var pos = mouseCoords(evt),
            state = getRelation(cell, pos);

        if (top) {
            var caption = table.getElementsByTagName("caption")[0],
                capHeight = caption ? caption.offsetHeight : 0;
            return (state == "v1") && ((pos.y - domUtils.getXY(table).y - capHeight) < 8);
        } else {
            return (state == "h1") && ((pos.x - domUtils.getXY(table).x) < 8);
        }
    }

    /**
     * 鑾峰彇鎷栧姩鏃跺厑璁哥殑X杞村潗鏍�
     * @param dragTd
     * @param evt
     */
    function getPermissionX(dragTd, evt) {
        var ut = getUETable(dragTd);
        if (ut) {
            var preTd = ut.getSameEndPosCells(dragTd, "x")[0],
                nextTd = ut.getSameStartPosXCells(dragTd)[0],
                mouseX = mouseCoords(evt).x,
                left = (preTd ? domUtils.getXY(preTd).x : domUtils.getXY(ut.table).x) + 20 ,
                right = nextTd ? domUtils.getXY(nextTd).x + nextTd.offsetWidth - 20 : (me.body.offsetWidth + 5 || parseInt(domUtils.getComputedStyle(me.body, "width"), 10));

            left += cellMinWidth;
            right -= cellMinWidth;

            return mouseX < left ? left : mouseX > right ? right : mouseX;
        }
    }

    /**
     * 鑾峰彇鎷栧姩鏃跺厑璁哥殑Y杞村潗鏍�
     */
    function getPermissionY(dragTd, evt) {
        try {
            var top = domUtils.getXY(dragTd).y,
                mousePosY = mouseCoords(evt).y;
            return mousePosY < top ? top : mousePosY;
        } catch (e) {
            showError(e);
        }
    }

    /**
     * 绉诲姩鐘舵�鍒囨崲
     */
    function toggleDraggableState(editor, draggable, dir, mousePos, cell) {
        try {
            editor.body.style.cursor = dir == "h" ? "col-resize" : dir == "v" ? "row-resize" : "text";
            if (browser.ie) {
                if (dir && !mousedown && !getUETableBySelected(editor)) {
                    getDragLine(editor, editor.document);
                    showDragLineAt(dir, cell);
                } else {
                    hideDragLine(editor)
                }
            }
            onBorder = draggable;
        } catch (e) {
            showError(e);
        }
    }

    /**
     * 鑾峰彇涓嶶ETable鐩稿叧鐨剅esize line
     * @param uetable UETable瀵硅薄
     */
    function getResizeLineByUETable() {

        var lineId = '_UETableResizeLine',
            line = this.document.getElementById( lineId );

        if( !line ) {
            line = this.document.createElement("div");
            line.id = lineId;
            line.contnetEditable = false;
            line.setAttribute("unselectable", "on");

            var styles = {
                width: 2*cellBorderWidth + 1 + 'px',
                position: 'absolute',
                'z-index': 100000,
                cursor: 'col-resize',
                background: 'red',
                display: 'none'
            };

            //鍒囨崲鐘舵�
            line.onmouseout = function(){
                this.style.display = 'none';
            };

            utils.extend( line.style, styles );

            this.document.body.appendChild( line );

        }

        return line;

    }

    /**
     * 鏇存柊resize-line
     */
    function updateResizeLine( cell, uetable ) {

        var line = getResizeLineByUETable.call( this ),
            table = uetable.table,
            styles = {
                top: domUtils.getXY( table ).y + 'px',
                left: domUtils.getXY( cell).x + cell.offsetWidth - cellBorderWidth + 'px',
                display: 'block',
                height: table.offsetHeight + 'px'
            };

        utils.extend( line.style, styles );

    }

    /**
     * 鏄剧ずresize-line
     */
    function showResizeLine( cell ) {

        var uetable = getUETable( cell );

        updateResizeLine.call( this, cell, uetable );

    }

    /**
     * 鑾峰彇榧犳爣涓庡綋鍓嶅崟鍏冩牸鐨勭浉瀵逛綅缃�
     * @param ele
     * @param mousePos
     */
    function getRelation(ele, mousePos) {
        var elePos = domUtils.getXY(ele);

        if( !elePos ) {
            return '';
        }

        if (elePos.x + ele.offsetWidth - mousePos.x < cellBorderWidth) {
            return "h";
        }
        if (mousePos.x - elePos.x < cellBorderWidth) {
            return 'h1'
        }
        if (elePos.y + ele.offsetHeight - mousePos.y < cellBorderWidth) {
            return "v";
        }
        if (mousePos.y - elePos.y < cellBorderWidth) {
            return 'v1'
        }
        return '';
    }

    function mouseDownEvent(type, evt) {

        if( isEditorDisabled() ) {
            return ;
        }

        userActionStatus = {
            x: evt.clientX,
            y: evt.clientY
        };

        //鍙抽敭鑿滃崟鍗曠嫭澶勭悊
        if (evt.button == 2) {
            var ut = getUETableBySelected(me),
                flag = false;

            if (ut) {
                var td = getTargetTd(me, evt);
                utils.each(ut.selectedTds, function (ti) {
                    if (ti === td) {
                        flag = true;
                    }
                });
                if (!flag) {
                    removeSelectedClass(domUtils.getElementsByTagName(me.body, "th td"));
                    ut.clearSelected()
                } else {
                    td = ut.selectedTds[0];
                    setTimeout(function () {
                        me.selection.getRange().setStart(td, 0).setCursor(false, true);
                    }, 0);

                }
            }
        } else {
            tableClickHander( evt );
        }

    }

    //娓呴櫎琛ㄦ牸鐨勮鏃跺櫒
    function clearTableTimer() {
        tabTimer && clearTimeout( tabTimer );
        tabTimer = null;
    }

    //鍙屽嚮鏀剁缉
    function tableDbclickHandler(evt) {
        singleClickState = 0;
        evt = evt || me.window.event;
        var target = getParentTdOrTh(evt.target || evt.srcElement);
        if (target) {
            var h;
            if (h = getRelation(target, mouseCoords(evt))) {

                hideDragLine( me );

                if (h == 'h1') {
                    h = 'h';
                    if (inTableSide(domUtils.findParentByTagName(target, "table"), target, evt)) {
                        me.execCommand('adaptbywindow');
                    } else {
                        target = getUETable(target).getPreviewCell(target);
                        if (target) {
                            var rng = me.selection.getRange();
                            rng.selectNodeContents(target).setCursor(true, true)
                        }
                    }
                }
                if (h == 'h') {
                    var ut = getUETable(target),
                        table = ut.table,
                        cells = getCellsByMoveBorder( target, table, true );

                    cells = extractArray( cells, 'left' );

                    ut.width = ut.offsetWidth;

                    var oldWidth = [],
                        newWidth = [];

                    utils.each( cells, function( cell ){

                        oldWidth.push( cell.offsetWidth );

                    } );

                    utils.each( cells, function( cell ){

                        cell.removeAttribute("width");

                    } );

                    window.setTimeout( function(){

                        //鏄惁鍏佽鏀瑰彉
                        var changeable = true;

                        utils.each( cells, function( cell, index ){

                            var width = cell.offsetWidth;

                            if( width > oldWidth[index] ) {
                                changeable = false;
                                return false;
                            }

                            newWidth.push( width );

                        } );

                        var change = changeable ? newWidth : oldWidth;

                        utils.each( cells, function( cell, index ){

                            cell.width = change[index] - getTabcellSpace();

                        } );


                    }, 0 );

//                    minWidth -= cellMinWidth;
//
//                    table.removeAttribute("width");
//                    utils.each(cells, function (cell) {
//                        cell.style.width = "";
//                        cell.width -= minWidth;
//                    });

                }
            }
        }
    }

    function tableClickHander( evt ) {

        removeSelectedClass(domUtils.getElementsByTagName(me.body, "td th"));
        //trace:3113
        //閫変腑鍗曞厓鏍硷紝鐐瑰嚮table澶栭儴锛屼笉浼氭竻鎺塼able涓婃寕鐨剈eTable,浼氬紩璧穏etUETableBySelected鏂规硶杩斿洖鍊�
        utils.each(me.document.getElementsByTagName('table'), function (t) {
            t.ueTable = null;
        });
        startTd = getTargetTd(me, evt);
        if( !startTd ) return;
        var table = domUtils.findParentByTagName(startTd, "table", true);
        ut = getUETable(table);
        ut && ut.clearSelected();

        //鍒ゆ柇褰撳墠榧犳爣鐘舵�
        if (!onBorder) {
            me.document.body.style.webkitUserSelect = '';
            mousedown = true;
            me.addListener('mouseover', mouseOverEvent);
        } else {
            //杈规涓婄殑鍔ㄤ綔澶勭悊
            borderActionHandler( evt );
        }


    }

    //澶勭悊琛ㄦ牸杈规涓婄殑鍔ㄤ綔, 杩欓噷鍋氬欢鏃跺鐞嗭紝閬垮厤涓ょ鍔ㄤ綔浜掔浉褰卞搷
    function borderActionHandler( evt ) {

        if ( browser.ie ) {
            evt = reconstruct(evt );
        }

        clearTableDragTimer();

        //鏄惁姝ｅ湪绛夊緟resize鐨勭紦鍐蹭腑
        isInResizeBuffer = true;

        tableDragTimer = setTimeout(function(){
            tableBorderDrag( evt );
        }, dblclickTime);

    }

    function extractArray( originArr, key ) {

        var result = [],
            tmp = null;

        for( var i = 0, len = originArr.length; i<len; i++ ) {

            tmp = originArr[ i ][ key ];

            if( tmp ) {
                result.push( tmp );
            }

        }

        return result;

    }

    function clearTableDragTimer() {
        tableDragTimer && clearTimeout(tableDragTimer);
        tableDragTimer = null;
    }

    function reconstruct( obj ) {

        var attrs = ['pageX', 'pageY', 'clientX', 'clientY', 'srcElement', 'target'],
            newObj = {};

        if( obj ) {

            for( var i = 0, key, val; key = attrs[i]; i++ ) {
                val=obj[ key ];
                val && (newObj[ key ] = val);
            }

        }

        return newObj;

    }

    //杈规鎷栧姩
    function tableBorderDrag( evt ) {

        isInResizeBuffer = false;

        if( !startTd ) return;
        var state = Math.abs( userActionStatus.x - evt.clientX ) >= Math.abs( userActionStatus.y - evt.clientY ) ? 'h' : 'v';
//        var state = getRelation(startTd, mouseCoords(evt));
        if (/\d/.test(state)) {
            state = state.replace(/\d/, '');
            startTd = getUETable(startTd).getPreviewCell(startTd, state == 'v');
        }
        hideDragLine(me);
        getDragLine(me, me.document);
        me.fireEvent('saveScene');
        showDragLineAt(state, startTd);
        mousedown = true;
        //鎷栧姩寮�
        onDrag = state;
        dragTd = startTd;
    }

    function mouseUpEvent(type, evt) {

        if( isEditorDisabled() ) {
            return ;
        }

        clearTableDragTimer();

        isInResizeBuffer = false;

        if( onBorder ) {
            singleClickState = ++singleClickState % 3;

            userActionStatus = {
                x: evt.clientX,
                y: evt.clientY
            };

            tableResizeTimer = setTimeout(function(){
                singleClickState > 0 && singleClickState--;
            }, dblclickTime );

            if( singleClickState === 2 ) {

                singleClickState = 0;
                tableDbclickHandler(evt);
                return;

            }

        }

        if (evt.button == 2)return;
        var me = this;
        //娓呴櫎琛ㄦ牸涓婂師鐢熻法閫夐棶棰�
        var range = me.selection.getRange(),
            start = domUtils.findParentByTagName(range.startContainer, 'table', true),
            end = domUtils.findParentByTagName(range.endContainer, 'table', true);

        if (start || end) {
            if (start === end) {
                start = domUtils.findParentByTagName(range.startContainer, ['td', 'th', 'caption'], true);
                end = domUtils.findParentByTagName(range.endContainer, ['td', 'th', 'caption'], true);
                if (start !== end) {
                    me.selection.clearRange()
                }
            } else {
                me.selection.clearRange()
            }
        }
        mousedown = false;
        me.document.body.style.webkitUserSelect = '';
        //鎷栨嫿鐘舵�涓嬬殑mouseUP
        if ( onDrag && dragTd ) {

            me.selection.getNative()[browser.ie ? 'empty' : 'removeAllRanges']();

            singleClickState = 0;
            dragLine = me.document.getElementById('ue_tableDragLine');

            var dragTdPos = domUtils.getXY(dragTd),
                dragLinePos = domUtils.getXY(dragLine);

            switch (onDrag) {
                case "h":
                    changeColWidth(dragTd, dragLinePos.x - dragTdPos.x);
                    break;
                case "v":
                    changeRowHeight(dragTd, dragLinePos.y - dragTdPos.y - dragTd.offsetHeight);
                    break;
                default:
            }
            onDrag = "";
            dragTd = null;

            hideDragLine(me);
            me.fireEvent('saveScene');
            return;
        }
        //姝ｅ父鐘舵�涓嬬殑mouseup
        if (!startTd) {
            var target = domUtils.findParentByTagName(evt.target || evt.srcElement, "td", true);
            if (!target) target = domUtils.findParentByTagName(evt.target || evt.srcElement, "th", true);
            if (target && (target.tagName == "TD" || target.tagName == "TH")) {
                if (me.fireEvent("excludetable", target) === true) return;
                range = new dom.Range(me.document);
                range.setStart(target, 0).setCursor(false, true);
            }
        } else {
            var ut = getUETable(startTd),
                cell = ut ? ut.selectedTds[0] : null;
            if (cell) {
                range = new dom.Range(me.document);
                if (domUtils.isEmptyBlock(cell)) {
                    range.setStart(cell, 0).setCursor(false, true);
                } else {
                    range.selectNodeContents(cell).shrinkBoundary().setCursor(false, true);
                }
            } else {
                range = me.selection.getRange().shrinkBoundary();
                if (!range.collapsed) {
                    var start = domUtils.findParentByTagName(range.startContainer, ['td', 'th'], true),
                        end = domUtils.findParentByTagName(range.endContainer, ['td', 'th'], true);
                    //鍦╰able閲岃竟鐨勪笉鑳芥竻闄�
                    if (start && !end || !start && end || start && end && start !== end) {
                        range.setCursor(false, true);
                    }
                }
            }
            startTd = null;
            me.removeListener('mouseover', mouseOverEvent);
        }
        me._selectionChange(250, evt);
    }

    function mouseOverEvent(type, evt) {

        if( isEditorDisabled() ) {
            return;
        }

        var me = this,
            tar = evt.target || evt.srcElement;
        currentTd = domUtils.findParentByTagName(tar, "td", true) || domUtils.findParentByTagName(tar, "th", true);
        //闇�鍒ゆ柇涓や釜TD鏄惁浣嶄簬鍚屼竴涓〃鏍煎唴
        if (startTd && currentTd &&
            ((startTd.tagName == "TD" && currentTd.tagName == "TD") || (startTd.tagName == "TH" && currentTd.tagName == "TH")) &&
            domUtils.findParentByTagName(startTd, 'table') == domUtils.findParentByTagName(currentTd, 'table')) {
            var ut = getUETable(currentTd);
            if (startTd != currentTd) {
                me.document.body.style.webkitUserSelect = 'none';
                me.selection.getNative()[browser.ie ? 'empty' : 'removeAllRanges']();
                var range = ut.getCellsRange(startTd, currentTd);
                ut.setSelected(range);
            } else {
                me.document.body.style.webkitUserSelect = '';
                ut.clearSelected();
            }

        }
        evt.preventDefault ? evt.preventDefault() : (evt.returnValue = false);
    }

    function setCellHeight(cell, height, backHeight) {
        var lineHight = parseInt(domUtils.getComputedStyle(cell, "line-height"), 10),
            tmpHeight = backHeight + height;
        height = tmpHeight < lineHight ? lineHight : tmpHeight;
        if (cell.style.height) cell.style.height = "";
        cell.rowSpan == 1 ? cell.setAttribute("height", height) : (cell.removeAttribute && cell.removeAttribute("height"));
    }

    function getWidth(cell) {
        if (!cell)return 0;
        return parseInt(domUtils.getComputedStyle(cell, "width"), 10);
    }

    function changeColWidth(cell, changeValue) {

        var ut = getUETable(cell);
        if (ut) {

            //鏍规嵁褰撳墠绉诲姩鐨勮竟妗嗚幏鍙栫浉鍏崇殑鍗曞厓鏍�
            var table = ut.table,
                cells = getCellsByMoveBorder( cell, table );

            table.style.width = "";
            table.removeAttribute("width");

            //淇鏀瑰彉閲�
            changeValue = correctChangeValue( changeValue, cell, cells );

            if (cell.nextSibling) {

                var i=0;

                utils.each( cells, function( cellGroup ){

                    cellGroup.left.width = (+cellGroup.left.width)+changeValue;
                    cellGroup.right && ( cellGroup.right.width = (+cellGroup.right.width)-changeValue );

                } );

            } else {

                utils.each( cells, function( cellGroup ){
                    cellGroup.left.width -= -changeValue;
                } );

            }
        }

    }

    function isEditorDisabled() {
        return me.body.contentEditable === "false";
    }

    function changeRowHeight(td, changeValue) {
        if (Math.abs(changeValue) < 10) return;
        var ut = getUETable(td);
        if (ut) {
            var cells = ut.getSameEndPosCells(td, "y"),
            //澶囦唤闇�杩炲甫鍙樺寲鐨則d鐨勫師濮嬮珮搴︼紝鍚﹀垯鍚庢湡鏃犳硶鑾峰彇姝ｇ‘鐨勫�
                backHeight = cells[0] ? cells[0].offsetHeight : 0;
            for (var i = 0, cell; cell = cells[i++];) {
                setCellHeight(cell, changeValue, backHeight);
            }
        }

    }

    /**
     * 鑾峰彇璋冩暣鍗曞厓鏍煎ぇ灏忕殑鐩稿叧鍗曞厓鏍�
     * @isContainMergeCell 杩斿洖鐨勭粨鏋滀腑鏄惁鍖呭惈鍙戠敓鍚堝苟鍚庣殑鍗曞厓鏍�
     */
    function getCellsByMoveBorder( cell, table, isContainMergeCell ) {

        if( !table ) {
            table = domUtils.findParentByTagName( cell, 'table' );
        }

        if( !table ) {
            return null;
        }

        //鑾峰彇鍒拌鍗曞厓鏍兼墍鍦ㄨ鐨勫簭鍒楀彿
        var index = domUtils.getNodeIndex( cell ),
            temp = cell,
            rows = table.rows,
            colIndex = 0;

        while( temp ) {
            //鑾峰彇鍒板綋鍓嶅崟鍏冩牸鍦ㄦ湭鍙戠敓鍗曞厓鏍煎悎骞舵椂鐨勫簭鍒�
            if( temp.nodeType === 1 ) {
                colIndex += (temp.colSpan || 1);
            }
            temp = temp.previousSibling;
        }

        temp = null;

        //璁板綍鎯冲叧鐨勫崟鍏冩牸
        var borderCells = [];

        utils.each(rows, function( tabRow ){

            var cells = tabRow.cells,
                currIndex = 0;

            utils.each( cells, function( tabCell ){

                currIndex += (tabCell.colSpan || 1);

                if( currIndex === colIndex ) {

                    borderCells.push({
                        left: tabCell,
                        right: tabCell.nextSibling || null
                    });

                    return false;

                } else if( currIndex > colIndex ) {

                    if( isContainMergeCell ) {
                        borderCells.push({
                            left: tabCell
                        });
                    }

                    return false;
                }


            } );

        });

        return borderCells;

    }


    /**
     * 閫氳繃缁欏畾鐨勫崟鍏冩牸闆嗗悎鑾峰彇鏈�皬鐨勫崟鍏冩牸width
     */
    function getMinWidthByTableCells( cells ) {

        var minWidth = Number.MAX_VALUE;

        for( var i = 0, curCell; curCell = cells[ i ] ; i++ ) {

            minWidth = Math.min( minWidth, curCell.width || getTableCellWidth( curCell ) );

        }

        return minWidth;

    }

    function correctChangeValue( changeValue, relatedCell, cells ) {

        //涓哄崟鍏冩牸鐨刾aading棰勭暀绌洪棿
        changeValue -= getTabcellSpace();

        if( changeValue < 0 ) {
            return 0;
        }

        changeValue -= getTableCellWidth( relatedCell );

        //纭畾鏂瑰悜
        var direction = changeValue < 0 ? 'left':'right';

        changeValue = Math.abs(changeValue);

        //鍙叧蹇冮潪鏈�悗涓�釜鍗曞厓鏍煎氨鍙互
        utils.each( cells, function( cellGroup ){

            var curCell = cellGroup[direction];

            //涓哄崟鍏冩牸淇濈暀鏈�皬绌洪棿
            if( curCell ) {
                changeValue = Math.min( changeValue, getTableCellWidth( curCell )-cellMinWidth );
            }


        } );


        //淇瓒婄晫
        changeValue = changeValue < 0 ? 0 : changeValue;

        return direction === 'left' ? -changeValue : changeValue;

    }

    function getTableCellWidth( cell ) {

        var width = 0,
            //鍋忕Щ绾犳閲�
            offset = 0,
            width = cell.offsetWidth - getTabcellSpace();

        //鏈�悗涓�釜鑺傜偣绾犳涓�笅
        if( !cell.nextSibling ) {

            width -= getTableCellOffset( cell );

        }

        width = width < 0 ? 0 : width;

        try {
            cell.width = width;
        } catch(e) {
        }

        return width;

    }

    /**
     * 鑾峰彇鍗曞厓鏍兼墍鍦ㄨ〃鏍肩殑鏈�湯鍗曞厓鏍肩殑鍋忕Щ閲�
     */
    function getTableCellOffset( cell ) {

        tab = domUtils.findParentByTagName( cell, "table", false);

        if( tab.offsetVal === undefined ) {

            var prev = cell.previousSibling;

            if( prev ) {

                //鏈�悗涓�釜鍗曞厓鏍煎拰鍓嶄竴涓崟鍏冩牸鐨剋idth diff缁撴灉 濡傛灉鎭板ソ涓轰竴涓猙order width锛�鍒欐潯浠舵垚绔�
                tab.offsetVal = cell.offsetWidth - prev.offsetWidth === UT.borderWidth ? UT.borderWidth : 0;

            } else {
                tab.offsetVal = 0;
            }

        }

        return tab.offsetVal;

    }

    function getTabcellSpace() {

        if( UT.tabcellSpace === undefined ) {

            var cell = null,
                tab = me.document.createElement("table"),
                tbody = me.document.createElement("tbody"),
                trow = me.document.createElement("tr"),
                tabcell = me.document.createElement("td"),
                mirror = null;

            tabcell.style.cssText = 'border: 0;';
            tabcell.width = 1;

            trow.appendChild( tabcell );
            trow.appendChild( mirror = tabcell.cloneNode( false ) );

            tbody.appendChild( trow );

            tab.appendChild( tbody );

            tab.style.cssText = "visibility: hidden;";

            me.body.appendChild( tab );

            UT.paddingSpace = tabcell.offsetWidth - 1;

            var tmpTabWidth = tab.offsetWidth;

            tabcell.style.cssText = '';
            mirror.style.cssText = '';

            UT.borderWidth = ( tab.offsetWidth - tmpTabWidth ) / 3;

            UT.tabcellSpace = UT.paddingSpace + UT.borderWidth;

            me.body.removeChild( tab );

        }

        getTabcellSpace = function(){ return UT.tabcellSpace; };

        return UT.tabcellSpace;

    }

    function getDragLine(editor, doc) {
        if (mousedown)return;
        dragLine = editor.document.createElement("div");
        domUtils.setAttributes(dragLine, {
            id:"ue_tableDragLine",
            unselectable:'on',
            contenteditable:false,
            'onresizestart':'return false',
            'ondragstart':'return false',
            'onselectstart':'return false',
            style:"background-color:blue;position:absolute;padding:0;margin:0;background-image:none;border:0px none;opacity:0;filter:alpha(opacity=0)"
        });
        editor.body.appendChild(dragLine);
    }

    function hideDragLine(editor) {
        if (mousedown)return;
        var line;
        while (line = editor.document.getElementById('ue_tableDragLine')) {
            domUtils.remove(line)
        }
    }

    /**
     * 渚濇嵁state锛坴|h锛夊湪cell浣嶇疆鏄剧ず妯嚎
     * @param state
     * @param cell
     */
    function showDragLineAt(state, cell) {
        if (!cell) return;
        var table = domUtils.findParentByTagName(cell, "table"),
            caption = table.getElementsByTagName('caption'),
            width = table.offsetWidth,
            height = table.offsetHeight - (caption.length > 0 ? caption[0].offsetHeight : 0),
            tablePos = domUtils.getXY(table),
            cellPos = domUtils.getXY(cell), css;
        switch (state) {
            case "h":
                css = 'height:' + height + 'px;top:' + (tablePos.y + (caption.length > 0 ? caption[0].offsetHeight : 0)) + 'px;left:' + (cellPos.x + cell.offsetWidth);
                dragLine.style.cssText = css + 'px;position: absolute;display:block;background-color:blue;width:1px;border:0; color:blue;opacity:.3;filter:alpha(opacity=30)';
                break;
            case "v":
                css = 'width:' + width + 'px;left:' + tablePos.x + 'px;top:' + (cellPos.y + cell.offsetHeight );
                //蹇呴』鍔犱笂border:0鍜宑olor:blue锛屽惁鍒欎綆鐗坕e涓嶆敮鎸佽儗鏅壊鏄剧ず
                dragLine.style.cssText = css + 'px;overflow:hidden;position: absolute;display:block;background-color:blue;height:1px;border:0;color:blue;opacity:.2;filter:alpha(opacity=20)';
                break;
            default:
        }
    }

    /**
     * 褰撹〃鏍艰竟妗嗛鑹蹭负鐧借壊鏃惰缃负铏氱嚎,true涓烘坊鍔犺櫄绾�
     * @param editor
     * @param flag
     */
    function switchBorderColor(editor, flag) {
        var tableArr = domUtils.getElementsByTagName(editor.body, "table"), color;
        for (var i = 0, node; node = tableArr[i++];) {
            var td = domUtils.getElementsByTagName(node, "td");
            if (td[0]) {
                if (flag) {
                    color = (td[0].style.borderColor).replace(/\s/g, "");
                    if (/(#ffffff)|(rgb\(255,f55,255\))/ig.test(color))
                        domUtils.addClass(node, "noBorderTable")
                } else {
                    domUtils.removeClasses(node, "noBorderTable")
                }
            }

        }
    }

    function getTableWidth(editor, needIEHack, defaultValue) {
        var body = editor.body;
        return body.offsetWidth - (needIEHack ? parseInt(domUtils.getComputedStyle(body, 'margin-left'), 10) * 2 : 0) - defaultValue.tableBorder * 2 - (editor.options.offsetWidth || 0);
    }

    /**
     * 鑾峰彇褰撳墠鎷栧姩鐨勫崟鍏冩牸
     */
    function getTargetTd(editor, evt) {

        var target = domUtils.findParentByTagName(evt.target || evt.srcElement, ["td", "th"], true),
            dir = null;

        if( !target ) {
            return null;
        }

        dir = getRelation( target, mouseCoords( evt ) );

        //濡傛灉鏈夊墠涓�釜鑺傜偣锛�闇�鍋氫竴涓慨姝ｏ紝 鍚﹀垯鍙兘浼氬緱鍒颁竴涓敊璇殑td

        if( !target ) {
            return null;
        }

        if( dir === 'h1' && target.previousSibling ) {

            var position = domUtils.getXY( target),
                cellWidth = target.offsetWidth;

            if( Math.abs( position.x + cellWidth - evt.clientX ) > cellWidth / 3 ) {
                target = target.previousSibling;
            }

        } else if( dir === 'v1' && target.parentNode.previousSibling ) {

            var position = domUtils.getXY( target),
                cellHeight = target.offsetHeight;

            if( Math.abs( position.y + cellHeight - evt.clientY ) > cellHeight / 3 ) {
                target = target.parentNode.previousSibling.firstChild;
            }

        }


        //鎺掗櫎浜嗛潪td鍐呴儴浠ュ強鐢ㄤ簬浠ｇ爜楂樹寒閮ㄥ垎鐨則d
        return target && !(editor.fireEvent("excludetable", target) === true) ? target : null;
    }

};

///import core
///commands 鍙抽敭鑿滃崟
///commandsName  ContextMenu
///commandsTitle  鍙抽敭鑿滃崟
/**
 * 鍙抽敭鑿滃崟
 * @function
 * @name baidu.editor.plugins.contextmenu
 * @author zhanyi
 */

UE.plugins['contextmenu'] = function () {
    var me = this,
            lang = me.getLang( "contextMenu" ),
            menu,
            items = me.options.contextMenu || [
                {label:lang['selectall'], cmdName:'selectall'},
                {
                    label:lang.deletecode,
                    cmdName:'highlightcode',
                    icon:'deletehighlightcode'
                },
                {
                    label:lang.cleardoc,
                    cmdName:'cleardoc',
                    exec:function () {
                        if ( confirm( lang.confirmclear ) ) {
                            this.execCommand( 'cleardoc' );
                        }
                    }
                },
                '-',
                {
                    label:lang.unlink,
                    cmdName:'unlink'
                },
                '-',
                {
                    group:lang.paragraph,
                    icon:'justifyjustify',
                    subMenu:[
                        {
                            label:lang.justifyleft,
                            cmdName:'justify',
                            value:'left'
                        },
                        {
                            label:lang.justifyright,
                            cmdName:'justify',
                            value:'right'
                        },
                        {
                            label:lang.justifycenter,
                            cmdName:'justify',
                            value:'center'
                        },
                        {
                            label:lang.justifyjustify,
                            cmdName:'justify',
                            value:'justify'
                        }
                    ]
                },
                '-',
                {
                    group:lang.table,
                    icon:'table',
                    subMenu:[
                        {
                            label:lang.inserttable,
                            cmdName:'inserttable'
                        },
                        {
                            label:lang.deletetable,
                            cmdName:'deletetable'
                        },
                        '-',
                        {
                            label:lang.deleterow,
                            cmdName:'deleterow'
                        },
                        {
                            label:lang.deletecol,
                            cmdName:'deletecol'
                        },
                        {
                            label:lang.insertcol,
                            cmdName:'insertcol'
                        },
                        {
                            label:lang.insertcolnext,
                            cmdName:'insertcolnext'
                        },
                        {
                            label:lang.insertrow,
                            cmdName:'insertrow'
                        },
                        {
                            label:lang.insertrownext,
                            cmdName:'insertrownext'
                        },
                        '-',
                        {
                            label:lang.insertcaption,
                            cmdName:'insertcaption'
                        },
                        {
                            label:lang.deletecaption,
                            cmdName:'deletecaption'
                        },
                        {
                            label:lang.inserttitle,
                            cmdName:'inserttitle'
                        },
                        {
                            label:lang.deletetitle,
                            cmdName:'deletetitle'
                        },
                        '-',
                        {
                            label:lang.mergecells,
                            cmdName:'mergecells'
                        },
                        {
                            label:lang.mergeright,
                            cmdName:'mergeright'
                        },
                        {
                            label:lang.mergedown,
                            cmdName:'mergedown'
                        },
                        '-',
                        {
                            label:lang.splittorows,
                            cmdName:'splittorows'
                        },
                        {
                            label:lang.splittocols,
                            cmdName:'splittocols'
                        },
                        {
                            label:lang.splittocells,
                            cmdName:'splittocells'
                        },
                        '-',
                        {
                            label:lang.averageDiseRow,
                            cmdName:'averagedistributerow'
                        },
                        {
                            label:lang.averageDisCol,
                            cmdName:'averagedistributecol'
                        },
                        '-',
                        {
                            label:lang.edittd,
                            cmdName:'edittd',
                            exec:function () {
                                if ( UE.ui['edittd'] ) {
                                    new UE.ui['edittd']( this );
                                }
                                this.getDialog('edittd').open();
                            }
                        },
                        {
                            label:lang.edittable,
                            cmdName:'edittable',
                            exec:function () {
                                if ( UE.ui['edittable'] ) {
                                    new UE.ui['edittable']( this );
                                }
                                this.getDialog('edittable').open();
                            }
                        }
                    ]
                },
                {
                    group:lang.tablesort,
                    icon:'tablesort',
                    subMenu:[
                        {
                            label:lang.reversecurrent,
                            cmdName:'sorttable',
                            value:1
                        },
                        {
                            label:lang.orderbyasc,
                            cmdName:'sorttable'
                        },
                        {
                            label:lang.reversebyasc,
                            cmdName:'sorttable',
                            exec:function(){
                                this.execCommand("sorttable",function(td1,td2){
                                    var value1 = td1.innerHTML,
                                        value2 = td2.innerHTML;
                                    return value2.localeCompare(value1);
                                });
                            }
                        },
                        {
                            label:lang.orderbynum,
                            cmdName:'sorttable',
                            exec:function(){
                                this.execCommand("sorttable",function(td1,td2){
                                    var value1 = td1[browser.ie ? 'innerText':'textContent'].match(/\d+/),
                                        value2 = td2[browser.ie ? 'innerText':'textContent'].match(/\d+/);
                                    if(value1) value1 = +value1[0];
                                    if(value2) value2 = +value2[0];
                                    return (value1||0) - (value2||0);
                                });
                            }
                        },
                        {
                            label:lang.reversebynum,
                            cmdName:'sorttable',
                            exec:function(){
                                this.execCommand("sorttable",function(td1,td2){
                                    var value1 = td1[browser.ie ? 'innerText':'textContent'].match(/\d+/),
                                        value2 = td2[browser.ie ? 'innerText':'textContent'].match(/\d+/);
                                    if(value1) value1 = +value1[0];
                                    if(value2) value2 = +value2[0];
                                    return (value2||0) - (value1||0);
                                });
                            }
                        }
                    ]
                },
                {
                    group:lang.borderbk,
                    icon:'borderBack',
                    subMenu:[
                        {
                            label:lang.setcolor,
                            cmdName:"interlacetable",
                            exec:function(){
                                this.execCommand("interlacetable");
                            }
                        },
                        {
                            label:lang.unsetcolor,
                            cmdName:"uninterlacetable",
                            exec:function(){
                                this.execCommand("uninterlacetable");
                            }
                        },
                        {
                            label:lang.setbackground,
                            cmdName:"settablebackground",
                            exec:function(){
                                this.execCommand("settablebackground",{repeat:true,colorList:["#bbb","#ccc"]});
                            }
                        },
                        {
                            label:lang.unsetbackground,
                            cmdName:"cleartablebackground",
                            exec:function(){
                                this.execCommand("cleartablebackground");
                            }
                        },
                        {
                            label:lang.redandblue,
                            cmdName:"settablebackground",
                            exec:function(){
                                this.execCommand("settablebackground",{repeat:true,colorList:["red","blue"]});
                            }
                        },
                        {
                            label:lang.threecolorgradient,
                            cmdName:"settablebackground",
                            exec:function(){
                                this.execCommand("settablebackground",{repeat:true,colorList:["#aaa","#bbb","#ccc"]});
                            }
                        }
                    ]
                },
                {
                    group:lang.aligntd,
                    icon:'aligntd',
                    subMenu:[
                        {
                            cmdName:'cellalignment',
                            value:{align:'left',vAlign:'top'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'center',vAlign:'top'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'right',vAlign:'top'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'left',vAlign:'middle'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'center',vAlign:'middle'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'right',vAlign:'middle'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'left',vAlign:'bottom'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'center',vAlign:'bottom'}
                        },
                        {
                            cmdName:'cellalignment',
                            value:{align:'right',vAlign:'bottom'}
                        }
                    ]
                },
                {
                    group:lang.aligntable,
                    icon:'aligntable',
                    subMenu:[
                        {
                            cmdName:'tablealignment',
                            className: 'left',
                            label:lang.tableleft,
                            value:"left"
                        },
                        {
                            cmdName:'tablealignment',
                            className: 'center',
                            label:lang.tablecenter,
                            value:"center"
                        },
                        {
                            cmdName:'tablealignment',
                            className: 'right',
                            label:lang.tableright,
                            value:"right"
                        }
                    ]
                },
                '-',
                {
                    label:lang.insertparagraphbefore,
                    cmdName:'insertparagraph',
                    value:true
                },
                {
                    label:lang.insertparagraphafter,
                    cmdName:'insertparagraph'
                },
                {
                    label:lang['copy'],
                    cmdName:'copy',
                    exec:function () {
                        alert( lang.copymsg );
                    },
                    query:function () {
                        return 0;
                    }
                },
                {
                    label:lang['paste'],
                    cmdName:'paste',
                    exec:function () {
                        alert( lang.pastemsg );
                    },
                    query:function () {
                        return 0;
                    }
                },{
                    label:lang['highlightcode'],
                    cmdName:'highlightcode',
                    exec:function () {
                        if ( UE.ui['highlightcode'] ) {
                            new UE.ui['highlightcode']( this );
                        }
                        this.ui._dialogs['highlightcodeDialog'].open();
                    }
                }
            ];
    if ( !items.length ) {
        return;
    }
    var uiUtils = UE.ui.uiUtils;

    me.addListener( 'contextmenu', function ( type, evt ) {

        var offset = uiUtils.getViewportOffsetByEvent( evt );
        me.fireEvent( 'beforeselectionchange' );
        if ( menu ) {
            menu.destroy();
        }
        for ( var i = 0, ti, contextItems = []; ti = items[i]; i++ ) {
            var last;
            (function ( item ) {
                if ( item == '-' ) {
                    if ( (last = contextItems[contextItems.length - 1 ] ) && last !== '-' ) {
                        contextItems.push( '-' );
                    }
                } else if ( item.hasOwnProperty( "group" ) ) {
                    for ( var j = 0, cj, subMenu = []; cj = item.subMenu[j]; j++ ) {
                        (function ( subItem ) {
                            if ( subItem == '-' ) {
                                if ( (last = subMenu[subMenu.length - 1 ] ) && last !== '-' ) {
                                    subMenu.push( '-' );
                                }else{
                                    subMenu.splice(subMenu.length-1);
                                }
                            } else {
                                if ( (me.commands[subItem.cmdName] || UE.commands[subItem.cmdName] || subItem.query) &&
                                        (subItem.query ? subItem.query() : me.queryCommandState( subItem.cmdName )) > -1 ) {
                                    subMenu.push( {
                                        'label':subItem.label || me.getLang( "contextMenu." + subItem.cmdName + (subItem.value || '') )||"",
                                        'className':'edui-for-' +subItem.cmdName + ( subItem.className ? ( ' edui-for-' + subItem.cmdName + '-' + subItem.className ) : '' ),
                                        onclick:subItem.exec ? function () {
                                                subItem.exec.call( me );
                                        } : function () {
                                            me.execCommand( subItem.cmdName, subItem.value );
                                        }
                                    } );
                                }
                            }
                        })( cj );
                    }
                    if ( subMenu.length ) {
                        function getLabel(){
                            switch (item.icon){
                                case "table":
                                    return me.getLang( "contextMenu.table" );
                                case "justifyjustify":
                                    return me.getLang( "contextMenu.paragraph" );
                                case "aligntd":
                                    return me.getLang("contextMenu.aligntd");
                                case "aligntable":
                                    return me.getLang("contextMenu.aligntable");
                                case "tablesort":
                                    return lang.tablesort;
                                case "borderBack":
                                    return lang.borderbk;
                                default :
                                    return '';
                            }
                        }
                        contextItems.push( {
                            //todo 淇鎴愯嚜鍔ㄨ幏鍙栨柟寮�
                            'label':getLabel(),
                            className:'edui-for-' + item.icon,
                            'subMenu':{
                                items:subMenu,
                                editor:me
                            }
                        } );
                    }

                } else {
                    //鏈夊彲鑳絚ommmand娌℃湁鍔犺浇鍙抽敭涓嶈兘鍑烘潵锛屾垨鑰呮病鏈塩ommand涔熸兂鑳藉睍绀哄嚭鏉ユ坊鍔爍uery鏂规硶
                    if ( (me.commands[item.cmdName] || UE.commands[item.cmdName] || item.query) &&
                            (item.query ? item.query.call(me) : me.queryCommandState( item.cmdName )) > -1 ) {
                        //highlight todo
                        if ( item.cmdName == 'highlightcode' ) {
                            if(me.queryCommandState( item.cmdName ) == 1 && item.icon != 'deletehighlightcode'){
                                return;
                            }
                            if(me.queryCommandState( item.cmdName ) != 1 && item.icon == 'deletehighlightcode'){
                                return;
                            }
                        }
                        contextItems.push( {
                            'label':item.label || me.getLang( "contextMenu." + item.cmdName ),
                            className:'edui-for-' + (item.icon ? item.icon : item.cmdName + (item.value || '')),
                            onclick:item.exec ? function () {
                                item.exec.call( me );
                            } : function () {
                                me.execCommand( item.cmdName, item.value );
                            }
                        } );
                    }

                }

            })( ti );
        }
        if ( contextItems[contextItems.length - 1] == '-' ) {
            contextItems.pop();
        }

        menu = new UE.ui.Menu( {
            items:contextItems,
            className:"edui-contextmenu",
            editor:me
        } );
        menu.render();
        menu.showAt( offset );

        me.fireEvent("aftershowcontextmenu",menu);

        domUtils.preventDefault( evt );
        if ( browser.ie ) {
            var ieRange;
            try {
                ieRange = me.selection.getNative().createRange();
            } catch ( e ) {
                return;
            }
            if ( ieRange.item ) {
                var range = new dom.Range( me.document );
                range.selectNode( ieRange.item( 0 ) ).select( true, true );

            }
        }
    } );
};



///import core
///commands       寮瑰嚭鑿滃崟
// commandsName  popupmenu
///commandsTitle  寮瑰嚭鑿滃崟
/**
 * 寮瑰嚭鑿滃崟
 * @function
 * @name baidu.editor.plugins.popupmenu
 * @author xuheng
 */

UE.plugins['shortcutmenu'] = function () {
    var me = this,
        menu,
        items = me.options.shortcutMenu || [];

    if (!items.length) {
        return;
    }

    me.addListener ('contextmenu mouseup' , function (type , e) {
        var me = this,
            customEvt = {
                type : type ,
                target : e.target || e.srcElement ,
                screenX : e.screenX ,
                screenY : e.screenY ,
                clientX : e.clientX ,
                clientY : e.clientY
            };

        setTimeout (function () {
            var rng = me.selection.getRange ();
            if (rng.collapsed === false || type == "contextmenu") {

                if (!menu) {
                    menu = new baidu.editor.ui.ShortCutMenu ({
                        editor : me ,
                        items : items ,
                        theme : me.options.theme ,
                        className : 'edui-shortcutmenu'
                    });

                    menu.render ();
                    me.fireEvent ("afterrendershortcutmenu" , menu);
                }

                menu.show (customEvt , !!UE.plugins['contextmenu']);
            }
        });

        if (type == 'contextmenu') {
            domUtils.preventDefault (e);
            if (browser.ie) {
                var ieRange;
                try {
                    ieRange = me.selection.getNative ().createRange ();
                } catch (e) {
                    return;
                }
                if (ieRange.item) {
                    var range = new dom.Range (me.document);
                    range.selectNode (ieRange.item (0)).select (true , true);

                }
            }
        }

        if (type == "keydown") {
            menu && !menu.isHidden && menu.hide ();
        }
    });

    me.addListener ('keydown' , function (type) {
        if (type == "keydown") {
            menu && !menu.isHidden && menu.hide ();
        }

    });

};



///import core
///commands 鍔犵矖,鏂滀綋,涓婃爣,涓嬫爣
///commandsName  Bold,Italic,Subscript,Superscript
///commandsTitle  鍔犵矖,鍔犳枩,涓嬫爣,涓婃爣
/**
 * b u i绛夊熀纭�姛鑳藉疄鐜�
 * @function
 * @name baidu.editor.execCommands
 * @param    {String}    cmdName    bold鍔犵矖銆俰talic鏂滀綋銆俿ubscript涓婃爣銆俿uperscript涓嬫爣銆�
*/
UE.plugins['basestyle'] = function(){

    var basestyles = {
            'bold':['strong','b'],
            'italic':['em','i'],
            'subscript':['sub'],
            'superscript':['sup']
        },
        getObj = function(editor,tagNames){
            return domUtils.filterNodeList(editor.selection.getStartElementPath(),tagNames);
        },
        me = this;
    //娣诲姞蹇嵎閿�
    me.addshortcutkey({
        "Bold" : "ctrl+66",//^B
        "Italic" : "ctrl+73", //^I
        "Underline" : "ctrl+85"//^U
    });
    me.addInputRule(function(root){
        utils.each(root.getNodesByTagName('b i'),function(node){
            switch (node.tagName){
                case 'b':
                    node.tagName = 'strong';
                    break;
                case 'i':
                    node.tagName = 'em';
            }
        });
    });
    for ( var style in basestyles ) {
        (function( cmd, tagNames ) {
            me.commands[cmd] = {
                execCommand : function( cmdName ) {
                    var range = me.selection.getRange(),obj = getObj(this,tagNames);
                    if ( range.collapsed ) {
                        if ( obj ) {
                            var tmpText =  me.document.createTextNode('');
                            range.insertNode( tmpText ).removeInlineStyle( tagNames );
                            range.setStartBefore(tmpText);
                            domUtils.remove(tmpText);
                        } else {
                            var tmpNode = range.document.createElement( tagNames[0] );
                            if(cmdName == 'superscript' || cmdName == 'subscript'){
                                tmpText = me.document.createTextNode('');
                                range.insertNode(tmpText)
                                    .removeInlineStyle(['sub','sup'])
                                    .setStartBefore(tmpText)
                                    .collapse(true);
                            }
                            range.insertNode( tmpNode ).setStart( tmpNode, 0 );
                        }
                        range.collapse( true );
                    } else {
                        if(cmdName == 'superscript' || cmdName == 'subscript'){
                            if(!obj || obj.tagName.toLowerCase() != cmdName){
                                range.removeInlineStyle(['sub','sup']);
                            }
                        }
                        obj ? range.removeInlineStyle( tagNames ) : range.applyInlineStyle( tagNames[0] );
                    }
                    range.select();
                },
                queryCommandState : function() {
                   return getObj(this,tagNames) ? 1 : 0;
                }
            };
        })( style, basestyles[style] );
    }
};


///import core
///commands 閫夊尯璺緞
///commandsName  ElementPath,elementPathEnabled
///commandsTitle  閫夊尯璺緞
/**
 * 閫夊尯璺緞
 * @function
 * @name baidu.editor.execCommand
 * @param {String}     cmdName     elementpath閫夊尯璺緞
 */
UE.plugins['elementpath'] = function(){
    var currentLevel,
        tagNames,
        me = this;
    me.setOpt('elementPathEnabled',true);
    if(!me.options.elementPathEnabled){
        return;
    }
    me.commands['elementpath'] = {
        execCommand : function( cmdName, level ) {
            var start = tagNames[level],
                range = me.selection.getRange();
            currentLevel = level*1;
            range.selectNode(start).select();
        },
        queryCommandValue : function() {
            //浜х敓涓�釜鍓湰锛屼笉鑳戒慨鏀瑰師鏉ョ殑startElementPath;
            var parents = [].concat(this.selection.getStartElementPath()).reverse(),
                names = [];
            tagNames = parents;
            for(var i=0,ci;ci=parents[i];i++){
                if(ci.nodeType == 3) {
                    continue;
                }
                var name = ci.tagName.toLowerCase();
                if(name == 'img' && ci.getAttribute('anchorname')){
                    name = 'anchor';
                }
                names[i] = name;
                if(currentLevel == i){
                   currentLevel = -1;
                    break;
                }
            }
            return names;
        }
    };
};


///import core
///import plugins\removeformat.js
///commands 鏍煎紡鍒�///commandsName  FormatMatch
///commandsTitle  鏍煎紡鍒�/**
 * 鏍煎紡鍒凤紝鍙牸寮廼nline鐨� * @function
 * @name baidu.editor.execCommand
 * @param {String}     cmdName    formatmatch鎵ц鏍煎紡鍒� */
UE.plugins['formatmatch'] = function(){

    var me = this,
        list = [],img,
        flag = 0;

     me.addListener('reset',function(){
         list = [];
         flag = 0;
     });

    function addList(type,evt){
        
        if(browser.webkit){
            var target = evt.target.tagName == 'IMG' ? evt.target : null;
        }

        function addFormat(range){

            if(text){
                range.selectNode(text);
            }
            return range.applyInlineStyle(list[list.length-1].tagName,null,list);

        }

        me.undoManger && me.undoManger.save();

        var range = me.selection.getRange(),
            imgT = target || range.getClosedNode();
        if(img && imgT && imgT.tagName == 'IMG'){
            //trace:964

            imgT.style.cssText += ';float:' + (img.style.cssFloat || img.style.styleFloat ||'none') + ';display:' + (img.style.display||'inline');

            img = null;
        }else{
            if(!img){
                var collapsed = range.collapsed;
                if(collapsed){
                    var text = me.document.createTextNode('match');
                    range.insertNode(text).select();


                }
                me.__hasEnterExecCommand = true;
                //涓嶈兘鎶奲lock涓婄殑灞炴�骞叉帀
                //trace:1553
                var removeFormatAttributes = me.options.removeFormatAttributes;
                me.options.removeFormatAttributes = '';
                me.execCommand('removeformat');
                me.options.removeFormatAttributes = removeFormatAttributes;
                me.__hasEnterExecCommand = false;
                //trace:969
                range = me.selection.getRange();
                if(list.length){
                    addFormat(range);
                }
                if(text){
                    range.setStartBefore(text).collapse(true);

                }
                range.select();
                text && domUtils.remove(text);
            }

        }




        me.undoManger && me.undoManger.save();
        me.removeListener('mouseup',addList);
        flag = 0;
    }

    me.commands['formatmatch'] = {
        execCommand : function( cmdName ) {
          
            if(flag){
                flag = 0;
                list = [];
                 me.removeListener('mouseup',addList);
                return;
            }


              
            var range = me.selection.getRange();
            img = range.getClosedNode();
            if(!img || img.tagName != 'IMG'){
               range.collapse(true).shrinkBoundary();
               var start = range.startContainer;
               list = domUtils.findParents(start,true,function(node){
                   return !domUtils.isBlockElm(node) && node.nodeType == 1;
               });
               //a涓嶈兘鍔犲叆鏍煎紡鍒� 骞朵笖鍏嬮殕鑺傜偣
               for(var i=0,ci;ci=list[i];i++){
                   if(ci.tagName == 'A'){
                       list.splice(i,1);
                       break;
                   }
               }

            }

            me.addListener('mouseup',addList);
            flag = 1;


        },
        queryCommandState : function() {
            return flag;
        },
        notNeedUndo : 1
    };
};


///import core
///commands 鏌ユ壘鏇挎崲
///commandsName  SearchReplace
///commandsTitle  鏌ヨ鏇挎崲
///commandsDialog  dialogs\searchreplace
/**
 * @description 鏌ユ壘鏇挎崲
 * @author zhanyi
 */
UE.plugins['searchreplace'] = function(){

    var currentRange,
        first,
        me = this;
    me.addListener('reset',function(){
        currentRange = null;
        first = null;
    });
    me.commands['searchreplace'] = {
        execCommand : function(cmdName,opt){
            var me = this,
                sel = me.selection,
                range,
                nativeRange,
                num = 0,
                opt = utils.extend(opt,{
                    all : false,
                    casesensitive : false,
                    dir : 1
                },true);
            var searchStr = opt.searchStr;
            if(browser.ie){
                me.focus();
                while(1){
                    var tmpRange;

                    nativeRange = me.document.selection.createRange();
                    tmpRange = nativeRange.duplicate();
                    tmpRange.moveToElementText(me.document.body);
                    if(opt.all){
                        first = 0;
                        opt.dir = 1;
                        if(currentRange){
                            tmpRange.setEndPoint(opt.dir == -1 ? 'EndToStart' : 'StartToEnd',currentRange);
                        }else{
                            tmpRange.moveToElementText(me.document.body);
                        }

                    }else{
                        tmpRange.setEndPoint(opt.dir == -1 ? 'EndToStart' : 'StartToEnd',nativeRange);
                        if(opt.hasOwnProperty("replaceStr")){
                            tmpRange.setEndPoint(opt.dir == -1 ? 'StartToEnd' : 'EndToStart',nativeRange);
                        }
                    }
                    nativeRange = tmpRange.duplicate();

                    if(/^\/[^/]+\/\w*$/.test(opt.searchStr)){
                        var str = tmpRange.text,
                            reg = new RegExp(opt.searchStr.replace(/^\/|\/\w*$/g,''),'g' + (opt.casesensitive ? '':'i'));
                        var match = str.match(reg);
                        if(match && match.length){
                            searchStr = opt.dir < 0 ? match[match.length -1] : match[0];
                        }else{
                            currentRange = null;
                            return num;
                        }
                    }
                    if(!tmpRange.findText(searchStr,opt.dir,opt.casesensitive ? 4 : 0)){
                        currentRange = null;
                        tmpRange = me.document.selection.createRange();
                        tmpRange.scrollIntoView();
                        currentRange = null;
                        return num;
                    }
                    tmpRange.select();
                    //鏇挎崲
                    if(opt.hasOwnProperty("replaceStr")){
                        range = sel.getRange();
                        range.deleteContents().insertNode(range.document.createTextNode(opt.replaceStr)).select();
                        currentRange = sel.getNative().createRange();

                    }
                    num++;
                    if(!opt.all){
                        break;
                    }
                }
            }else{

                var w = me.window,nativeSel = sel.getNative();
                while(1){
                    if(opt.all){
                        if(currentRange){
                            currentRange.collapse(false);
                            nativeRange = currentRange;
                        }else{
                            nativeRange  = me.document.createRange();
                            nativeRange.setStart(me.document.body,0);
                            nativeRange.collapse(true);
                        }

                        nativeSel.removeAllRanges();
                        nativeSel.addRange( nativeRange );
                        first = 0;
                        opt.dir = 1;
                    }else{
                        //safari寮瑰嚭灞傦紝鍘熺敓宸茬粡鎵句笉鍒皉ange浜嗭紝鎵�互闇�鍏堥�鍥炴潵锛屽啀鍙栧師鐢�
                        if(browser.safari){
                            me.selection.getRange().select();

                        }
                        var nativeSel = w.getSelection();
                        if(!nativeSel.rangeCount){
                            nativeRange = currentRange || me._bakNativeRange;
                        }else{
                            nativeRange = nativeSel.getRangeAt(0);
                        }

                        if(opt.hasOwnProperty("replaceStr")){
                            nativeRange.collapse(opt.dir == 1 ? true : false);
                        }
                    }

                    //濡傛灉鏄涓�骞朵笖娴烽�涓簡鍐呭閭ｅ氨瑕佹竻闄わ紝涓篺ind鍋氬噯澶�

                    if(!first){
                        nativeRange.collapse( opt.dir <0 ? true : false);
                        nativeSel.removeAllRanges();
                        nativeSel.addRange( nativeRange );
                    }else{
                        nativeSel.removeAllRanges();
                    }
                    //鏄鍒欐煡鎵�

                    if(/^\/[^/]+\/\w*$/.test(opt.searchStr)){
                        var tmpRange = nativeRange.cloneRange();
                        //鍚戝墠鏌ユ壘
                        if(opt.dir < 0 ){
                            nativeRange.collapse(true);
                            nativeRange.setStart(me.body,0);
                        }else{
                            nativeRange.setEnd(me.body,me.body.childNodes.length);
                        }
                        var str = nativeRange + '',
                            reg = new RegExp(opt.searchStr.replace(/^\/|\/\w*$/g,''),'g' + (opt.casesensitive ? '':'i'));
                        var match = str.match(reg);
                        if(match && match.length){
                            searchStr = opt.dir < 0 ? match[match.length -1] : match[0];
                        }else{
                            currentRange = null;
                            return num;
                        }
                        nativeSel.removeAllRanges();
                        nativeRange = tmpRange;
                        nativeSel.addRange(nativeRange);
                    }
                    if(!w.find(searchStr,opt.casesensitive,opt.dir < 0 ? true : false) ) {
                        currentRange = null;
                        nativeSel.removeAllRanges();
                        return num;
                    }
                    first = 0;
                    range = w.getSelection().getRangeAt(0);
                    if(!range.collapsed){

                        if(opt.hasOwnProperty("replaceStr")){
                            range.deleteContents();
                            var text = w.document.createTextNode(opt.replaceStr);
                            range.insertNode(text);
                            range.selectNode(text);
                            nativeSel.addRange(range);

                        }
                        currentRange = range.cloneRange();
                    }
                    num++;
                    if(!opt.all){
                        break;
                    }
                }

            }
            return true;
        }
    };

};
///import core
///commands 鑷畾涔夋牱寮�
///commandsName  CustomStyle
///commandsTitle  鑷畾涔夋牱寮�
UE.plugins['customstyle'] = function() {
    var me = this;
    me.setOpt({ 'customstyle':[
        {tag:'h1',name:'tc', style:'font-size:32px;font-weight:bold;border-bottom:#ccc 2px solid;padding:0 4px 0 0;text-align:center;margin:0 0 20px 0;'},
        {tag:'h1',name:'tl', style:'font-size:32px;font-weight:bold;border-bottom:#ccc 2px solid;padding:0 4px 0 0;text-align:left;margin:0 0 10px 0;'},
        {tag:'span',name:'im', style:'font-size:16px;font-style:italic;font-weight:bold;line-height:18px;'},
        {tag:'span',name:'hi', style:'font-size:16px;font-style:italic;font-weight:bold;color:rgb(51, 153, 204);line-height:18px;'}
    ]});
    me.commands['customstyle'] = {
        execCommand : function(cmdName, obj) {
            var me = this,
                    tagName = obj.tag,
                    node = domUtils.findParent(me.selection.getStart(), function(node) {
                        return node.getAttribute('label');
                    }, true),
                    range,bk,tmpObj = {};
            for (var p in obj) {
               if(obj[p]!==undefined)
                    tmpObj[p] = obj[p];
            }
            delete tmpObj.tag;
            if (node && node.getAttribute('label') == obj.label) {
                range = this.selection.getRange();
                bk = range.createBookmark();
                if (range.collapsed) {
                    //trace:1732 鍒犳帀鑷畾涔夋爣绛撅紝瑕佹湁p鏉ュ洖濉珯浣�
                    if(dtd.$block[node.tagName]){
                        var fillNode = me.document.createElement('p');
                        domUtils.moveChild(node, fillNode);
                        node.parentNode.insertBefore(fillNode, node);
                        domUtils.remove(node);
                    }else{
                        domUtils.remove(node,true);
                    }

                } else {

                    var common = domUtils.getCommonAncestor(bk.start, bk.end),
                            nodes = domUtils.getElementsByTagName(common, tagName);
                    if(new RegExp(tagName,'i').test(common.tagName)){
                        nodes.push(common);
                    }
                    for (var i = 0,ni; ni = nodes[i++];) {
                        if (ni.getAttribute('label') == obj.label) {
                            var ps = domUtils.getPosition(ni, bk.start),pe = domUtils.getPosition(ni, bk.end);
                            if ((ps & domUtils.POSITION_FOLLOWING || ps & domUtils.POSITION_CONTAINS)
                                    &&
                                    (pe & domUtils.POSITION_PRECEDING || pe & domUtils.POSITION_CONTAINS)
                                    )
                                if (dtd.$block[tagName]) {
                                    var fillNode = me.document.createElement('p');
                                    domUtils.moveChild(ni, fillNode);
                                    ni.parentNode.insertBefore(fillNode, ni);
                                }
                            domUtils.remove(ni, true);
                        }
                    }
                    node = domUtils.findParent(common, function(node) {
                        return node.getAttribute('label') == obj.label;
                    }, true);
                    if (node) {

                        domUtils.remove(node, true);

                    }

                }
                range.moveToBookmark(bk).select();
            } else {
                if (dtd.$block[tagName]) {
                    this.execCommand('paragraph', tagName, tmpObj,'customstyle');
                    range = me.selection.getRange();
                    if (!range.collapsed) {
                        range.collapse();
                        node = domUtils.findParent(me.selection.getStart(), function(node) {
                            return node.getAttribute('label') == obj.label;
                        }, true);
                        var pNode = me.document.createElement('p');
                        domUtils.insertAfter(node, pNode);
                        domUtils.fillNode(me.document, pNode);
                        range.setStart(pNode, 0).setCursor();
                    }
                } else {

                    range = me.selection.getRange();
                    if (range.collapsed) {
                        node = me.document.createElement(tagName);
                        domUtils.setAttributes(node, tmpObj);
                        range.insertNode(node).setStart(node, 0).setCursor();

                        return;
                    }

                    bk = range.createBookmark();
                    range.applyInlineStyle(tagName, tmpObj).moveToBookmark(bk).select();
                }
            }

        },
        queryCommandValue : function() {
            var parent = domUtils.filterNodeList(
                this.selection.getStartElementPath(),
                function(node){return node.getAttribute('label')}
            );
            return  parent ? parent.getAttribute('label') : '';
        }
    };
    //褰撳幓鎺塩ustomstyle鏄紝濡傛灉鏄潡鍏冪礌锛岀敤p浠ｆ浛
    me.addListener('keyup', function(type, evt) {
        var keyCode = evt.keyCode || evt.which;

        if (keyCode == 32 || keyCode == 13) {
            var range = me.selection.getRange();
            if (range.collapsed) {
                var node = domUtils.findParent(me.selection.getStart(), function(node) {
                    return node.getAttribute('label');
                }, true);
                if (node && dtd.$block[node.tagName] && domUtils.isEmptyNode(node)) {
                        var p = me.document.createElement('p');
                        domUtils.insertAfter(node, p);
                        domUtils.fillNode(me.document, p);
                        domUtils.remove(node);
                        range.setStart(p, 0).setCursor();


                }
            }
        }
    });
};
///import core
///commands 杩滅▼鍥剧墖鎶撳彇
///commandsName  catchRemoteImage,catchremoteimageenable
///commandsTitle  杩滅▼鍥剧墖鎶撳彇
/**
 * 杩滅▼鍥剧墖鎶撳彇,褰撳紑鍚湰鎻掍欢鏃舵墍鏈変笉绗﹀悎鏈湴鍩熷悕鐨勫浘鐗囬兘灏嗚鎶撳彇鎴愪负鏈湴鏈嶅姟鍣ㄤ笂鐨勫浘鐗�
 *
 */
UE.plugins['catchremoteimage'] = function () {
    if (this.options.catchRemoteImageEnable===false){
        return;
    }
    var me = this;
    this.setOpt({
        localDomain:["127.0.0.1","localhost","img.baidu.com"],
        separater:'ue_separate_ue',
        catchFieldName:"upfile",
        catchRemoteImageEnable:true
    });
    var ajax = UE.ajax,
        localDomain = me.options.localDomain ,
        catcherUrl = me.options.catcherUrl,
        separater = me.options.separater;
    function catchremoteimage(imgs, callbacks) {
        var submitStr = imgs.join(separater);
        var tmpOption = {
            timeout:60000, //鍗曚綅锛氭绉掞紝鍥炶皟璇锋眰瓒呮椂璁剧疆銆傜洰鏍囩敤鎴峰鏋滅綉閫熶笉鏄緢蹇殑璇濇澶勫缓璁缃竴涓緝澶х殑鏁板�
            onsuccess:callbacks["success"],
            onerror:callbacks["error"]
        };
        tmpOption[me.options.catchFieldName] = submitStr;
        ajax.request(catcherUrl, tmpOption);
    }

    me.addListener("afterpaste", function () {
        me.fireEvent("catchRemoteImage");
    });

    me.addListener("catchRemoteImage", function () {
        var remoteImages = [];
        var imgs = domUtils.getElementsByTagName(me.document, "img");
        var test = function (src,urls) {
            for (var j = 0, url; url = urls[j++];) {
                if (src.indexOf(url) !== -1) {
                    return true;
                }
            }
            return false;
        };
        for (var i = 0, ci; ci = imgs[i++];) {
            if (ci.getAttribute("word_img")){
                continue;
            }
            var src = ci.getAttribute("_src") || ci.src || "";
            if (/^(https?|ftp):/i.test(src) && !test(src,localDomain)) {
                remoteImages.push(src);
            }
        }
        if (remoteImages.length) {
            catchremoteimage(remoteImages, {
                //鎴愬姛鎶撳彇
                success:function (xhr) {
                    try {
                        var info = eval("(" + xhr.responseText + ")");
                    } catch (e) {
                        return;
                    }
                    var srcUrls = info.srcUrl.split(separater),
                        urls = info.url.split(separater);
                    for (var i = 0, ci; ci = imgs[i++];) {
                        var src = ci.getAttribute("_src") || ci.src || "";
                        for (var j = 0, cj; cj = srcUrls[j++];) {
                            var url = urls[j - 1];
                            if (src == cj && url != "error") {  //鎶撳彇澶辫触鏃朵笉鍋氭浛鎹㈠鐞�
                                //鍦板潃淇
                                var newSrc = me.options.catcherPath + url;
                                domUtils.setAttributes(ci, {
                                    "src":newSrc,
                                    "_src":newSrc
                                });
                                break;
                            }
                        }
                    }
                    me.fireEvent('catchremotesuccess')
                },
                //鍥炶皟澶辫触锛屾湰娆¤姹傝秴鏃�
                error:function () {
                    me.fireEvent("catchremoteerror");
                }
            });
        }

    });
};
///import core
///import plugins\inserthtml.js
///import plugins\image.js
///commandsName  snapscreen
///commandsTitle  鎴睆
/**
 * 鎴睆鎻掍欢
 */
UE.plugins['snapscreen'] = function(){
    var me = this,
        doc,
        snapplugin;

    me.setOpt({
        snapscreenServerPort: location.port                                    //灞忓箷鎴浘鐨剆erver绔鍙�
        ,snapscreenImgAlign: ''                                //鎴浘鐨勫浘鐗囬粯璁ょ殑鎺掔増鏂瑰紡
        ,snapscreenHost: location.hostname                                 //灞忓箷鎴浘鐨剆erver绔枃浠舵墍鍦ㄧ殑缃戠珯鍦板潃鎴栬�ip锛岃涓嶈鍔爃ttp://

    });
    me.commands['snapscreen'] = {
        execCommand: function(){
            var me = this,lang = me.getLang("snapScreen_plugin");
            if(!snapplugin){
                var container = me.container;
                doc = container.ownerDocument || container.document;
                snapplugin = doc.createElement("object");
                try{snapplugin.type = "application/x-pluginbaidusnap";}catch(e){
                    return;
                }
                snapplugin.style.cssText = "position:absolute;left:-9999px;";
                snapplugin.setAttribute("width","0");
                snapplugin.setAttribute("height","0");
                container.appendChild(snapplugin);
            }


           var editorOptions = me.options;

            var onSuccess = function(rs){
                try{
                    rs = eval("("+ rs +")");
                }catch(e){
                    alert(lang.callBackErrorMsg);
                    return;
                }

                if(rs.state != 'SUCCESS'){
                    alert(rs.state);
                    return;
                }
                me.execCommand('insertimage', {
                    src: editorOptions.snapscreenPath + rs.url,
                    floatStyle: editorOptions.snapscreenImgAlign,
                    _src:editorOptions.snapscreenPath + rs.url
                });
            };
            var onStartUpload = function(){
                //寮�鎴浘涓婁紶
            };
            var onError = function(){
                alert(lang.uploadErrorMsg);
            };
            try{
                var port = editorOptions.snapscreenServerPort + '';
                editorOptions.snapscreenServerUrl = editorOptions.snapscreenServerUrl.split( editorOptions.snapscreenHost );
                editorOptions.snapscreenServerUrl = editorOptions.snapscreenServerUrl[1] || editorOptions.snapscreenServerUrl[0];
                if( editorOptions.snapscreenServerUrl.indexOf(":"+port) === 0 ) {
                    editorOptions.snapscreenServerUrl = editorOptions.snapscreenServerUrl.substring( port.length+1 );
                }
                var ret =snapplugin.saveSnapshot(editorOptions.snapscreenHost, editorOptions.snapscreenServerUrl, port);
                onSuccess(ret);
            }catch(e){
                me.ui._dialogs['snapscreenDialog'].open();
            }
        }
    };
}


///import core
///commands 鎻掑叆绌鸿
///commandsName  insertparagraph
///commandsTitle  鎻掑叆绌鸿
/**
 * 鎻掑叆绌鸿
 * @function
 * @name baidu.editor.execCommand
 * @param   {String}   cmdName     insertparagraph
 */

UE.commands['insertparagraph'] = {
    execCommand : function( cmdName,front) {
        var me = this,
            range = me.selection.getRange(),
            start = range.startContainer,tmpNode;
        while(start ){
            if(domUtils.isBody(start)){
                break;
            }
            tmpNode = start;
            start = start.parentNode;
        }
        if(tmpNode){
            var p = me.document.createElement('p');
            if(front){
                tmpNode.parentNode.insertBefore(p,tmpNode)
            }else{
                tmpNode.parentNode.insertBefore(p,tmpNode.nextSibling)
            }
            domUtils.fillNode(me.document,p);
            range.setStart(p,0).setCursor(false,true);
        }
    }
};


///import core
///import plugins/inserthtml.js
///commands 鐧惧害搴旂敤
///commandsName webapp
///commandsTitle  鐧惧害搴旂敤
///commandsDialog  dialogs\webapp
UE.plugins['webapp'] = function () {
    var me = this;
    function createInsertStr( obj, toIframe, addParagraph ) {
        return !toIframe ?
                (addParagraph ? '<p>' : '') + '<img title="'+obj.title+'" width="' + obj.width + '" height="' + obj.height + '"' +
                        ' src="' + me.options.UEDITOR_HOME_URL + 'themes/default/images/spacer.gif" style="background:url(' + obj.logo+') no-repeat center center; border:1px solid gray;" class="edui-faked-webapp" _url="' + obj.url + '" />' +
                        (addParagraph ? '</p>' : '')
                :
                '<iframe class="edui-faked-webapp" title="'+obj.title+'" width="' + obj.width + '" height="' + obj.height + '"  scrolling="no" frameborder="0" src="' + obj.url + '" logo_url = '+obj.logo+'></iframe>';
    }

    function switchImgAndIframe( img2frame ) {
        var tmpdiv,
                nodes = domUtils.getElementsByTagName( me.document, !img2frame ? "iframe" : "img" );
        for ( var i = 0, node; node = nodes[i++]; ) {
            if ( node.className != "edui-faked-webapp" ){
                continue;
            }
            tmpdiv = me.document.createElement( "div" );
            tmpdiv.innerHTML = createInsertStr( img2frame ? {url:node.getAttribute( "_url" ), width:node.width, height:node.height,title:node.title,logo:node.style.backgroundImage.replace("url(","").replace(")","")} : {url:node.getAttribute( "src", 2 ),title:node.title, width:node.width, height:node.height,logo:node.getAttribute("logo_url")}, img2frame ? true : false,false );
            node.parentNode.replaceChild( tmpdiv.firstChild, node );
        }
    }

    me.addListener( "beforegetcontent", function () {
        switchImgAndIframe( true );
    } );
    me.addListener( 'aftersetcontent', function () {
        switchImgAndIframe( false );
    } );
    me.addListener( 'aftergetcontent', function ( cmdName ) {
        if ( cmdName == 'aftergetcontent' && me.queryCommandState( 'source' ) ){
            return;
        }
        switchImgAndIframe( false );
    } );

    me.commands['webapp'] = {
        execCommand:function ( cmd, obj ) {
            me.execCommand( "inserthtml", createInsertStr( obj, false,true ) );
        }
    };
};

///import core
///import plugins\inserthtml.js
///import plugins\cleardoc.js
///commands 妯℃澘
///commandsName  template
///commandsTitle  妯℃澘
///commandsDialog  dialogs\template
UE.plugins['template'] = function () {
    UE.commands['template'] = {
        execCommand:function (cmd, obj) {
            obj.html && this.execCommand("inserthtml", obj.html);
        }
    };
    this.addListener("click", function (type, evt) {
        var el = evt.target || evt.srcElement,
            range = this.selection.getRange();
        var tnode = domUtils.findParent(el, function (node) {
            if (node.className && domUtils.hasClass(node, "ue_t")) {
                return node;
            }
        }, true);
        tnode && range.selectNode(tnode).shrinkBoundary().select();
    });
    this.addListener("keydown", function (type, evt) {
        var range = this.selection.getRange();
        if (!range.collapsed) {
            if (!evt.ctrlKey && !evt.metaKey && !evt.shiftKey && !evt.altKey) {
                var tnode = domUtils.findParent(range.startContainer, function (node) {
                    if (node.className && domUtils.hasClass(node, "ue_t")) {
                        return node;
                    }
                }, true);
                if (tnode) {
                    domUtils.removeClasses(tnode, ["ue_t"]);
                }
            }
        }
    });
};

///import core
///import plugins/inserthtml.js
///commands 闊充箰
///commandsName Music
///commandsTitle  鎻掑叆闊充箰
///commandsDialog  dialogs\music
UE.plugins['music'] = function () {
    var me = this,
        div;

    /**
     * 鍒涘缓鎻掑叆闊充箰瀛楃绐�
     * @param url 闊充箰鍦板潃
     * @param width 闊充箰瀹藉害
     * @param height 闊充箰楂樺害
     * @param align 闃撮洦瀵归綈
     * @param toEmbed 鏄惁浠lash浠ｆ浛鏄剧ず
     * @param addParagraph  鏄惁闇�娣诲姞P鏍囩
     */
    function creatInsertStr(url,width,height,align,toEmbed,addParagraph){
        return  !toEmbed ?
            (addParagraph? ('<p '+ (align !="none" ? ( align == "center"? ' style="text-align:center;" ':' style="float:"'+ align ) : '') + '>'): '') +
                '<img align="'+align+'" width="'+ width +'" height="' + height + '" _url="'+url+'" class="edui-faked-music"' +
                ' src="'+me.options.langPath+me.options.lang+'/images/music.png" />' +
                (addParagraph?'</p>':'')
            :
            '<embed type="application/x-shockwave-flash" class="edui-faked-music" pluginspage="http://www.macromedia.com/go/getflashplayer"' +
                ' src="' + url + '" width="' + width  + '" height="' + height  + '" align="' + align + '"' +
                ( align !="none" ? ' style= "'+ ( align == "center"? "display:block;":" float: "+ align )  + '"' :'' ) +
                ' wmode="transparent" play="true" loop="false" menu="false" allowscriptaccess="never" allowfullscreen="true" >';
    }

    function switchImgAndEmbed(img2embed) {
        var tmpdiv,
            nodes = domUtils.getElementsByTagName(me.document, !img2embed ? "embed" : "img");
        for (var i = 0, node; node = nodes[i++];) {
            if (node.className != "edui-faked-music") {
                continue;
            }
            tmpdiv = me.document.createElement("div");
            //鍏堢湅float鍦ㄧ湅align,娴姩鏈夌殑鏄椂鍊欐槸鍦╢loat涓婂畾涔夌殑
            var align = domUtils.getComputedStyle(node,'float');
            align = align == 'none' ? (node.getAttribute('align') || '') : align;
            tmpdiv.innerHTML = creatInsertStr(img2embed ? node.getAttribute("_url") : node.getAttribute("src"), node.width, node.height, align, img2embed);
            node.parentNode.replaceChild(tmpdiv.firstChild, node);
        }
    }

    me.addListener("beforegetcontent", function () {
        switchImgAndEmbed(true);
    });
    me.addListener('aftersetcontent', function () {
        switchImgAndEmbed(false);
    });
    me.addListener('aftergetcontent', function (cmdName) {
        if (cmdName == 'aftergetcontent' && me.queryCommandState('source')) {
            return;
        }
        switchImgAndEmbed(false);
    });

    me.commands["music"] = {
        execCommand:function (cmd, musicObj) {
            var me = this,
                str = creatInsertStr(musicObj.url, musicObj.width || 400, musicObj.height || 95, "none", false, true);
            me.execCommand("inserthtml",str);
        },
        queryCommandState:function () {
            var me = this,
                img = me.selection.getRange().getClosedNode(),
                flag = img && (img.className == "edui-faked-music");
            return flag ? 1 : 0;
        }
    };
};
var baidu = baidu || {};
baidu.editor = baidu.editor || {};
baidu.editor.ui = {};
(function (){
    var browser = baidu.editor.browser,
        domUtils = baidu.editor.dom.domUtils;

    var magic = '$EDITORUI';
    var root = window[magic] = {};
    var uidMagic = 'ID' + magic;
    var uidCount = 0;

    var uiUtils = baidu.editor.ui.uiUtils = {
        uid: function (obj){
            return (obj ? obj[uidMagic] || (obj[uidMagic] = ++ uidCount) : ++ uidCount);
        },
        hook: function ( fn, callback ) {
            var dg;
            if (fn && fn._callbacks) {
                dg = fn;
            } else {
                dg = function (){
                    var q;
                    if (fn) {
                        q = fn.apply(this, arguments);
                    }
                    var callbacks = dg._callbacks;
                    var k = callbacks.length;
                    while (k --) {
                        var r = callbacks[k].apply(this, arguments);
                        if (q === undefined) {
                            q = r;
                        }
                    }
                    return q;
                };
                dg._callbacks = [];
            }
            dg._callbacks.push(callback);
            return dg;
        },
        createElementByHtml: function (html){
            var el = document.createElement('div');
            el.innerHTML = html;
            el = el.firstChild;
            el.parentNode.removeChild(el);
            return el;
        },
        getViewportElement: function (){
            return (browser.ie && browser.quirks) ?
                document.body : document.documentElement;
        },
        getClientRect: function (element){
            var bcr;
            //trace  IE6涓嬪湪鎺у埗缂栬緫鍣ㄦ樉闅愭椂鍙兘浼氭姤閿欙紝catch涓�笅
            try{
                bcr = element.getBoundingClientRect();
            }catch(e){
                bcr={left:0,top:0,height:0,width:0}
            }
            var rect = {
                left: Math.round(bcr.left),
                top: Math.round(bcr.top),
                height: Math.round(bcr.bottom - bcr.top),
                width: Math.round(bcr.right - bcr.left)
            };
            var doc;
            while ((doc = element.ownerDocument) !== document &&
                (element = domUtils.getWindow(doc).frameElement)) {
                bcr = element.getBoundingClientRect();
                rect.left += bcr.left;
                rect.top += bcr.top;
            }
            rect.bottom = rect.top + rect.height;
            rect.right = rect.left + rect.width;
            return rect;
        },
        getViewportRect: function (){
            var viewportEl = uiUtils.getViewportElement();
            var width = (window.innerWidth || viewportEl.clientWidth) | 0;
            var height = (window.innerHeight ||viewportEl.clientHeight) | 0;
            return {
                left: 0,
                top: 0,
                height: height,
                width: width,
                bottom: height,
                right: width
            };
        },
        setViewportOffset: function (element, offset){
            var rect;
            var fixedLayer = uiUtils.getFixedLayer();
            if (element.parentNode === fixedLayer) {
                element.style.left = offset.left + 'px';
                element.style.top = offset.top + 'px';
            } else {
                domUtils.setViewportOffset(element, offset);
            }
        },
        getEventOffset: function (evt){
            var el = evt.target || evt.srcElement;
            var rect = uiUtils.getClientRect(el);
            var offset = uiUtils.getViewportOffsetByEvent(evt);
            return {
                left: offset.left - rect.left,
                top: offset.top - rect.top
            };
        },
        getViewportOffsetByEvent: function (evt){
            var el = evt.target || evt.srcElement;
            var frameEl = domUtils.getWindow(el).frameElement;
            var offset = {
                left: evt.clientX,
                top: evt.clientY
            };
            if (frameEl && el.ownerDocument !== document) {
                var rect = uiUtils.getClientRect(frameEl);
                offset.left += rect.left;
                offset.top += rect.top;
            }
            return offset;
        },
        setGlobal: function (id, obj){
            root[id] = obj;
            return magic + '["' + id  + '"]';
        },
        unsetGlobal: function (id){
            delete root[id];
        },
        copyAttributes: function (tgt, src){
            var attributes = src.attributes;
            var k = attributes.length;
            while (k --) {
                var attrNode = attributes[k];
                if ( attrNode.nodeName != 'style' && attrNode.nodeName != 'class' && (!browser.ie || attrNode.specified) ) {
                    tgt.setAttribute(attrNode.nodeName, attrNode.nodeValue);
                }
            }
            if (src.className) {
                domUtils.addClass(tgt,src.className);
            }
            if (src.style.cssText) {
                tgt.style.cssText += ';' + src.style.cssText;
            }
        },
        removeStyle: function (el, styleName){
            if (el.style.removeProperty) {
                el.style.removeProperty(styleName);
            } else if (el.style.removeAttribute) {
                el.style.removeAttribute(styleName);
            } else throw '';
        },
        contains: function (elA, elB){
            return elA && elB && (elA === elB ? false : (
                elA.contains ? elA.contains(elB) :
                    elA.compareDocumentPosition(elB) & 16
                ));
        },
        startDrag: function (evt, callbacks,doc){
            var doc = doc || document;
            var startX = evt.clientX;
            var startY = evt.clientY;
            function handleMouseMove(evt){
                var x = evt.clientX - startX;
                var y = evt.clientY - startY;
                callbacks.ondragmove(x, y,evt);
                if (evt.stopPropagation) {
                    evt.stopPropagation();
                } else {
                    evt.cancelBubble = true;
                }
            }
            if (doc.addEventListener) {
                function handleMouseUp(evt){
                    doc.removeEventListener('mousemove', handleMouseMove, true);
                    doc.removeEventListener('mouseup', handleMouseUp, true);
                    window.removeEventListener('mouseup', handleMouseUp, true);
                    callbacks.ondragstop();
                }
                doc.addEventListener('mousemove', handleMouseMove, true);
                doc.addEventListener('mouseup', handleMouseUp, true);
                window.addEventListener('mouseup', handleMouseUp, true);

                evt.preventDefault();
            } else {
                var elm = evt.srcElement;
                elm.setCapture();
                function releaseCaptrue(){
                    elm.releaseCapture();
                    elm.detachEvent('onmousemove', handleMouseMove);
                    elm.detachEvent('onmouseup', releaseCaptrue);
                    elm.detachEvent('onlosecaptrue', releaseCaptrue);
                    callbacks.ondragstop();
                }
                elm.attachEvent('onmousemove', handleMouseMove);
                elm.attachEvent('onmouseup', releaseCaptrue);
                elm.attachEvent('onlosecaptrue', releaseCaptrue);
                evt.returnValue = false;
            }
            callbacks.ondragstart();
        },
        getFixedLayer: function (){
            var layer = document.getElementById('edui_fixedlayer');
            if (layer == null) {
                layer = document.createElement('div');
                layer.id = 'edui_fixedlayer';
                document.body.appendChild(layer);
                if (browser.ie && browser.version <= 8) {
                    layer.style.position = 'absolute';
                    bindFixedLayer();
                    setTimeout(updateFixedOffset);
                } else {
                    layer.style.position = 'fixed';
                }
                layer.style.left = '0';
                layer.style.top = '0';
                layer.style.width = '0';
                layer.style.height = '0';
            }
            return layer;
        },
        makeUnselectable: function (element){
            if (browser.opera || (browser.ie && browser.version < 9)) {
                element.unselectable = 'on';
                if (element.hasChildNodes()) {
                    for (var i=0; i<element.childNodes.length; i++) {
                        if (element.childNodes[i].nodeType == 1) {
                            uiUtils.makeUnselectable(element.childNodes[i]);
                        }
                    }
                }
            } else {
                if (element.style.MozUserSelect !== undefined) {
                    element.style.MozUserSelect = 'none';
                } else if (element.style.WebkitUserSelect !== undefined) {
                    element.style.WebkitUserSelect = 'none';
                } else if (element.style.KhtmlUserSelect !== undefined) {
                    element.style.KhtmlUserSelect = 'none';
                }
            }
        }
    };
    function updateFixedOffset(){
        var layer = document.getElementById('edui_fixedlayer');
        uiUtils.setViewportOffset(layer, {
            left: 0,
            top: 0
        });
//        layer.style.display = 'none';
//        layer.style.display = 'block';

        //#trace: 1354
//        setTimeout(updateFixedOffset);
    }
    function bindFixedLayer(adjOffset){
        domUtils.on(window, 'scroll', updateFixedOffset);
        domUtils.on(window, 'resize', baidu.editor.utils.defer(updateFixedOffset, 0, true));
    }
})();

(function () {
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        EventBase = baidu.editor.EventBase,
        UIBase = baidu.editor.ui.UIBase = function () {
        };

    UIBase.prototype = {
        className:'',
        uiName:'',
        initOptions:function (options) {
            var me = this;
            for (var k in options) {
                me[k] = options[k];
            }
            this.id = this.id || 'edui' + uiUtils.uid();
        },
        initUIBase:function () {
            this._globalKey = utils.unhtml(uiUtils.setGlobal(this.id, this));
        },
        render:function (holder) {
            var html = this.renderHtml();
            var el = uiUtils.createElementByHtml(html);

            //by xuheng 缁欐瘡涓猲ode娣诲姞class
            var list = domUtils.getElementsByTagName(el, "*");
            var theme = "edui-" + (this.theme || this.editor.options.theme);
            var layer = document.getElementById('edui_fixedlayer');
            for (var i = 0, node; node = list[i++];) {
                domUtils.addClass(node, theme);
            }
            domUtils.addClass(el, theme);
            if(layer){
                layer.className="";
                domUtils.addClass(layer,theme);
            }

            var seatEl = this.getDom();
            if (seatEl != null) {
                seatEl.parentNode.replaceChild(el, seatEl);
                uiUtils.copyAttributes(el, seatEl);
            } else {
                if (typeof holder == 'string') {
                    holder = document.getElementById(holder);
                }
                holder = holder || uiUtils.getFixedLayer();
                domUtils.addClass(holder, theme);
                holder.appendChild(el);
            }
            this.postRender();
        },
        getDom:function (name) {
            if (!name) {
                return document.getElementById(this.id);
            } else {
                return document.getElementById(this.id + '_' + name);
            }
        },
        postRender:function () {
            this.fireEvent('postrender');
        },
        getHtmlTpl:function () {
            return '';
        },
        formatHtml:function (tpl) {
            var prefix = 'edui-' + this.uiName;
            return (tpl
                .replace(/##/g, this.id)
                .replace(/%%-/g, this.uiName ? prefix + '-' : '')
                .replace(/%%/g, (this.uiName ? prefix : '') + ' ' + this.className)
                .replace(/\$\$/g, this._globalKey));
        },
        renderHtml:function () {
            return this.formatHtml(this.getHtmlTpl());
        },
        dispose:function () {
            var box = this.getDom();
            if (box) baidu.editor.dom.domUtils.remove(box);
            uiUtils.unsetGlobal(this.id);
        }
    };
    utils.inherits(UIBase, EventBase);
})();

(function (){
    var utils = baidu.editor.utils,
        UIBase = baidu.editor.ui.UIBase,
        Separator = baidu.editor.ui.Separator = function (options){
            this.initOptions(options);
            this.initSeparator();
        };
    Separator.prototype = {
        uiName: 'separator',
        initSeparator: function (){
            this.initUIBase();
        },
        getHtmlTpl: function (){
            return '<div id="##" class="edui-box %%"></div>';
        }
    };
    utils.inherits(Separator, UIBase);

})();

///import core
///import uicore
(function (){
    var utils = baidu.editor.utils,
        domUtils = baidu.editor.dom.domUtils,
        UIBase = baidu.editor.ui.UIBase,
        uiUtils = baidu.editor.ui.uiUtils;
    
    var Mask = baidu.editor.ui.Mask = function (options){
        this.initOptions(options);
        this.initUIBase();
    };
    Mask.prototype = {
        getHtmlTpl: function (){
            return '<div id="##" class="edui-mask %%" onmousedown="return $$._onMouseDown(event, this);"></div>';
        },
        postRender: function (){
            var me = this;
            domUtils.on(window, 'resize', function (){
                setTimeout(function (){
                    if (!me.isHidden()) {
                        me._fill();
                    }
                });
            });
        },
        show: function (zIndex){
            this._fill();
            this.getDom().style.display = '';
            this.getDom().style.zIndex = zIndex;
        },
        hide: function (){
            this.getDom().style.display = 'none';
            this.getDom().style.zIndex = '';
        },
        isHidden: function (){
            return this.getDom().style.display == 'none';
        },
        _onMouseDown: function (){
            return false;
        },
        _fill: function (){
            var el = this.getDom();
            var vpRect = uiUtils.getViewportRect();
            el.style.width = vpRect.width + 'px';
            el.style.height = vpRect.height + 'px';
        }
    };
    utils.inherits(Mask, UIBase);
})();

///import core
///import uicore
(function () {
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        domUtils = baidu.editor.dom.domUtils,
        UIBase = baidu.editor.ui.UIBase,
        Popup = baidu.editor.ui.Popup = function (options){
            this.initOptions(options);
            this.initPopup();
        };

    var allPopups = [];
    function closeAllPopup( evt,el ){
        for ( var i = 0; i < allPopups.length; i++ ) {
            var pop = allPopups[i];
            if (!pop.isHidden()) {
                if (pop.queryAutoHide(el) !== false) {
                    if(evt&&/scroll/ig.test(evt.type)&&pop.className=="edui-wordpastepop")   return;
                    pop.hide();
                }
            }
        }

        if(allPopups.length)
            pop.editor.fireEvent("afterhidepop");
    }

    Popup.postHide = closeAllPopup;

    var ANCHOR_CLASSES = ['edui-anchor-topleft','edui-anchor-topright',
        'edui-anchor-bottomleft','edui-anchor-bottomright'];
    Popup.prototype = {
        SHADOW_RADIUS: 5,
        content: null,
        _hidden: false,
        autoRender: true,
        canSideLeft: true,
        canSideUp: true,
        initPopup: function (){
            this.initUIBase();
            allPopups.push( this );
        },
        getHtmlTpl: function (){
            return '<div id="##" class="edui-popup %%" onmousedown="return false;">' +
                ' <div id="##_body" class="edui-popup-body">' +
                ' <iframe style="position:absolute;z-index:-1;left:0;top:0;background-color: transparent;" frameborder="0" width="100%" height="100%" src="javascript:"></iframe>' +
                ' <div class="edui-shadow"></div>' +
                ' <div id="##_content" class="edui-popup-content">' +
                this.getContentHtmlTpl() +
                '  </div>' +
                ' </div>' +
                '</div>';
        },
        getContentHtmlTpl: function (){
            if(this.content){
                if (typeof this.content == 'string') {
                    return this.content;
                }
                return this.content.renderHtml();
            }else{
                return ''
            }

        },
        _UIBase_postRender: UIBase.prototype.postRender,
        postRender: function (){


            if (this.content instanceof UIBase) {
                this.content.postRender();
            }

            //鎹曡幏榧犳爣婊氳疆
            if( this.captureWheel && !this.captured ) {

                this.captured = true;

                var winHeight = ( document.documentElement.clientHeight || document.body.clientHeight )  - 80,
                    _height = this.getDom().offsetHeight,
                    _top = domUtils.getXY( this.combox.getDom() ).y,
                    content = this.getDom('content'),
                    me = this;

                while( _top + _height > winHeight ) {
                    _height -= 30;
                    content.style.height = _height + 'px';
                }

                //闃绘鍦╟ombox涓婄殑榧犳爣婊氳疆浜嬩欢, 闃叉鐢ㄦ埛鐨勬甯告搷浣滆璇В
                if( window.XMLHttpRequest ) {

                    domUtils.on( content, ( 'onmousewheel' in document.body ) ? 'mousewheel' :'DOMMouseScroll' , function(e){

                        if(e.preventDefault) {
                            e.preventDefault();
                        } else {
                            e.returnValue = false;
                        }

                        if( e.wheelDelta ) {

                            content.scrollTop -= ( e.wheelDelta / 120 )*60;

                        } else {

                            content.scrollTop -= ( e.detail / -3 )*60;

                        }

                    });

                } else {

                    //ie6
                    domUtils.on( this.getDom(), 'mousewheel' , function(e){

                        e.returnValue = false;

                        me.getDom('content').scrollTop -= ( e.wheelDelta / 120 )*60;

                    });

                }

            }
            this.fireEvent('postRenderAfter');
            this.hide(true);
            this._UIBase_postRender();
        },
        _doAutoRender: function (){
            if (!this.getDom() && this.autoRender) {
                this.render();
            }
        },
        mesureSize: function (){
            var box = this.getDom('content');
            return uiUtils.getClientRect(box);
        },
        fitSize: function (){
            if( this.captureWheel && this.sized ) {
                return this.__size;
            }
            this.sized = true;
            var popBodyEl = this.getDom('body');
            popBodyEl.style.width = '';
            popBodyEl.style.height = '';
            var size = this.mesureSize();
            if( this.captureWheel ) {
                popBodyEl.style.width =  -(-20 -size.width) + 'px';
            } else {
                popBodyEl.style.width =  size.width + 'px';
            }
            popBodyEl.style.height = size.height + 'px';
            this.__size = size;
            this.captureWheel && (this.getDom('content').style.overflow = 'auto');
            return size;
        },
        showAnchor: function ( element, hoz ){
            this.showAnchorRect( uiUtils.getClientRect( element ), hoz );
        },
        showAnchorRect: function ( rect, hoz, adj ){
            this._doAutoRender();
            var vpRect = uiUtils.getViewportRect();
            this._show();
            var popSize = this.fitSize();

            var sideLeft, sideUp, left, top;
            if (hoz) {
                sideLeft = this.canSideLeft && (rect.right + popSize.width > vpRect.right && rect.left > popSize.width);
                sideUp = this.canSideUp && (rect.top + popSize.height > vpRect.bottom && rect.bottom > popSize.height);
                left = (sideLeft ? rect.left - popSize.width : rect.right);
                top = (sideUp ? rect.bottom - popSize.height : rect.top);
            } else {
                sideLeft = this.canSideLeft && (rect.right + popSize.width > vpRect.right && rect.left > popSize.width);
                sideUp = this.canSideUp && (rect.top + popSize.height > vpRect.bottom && rect.bottom > popSize.height);
                left = (sideLeft ? rect.right - popSize.width : rect.left);
                top = (sideUp ? rect.top - popSize.height : rect.bottom);
            }

            var popEl = this.getDom();
            uiUtils.setViewportOffset(popEl, {
                left: left,
                top: top
            });
            domUtils.removeClasses(popEl, ANCHOR_CLASSES);
            popEl.className += ' ' + ANCHOR_CLASSES[(sideUp ? 1 : 0) * 2 + (sideLeft ? 1 : 0)];
            if(this.editor){
                popEl.style.zIndex = this.editor.container.style.zIndex * 1 + 10;
                baidu.editor.ui.uiUtils.getFixedLayer().style.zIndex = popEl.style.zIndex - 1;
            }

        },
        showAt: function (offset) {
            var left = offset.left;
            var top = offset.top;
            var rect = {
                left: left,
                top: top,
                right: left,
                bottom: top,
                height: 0,
                width: 0
            };
            this.showAnchorRect(rect, false, true);
        },
        _show: function (){
            if (this._hidden) {
                var box = this.getDom();
                box.style.display = '';
                this._hidden = false;
//                if (box.setActive) {
//                    box.setActive();
//                }
                this.fireEvent('show');
            }
        },
        isHidden: function (){
            return this._hidden;
        },
        show: function (){
            this._doAutoRender();
            this._show();
        },
        hide: function (notNofity){
            if (!this._hidden && this.getDom()) {
                this.getDom().style.display = 'none';
                this._hidden = true;
                if (!notNofity) {
                    this.fireEvent('hide');
                }
            }
        },
        queryAutoHide: function (el){
            return !el || !uiUtils.contains(this.getDom(), el);
        }
    };
    utils.inherits(Popup, UIBase);
    
    domUtils.on( document, 'mousedown', function ( evt ) {
        var el = evt.target || evt.srcElement;
        closeAllPopup( evt,el );
    } );
    domUtils.on( window, 'scroll', function (evt,el) {
        closeAllPopup( evt,el );
    } );

})();

///import core
///import uicore
(function (){
    var utils = baidu.editor.utils,
        UIBase = baidu.editor.ui.UIBase,
        ColorPicker = baidu.editor.ui.ColorPicker = function (options){
            this.initOptions(options);
            this.noColorText = this.noColorText || this.editor.getLang("clearColor");
            this.initUIBase();
        };

    ColorPicker.prototype = {
        getHtmlTpl: function (){
            return genColorPicker(this.noColorText,this.editor);
        },
        _onTableClick: function (evt){
            var tgt = evt.target || evt.srcElement;
            var color = tgt.getAttribute('data-color');
            if (color) {
                this.fireEvent('pickcolor', color);
            }
        },
        _onTableOver: function (evt){
            var tgt = evt.target || evt.srcElement;
            var color = tgt.getAttribute('data-color');
            if (color) {
                this.getDom('preview').style.backgroundColor = color;
            }
        },
        _onTableOut: function (){
            this.getDom('preview').style.backgroundColor = '';
        },
        _onPickNoColor: function (){
            this.fireEvent('picknocolor');
        }
    };
    utils.inherits(ColorPicker, UIBase);

    var COLORS = (
        'ffffff,000000,eeece1,1f497d,4f81bd,c0504d,9bbb59,8064a2,4bacc6,f79646,' +
            'f2f2f2,7f7f7f,ddd9c3,c6d9f0,dbe5f1,f2dcdb,ebf1dd,e5e0ec,dbeef3,fdeada,' +
            'd8d8d8,595959,c4bd97,8db3e2,b8cce4,e5b9b7,d7e3bc,ccc1d9,b7dde8,fbd5b5,' +
            'bfbfbf,3f3f3f,938953,548dd4,95b3d7,d99694,c3d69b,b2a2c7,92cddc,fac08f,' +
            'a5a5a5,262626,494429,17365d,366092,953734,76923c,5f497a,31859b,e36c09,' +
            '7f7f7f,0c0c0c,1d1b10,0f243e,244061,632423,4f6128,3f3151,205867,974806,' +
            'c00000,ff0000,ffc000,ffff00,92d050,00b050,00b0f0,0070c0,002060,7030a0,').split(',');

    function genColorPicker(noColorText,editor){
        var html = '<div id="##" class="edui-colorpicker %%">' +
            '<div class="edui-colorpicker-topbar edui-clearfix">' +
            '<div unselectable="on" id="##_preview" class="edui-colorpicker-preview"></div>' +
            '<div unselectable="on" class="edui-colorpicker-nocolor" onclick="$$._onPickNoColor(event, this);">'+ noColorText +'</div>' +
            '</div>' +
            '<table  class="edui-box" style="border-collapse: collapse;" onmouseover="$$._onTableOver(event, this);" onmouseout="$$._onTableOut(event, this);" onclick="return $$._onTableClick(event, this);" cellspacing="0" cellpadding="0">' +
            '<tr style="border-bottom: 1px solid #ddd;font-size: 13px;line-height: 25px;color:#39C;padding-top: 2px"><td colspan="10">'+editor.getLang("themeColor")+'</td> </tr>'+
            '<tr class="edui-colorpicker-tablefirstrow" >';
        for (var i=0; i<COLORS.length; i++) {
            if (i && i%10 === 0) {
                html += '</tr>'+(i==60?'<tr style="border-bottom: 1px solid #ddd;font-size: 13px;line-height: 25px;color:#39C;"><td colspan="10">'+editor.getLang("standardColor")+'</td></tr>':'')+'<tr'+(i==60?' class="edui-colorpicker-tablefirstrow"':'')+'>';
            }
            html += i<70 ? '<td style="padding: 0 2px;"><a hidefocus title="'+COLORS[i]+'" onclick="return false;" href="javascript:" unselectable="on" class="edui-box edui-colorpicker-colorcell"' +
                ' data-color="#'+ COLORS[i] +'"'+
                ' style="background-color:#'+ COLORS[i] +';border:solid #ccc;'+
                (i<10 || i>=60?'border-width:1px;':
                    i>=10&&i<20?'border-width:1px 1px 0 1px;':

                        'border-width:0 1px 0 1px;')+
                '"' +
                '></a></td>':'';
        }
        html += '</tr></table></div>';
        return html;
    }
})();

///import core
///import uicore
(function (){
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        UIBase = baidu.editor.ui.UIBase;
    
    var TablePicker = baidu.editor.ui.TablePicker = function (options){
        this.initOptions(options);
        this.initTablePicker();
    };
    TablePicker.prototype = {
        defaultNumRows: 10,
        defaultNumCols: 10,
        maxNumRows: 20,
        maxNumCols: 20,
        numRows: 10,
        numCols: 10,
        lengthOfCellSide: 22,
        initTablePicker: function (){
            this.initUIBase();
        },
        getHtmlTpl: function (){
            var me = this;
            return '<div id="##" class="edui-tablepicker %%">' +
                 '<div class="edui-tablepicker-body">' +
                  '<div class="edui-infoarea">' +
                   '<span id="##_label" class="edui-label"></span>' +
                  '</div>' +
                  '<div class="edui-pickarea"' +
                   ' onmousemove="$$._onMouseMove(event, this);"' +
                   ' onmouseover="$$._onMouseOver(event, this);"' +
                   ' onmouseout="$$._onMouseOut(event, this);"' +
                   ' onclick="$$._onClick(event, this);"' +
                  '>' +
                    '<div id="##_overlay" class="edui-overlay"></div>' +
                  '</div>' +
                 '</div>' +
                '</div>';
        },
        _UIBase_render: UIBase.prototype.render,
        render: function (holder){
            this._UIBase_render(holder);
            this.getDom('label').innerHTML = '0'+this.editor.getLang("t_row")+' x 0'+this.editor.getLang("t_col");
        },
        _track: function (numCols, numRows){
            var style = this.getDom('overlay').style;
            var sideLen = this.lengthOfCellSide;
            style.width = numCols * sideLen + 'px';
            style.height = numRows * sideLen + 'px';
            var label = this.getDom('label');
            label.innerHTML = numCols +this.editor.getLang("t_col")+' x ' + numRows + this.editor.getLang("t_row");
            this.numCols = numCols;
            this.numRows = numRows;
        },
        _onMouseOver: function (evt, el){
            var rel = evt.relatedTarget || evt.fromElement;
            if (!uiUtils.contains(el, rel) && el !== rel) {
                this.getDom('label').innerHTML = '0'+this.editor.getLang("t_col")+' x 0'+this.editor.getLang("t_row");
                this.getDom('overlay').style.visibility = '';
            }
        },
        _onMouseOut: function (evt, el){
            var rel = evt.relatedTarget || evt.toElement;
            if (!uiUtils.contains(el, rel) && el !== rel) {
                this.getDom('label').innerHTML = '0'+this.editor.getLang("t_col")+' x 0'+this.editor.getLang("t_row");
                this.getDom('overlay').style.visibility = 'hidden';
            }
        },
        _onMouseMove: function (evt, el){
            var style = this.getDom('overlay').style;
            var offset = uiUtils.getEventOffset(evt);
            var sideLen = this.lengthOfCellSide;
            var numCols = Math.ceil(offset.left / sideLen);
            var numRows = Math.ceil(offset.top / sideLen);
            this._track(numCols, numRows);
        },
        _onClick: function (){
            this.fireEvent('picktable', this.numCols, this.numRows);
        }
    };
    utils.inherits(TablePicker, UIBase);
})();

(function (){
    var browser = baidu.editor.browser,
        domUtils = baidu.editor.dom.domUtils,
        uiUtils = baidu.editor.ui.uiUtils;
    
    var TPL_STATEFUL = 'onmousedown="$$.Stateful_onMouseDown(event, this);"' +
        ' onmouseup="$$.Stateful_onMouseUp(event, this);"' +
        ( browser.ie ? (
        ' onmouseenter="$$.Stateful_onMouseEnter(event, this);"' +
        ' onmouseleave="$$.Stateful_onMouseLeave(event, this);"' )
        : (
        ' onmouseover="$$.Stateful_onMouseOver(event, this);"' +
        ' onmouseout="$$.Stateful_onMouseOut(event, this);"' ));
    
    baidu.editor.ui.Stateful = {
        alwalysHoverable: false,
        target:null,//鐩爣鍏冪礌鍜宼his鎸囧悜dom涓嶄竴鏍�
        Stateful_init: function (){
            this._Stateful_dGetHtmlTpl = this.getHtmlTpl;
            this.getHtmlTpl = this.Stateful_getHtmlTpl;
        },
        Stateful_getHtmlTpl: function (){
            var tpl = this._Stateful_dGetHtmlTpl();
            // 浣跨敤function閬垮厤$杞箟
            return tpl.replace(/stateful/g, function (){ return TPL_STATEFUL; });
        },
        Stateful_onMouseEnter: function (evt, el){
            this.target=el;
            if (!this.isDisabled() || this.alwalysHoverable) {
                this.addState('hover');
                this.fireEvent('over');
            }
        },
        Stateful_onMouseLeave: function (evt, el){
            if (!this.isDisabled() || this.alwalysHoverable) {
                this.removeState('hover');
                this.removeState('active');
                this.fireEvent('out');
            }
        },
        Stateful_onMouseOver: function (evt, el){
            var rel = evt.relatedTarget;
            if (!uiUtils.contains(el, rel) && el !== rel) {
                this.Stateful_onMouseEnter(evt, el);
            }
        },
        Stateful_onMouseOut: function (evt, el){
            var rel = evt.relatedTarget;
            if (!uiUtils.contains(el, rel) && el !== rel) {
                this.Stateful_onMouseLeave(evt, el);
            }
        },
        Stateful_onMouseDown: function (evt, el){
            if (!this.isDisabled()) {
                this.addState('active');
            }
        },
        Stateful_onMouseUp: function (evt, el){
            if (!this.isDisabled()) {
                this.removeState('active');
            }
        },
        Stateful_postRender: function (){
            if (this.disabled && !this.hasState('disabled')) {
                this.addState('disabled');
            }
        },
        hasState: function (state){
            return domUtils.hasClass(this.getStateDom(), 'edui-state-' + state);
        },
        addState: function (state){
            if (!this.hasState(state)) {
                this.getStateDom().className += ' edui-state-' + state;
            }
        },
        removeState: function (state){
            if (this.hasState(state)) {
                domUtils.removeClasses(this.getStateDom(), ['edui-state-' + state]);
            }
        },
        getStateDom: function (){
            return this.getDom('state');
        },
        isChecked: function (){
            return this.hasState('checked');
        },
        setChecked: function (checked){
            if (!this.isDisabled() && checked) {
                this.addState('checked');
            } else {
                this.removeState('checked');
            }
        },
        isDisabled: function (){
            return this.hasState('disabled');
        },
        setDisabled: function (disabled){
            if (disabled) {
                this.removeState('hover');
                this.removeState('checked');
                this.removeState('active');
                this.addState('disabled');
            } else {
                this.removeState('disabled');
            }
        }
    };
})();

///import core
///import uicore
///import ui/stateful.js
(function (){
    var utils = baidu.editor.utils,
        UIBase = baidu.editor.ui.UIBase,
        Stateful = baidu.editor.ui.Stateful,
        Button = baidu.editor.ui.Button = function (options){
            this.initOptions(options);
            this.initButton();
        };
    Button.prototype = {
        uiName: 'button',
        label: '',
        title: '',
        showIcon: true,
        showText: true,
        initButton: function (){
            this.initUIBase();
            this.Stateful_init();
        },
        getHtmlTpl: function (){
            return '<div id="##" class="edui-box %%">' +
                '<div id="##_state" stateful>' +
                 '<div class="%%-wrap"><div id="##_body" unselectable="on" ' + (this.title ? 'title="' + this.title + '"' : '') +
                 ' class="%%-body" onmousedown="return false;" onclick="return $$._onClick();">' +
                  (this.showIcon ? '<div class="edui-box edui-icon"></div>' : '') +
                  (this.showText ? '<div class="edui-box edui-label">' + this.label + '</div>' : '') +
                 '</div>' +
                '</div>' +
                '</div></div>';
        },
        postRender: function (){
            this.Stateful_postRender();
            this.setDisabled(this.disabled)
        },
        _onClick: function (){
            if (!this.isDisabled()) {
                this.fireEvent('click');
            }
        }
    };
    utils.inherits(Button, UIBase);
    utils.extend(Button.prototype, Stateful);

})();

///import core
///import uicore
///import ui/stateful.js
(function (){
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        domUtils = baidu.editor.dom.domUtils,
        UIBase = baidu.editor.ui.UIBase,
        Stateful = baidu.editor.ui.Stateful,
        SplitButton = baidu.editor.ui.SplitButton = function (options){
            this.initOptions(options);
            this.initSplitButton();
        };
    SplitButton.prototype = {
        popup: null,
        uiName: 'splitbutton',
        title: '',
        initSplitButton: function (){
            this.initUIBase();
            this.Stateful_init();
            var me = this;
            if (this.popup != null) {
                var popup = this.popup;
                this.popup = null;
                this.setPopup(popup);
            }
        },
        _UIBase_postRender: UIBase.prototype.postRender,
        postRender: function (){
            this.Stateful_postRender();
            this._UIBase_postRender();
        },
        setPopup: function (popup){
            if (this.popup === popup) return;
            if (this.popup != null) {
                this.popup.dispose();
            }
            popup.addListener('show', utils.bind(this._onPopupShow, this));
            popup.addListener('hide', utils.bind(this._onPopupHide, this));
            popup.addListener('postrender', utils.bind(function (){
                popup.getDom('body').appendChild(
                    uiUtils.createElementByHtml('<div id="' +
                        this.popup.id + '_bordereraser" class="edui-bordereraser edui-background" style="width:' +
                        (uiUtils.getClientRect(this.getDom()).width + 20) + 'px"></div>')
                    );
                popup.getDom().className += ' ' + this.className;
            }, this));
            this.popup = popup;
        },
        _onPopupShow: function (){
            this.addState('opened');
        },
        _onPopupHide: function (){
            this.removeState('opened');
        },
        getHtmlTpl: function (){
            return '<div id="##" class="edui-box %%">' +
                '<div '+ (this.title ? 'title="' + this.title + '"' : '') +' id="##_state" stateful><div class="%%-body">' +
                '<div id="##_button_body" class="edui-box edui-button-body" onclick="$$._onButtonClick(event, this);">' +
                '<div class="edui-box edui-icon"></div>' +
                '</div>' +
                '<div class="edui-box edui-splitborder"></div>' +
                '<div class="edui-box edui-arrow" onclick="$$._onArrowClick();"></div>' +
                '</div></div></div>';
        },
        showPopup: function (){
            // 褰損opup寰�笂寮瑰嚭鐨勬椂鍊欙紝鍋氱壒娈婂鐞�
            var rect = uiUtils.getClientRect(this.getDom());
            rect.top -= this.popup.SHADOW_RADIUS;
            rect.height += this.popup.SHADOW_RADIUS;
            this.popup.showAnchorRect(rect);
        },
        _onArrowClick: function (event, el){
            if (!this.isDisabled()) {
                this.showPopup();
            }
        },
        _onButtonClick: function (){
            if (!this.isDisabled()) {
                this.fireEvent('buttonclick');
            }
        }
    };
    utils.inherits(SplitButton, UIBase);
    utils.extend(SplitButton.prototype, Stateful, true);

})();

///import core
///import uicore
///import ui/colorpicker.js
///import ui/popup.js
///import ui/splitbutton.js
(function (){
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        ColorPicker = baidu.editor.ui.ColorPicker,
        Popup = baidu.editor.ui.Popup,
        SplitButton = baidu.editor.ui.SplitButton,
        ColorButton = baidu.editor.ui.ColorButton = function (options){
            this.initOptions(options);
            this.initColorButton();
        };
    ColorButton.prototype = {
        initColorButton: function (){
            var me = this;
            this.popup = new Popup({
                content: new ColorPicker({
                    noColorText: me.editor.getLang("clearColor"),
                    editor:me.editor,
                    onpickcolor: function (t, color){
                        me._onPickColor(color);
                    },
                    onpicknocolor: function (t, color){
                        me._onPickNoColor(color);
                    }
                }),
                editor:me.editor
            });
            this.initSplitButton();
        },
        _SplitButton_postRender: SplitButton.prototype.postRender,
        postRender: function (){
            this._SplitButton_postRender();
            this.getDom('button_body').appendChild(
                uiUtils.createElementByHtml('<div id="' + this.id + '_colorlump" class="edui-colorlump"></div>')
            );
            this.getDom().className += ' edui-colorbutton';
        },
        setColor: function (color){
            this.getDom('colorlump').style.backgroundColor = color;
            this.color = color;
        },
        _onPickColor: function (color){
            if (this.fireEvent('pickcolor', color) !== false) {
                this.setColor(color);
                this.popup.hide();
            }
        },
        _onPickNoColor: function (color){
            if (this.fireEvent('picknocolor') !== false) {
                this.popup.hide();
            }
        }
    };
    utils.inherits(ColorButton, SplitButton);

})();

///import core
///import uicore
///import ui/popup.js
///import ui/tablepicker.js
///import ui/splitbutton.js
(function (){
    var utils = baidu.editor.utils,
        Popup = baidu.editor.ui.Popup,
        TablePicker = baidu.editor.ui.TablePicker,
        SplitButton = baidu.editor.ui.SplitButton,
        TableButton = baidu.editor.ui.TableButton = function (options){
            this.initOptions(options);
            this.initTableButton();
        };
    TableButton.prototype = {
        initTableButton: function (){
            var me = this;
            this.popup = new Popup({
                content: new TablePicker({
                    editor:me.editor,
                    onpicktable: function (t, numCols, numRows){
                        me._onPickTable(numCols, numRows);
                    }
                }),
                'editor':me.editor
            });
            this.initSplitButton();
        },
        _onPickTable: function (numCols, numRows){
            if (this.fireEvent('picktable', numCols, numRows) !== false) {
                this.popup.hide();
            }
        }
    };
    utils.inherits(TableButton, SplitButton);

})();

///import core
///import uicore
(function () {
    var utils = baidu.editor.utils,
        UIBase = baidu.editor.ui.UIBase;

    var AutoTypeSetPicker = baidu.editor.ui.AutoTypeSetPicker = function (options) {
        this.initOptions(options);
        this.initAutoTypeSetPicker();
    };
    AutoTypeSetPicker.prototype = {
        initAutoTypeSetPicker:function () {
            this.initUIBase();
        },
        getHtmlTpl:function () {
            var me = this.editor,
                opt = me.options.autotypeset,
                lang = me.getLang("autoTypeSet");

            var textAlignInputName = 'textAlignValue' + me.uid,
                imageBlockInputName = 'imageBlockLineValue' + me.uid;

            return '<div id="##" class="edui-autotypesetpicker %%">' +
                '<div class="edui-autotypesetpicker-body">' +
                '<table >' +
                '<tr><td nowrap colspan="2"><input type="checkbox" name="mergeEmptyline" ' + (opt["mergeEmptyline"] ? "checked" : "" ) + '>' + lang.mergeLine + '</td><td colspan="2"><input type="checkbox" name="removeEmptyline" ' + (opt["removeEmptyline"] ? "checked" : "" ) + '>' + lang.delLine + '</td></tr>' +
                '<tr><td nowrap colspan="2"><input type="checkbox" name="removeClass" ' + (opt["removeClass"] ? "checked" : "" ) + '>' + lang.removeFormat + '</td><td colspan="2"><input type="checkbox" name="indent" ' + (opt["indent"] ? "checked" : "" ) + '>' + lang.indent + '</td></tr>' +
                '<tr><td nowrap colspan="2"><input type="checkbox" name="textAlign" ' + (opt["textAlign"] ? "checked" : "" ) + '>' + lang.alignment + '</td><td colspan="2" id="' + textAlignInputName + '"><input type="radio" name="'+ textAlignInputName +'" value="left" ' + ((opt["textAlign"] && opt["textAlign"] == "left") ? "checked" : "") + '>' + me.getLang("justifyleft") + '<input type="radio" name="'+ textAlignInputName +'" value="center" ' + ((opt["textAlign"] && opt["textAlign"] == "center") ? "checked" : "") + '>' + me.getLang("justifycenter") + '<input type="radio" name="'+ textAlignInputName +'" value="right" ' + ((opt["textAlign"] && opt["textAlign"] == "right") ? "checked" : "") + '>' + me.getLang("justifyright") + ' </tr>' +
                '<tr><td nowrap colspan="2"><input type="checkbox" name="imageBlockLine" ' + (opt["imageBlockLine"] ? "checked" : "" ) + '>' + lang.imageFloat + '</td>' +
                '<td nowrap colspan="2" id="'+ imageBlockInputName +'">' +
                '<input type="radio" name="'+ imageBlockInputName +'" value="none" ' + ((opt["imageBlockLine"] && opt["imageBlockLine"] == "none") ? "checked" : "") + '>' + me.getLang("default") +
                '<input type="radio" name="'+ imageBlockInputName +'" value="left" ' + ((opt["imageBlockLine"] && opt["imageBlockLine"] == "left") ? "checked" : "") + '>' + me.getLang("justifyleft") +
                '<input type="radio" name="'+ imageBlockInputName +'" value="center" ' + ((opt["imageBlockLine"] && opt["imageBlockLine"] == "center") ? "checked" : "") + '>' + me.getLang("justifycenter") +
                '<input type="radio" name="'+ imageBlockInputName +'" value="right" ' + ((opt["imageBlockLine"] && opt["imageBlockLine"] == "right") ? "checked" : "") + '>' + me.getLang("justifyright") + '</tr>' +

                '<tr><td nowrap colspan="2"><input type="checkbox" name="clearFontSize" ' + (opt["clearFontSize"] ? "checked" : "" ) + '>' + lang.removeFontsize + '</td><td colspan="2"><input type="checkbox" name="clearFontFamily" ' + (opt["clearFontFamily"] ? "checked" : "" ) + '>' + lang.removeFontFamily + '</td></tr>' +
                '<tr><td nowrap colspan="4"><input type="checkbox" name="removeEmptyNode" ' + (opt["removeEmptyNode"] ? "checked" : "" ) + '>' + lang.removeHtml + '</td></tr>' +
                '<tr><td nowrap colspan="4"><input type="checkbox" name="pasteFilter" ' + (opt["pasteFilter"] ? "checked" : "" ) + '>' + lang.pasteFilter + '</td></tr>' +
                '<tr><td nowrap colspan="4" align="right"><button >' + lang.run + '</button></td></tr>' +
                '</table>' +
                '</div>' +
                '</div>';


        },
        _UIBase_render:UIBase.prototype.render
    };
    utils.inherits(AutoTypeSetPicker, UIBase);
})();

///import core
///import uicore
///import ui/popup.js
///import ui/autotypesetpicker.js
///import ui/splitbutton.js
(function (){
    var utils = baidu.editor.utils,
        Popup = baidu.editor.ui.Popup,
        AutoTypeSetPicker = baidu.editor.ui.AutoTypeSetPicker,
        SplitButton = baidu.editor.ui.SplitButton,
        AutoTypeSetButton = baidu.editor.ui.AutoTypeSetButton = function (options){
            this.initOptions(options);
            this.initAutoTypeSetButton();
        };
    function getPara(me){
        var opt = me.editor.options.autotypeset,
            cont = me.getDom(),
            editorId = me.editor.uid,
            inputType = null,
            attrName = null,
            ipts = domUtils.getElementsByTagName(cont,"input");
        for(var i=ipts.length-1,ipt;ipt=ipts[i--];){

            inputType = ipt.getAttribute("type");

            if(inputType=="checkbox"){
                attrName = ipt.getAttribute("name");
                opt[attrName] && delete opt[attrName];
                if(ipt.checked){
                    var attrValue = document.getElementById( attrName+"Value" + editorId );
                    if(attrValue){
                        if(/input/ig.test(attrValue.tagName)){
                            opt[attrName] = attrValue.value;
                        }else{
                            var iptChilds = attrValue.getElementsByTagName("input");
                            for(var j=iptChilds.length-1,iptchild;iptchild=iptChilds[j--];){
                                if(iptchild.checked){
                                    opt[attrName] = iptchild.value;
                                    break;
                                }
                            }
                        }
                    }else{
                        opt[attrName] = true;
                    }
                }
            }
        }
        var selects = domUtils.getElementsByTagName(cont,"select");
        for(var i=0,si;si=selects[i++];){
            var attr = si.getAttribute('name');
            opt[attr] = opt[attr] ? si.value : '';
        }

        me.editor.options.autotypeset = opt;
    }
    AutoTypeSetButton.prototype = {
        initAutoTypeSetButton: function (){
            var me = this;
            this.popup = new Popup({
                //浼犲叆閰嶇疆鍙傛暟
                content: new AutoTypeSetPicker({editor:me.editor}),
                'editor':me.editor,
                hide : function(){

                    if (!this._hidden && this.getDom()) {
                        getPara(this);
                        this.getDom().style.display = 'none';
                        this._hidden = true;
                        this.fireEvent('hide');
                    }
                }
            });
            var flag = 0;
            this.popup.addListener('postRenderAfter',function(){
                var popupUI = this;
                if(flag)return;
                var cont = this.getDom(),
                    btn = cont.getElementsByTagName('button')[0];

                btn.onclick = function(){
                    getPara(popupUI);
                    me.editor.execCommand('autotypeset');
                    popupUI.hide()
                };
                flag = 1;
            });
            this.initSplitButton();
        }
    };
    utils.inherits(AutoTypeSetButton, SplitButton);

})();

///import core
///import uicore
(function () {
    var utils = baidu.editor.utils,
        Popup = baidu.editor.ui.Popup,
        Stateful = baidu.editor.ui.Stateful,
        UIBase = baidu.editor.ui.UIBase;

    /**
     * 璇ュ弬鏁板皢鏂板涓�釜鍙傛暟锛�selected锛�鍙傛暟绫诲瀷涓轰竴涓狾bject锛�褰㈠{ 'align': 'center', 'valign': 'top' }锛�琛ㄧず鍗曞厓鏍肩殑鍒濆
     * 瀵归綈鐘舵�涓猴細 绔栫洿灞呬笂锛屾按骞冲眳涓� 鍏朵腑 align鐨勫彇鍊间负锛�center', 'left', 'right'; valign鐨勫彇鍊间负: 'top', 'middle', 'bottom'
     * @update 2013/4/2 hancong03@baidu.com
     */
    var CellAlignPicker = baidu.editor.ui.CellAlignPicker = function (options) {
        this.initOptions(options);
        this.initSelected();
        this.initCellAlignPicker();
    };
    CellAlignPicker.prototype = {
        //鍒濆鍖栭�涓姸鎬侊紝 璇ユ柟娉曞皢鏍规嵁浼犻�杩涙潵鐨勫弬鏁拌幏鍙栧埌搴旇閫変腑鐨勫榻愭柟寮忓浘鏍囩殑绱㈠紩
        initSelected: function(){

            var status = {

                valign: {
                    top: 0,
                    middle: 1,
                    bottom: 2
                },
                align: {
                    left: 0,
                    center: 1,
                    right: 2
                },
                count: 3

                },
                result = -1;

            if( this.selected ) {
                this.selectedIndex = status.valign[ this.selected.valign ] * status.count + status.align[ this.selected.align ];
            }

        },
        initCellAlignPicker:function () {
            this.initUIBase();
            this.Stateful_init();
        },
        getHtmlTpl:function () {

            var alignType = [ 'left', 'center', 'right' ],
                COUNT = 9,
                tempClassName = null,
                tempIndex = -1,
                tmpl = [];


            for( var i= 0; i<COUNT; i++ ) {

                tempClassName = this.selectedIndex === i ? ' class="edui-cellalign-selected" ' : '';
                tempIndex = i % 3;

                tempIndex === 0 && tmpl.push('<tr>');

                tmpl.push( '<td index="'+ i +'" ' + tempClassName + ' stateful><div class="edui-icon edui-'+ alignType[ tempIndex ] +'"></div></td>' );

                tempIndex === 2 && tmpl.push('</tr>');

            }

            return '<div id="##" class="edui-cellalignpicker %%">' +
                '<div class="edui-cellalignpicker-body">' +
                '<table onclick="$$._onClick(event);">' +
                tmpl.join('') +
                '</table>' +
                '</div>' +
                '</div>';
        },
        getStateDom: function (){
            return this.target;
        },
        _onClick: function (evt){
            var target= evt.target || evt.srcElement;
            if(/icon/.test(target.className)){
                this.items[target.parentNode.getAttribute("index")].onclick();
                Popup.postHide(evt);
            }
        },
        _UIBase_render:UIBase.prototype.render
    };
    utils.inherits(CellAlignPicker, UIBase);
    utils.extend(CellAlignPicker.prototype, Stateful,true);
})();




///import core
///import uicore
(function () {
    var utils = baidu.editor.utils,
        Stateful = baidu.editor.ui.Stateful,
        uiUtils = baidu.editor.ui.uiUtils,
        UIBase = baidu.editor.ui.UIBase;

    var PastePicker = baidu.editor.ui.PastePicker = function (options) {
        this.initOptions(options);
        this.initPastePicker();
    };
    PastePicker.prototype = {
        initPastePicker:function () {
            this.initUIBase();
            this.Stateful_init();
        },
        getHtmlTpl:function () {
            return '<div class="edui-pasteicon" onclick="$$._onClick(this)"></div>' +
                '<div class="edui-pastecontainer">' +
                '<div class="edui-title">' + this.editor.getLang("pasteOpt") + '</div>' +
                '<div class="edui-button">' +
                '<div title="' + this.editor.getLang("pasteSourceFormat") + '" onclick="$$.format(false)" stateful>' +
                '<div class="edui-richtxticon"></div></div>' +
                '<div title="' + this.editor.getLang("tagFormat") + '" onclick="$$.format(2)" stateful>' +
                '<div class="edui-tagicon"></div></div>' +
                '<div title="' + this.editor.getLang("pasteTextFormat") + '" onclick="$$.format(true)" stateful>' +
                '<div class="edui-plaintxticon"></div></div>' +
                '</div>' +
                '</div>' +
                '</div>'
        },
        getStateDom:function () {
            return this.target;
        },
        format:function (param) {
            this.editor.ui._isTransfer = true;
            this.editor.fireEvent('pasteTransfer', param);
        },
        _onClick:function (cur) {
            var node = domUtils.getNextDomNode(cur),
                screenHt = uiUtils.getViewportRect().height,
                subPop = uiUtils.getClientRect(node);

            if ((subPop.top + subPop.height) > screenHt)
                node.style.top = (-subPop.height - cur.offsetHeight) + "px";
            else
                node.style.top = "";

            if (/hidden/ig.test(domUtils.getComputedStyle(node, "visibility"))) {
                node.style.visibility = "visible";
                domUtils.addClass(cur, "edui-state-opened");
            } else {
                node.style.visibility = "hidden";
                domUtils.removeClasses(cur, "edui-state-opened")
            }
        },
        _UIBase_render:UIBase.prototype.render
    };
    utils.inherits(PastePicker, UIBase);
    utils.extend(PastePicker.prototype, Stateful, true);
})();





(function (){
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        UIBase = baidu.editor.ui.UIBase,
        Toolbar = baidu.editor.ui.Toolbar = function (options){
            this.initOptions(options);
            this.initToolbar();
        };
    Toolbar.prototype = {
        items: null,
        initToolbar: function (){
            this.items = this.items || [];
            this.initUIBase();
        },
        add: function (item){
            this.items.push(item);
        },
        getHtmlTpl: function (){
            var buff = [];
            for (var i=0; i<this.items.length; i++) {
                buff[i] = this.items[i].renderHtml();
            }
            return '<div id="##" class="edui-toolbar %%" onselectstart="return false;" onmousedown="return $$._onMouseDown(event, this);">' +
                buff.join('') +
                '</div>'
        },
        postRender: function (){
            var box = this.getDom();
            for (var i=0; i<this.items.length; i++) {
                this.items[i].postRender();
            }
            uiUtils.makeUnselectable(box);
        },
        _onMouseDown: function (){
            return false;
        }
    };
    utils.inherits(Toolbar, UIBase);

})();

///import core
///import uicore
///import ui\popup.js
///import ui\stateful.js
(function () {
    var utils = baidu.editor.utils,
        domUtils = baidu.editor.dom.domUtils,
        uiUtils = baidu.editor.ui.uiUtils,
        UIBase = baidu.editor.ui.UIBase,
        Popup = baidu.editor.ui.Popup,
        Stateful = baidu.editor.ui.Stateful,
        CellAlignPicker = baidu.editor.ui.CellAlignPicker,

        Menu = baidu.editor.ui.Menu = function (options) {
            this.initOptions(options);
            this.initMenu();
        };

    var menuSeparator = {
        renderHtml:function () {
            return '<div class="edui-menuitem edui-menuseparator"><div class="edui-menuseparator-inner"></div></div>';
        },
        postRender:function () {
        },
        queryAutoHide:function () {
            return true;
        }
    };
    Menu.prototype = {
        items:null,
        uiName:'menu',
        initMenu:function () {
            this.items = this.items || [];
            this.initPopup();
            this.initItems();
        },
        initItems:function () {
            for (var i = 0; i < this.items.length; i++) {
                var item = this.items[i];
                if (item == '-') {
                    this.items[i] = this.getSeparator();
                } else if (!(item instanceof MenuItem)) {
                    item.editor = this.editor;
                    item.theme = this.editor.options.theme;
                    this.items[i] = this.createItem(item);
                }
            }
        },
        getSeparator:function () {
            return menuSeparator;
        },
        createItem:function (item) {
            //鏂板涓�釜鍙傛暟menu, 璇ュ弬鏁板瓨鍌ㄤ簡menuItem鎵�搴旂殑menu寮曠敤
            item.menu = this;
            return new MenuItem(item);
        },
        _Popup_getContentHtmlTpl:Popup.prototype.getContentHtmlTpl,
        getContentHtmlTpl:function () {
            if (this.items.length == 0) {
                return this._Popup_getContentHtmlTpl();
            }
            var buff = [];
            for (var i = 0; i < this.items.length; i++) {
                var item = this.items[i];
                buff[i] = item.renderHtml();
            }
            return ('<div class="%%-body">' + buff.join('') + '</div>');
        },
        _Popup_postRender:Popup.prototype.postRender,
        postRender:function () {
            var me = this;
            for (var i = 0; i < this.items.length; i++) {
                var item = this.items[i];
                item.ownerMenu = this;
                item.postRender();
            }
            domUtils.on(this.getDom(), 'mouseover', function (evt) {
                evt = evt || event;
                var rel = evt.relatedTarget || evt.fromElement;
                var el = me.getDom();
                if (!uiUtils.contains(el, rel) && el !== rel) {
                    me.fireEvent('over');
                }
            });
            this._Popup_postRender();
        },
        queryAutoHide:function (el) {
            if (el) {
                if (uiUtils.contains(this.getDom(), el)) {
                    return false;
                }
                for (var i = 0; i < this.items.length; i++) {
                    var item = this.items[i];
                    if (item.queryAutoHide(el) === false) {
                        return false;
                    }
                }
            }
        },
        clearItems:function () {
            for (var i = 0; i < this.items.length; i++) {
                var item = this.items[i];
                clearTimeout(item._showingTimer);
                clearTimeout(item._closingTimer);
                if (item.subMenu) {
                    item.subMenu.destroy();
                }
            }
            this.items = [];
        },
        destroy:function () {
            if (this.getDom()) {
                domUtils.remove(this.getDom());
            }
            this.clearItems();
        },
        dispose:function () {
            this.destroy();
        }
    };
    utils.inherits(Menu, Popup);

    /**
     * @update 2013/04/03 hancong03 鏂板涓�釜鍙傛暟menu, 璇ュ弬鏁板瓨鍌ㄤ簡menuItem鎵�搴旂殑menu寮曠敤
     * @type {Function}
     */
    var MenuItem = baidu.editor.ui.MenuItem = function (options) {
        this.initOptions(options);
        this.initUIBase();
        this.Stateful_init();
        if (this.subMenu && !(this.subMenu instanceof Menu)) {
            if (options.className && options.className.indexOf("aligntd") != -1) {
                var me = this;

                //鑾峰彇鍗曞厓鏍煎榻愬垵濮嬬姸鎬�
                this.subMenu.selected = this.editor.queryCommandValue( 'cellalignment' );

                this.subMenu = new Popup({
                    content:new CellAlignPicker(this.subMenu),
                    parentMenu:me,
                    editor:me.editor,
                    destroy:function () {
                        if (this.getDom()) {
                            domUtils.remove(this.getDom());
                        }
                    }
                });
                this.subMenu.addListener("postRenderAfter", function () {
                    domUtils.on(this.getDom(), "mouseover", function () {
                        me.addState('opened');
                    });
                });
            } else {
                this.subMenu = new Menu(this.subMenu);
            }
        }
    };
    MenuItem.prototype = {
        label:'',
        subMenu:null,
        ownerMenu:null,
        uiName:'menuitem',
        alwalysHoverable:true,
        getHtmlTpl:function () {
            return '<div id="##" class="%%" stateful onclick="$$._onClick(event, this);">' +
                '<div class="%%-body">' +
                this.renderLabelHtml() +
                '</div>' +
                '</div>';
        },
        postRender:function () {
            var me = this;
            this.addListener('over', function () {
                me.ownerMenu.fireEvent('submenuover', me);
                if (me.subMenu) {
                    me.delayShowSubMenu();
                }
            });
            if (this.subMenu) {
                this.getDom().className += ' edui-hassubmenu';
                this.subMenu.render();
                this.addListener('out', function () {
                    me.delayHideSubMenu();
                });
                this.subMenu.addListener('over', function () {
                    clearTimeout(me._closingTimer);
                    me._closingTimer = null;
                    me.addState('opened');
                });
                this.ownerMenu.addListener('hide', function () {
                    me.hideSubMenu();
                });
                this.ownerMenu.addListener('submenuover', function (t, subMenu) {
                    if (subMenu !== me) {
                        me.delayHideSubMenu();
                    }
                });
                this.subMenu._bakQueryAutoHide = this.subMenu.queryAutoHide;
                this.subMenu.queryAutoHide = function (el) {
                    if (el && uiUtils.contains(me.getDom(), el)) {
                        return false;
                    }
                    return this._bakQueryAutoHide(el);
                };
            }
            this.getDom().style.tabIndex = '-1';
            uiUtils.makeUnselectable(this.getDom());
            this.Stateful_postRender();
        },
        delayShowSubMenu:function () {
            var me = this;
            if (!me.isDisabled()) {
                me.addState('opened');
                clearTimeout(me._showingTimer);
                clearTimeout(me._closingTimer);
                me._closingTimer = null;
                me._showingTimer = setTimeout(function () {
                    me.showSubMenu();
                }, 250);
            }
        },
        delayHideSubMenu:function () {
            var me = this;
            if (!me.isDisabled()) {
                me.removeState('opened');
                clearTimeout(me._showingTimer);
                if (!me._closingTimer) {
                    me._closingTimer = setTimeout(function () {
                        if (!me.hasState('opened')) {
                            me.hideSubMenu();
                        }
                        me._closingTimer = null;
                    }, 400);
                }
            }
        },
        renderLabelHtml:function () {
            return '<div class="edui-arrow"></div>' +
                '<div class="edui-box edui-icon"></div>' +
                '<div class="edui-box edui-label %%-label">' + (this.label || '') + '</div>';
        },
        getStateDom:function () {
            return this.getDom();
        },
        queryAutoHide:function (el) {
            if (this.subMenu && this.hasState('opened')) {
                return this.subMenu.queryAutoHide(el);
            }
        },
        _onClick:function (event, this_) {
            if (this.hasState('disabled')) return;
            if (this.fireEvent('click', event, this_) !== false) {
                if (this.subMenu) {
                    this.showSubMenu();
                } else {
                    Popup.postHide(event);
                }
            }
        },
        showSubMenu:function () {
            var rect = uiUtils.getClientRect(this.getDom());
            rect.right -= 5;
            rect.left += 2;
            rect.width -= 7;
            rect.top -= 4;
            rect.bottom += 4;
            rect.height += 8;
            this.subMenu.showAnchorRect(rect, true, true);
        },
        hideSubMenu:function () {
            this.subMenu.hide();
        }
    };
    utils.inherits(MenuItem, UIBase);
    utils.extend(MenuItem.prototype, Stateful, true);
})();

///import core
///import uicore
///import ui/menu.js
///import ui/splitbutton.js
(function (){
    // todo: menu鍜宨tem鎻愭垚閫氱敤list
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        Menu = baidu.editor.ui.Menu,
        SplitButton = baidu.editor.ui.SplitButton,
        Combox = baidu.editor.ui.Combox = function (options){
            this.initOptions(options);
            this.initCombox();
        };
    Combox.prototype = {
        uiName: 'combox',
        initCombox: function (){
            var me = this;
            this.items = this.items || [];
            for (var i=0; i<this.items.length; i++) {
                var item = this.items[i];
                item.uiName = 'listitem';
                item.index = i;
                item.onclick = function (){
                    me.selectByIndex(this.index);
                };
            }
            this.popup = new Menu({
                items: this.items,
                uiName: 'list',
                editor:this.editor,
                captureWheel: true,
                combox: this
            });

            this.initSplitButton();
        },
        _SplitButton_postRender: SplitButton.prototype.postRender,
        postRender: function (){
            this._SplitButton_postRender();
            this.setLabel(this.label || '');
            this.setValue(this.initValue || '');
        },
        showPopup: function (){
            var rect = uiUtils.getClientRect(this.getDom());
            rect.top += 1;
            rect.bottom -= 1;
            rect.height -= 2;
            this.popup.showAnchorRect(rect);
        },
        getValue: function (){
            return this.value;
        },
        setValue: function (value){
            var index = this.indexByValue(value);
            if (index != -1) {
                this.selectedIndex = index;
                this.setLabel(this.items[index].label);
                this.value = this.items[index].value;
            } else {
                this.selectedIndex = -1;
                this.setLabel(this.getLabelForUnknowValue(value));
                this.value = value;
            }
        },
        setLabel: function (label){
            this.getDom('button_body').innerHTML = label;
            this.label = label;
        },
        getLabelForUnknowValue: function (value){
            return value;
        },
        indexByValue: function (value){
            for (var i=0; i<this.items.length; i++) {
                if (value == this.items[i].value) {
                    return i;
                }
            }
            return -1;
        },
        getItem: function (index){
            return this.items[index];
        },
        selectByIndex: function (index){
            if (index < this.items.length && this.fireEvent('select', index) !== false) {
                this.selectedIndex = index;
                this.value = this.items[index].value;
                this.setLabel(this.items[index].label);
            }
        }
    };
    utils.inherits(Combox, SplitButton);
})();

///import core
///import uicore
///import ui/mask.js
///import ui/button.js
(function (){
    var utils = baidu.editor.utils,
        domUtils = baidu.editor.dom.domUtils,
        uiUtils = baidu.editor.ui.uiUtils,
        Mask = baidu.editor.ui.Mask,
        UIBase = baidu.editor.ui.UIBase,
        Button = baidu.editor.ui.Button,
        Dialog = baidu.editor.ui.Dialog = function (options){
            this.initOptions(utils.extend({
                autoReset: true,
                draggable: true,
                onok: function (){},
                oncancel: function (){},
                onclose: function (t, ok){
                    return ok ? this.onok() : this.oncancel();
                },
                //鏄惁鎺у埗dialog涓殑scroll浜嬩欢锛�榛樿涓轰笉闃绘
                holdScroll: false
            },options));
            this.initDialog();
        };
    var modalMask;
    var dragMask;
    Dialog.prototype = {
        draggable: false,
        uiName: 'dialog',
        initDialog: function (){
            var me = this,
                theme=this.editor.options.theme;
            this.initUIBase();
            this.modalMask = (modalMask || (modalMask = new Mask({
                className: 'edui-dialog-modalmask',
                theme:theme
            })));
            this.dragMask = (dragMask || (dragMask = new Mask({
                className: 'edui-dialog-dragmask',
                theme:theme
            })));
            this.closeButton = new Button({
                className: 'edui-dialog-closebutton',
                title: me.closeDialog,
                theme:theme,
                onclick: function (){
                    me.close(false);
                }
            });
            if (this.buttons) {
                for (var i=0; i<this.buttons.length; i++) {
                    if (!(this.buttons[i] instanceof Button)) {
                        this.buttons[i] = new Button(this.buttons[i]);
                    }
                }
            }
        },
        fitSize: function (){
            var popBodyEl = this.getDom('body');
//            if (!(baidu.editor.browser.ie && baidu.editor.browser.version == 7)) {
//                uiUtils.removeStyle(popBodyEl, 'width');
//                uiUtils.removeStyle(popBodyEl, 'height');
//            }
            var size = this.mesureSize();
            popBodyEl.style.width = size.width + 'px';
            popBodyEl.style.height = size.height + 'px';
            return size;
        },
        safeSetOffset: function (offset){
            var me = this;
            var el = me.getDom();
            var vpRect = uiUtils.getViewportRect();
            var rect = uiUtils.getClientRect(el);
            var left = offset.left;
            if (left + rect.width > vpRect.right) {
                left = vpRect.right - rect.width;
            }
            var top = offset.top;
            if (top + rect.height > vpRect.bottom) {
                top = vpRect.bottom - rect.height;
            }
            el.style.left = Math.max(left, 0) + 'px';
            el.style.top = Math.max(top, 0) + 'px';
        },
        showAtCenter: function (){
            this.getDom().style.display = '';
            var vpRect = uiUtils.getViewportRect();
            var popSize = this.fitSize();
            var titleHeight = this.getDom('titlebar').offsetHeight | 0;
            var left = vpRect.width / 2 - popSize.width / 2;
            var top = vpRect.height / 2 - (popSize.height - titleHeight) / 2 - titleHeight;
            var popEl = this.getDom();
            this.safeSetOffset({
                left: Math.max(left | 0, 0),
                top: Math.max(top | 0, 0)
            });
            if (!domUtils.hasClass(popEl, 'edui-state-centered')) {
                popEl.className += ' edui-state-centered';
            }
            this._show();
        },
        getContentHtml: function (){
            var contentHtml = '';
            if (typeof this.content == 'string') {
                contentHtml = this.content;
            } else if (this.iframeUrl) {
                contentHtml = '<span id="'+ this.id +'_contmask" class="dialogcontmask"></span><iframe id="'+ this.id +
                    '_iframe" class="%%-iframe" height="100%" width="100%" frameborder="0" src="'+ this.iframeUrl +'"></iframe>';
            }
            return contentHtml;
        },
        getHtmlTpl: function (){
            var footHtml = '';

            if (this.buttons) {
                var buff = [];
                for (var i=0; i<this.buttons.length; i++) {
                    buff[i] = this.buttons[i].renderHtml();
                }
                footHtml = '<div class="%%-foot">' +
                     '<div id="##_buttons" class="%%-buttons">' + buff.join('') + '</div>' +
                    '</div>';
            }

            return '<div id="##" class="%%"><div class="%%-wrap"><div id="##_body" class="%%-body">' +
                '<div class="%%-shadow"></div>' +
                '<div id="##_titlebar" class="%%-titlebar">' +
                '<div class="%%-draghandle" onmousedown="$$._onTitlebarMouseDown(event, this);">' +
                 '<span class="%%-caption">' + (this.title || '') + '</span>' +
                '</div>' +
                this.closeButton.renderHtml() +
                '</div>' +
                '<div id="##_content" class="%%-content">'+ ( this.autoReset ? '' : this.getContentHtml()) +'</div>' +
                footHtml +
                '</div></div></div>';
        },
        postRender: function (){
            // todo: 淇濇寔灞呬腑/璁颁綇涓婃鍏抽棴浣嶇疆閫夐」
            if (!this.modalMask.getDom()) {
                this.modalMask.render();
                this.modalMask.hide();
            }
            if (!this.dragMask.getDom()) {
                this.dragMask.render();
                this.dragMask.hide();
            }
            var me = this;
            this.addListener('show', function (){
                me.modalMask.show(this.getDom().style.zIndex - 2);
            });
            this.addListener('hide', function (){
                me.modalMask.hide();
            });
            if (this.buttons) {
                for (var i=0; i<this.buttons.length; i++) {
                    this.buttons[i].postRender();
                }
            }
            domUtils.on(window, 'resize', function (){
                setTimeout(function (){
                    if (!me.isHidden()) {
                        me.safeSetOffset(uiUtils.getClientRect(me.getDom()));
                    }
                });
            });

            //hold浣弒croll浜嬩欢锛岄槻姝ialog鐨勬粴鍔ㄥ奖鍝嶉〉闈�
            if( this.holdScroll ) {

                if( !me.iframeUrl ) {
                    domUtils.on( document.getElementById( me.id + "_iframe"), !browser.gecko ? "mousewheel" : "DOMMouseScroll", function(e){
                        domUtils.preventDefault(e);
                    } );
                } else {
                    me.addListener('dialogafterreset', function(){
                        window.setTimeout(function(){
                            var iframeWindow = document.getElementById( me.id + "_iframe").contentWindow;

                            if( browser.ie ) {

                                var timer = window.setInterval(function(){

                                    if( iframeWindow.document && iframeWindow.document.body ) {
                                        window.clearInterval( timer );
                                        timer = null;
                                        domUtils.on( iframeWindow.document.body, !browser.gecko ? "mousewheel" : "DOMMouseScroll", function(e){
                                            domUtils.preventDefault(e);
                                        } );
                                    }

                                }, 100);

                            } else {
                                domUtils.on( iframeWindow, !browser.gecko ? "mousewheel" : "DOMMouseScroll", function(e){
                                    domUtils.preventDefault(e);
                                } );
                            }

                        }, 1);
                    });
                }

            }
            this._hide();
        },
        mesureSize: function (){
            var body = this.getDom('body');
            var width = uiUtils.getClientRect(this.getDom('content')).width;
            var dialogBodyStyle = body.style;
            dialogBodyStyle.width = width;
            return uiUtils.getClientRect(body);
        },
        _onTitlebarMouseDown: function (evt, el){
            if (this.draggable) {
                var rect;
                var vpRect = uiUtils.getViewportRect();
                var me = this;
                uiUtils.startDrag(evt, {
                    ondragstart: function (){
                        rect = uiUtils.getClientRect(me.getDom());
                        me.getDom('contmask').style.visibility = 'visible';
                        me.dragMask.show(me.getDom().style.zIndex - 1);
                    },
                    ondragmove: function (x, y){
                        var left = rect.left + x;
                        var top = rect.top + y;
                        me.safeSetOffset({
                            left: left,
                            top: top
                        });
                    },
                    ondragstop: function (){
                        me.getDom('contmask').style.visibility = 'hidden';
                        domUtils.removeClasses(me.getDom(), ['edui-state-centered']);
                        me.dragMask.hide();
                    }
                });
            }
        },
        reset: function (){
            this.getDom('content').innerHTML = this.getContentHtml();
            this.fireEvent('dialogafterreset');
        },
        _show: function (){
            if (this._hidden) {
                this.getDom().style.display = '';

                //瑕侀珮杩囩紪杈戝櫒鐨剒indxe
                this.editor.container.style.zIndex && (this.getDom().style.zIndex = this.editor.container.style.zIndex * 1 + 10);
                this._hidden = false;
                this.fireEvent('show');
                baidu.editor.ui.uiUtils.getFixedLayer().style.zIndex = this.getDom().style.zIndex - 4;
            }
        },
        isHidden: function (){
            return this._hidden;
        },
        _hide: function (){
            if (!this._hidden) {
                this.getDom().style.display = 'none';
                this.getDom().style.zIndex = '';
                this._hidden = true;
                this.fireEvent('hide');
            }
        },
        open: function (){
            if (this.autoReset) {
                //鏈夊彲鑳借繕娌℃湁娓叉煋
                try{
                    this.reset();
                }catch(e){
                    this.render();
                    this.open()
                }
            }
            this.showAtCenter();
            if (this.iframeUrl) {
                try {
                    this.getDom('iframe').focus();
                } catch(ex){}
            }
        },
        _onCloseButtonClick: function (evt, el){
            this.close(false);
        },
        close: function (ok){
            if (this.fireEvent('close', ok) !== false) {
                this._hide();
            }
        }
    };
    utils.inherits(Dialog, UIBase);
})();

///import core
///import uicore
///import ui/menu.js
///import ui/splitbutton.js
(function (){
    var utils = baidu.editor.utils,
        Menu = baidu.editor.ui.Menu,
        SplitButton = baidu.editor.ui.SplitButton,
        MenuButton = baidu.editor.ui.MenuButton = function (options){
            this.initOptions(options);
            this.initMenuButton();
        };
    MenuButton.prototype = {
        initMenuButton: function (){
            var me = this;
            this.uiName = "menubutton";
            this.popup = new Menu({
                items: me.items,
                className: me.className,
                editor:me.editor
            });
            this.popup.addListener('show', function (){
                var list = this;
                for (var i=0; i<list.items.length; i++) {
                    list.items[i].removeState('checked');
                    if (list.items[i].value == me._value) {
                        list.items[i].addState('checked');
                        this.value = me._value;
                    }
                }
            });
            this.initSplitButton();
        },
        setValue : function(value){
            this._value = value;
        }
        
    };
    utils.inherits(MenuButton, SplitButton);
})();
//ui璺熺紪杈戝櫒鐨勯�閰嶅堡
//閭ｄ釜鎸夐挳寮瑰嚭鏄痙ialog锛屾槸涓嬫媺绛愮瓑閮芥槸鍦ㄨ繖涓猨s涓厤缃�
//鑷繁鍐欑殑ui涔熻鍦ㄨ繖閲岄厤缃紝鏀惧埌baidu.editor.ui涓嬭竟锛屽綋缂栬緫鍣ㄥ疄渚嬪寲鐨勬椂鍊欎細鏍规嵁ueditor.config涓殑toolbars鎵惧埌鐩稿簲鐨勮繘琛屽疄渚嬪寲
(function () {
    var utils = baidu.editor.utils;
    var editorui = baidu.editor.ui;
    var _Dialog = editorui.Dialog;
    editorui.buttons = {};

    editorui.Dialog = function (options) {
        var dialog = new _Dialog(options);
        dialog.addListener('hide', function () {

            if (dialog.editor) {
                var editor = dialog.editor;
                try {
                    if (browser.gecko) {
                        var y = editor.window.scrollY,
                            x = editor.window.scrollX;
                        editor.body.focus();
                        editor.window.scrollTo(x, y);
                    } else {
                        editor.focus();
                    }


                } catch (ex) {
                }
            }
        });
        return dialog;
    };

    var iframeUrlMap = {
        'anchor':'~/dialogs/anchor/anchor.html',
        'insertimage':'~/dialogs/image/image.html',
        'link':'~/dialogs/link/link.html',
        'spechars':'~/dialogs/spechars/spechars.html',
        'searchreplace':'~/dialogs/searchreplace/searchreplace.html',
        'map':'~/dialogs/map/map.html',
        'gmap':'~/dialogs/gmap/gmap.html',
        'insertvideo':'~/dialogs/video/video.html',
        'help':'~/dialogs/help/help.html',
       //'highlightcode':'~/dialogs/highlightcode/highlightcode.html',
        'emotion':'~/dialogs/emotion/emotion.html',
        'wordimage':'~/dialogs/wordimage/wordimage.html',
        'attachment':'~/dialogs/attachment/attachment.html',
        'insertframe':'~/dialogs/insertframe/insertframe.html',
        'edittip':'~/dialogs/table/edittip.html',
        'edittable':'~/dialogs/table/edittable.html',
        'edittd':'~/dialogs/table/edittd.html',
        'webapp':'~/dialogs/webapp/webapp.html',
        'snapscreen':'~/dialogs/snapscreen/snapscreen.html',
        'scrawl':'~/dialogs/scrawl/scrawl.html',
        'music':'~/dialogs/music/music.html',
        'template':'~/dialogs/template/template.html',
        'background':'~/dialogs/background/background.html'
    };
    //涓哄伐鍏锋爮娣诲姞鎸夐挳锛屼互涓嬮兘鏄粺涓�殑鎸夐挳瑙﹀彂鍛戒护锛屾墍浠ュ啓鍦ㄤ竴璧�
    var btnCmds = ['undo', 'redo', 'formatmatch',
        'bold', 'italic', 'underline', 'fontborder', 'touppercase', 'tolowercase',
        'strikethrough', 'subscript', 'superscript', 'source', 'indent', 'outdent',
        'blockquote', 'pasteplain', 'pagebreak',
        'selectall', 'print', 'preview', 'horizontal', 'removeformat', 'time', 'date', 'unlink',
        'insertparagraphbeforetable', 'insertrow', 'insertcol', 'mergeright', 'mergedown', 'deleterow',
        'deletecol', 'splittorows', 'splittocols', 'splittocells', 'mergecells', 'deletetable'];

    for (var i = 0, ci; ci = btnCmds[i++];) {
        ci = ci.toLowerCase();
        editorui[ci] = function (cmd) {
            return function (editor) {
                var ui = new editorui.Button({
                    className:'edui-for-' + cmd,
                    title:editor.options.labelMap[cmd] || editor.getLang("labelMap." + cmd) || '',
                    onclick:function () {
                        editor.execCommand(cmd);
                    },
                    theme:editor.options.theme,
                    showText:false
                });
                editorui.buttons[cmd] = ui;
                editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
                    var state = editor.queryCommandState(cmd);
                    if (state == -1) {
                        ui.setDisabled(true);
                        ui.setChecked(false);
                    } else {
                        if (!uiReady) {
                            ui.setDisabled(false);
                            ui.setChecked(state);
                        }
                    }
                });
                return ui;
            };
        }(ci);
    }

    //娓呴櫎鏂囨。
    editorui.cleardoc = function (editor) {
        var ui = new editorui.Button({
            className:'edui-for-cleardoc',
            title:editor.options.labelMap.cleardoc || editor.getLang("labelMap.cleardoc") || '',
            theme:editor.options.theme,
            onclick:function () {
                if (confirm(editor.getLang("confirmClear"))) {
                    editor.execCommand('cleardoc');
                }
            }
        });
        editorui.buttons["cleardoc"] = ui;
        editor.addListener('selectionchange', function () {
            ui.setDisabled(editor.queryCommandState('cleardoc') == -1);
        });
        return ui;
    };

    //鎺掔増锛屽浘鐗囨帓鐗堬紝鏂囧瓧鏂瑰悜
    var typeset = {
        'justify':['left', 'right', 'center', 'justify'],
        'imagefloat':['none', 'left', 'center', 'right'],
        'directionality':['ltr', 'rtl']
    };

    for (var p in typeset) {

        (function (cmd, val) {
            for (var i = 0, ci; ci = val[i++];) {
                (function (cmd2) {
                    editorui[cmd.replace('float', '') + cmd2] = function (editor) {
                        var ui = new editorui.Button({
                            className:'edui-for-' + cmd.replace('float', '') + cmd2,
                            title:editor.options.labelMap[cmd.replace('float', '') + cmd2] || editor.getLang("labelMap." + cmd.replace('float', '') + cmd2) || '',
                            theme:editor.options.theme,
                            onclick:function () {
                                editor.execCommand(cmd, cmd2);
                            }
                        });
                        editorui.buttons[cmd] = ui;
                        editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
                            ui.setDisabled(editor.queryCommandState(cmd) == -1);
                            ui.setChecked(editor.queryCommandValue(cmd) == cmd2 && !uiReady);
                        });
                        return ui;
                    };
                })(ci)
            }
        })(p, typeset[p])
    }

    //瀛椾綋棰滆壊鍜岃儗鏅鑹�
    for (var i = 0, ci; ci = ['backcolor', 'forecolor'][i++];) {
        editorui[ci] = function (cmd) {
            return function (editor) {
                var ui = new editorui.ColorButton({
                    className:'edui-for-' + cmd,
                    color:'default',
                    title:editor.options.labelMap[cmd] || editor.getLang("labelMap." + cmd) || '',
                    editor:editor,
                    onpickcolor:function (t, color) {
                        editor.execCommand(cmd, color);
                    },
                    onpicknocolor:function () {
                        editor.execCommand(cmd, 'default');
                        this.setColor('transparent');
                        this.color = 'default';
                    },
                    onbuttonclick:function () {
                        editor.execCommand(cmd, this.color);
                    }
                });
                editorui.buttons[cmd] = ui;
                editor.addListener('selectionchange', function () {
                    ui.setDisabled(editor.queryCommandState(cmd) == -1);
                });
                return ui;
            };
        }(ci);
    }


    var dialogBtns = {
        noOk:['searchreplace', 'help', 'spechars', 'webapp'],
        ok:['attachment', 'anchor', 'link', 'insertimage', 'map', 'gmap', 'insertframe', 'wordimage',
            'insertvideo', 'insertframe', 'edittip', 'edittable', 'edittd', 'scrawl', 'template', 'music', 'background']

    };

    for (var p in dialogBtns) {
        (function (type, vals) {
            for (var i = 0, ci; ci = vals[i++];) {
                //todo opera涓嬪瓨鍦ㄩ棶棰�
                if (browser.opera && ci === "searchreplace") {
                    continue;
                }
                (function (cmd) {
                    editorui[cmd] = function (editor, iframeUrl, title) {
                        iframeUrl = iframeUrl || (editor.options.iframeUrlMap || {})[cmd] || iframeUrlMap[cmd];
                        title = editor.options.labelMap[cmd] || editor.getLang("labelMap." + cmd) || '';

                        var dialog;
                        //娌℃湁iframeUrl涓嶅垱寤篸ialog
                        if (iframeUrl) {
                            dialog = new editorui.Dialog(utils.extend({
                                iframeUrl:editor.ui.mapUrl(iframeUrl),
                                editor:editor,
                                className:'edui-for-' + cmd,
                                title:title,
                                holdScroll: cmd === 'insertimage',
                                closeDialog:editor.getLang("closeDialog")
                            }, type == 'ok' ? {
                                buttons:[
                                    {
                                        className:'edui-okbutton',
                                        label:editor.getLang("ok"),
                                        editor:editor,
                                        onclick:function () {
                                            dialog.close(true);
                                        }
                                    },
                                    {
                                        className:'edui-cancelbutton',
                                        label:editor.getLang("cancel"),
                                        editor:editor,
                                        onclick:function () {
                                            dialog.close(false);
                                        }
                                    }
                                ]
                            } : {}));

                            editor.ui._dialogs[cmd + "Dialog"] = dialog;
                        }

                        var ui = new editorui.Button({
                            className:'edui-for-' + cmd,
                            title:title,
                            onclick:function () {
                                if (dialog) {
                                    switch (cmd) {
                                        case "wordimage":
                                            editor.execCommand("wordimage", "word_img");
                                            if (editor.word_img) {
                                                dialog.render();
                                                dialog.open();
                                            }
                                            break;
                                        case "scrawl":
                                            if (editor.queryCommandState("scrawl") != -1) {
                                                dialog.render();
                                                dialog.open();
                                            }

                                            break;
                                        default:
                                            dialog.render();
                                            dialog.open();
                                    }
                                }
                            },
                            theme:editor.options.theme,
                            disabled:cmd == 'scrawl' && editor.queryCommandState("scrawl") == -1
                        });
                        editorui.buttons[cmd] = ui;
                        editor.addListener('selectionchange', function () {
                            //鍙瓨鍦ㄤ簬鍙抽敭鑿滃崟鑰屾棤宸ュ叿鏍忔寜閽殑ui涓嶉渶瑕佹娴嬬姸鎬�
                            var unNeedCheckState = {'edittable':1};
                            if (cmd in unNeedCheckState)return;

                            var state = editor.queryCommandState(cmd);
                            if (ui.getDom()) {
                                ui.setDisabled(state == -1);
                                ui.setChecked(state);
                            }

                        });

                        return ui;
                    };
                })(ci.toLowerCase())
            }
        })(p, dialogBtns[p])
    }

    editorui.snapscreen = function (editor, iframeUrl, title) {
        title = editor.options.labelMap['snapscreen'] || editor.getLang("labelMap.snapscreen") || '';
        var ui = new editorui.Button({
            className:'edui-for-snapscreen',
            title:title,
            onclick:function () {
                editor.execCommand("snapscreen");
            },
            theme:editor.options.theme

        });
        editorui.buttons['snapscreen'] = ui;
        iframeUrl = iframeUrl || (editor.options.iframeUrlMap || {})["snapscreen"] || iframeUrlMap["snapscreen"];
        if (iframeUrl) {
            var dialog = new editorui.Dialog({
                iframeUrl:editor.ui.mapUrl(iframeUrl),
                editor:editor,
                className:'edui-for-snapscreen',
                title:title,
                buttons:[
                    {
                        className:'edui-okbutton',
                        label:editor.getLang("ok"),
                        editor:editor,
                        onclick:function () {
                            dialog.close(true);
                        }
                    },
                    {
                        className:'edui-cancelbutton',
                        label:editor.getLang("cancel"),
                        editor:editor,
                        onclick:function () {
                            dialog.close(false);
                        }
                    }
                ]

            });
            dialog.render();
            editor.ui._dialogs["snapscreenDialog"] = dialog;
        }
        editor.addListener('selectionchange', function () {
            ui.setDisabled(editor.queryCommandState('snapscreen') == -1);
        });
        return ui;
    };

    editorui.insertcode = function (editor, list, title) {
        list = editor.options['insertcode'] || [];
        title = editor.options.labelMap['insertcode'] || editor.getLang("labelMap.insertcode") || '';
       // if (!list.length) return;
        var items = [];
        utils.each(list,function(key,val){
            items.push({
                label:key,
                value:val,
                theme:editor.options.theme,
                renderLabelHtml:function () {
                    return '<div class="edui-label %%-label" >' + (this.label || '') + '</div>';
                }
            });
        });

        var ui = new editorui.Combox({
            editor:editor,
            items:items,
            onselect:function (t, index) {
                editor.execCommand('insertcode', this.items[index].value);
            },
            onbuttonclick:function () {
                this.showPopup();
            },
            title:title,
            initValue:title,
            className:'edui-for-insertcode',
            indexByValue:function (value) {
                if (value) {
                    for (var i = 0, ci; ci = this.items[i]; i++) {
                        if (ci.value.indexOf(value) != -1)
                            return i;
                    }
                }

                return -1;
            }
        });
        editorui.buttons['insertcode'] = ui;
        editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
            if (!uiReady) {
                var state = editor.queryCommandState('insertcode');
                if (state == -1) {
                    ui.setDisabled(true);
                } else {
                    ui.setDisabled(false);
                    var value = editor.queryCommandValue('insertcode');
                    if(!value){
                        ui.setValue(title);
                        return;
                    }
                    //trace:1871 ie涓嬩粠婧愮爜妯″紡鍒囨崲鍥炴潵鏃讹紝瀛椾綋浼氬甫鍗曞紩鍙凤紝鑰屼笖浼氭湁閫楀彿
                    value && (value = value.replace(/['"]/g, '').split(',')[0]);
                    ui.setValue(value);

                }
            }

        });
        return ui;
    };
    editorui.fontfamily = function (editor, list, title) {

        list = editor.options['fontfamily'] || [];
        title = editor.options.labelMap['fontfamily'] || editor.getLang("labelMap.fontfamily") || '';
        if (!list.length) return;
        for (var i = 0, ci, items = []; ci = list[i]; i++) {
            var langLabel = editor.getLang('fontfamily')[ci.name] || "";
            (function (key, val) {
                items.push({
                    label:key,
                    value:val,
                    theme:editor.options.theme,
                    renderLabelHtml:function () {
                        return '<div class="edui-label %%-label" style="font-family:' +
                            utils.unhtml(this.value) + '">' + (this.label || '') + '</div>';
                    }
                });
            })(ci.label || langLabel, ci.val)
        }
        var ui = new editorui.Combox({
            editor:editor,
            items:items,
            onselect:function (t, index) {
                editor.execCommand('FontFamily', this.items[index].value);
            },
            onbuttonclick:function () {
                this.showPopup();
            },
            title:title,
            initValue:title,
            className:'edui-for-fontfamily',
            indexByValue:function (value) {
                if (value) {
                    for (var i = 0, ci; ci = this.items[i]; i++) {
                        if (ci.value.indexOf(value) != -1)
                            return i;
                    }
                }

                return -1;
            }
        });
        editorui.buttons['fontfamily'] = ui;
        editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
            if (!uiReady) {
                var state = editor.queryCommandState('FontFamily');
                if (state == -1) {
                    ui.setDisabled(true);
                } else {
                    ui.setDisabled(false);
                    var value = editor.queryCommandValue('FontFamily');
                    //trace:1871 ie涓嬩粠婧愮爜妯″紡鍒囨崲鍥炴潵鏃讹紝瀛椾綋浼氬甫鍗曞紩鍙凤紝鑰屼笖浼氭湁閫楀彿
                    value && (value = value.replace(/['"]/g, '').split(',')[0]);
                    ui.setValue(value);

                }
            }

        });
        return ui;
    };

    editorui.fontsize = function (editor, list, title) {
        title = editor.options.labelMap['fontsize'] || editor.getLang("labelMap.fontsize") || '';
        list = list || editor.options['fontsize'] || [];
        if (!list.length) return;
        var items = [];
        for (var i = 0; i < list.length; i++) {
            var size = list[i] + 'px';
            items.push({
                label:size,
                value:size,
                theme:editor.options.theme,
                renderLabelHtml:function () {
                    return '<div class="edui-label %%-label" style="line-height:1;font-size:' +
                        this.value + '">' + (this.label || '') + '</div>';
                }
            });
        }
        var ui = new editorui.Combox({
            editor:editor,
            items:items,
            title:title,
            initValue:title,
            onselect:function (t, index) {
                editor.execCommand('FontSize', this.items[index].value);
            },
            onbuttonclick:function () {
                this.showPopup();
            },
            className:'edui-for-fontsize'
        });
        editorui.buttons['fontsize'] = ui;
        editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
            if (!uiReady) {
                var state = editor.queryCommandState('FontSize');
                if (state == -1) {
                    ui.setDisabled(true);
                } else {
                    ui.setDisabled(false);
                    ui.setValue(editor.queryCommandValue('FontSize'));
                }
            }

        });
        return ui;
    };

    editorui.paragraph = function (editor, list, title) {
        title = editor.options.labelMap['paragraph'] || editor.getLang("labelMap.paragraph") || '';
        list = editor.options['paragraph'] || [];
        if (utils.isEmptyObject(list)) return;
        var items = [];
        for (var i in list) {
            items.push({
                value:i,
                label:list[i] || editor.getLang("paragraph")[i],
                theme:editor.options.theme,
                renderLabelHtml:function () {
                    return '<div class="edui-label %%-label"><span class="edui-for-' + this.value + '">' + (this.label || '') + '</span></div>';
                }
            })
        }
        var ui = new editorui.Combox({
            editor:editor,
            items:items,
            title:title,
            initValue:title,
            className:'edui-for-paragraph',
            onselect:function (t, index) {
                editor.execCommand('Paragraph', this.items[index].value);
            },
            onbuttonclick:function () {
                this.showPopup();
            }
        });
        editorui.buttons['paragraph'] = ui;
        editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
            if (!uiReady) {
                var state = editor.queryCommandState('Paragraph');
                if (state == -1) {
                    ui.setDisabled(true);
                } else {
                    ui.setDisabled(false);
                    var value = editor.queryCommandValue('Paragraph');
                    var index = ui.indexByValue(value);
                    if (index != -1) {
                        ui.setValue(value);
                    } else {
                        ui.setValue(ui.initValue);
                    }
                }
            }

        });
        return ui;
    };


    //鑷畾涔夋爣棰�
    editorui.customstyle = function (editor) {
        var list = editor.options['customstyle'] || [],
            title = editor.options.labelMap['customstyle'] || editor.getLang("labelMap.customstyle") || '';
        if (!list.length)return;
        var langCs = editor.getLang('customstyle');
        for (var i = 0, items = [], t; t = list[i++];) {
            (function (t) {
                var ck = {};
                ck.label = t.label ? t.label : langCs[t.name];
                ck.style = t.style;
                ck.className = t.className;
                ck.tag = t.tag;
                items.push({
                    label:ck.label,
                    value:ck,
                    theme:editor.options.theme,
                    renderLabelHtml:function () {
                        return '<div class="edui-label %%-label">' + '<' + ck.tag + ' ' + (ck.className ? ' class="' + ck.className + '"' : "")
                            + (ck.style ? ' style="' + ck.style + '"' : "") + '>' + ck.label + "<\/" + ck.tag + ">"
                            + '</div>';
                    }
                });
            })(t);
        }

        var ui = new editorui.Combox({
            editor:editor,
            items:items,
            title:title,
            initValue:title,
            className:'edui-for-customstyle',
            onselect:function (t, index) {
                editor.execCommand('customstyle', this.items[index].value);
            },
            onbuttonclick:function () {
                this.showPopup();
            },
            indexByValue:function (value) {
                for (var i = 0, ti; ti = this.items[i++];) {
                    if (ti.label == value) {
                        return i - 1
                    }
                }
                return -1;
            }
        });
        editorui.buttons['customstyle'] = ui;
        editor.addListener('selectionchange', function (type, causeByUi, uiReady) {
            if (!uiReady) {
                var state = editor.queryCommandState('customstyle');
                if (state == -1) {
                    ui.setDisabled(true);
                } else {
                    ui.setDisabled(false);
                    var value = editor.queryCommandValue('customstyle');
                    var index = ui.indexByValue(value);
                    if (index != -1) {
                        ui.setValue(value);
                    } else {
                        ui.setValue(ui.initValue);
                    }
                }
            }

        });
        return ui;
    };
    editorui.inserttable = function (editor, iframeUrl, title) {
        title = editor.options.labelMap['inserttable'] || editor.getLang("labelMap.inserttable") || '';
        var ui = new editorui.TableButton({
            editor:editor,
            title:title,
            className:'edui-for-inserttable',
            onpicktable:function (t, numCols, numRows) {
                editor.execCommand('InsertTable', {numRows:numRows, numCols:numCols, border:1});
            },
            onbuttonclick:function () {
                this.showPopup();
            }
        });
        editorui.buttons['inserttable'] = ui;
        editor.addListener('selectionchange', function () {
            ui.setDisabled(editor.queryCommandState('inserttable') == -1);
        });
        return ui;
    };

    editorui.lineheight = function (editor) {
        var val = editor.options.lineheight || [];
        if (!val.length)return;
        for (var i = 0, ci, items = []; ci = val[i++];) {
            items.push({
                //todo:鍐欐浜�
                label:ci,
                value:ci,
                theme:editor.options.theme,
                onclick:function () {
                    editor.execCommand("lineheight", this.value);
                }
            })
        }
        var ui = new editorui.MenuButton({
            editor:editor,
            className:'edui-for-lineheight',
            title:editor.options.labelMap['lineheight'] || editor.getLang("labelMap.lineheight") || '',
            items:items,
            onbuttonclick:function () {
                var value = editor.queryCommandValue('LineHeight') || this.value;
                editor.execCommand("LineHeight", value);
            }
        });
        editorui.buttons['lineheight'] = ui;
        editor.addListener('selectionchange', function () {
            var state = editor.queryCommandState('LineHeight');
            if (state == -1) {
                ui.setDisabled(true);
            } else {
                ui.setDisabled(false);
                var value = editor.queryCommandValue('LineHeight');
                value && ui.setValue((value + '').replace(/cm/, ''));
                ui.setChecked(state)
            }
        });
        return ui;
    };

    var rowspacings = ['top', 'bottom'];
    for (var r = 0, ri; ri = rowspacings[r++];) {
        (function (cmd) {
            editorui['rowspacing' + cmd] = function (editor) {
                var val = editor.options['rowspacing' + cmd] || [];
                if (!val.length) return null;
                for (var i = 0, ci, items = []; ci = val[i++];) {
                    items.push({
                        label:ci,
                        value:ci,
                        theme:editor.options.theme,
                        onclick:function () {
                            editor.execCommand("rowspacing", this.value, cmd);
                        }
                    })
                }
                var ui = new editorui.MenuButton({
                    editor:editor,
                    className:'edui-for-rowspacing' + cmd,
                    title:editor.options.labelMap['rowspacing' + cmd] || editor.getLang("labelMap.rowspacing" + cmd) || '',
                    items:items,
                    onbuttonclick:function () {
                        var value = editor.queryCommandValue('rowspacing', cmd) || this.value;
                        editor.execCommand("rowspacing", value, cmd);
                    }
                });
                editorui.buttons[cmd] = ui;
                editor.addListener('selectionchange', function () {
                    var state = editor.queryCommandState('rowspacing', cmd);
                    if (state == -1) {
                        ui.setDisabled(true);
                    } else {
                        ui.setDisabled(false);
                        var value = editor.queryCommandValue('rowspacing', cmd);
                        value && ui.setValue((value + '').replace(/%/, ''));
                        ui.setChecked(state)
                    }
                });
                return ui;
            }
        })(ri)
    }
    //鏈夊簭锛屾棤搴忓垪琛�
    var lists = ['insertorderedlist', 'insertunorderedlist'];
    for (var l = 0, cl; cl = lists[l++];) {
        (function (cmd) {
            editorui[cmd] = function (editor) {
                var vals = editor.options[cmd],
                    _onMenuClick = function () {
                        editor.execCommand(cmd, this.value);
                    }, items = [];
                for (var i in vals) {
                    items.push({
                        label:vals[i] || editor.getLang()[cmd][i] || "",
                        value:i,
                        theme:editor.options.theme,
                        onclick:_onMenuClick
                    })
                }
                var ui = new editorui.MenuButton({
                    editor:editor,
                    className:'edui-for-' + cmd,
                    title:editor.getLang("labelMap." + cmd) || '',
                    'items':items,
                    onbuttonclick:function () {
                        var value = editor.queryCommandValue(cmd) || this.value;
                        editor.execCommand(cmd, value);
                    }
                });
                editorui.buttons[cmd] = ui;
                editor.addListener('selectionchange', function () {
                    var state = editor.queryCommandState(cmd);
                    if (state == -1) {
                        ui.setDisabled(true);
                    } else {
                        ui.setDisabled(false);
                        var value = editor.queryCommandValue(cmd);
                        ui.setValue(value);
                        ui.setChecked(state)
                    }
                });
                return ui;
            };
        })(cl)
    }

    editorui.fullscreen = function (editor, title) {
        title = editor.options.labelMap['fullscreen'] || editor.getLang("labelMap.fullscreen") || '';
        var ui = new editorui.Button({
            className:'edui-for-fullscreen',
            title:title,
            theme:editor.options.theme,
            onclick:function () {
                if (editor.ui) {
                    editor.ui.setFullScreen(!editor.ui.isFullScreen());
                }
                this.setChecked(editor.ui.isFullScreen());
            }
        });
        editorui.buttons['fullscreen'] = ui;
        editor.addListener('selectionchange', function () {
            var state = editor.queryCommandState('fullscreen');
            ui.setDisabled(state == -1);
            ui.setChecked(editor.ui.isFullScreen());
        });
        return ui;
    };

    // 琛ㄦ儏
    editorui["emotion"] = function (editor, iframeUrl) {
        var cmd = "emotion";
        var ui = new editorui.MultiMenuPop({
            title:editor.options.labelMap[cmd] || editor.getLang("labelMap." + cmd + "") || '',
            editor:editor,
            className:'edui-for-' + cmd,
            iframeUrl:editor.ui.mapUrl(iframeUrl || (editor.options.iframeUrlMap || {})[cmd] || iframeUrlMap[cmd])
        });
        editorui.buttons[cmd] = ui;

        editor.addListener('selectionchange', function () {
            ui.setDisabled(editor.queryCommandState(cmd) == -1)
        });
        return ui;
    };

    editorui.autotypeset = function (editor) {
        var ui = new editorui.AutoTypeSetButton({
            editor:editor,
            title:editor.options.labelMap['autotypeset'] || editor.getLang("labelMap.autotypeset") || '',
            className:'edui-for-autotypeset',
            onbuttonclick:function () {
                editor.execCommand('autotypeset')
            }
        });
        editorui.buttons['autotypeset'] = ui;
        editor.addListener('selectionchange', function () {
            ui.setDisabled(editor.queryCommandState('autotypeset') == -1);
        });
        return ui;
    };

})();

///import core
///commands 鍏ㄥ睆
///commandsName FullScreen
///commandsTitle  鍏ㄥ睆
(function () {
    var utils = baidu.editor.utils,
        uiUtils = baidu.editor.ui.uiUtils,
        UIBase = baidu.editor.ui.UIBase,
        domUtils = baidu.editor.dom.domUtils;
    var nodeStack = [];

    function EditorUI(options) {
        this.initOptions(options);
        this.initEditorUI();
    }

    EditorUI.prototype = {
        uiName:'editor',
        initEditorUI:function () {
            this.editor.ui = this;
            this._dialogs = {};
            this.initUIBase();
            this._initToolbars();
            var editor = this.editor,
                me = this;

            editor.addListener('ready', function () {
                //鎻愪緵getDialog鏂规硶
                editor.getDialog = function (name) {
                    return editor.ui._dialogs[name + "Dialog"];
                };
                domUtils.on(editor.window, 'scroll', function (evt) {
                    baidu.editor.ui.Popup.postHide(evt);
                });
                //鎻愪緵缂栬緫鍣ㄥ疄鏃跺楂�鍏ㄥ睆鏃跺楂樹笉鍙樺寲)
                editor.ui._actualFrameWidth = editor.options.initialFrameWidth;

                //display bottom-bar label based on config
                if (editor.options.elementPathEnabled) {
                    editor.ui.getDom('elementpath').innerHTML = '<div class="edui-editor-breadcrumb">' + editor.getLang("elementPathTip") + ':</div>';
                }
                if (editor.options.wordCount) {
                    function countFn() {
                        setCount(editor,me);
                        domUtils.un(editor.document, "click", arguments.callee);
                    }
                    domUtils.on(editor.document, "click", countFn);
                    editor.ui.getDom('wordcount').innerHTML = editor.getLang("wordCountTip");
                }
                editor.ui._scale();
                if (editor.options.scaleEnabled) {
                    if (editor.autoHeightEnabled) {
                        editor.disableAutoHeight();
                    }
                    me.enableScale();
                } else {
                    me.disableScale();
                }
                if (!editor.options.elementPathEnabled && !editor.options.wordCount && !editor.options.scaleEnabled) {
                    editor.ui.getDom('elementpath').style.display = "none";
                    editor.ui.getDom('wordcount').style.display = "none";
                    editor.ui.getDom('scale').style.display = "none";
                }

                if (!editor.selection.isFocus())return;
                editor.fireEvent('selectionchange', false, true);


            });

            editor.addListener('mousedown', function (t, evt) {
                var el = evt.target || evt.srcElement;
                baidu.editor.ui.Popup.postHide(evt, el);
                baidu.editor.ui.ShortCutMenu.postHide(evt);

            });
            editor.addListener("delcells", function () {
                if (UE.ui['edittip']) {
                    new UE.ui['edittip'](editor);
                }
                editor.getDialog('edittip').open();
            });

            var pastePop, isPaste = false, timer;
            editor.addListener("afterpaste", function () {
                if(editor.queryCommandState('pasteplain'))
                    return;
                if(baidu.editor.ui.PastePicker){
                    pastePop = new baidu.editor.ui.Popup({
                        content:new baidu.editor.ui.PastePicker({editor:editor}),
                        editor:editor,
                        className:'edui-wordpastepop'
                    });
                    pastePop.render();
                }
                isPaste = true;
            });

            editor.addListener("afterinserthtml", function () {
                clearTimeout(timer);
                timer = setTimeout(function () {
                    if (pastePop && (isPaste || editor.ui._isTransfer)) {
                        if(pastePop.isHidden()){
                            var span = domUtils.createElement(editor.document, 'span', {
                                    'style':"line-height:0px;",
                                    'innerHTML':'\ufeff'
                                }),
                                range = editor.selection.getRange();
                            range.insertNode(span);
                            var tmp= getDomNode(span, 'firstChild', 'previousSibling');
                            pastePop.showAnchor(tmp.nodeType == 3 ? tmp.parentNode : tmp);
                            domUtils.remove(span);

                        }else{
                            pastePop.show();
                        }
                        delete editor.ui._isTransfer;
                        isPaste = false;
                    }
                }, 200)
            });
            editor.addListener('contextmenu', function (t, evt) {
                baidu.editor.ui.Popup.postHide(evt);
            });
            editor.addListener('keydown', function (t, evt) {
                if (pastePop)    pastePop.dispose(evt);
                var keyCode = evt.keyCode || evt.which;
                if(evt.altKey&&keyCode==90){
                    UE.ui.buttons['fullscreen'].onclick();
                }
            });
            editor.addListener('wordcount', function (type) {
                setCount(this,me);
            });
            function setCount(editor,ui) {
                editor.setOpt({
                    wordCount:true,
                    maximumWords:10000,
                    wordCountMsg:editor.options.wordCountMsg || editor.getLang("wordCountMsg"),
                    wordOverFlowMsg:editor.options.wordOverFlowMsg || editor.getLang("wordOverFlowMsg")
                });
                var opt = editor.options,
                    max = opt.maximumWords,
                    msg = opt.wordCountMsg ,
                    errMsg = opt.wordOverFlowMsg,
                    countDom = ui.getDom('wordcount');
                if (!opt.wordCount) {
                    return;
                }
                var count = editor.getContentLength(true);
                if (count > max) {
                    countDom.innerHTML = errMsg;
                    editor.fireEvent("wordcountoverflow");
                } else {
                    countDom.innerHTML = msg.replace("{#leave}", max - count).replace("{#count}", count);
                }
            }

            editor.addListener('selectionchange', function () {
                if (editor.options.elementPathEnabled) {
                    me[(editor.queryCommandState('elementpath') == -1 ? 'dis' : 'en') + 'ableElementPath']()
                }
                if (editor.options.scaleEnabled) {
                    me[(editor.queryCommandState('scale') == -1 ? 'dis' : 'en') + 'ableScale']();

                }
            });
            var popup = new baidu.editor.ui.Popup({
                editor:editor,
                content:'',
                className:'edui-bubble',
                _onEditButtonClick:function () {
                    this.hide();
                    editor.ui._dialogs.linkDialog.open();
                },
                _onImgEditButtonClick:function (name) {
                    this.hide();
                    editor.ui._dialogs[name] && editor.ui._dialogs[name].open();

                },
                _onImgSetFloat:function (value) {
                    this.hide();
                    editor.execCommand("imagefloat", value);

                },
                _setIframeAlign:function (value) {
                    var frame = popup.anchorEl;
                    var newFrame = frame.cloneNode(true);
                    switch (value) {
                        case -2:
                            newFrame.setAttribute("align", "");
                            break;
                        case -1:
                            newFrame.setAttribute("align", "left");
                            break;
                        case 1:
                            newFrame.setAttribute("align", "right");
                            break;
                    }
                    frame.parentNode.insertBefore(newFrame, frame);
                    domUtils.remove(frame);
                    popup.anchorEl = newFrame;
                    popup.showAnchor(popup.anchorEl);
                },
                _updateIframe:function () {
                    editor._iframe = popup.anchorEl;
                    editor.ui._dialogs.insertframeDialog.open();
                    popup.hide();
                },
                _onRemoveButtonClick:function (cmdName) {
                    editor.execCommand(cmdName);
                    this.hide();
                },
                queryAutoHide:function (el) {
                    if (el && el.ownerDocument == editor.document) {
                        if (el.tagName.toLowerCase() == 'img' || domUtils.findParentByTagName(el, 'a', true)) {
                            return el !== popup.anchorEl;
                        }
                    }
                    return baidu.editor.ui.Popup.prototype.queryAutoHide.call(this, el);
                }
            });
            popup.render();
            if (editor.options.imagePopup) {
                editor.addListener('mouseover', function (t, evt) {
                    evt = evt || window.event;
                    var el = evt.target || evt.srcElement;
                    if (editor.ui._dialogs.insertframeDialog && /iframe/ig.test(el.tagName)) {
                        var html = popup.formatHtml(
                            '<nobr>' + editor.getLang("property") + ': <span onclick=$$._setIframeAlign(-2) class="edui-clickable">' + editor.getLang("default") + '</span>&nbsp;&nbsp;<span onclick=$$._setIframeAlign(-1) class="edui-clickable">' + editor.getLang("justifyleft") + '</span>&nbsp;&nbsp;<span onclick=$$._setIframeAlign(1) class="edui-clickable">' + editor.getLang("justifyright") + '</span>&nbsp;&nbsp;' +
                                ' <span onclick="$$._updateIframe( this);" class="edui-clickable">' + editor.getLang("modify") + '</span></nobr>');
                        if (html) {
                            popup.getDom('content').innerHTML = html;
                            popup.anchorEl = el;
                            popup.showAnchor(popup.anchorEl);
                        } else {
                            popup.hide();
                        }
                    }
                });
                editor.addListener('selectionchange', function (t, causeByUi) {
                    if (!causeByUi) return;
                    var html = '', str = "",
                        img = editor.selection.getRange().getClosedNode(),
                        dialogs = editor.ui._dialogs;
                    if (img && img.tagName == 'IMG') {
                        var dialogName = 'insertimageDialog';
                        if (img.className.indexOf("edui-faked-video") != -1) {
                            dialogName = "insertvideoDialog"
                        }
                        if (img.className.indexOf("edui-faked-webapp") != -1) {
                            dialogName = "webappDialog"
                        }
                        if (img.src.indexOf("http://api.map.baidu.com") != -1) {
                            dialogName = "mapDialog"
                        }
                        if (img.className.indexOf("edui-faked-music") != -1) {
                            dialogName = "musicDialog"
                        }
                        if (img.src.indexOf("http://maps.google.com/maps/api/staticmap") != -1) {
                            dialogName = "gmapDialog"
                        }
                        if (img.getAttribute("anchorname")) {
                            dialogName = "anchorDialog";
                            html = popup.formatHtml(
                                '<nobr>' + editor.getLang("property") + ': <span onclick=$$._onImgEditButtonClick("anchorDialog") class="edui-clickable">' + editor.getLang("modify") + '</span>&nbsp;&nbsp;' +
                                    '<span onclick=$$._onRemoveButtonClick(\'anchor\') class="edui-clickable">' + editor.getLang("delete") + '</span></nobr>');
                        }
                        if (img.getAttribute("word_img")) {
                            //todo 鏀惧埌dialog鍘诲仛鏌ヨ
                            editor.word_img = [img.getAttribute("word_img")];
                            dialogName = "wordimageDialog"
                        }
                        if (!dialogs[dialogName]) {
                            return;
                        }
                        str = '<nobr>' + editor.getLang("property") + ': '+
                            '<span onclick=$$._onImgSetFloat("none") class="edui-clickable">' + editor.getLang("default") + '</span>&nbsp;&nbsp;' +
                            '<span onclick=$$._onImgSetFloat("left") class="edui-clickable">' + editor.getLang("justifyleft") + '</span>&nbsp;&nbsp;' +
                            '<span onclick=$$._onImgSetFloat("right") class="edui-clickable">' + editor.getLang("justifyright") + '</span>&nbsp;&nbsp;' +
                            '<span onclick=$$._onImgSetFloat("center") class="edui-clickable">' + editor.getLang("justifycenter") + '</span>&nbsp;&nbsp;'+
                            '<span onclick="$$._onImgEditButtonClick(\'' + dialogName + '\');" class="edui-clickable">' + editor.getLang("modify") + '</span></nobr>';

                        !html && (html = popup.formatHtml(str))

                    }
                    if (editor.ui._dialogs.linkDialog) {
                        var link = editor.queryCommandValue('link');
                        var url;
                        if (link && (url = (link.getAttribute('_href') || link.getAttribute('href', 2)))) {
                            var txt = url;
                            if (url.length > 30) {
                                txt = url.substring(0, 20) + "...";
                            }
                            if (html) {
                                html += '<div style="height:5px;"></div>'
                            }
                            html += popup.formatHtml(
                                '<nobr>' + editor.getLang("anthorMsg") + ': <a target="_blank" href="' + url + '" title="' + url + '" >' + txt + '</a>' +
                                    ' <span class="edui-clickable" onclick="$$._onEditButtonClick();">' + editor.getLang("modify") + '</span>' +
                                    ' <span class="edui-clickable" onclick="$$._onRemoveButtonClick(\'unlink\');"> ' + editor.getLang("clear") + '</span></nobr>');
                            popup.showAnchor(link);
                        }
                    }

                    if (html) {
                        popup.getDom('content').innerHTML = html;
                        popup.anchorEl = img || link;
                        popup.showAnchor(popup.anchorEl);
                    } else {
                        popup.hide();
                    }
                });
            }

        },
        _initToolbars:function () {
            var editor = this.editor;
            var toolbars = this.toolbars || [];
            var toolbarUis = [];
            for (var i = 0; i < toolbars.length; i++) {
                var toolbar = toolbars[i];
                var toolbarUi = new baidu.editor.ui.Toolbar({theme:editor.options.theme});
                for (var j = 0; j < toolbar.length; j++) {
                    var toolbarItem = toolbar[j];
                    var toolbarItemUi = null;
                    if (typeof toolbarItem == 'string') {
                        toolbarItem = toolbarItem.toLowerCase();
                        if (toolbarItem == '|') {
                            toolbarItem = 'Separator';
                        }
                        if(toolbarItem == '||'){
                            toolbarItem = 'Breakline';
                        }
                        if (baidu.editor.ui[toolbarItem]) {
                            toolbarItemUi = new baidu.editor.ui[toolbarItem](editor);
                        }

                        //fullscreen杩欓噷鍗曠嫭澶勭悊涓�笅锛屾斁鍒伴琛屽幓
                        if (toolbarItem == 'fullscreen') {
                            if (toolbarUis && toolbarUis[0]) {
                                toolbarUis[0].items.splice(0, 0, toolbarItemUi);
                            } else {
                                toolbarItemUi && toolbarUi.items.splice(0, 0, toolbarItemUi);
                            }

                            continue;


                        }
                    } else {
                        toolbarItemUi = toolbarItem;
                    }
                    if (toolbarItemUi && toolbarItemUi.id) {

                        toolbarUi.add(toolbarItemUi);
                    }
                }
                toolbarUis[i] = toolbarUi;
            }
            this.toolbars = toolbarUis;
        },
        getHtmlTpl:function () {
            return '<div id="##" class="%%">' +
                '<div id="##_toolbarbox" class="%%-toolbarbox">' +
                (this.toolbars.length ?
                    '<div id="##_toolbarboxouter" class="%%-toolbarboxouter"><div class="%%-toolbarboxinner">' +
                        this.renderToolbarBoxHtml() +
                        '</div></div>' : '') +
                '<div id="##_toolbarmsg" class="%%-toolbarmsg" style="display:none;">' +
                '<div id = "##_upload_dialog" class="%%-toolbarmsg-upload" onclick="$$.showWordImageDialog();">' + this.editor.getLang("clickToUpload") + '</div>' +
                '<div class="%%-toolbarmsg-close" onclick="$$.hideToolbarMsg();">x</div>' +
                '<div id="##_toolbarmsg_label" class="%%-toolbarmsg-label"></div>' +
                '<div style="height:0;overflow:hidden;clear:both;"></div>' +
                '</div>' +
                '</div>' +
                '<div id="##_iframeholder" class="%%-iframeholder"></div>' +
                //modify wdcount by matao
                '<div id="##_bottombar" class="%%-bottomContainer"><table><tr>' +
                '<td id="##_elementpath" class="%%-bottombar"></td>' +
                '<td id="##_wordcount" class="%%-wordcount"></td>' +
                '<td id="##_scale" class="%%-scale"><div class="%%-icon"></div></td>' +
                '</tr></table></div>' +
                '<div id="##_scalelayer"></div>' +
                '</div>';
        },
        showWordImageDialog:function () {
            this.editor.execCommand("wordimage", "word_img");
            this._dialogs['wordimageDialog'].open();
        },
        renderToolbarBoxHtml:function () {
            var buff = [];
            for (var i = 0; i < this.toolbars.length; i++) {
                buff.push(this.toolbars[i].renderHtml());
            }
            return buff.join('');
        },
        setFullScreen:function (fullscreen) {

            var editor = this.editor,
                container = editor.container.parentNode.parentNode;
            if (this._fullscreen != fullscreen) {
                this._fullscreen = fullscreen;
                this.editor.fireEvent('beforefullscreenchange', fullscreen);
                if (baidu.editor.browser.gecko) {
                    var bk = editor.selection.getRange().createBookmark();
                }
                if (fullscreen) {
                    while (container.tagName != "BODY") {
                        var position = baidu.editor.dom.domUtils.getComputedStyle(container, "position");
                        nodeStack.push(position);
                        container.style.position = "static";
                        container = container.parentNode;
                    }
                    this._bakHtmlOverflow = document.documentElement.style.overflow;
                    this._bakBodyOverflow = document.body.style.overflow;
                    this._bakAutoHeight = this.editor.autoHeightEnabled;
                    this._bakScrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);

                    this._bakEditorContaninerWidth = editor.iframe.parentNode.offsetWidth;
                    if (this._bakAutoHeight) {
                        //褰撳叏灞忔椂涓嶈兘鎵ц鑷姩闀块珮
                        editor.autoHeightEnabled = false;
                        this.editor.disableAutoHeight();
                    }

                    document.documentElement.style.overflow = 'hidden';
                    document.body.style.overflow = 'hidden';
                    this._bakCssText = this.getDom().style.cssText;
                    this._bakCssText1 = this.getDom('iframeholder').style.cssText;
                    editor.iframe.parentNode.style.width = '';
                    this._updateFullScreen();
                } else {
                    while (container.tagName != "BODY") {
                        container.style.position = nodeStack.shift();
                        container = container.parentNode;
                    }
                    this.getDom().style.cssText = this._bakCssText;
                    this.getDom('iframeholder').style.cssText = this._bakCssText1;
                    if (this._bakAutoHeight) {
                        editor.autoHeightEnabled = true;
                        this.editor.enableAutoHeight();
                    }

                    document.documentElement.style.overflow = this._bakHtmlOverflow;
                    document.body.style.overflow = this._bakBodyOverflow;
                    editor.iframe.parentNode.style.width = this._bakEditorContaninerWidth + 'px';
                    window.scrollTo(0, this._bakScrollTop);
                }
                if (browser.gecko && editor.body.contentEditable === 'true') {
                    var input = document.createElement('input');
                    document.body.appendChild(input);
                    editor.body.contentEditable = false;
                    setTimeout(function () {
                        input.focus();
                        setTimeout(function () {
                            editor.body.contentEditable = true;
                            editor.fireEvent('fullscreenchanged', fullscreen);
                            editor.selection.getRange().moveToBookmark(bk).select(true);
                            baidu.editor.dom.domUtils.remove(input);
                            fullscreen && window.scroll(0, 0);
                        }, 0)
                    }, 0)
                }

                if(editor.body.contentEditable === 'true'){
                    this.editor.fireEvent('fullscreenchanged', fullscreen);
                    this.triggerLayout();
                }

            }
        },
        _updateFullScreen:function () {
            if (this._fullscreen) {
                var vpRect = uiUtils.getViewportRect();
                this.getDom().style.cssText = 'border:0;position:absolute;left:0;top:' + (this.editor.options.topOffset || 0) + 'px;width:' + vpRect.width + 'px;height:' + vpRect.height + 'px;z-index:' + (this.getDom().style.zIndex * 1 + 100);
                uiUtils.setViewportOffset(this.getDom(), { left:0, top:this.editor.options.topOffset || 0 });
                this.editor.setHeight(vpRect.height - this.getDom('toolbarbox').offsetHeight - this.getDom('bottombar').offsetHeight - (this.editor.options.topOffset || 0));
                //涓嶆墜鍔ㄨ皟涓�笅锛屼細瀵艰嚧鍏ㄥ睆澶辨晥
                if(browser.gecko){
                    try{
                        window.onresize();
                    }catch(e){

                    }

                }
            }
        },
        _updateElementPath:function () {
            var bottom = this.getDom('elementpath'), list;
            if (this.elementPathEnabled && (list = this.editor.queryCommandValue('elementpath'))) {

                var buff = [];
                for (var i = 0, ci; ci = list[i]; i++) {
                    buff[i] = this.formatHtml('<span unselectable="on" onclick="$$.editor.execCommand(&quot;elementpath&quot;, &quot;' + i + '&quot;);">' + ci + '</span>');
                }
                bottom.innerHTML = '<div class="edui-editor-breadcrumb" onmousedown="return false;">' + this.editor.getLang("elementPathTip") + ': ' + buff.join(' &gt; ') + '</div>';

            } else {
                bottom.style.display = 'none'
            }
        },
        disableElementPath:function () {
            var bottom = this.getDom('elementpath');
            bottom.innerHTML = '';
            bottom.style.display = 'none';
            this.elementPathEnabled = false;

        },
        enableElementPath:function () {
            var bottom = this.getDom('elementpath');
            bottom.style.display = '';
            this.elementPathEnabled = true;
            this._updateElementPath();
        },
        _scale:function () {
            var doc = document,
                editor = this.editor,
                editorHolder = editor.container,
                editorDocument = editor.document,
                toolbarBox = this.getDom("toolbarbox"),
                bottombar = this.getDom("bottombar"),
                scale = this.getDom("scale"),
                scalelayer = this.getDom("scalelayer");

            var isMouseMove = false,
                position = null,
                minEditorHeight = 0,
                minEditorWidth = editor.options.minFrameWidth,
                pageX = 0,
                pageY = 0,
                scaleWidth = 0,
                scaleHeight = 0;

            function down() {
                position = domUtils.getXY(editorHolder);

                if (!minEditorHeight) {
                    minEditorHeight = editor.options.minFrameHeight + toolbarBox.offsetHeight + bottombar.offsetHeight;
                }

                scalelayer.style.cssText = "position:absolute;left:0;display:;top:0;background-color:#41ABFF;opacity:0.4;filter: Alpha(opacity=40);width:" + editorHolder.offsetWidth + "px;height:"
                    + editorHolder.offsetHeight + "px;z-index:" + (editor.options.zIndex + 1);

                domUtils.on(doc, "mousemove", move);
                domUtils.on(editorDocument, "mouseup", up);
                domUtils.on(doc, "mouseup", up);
            }

            var me = this;
            //by xuheng 鍏ㄥ睆鏃跺叧鎺夌缉鏀�
            this.editor.addListener('fullscreenchanged', function (e, fullScreen) {
                if (fullScreen) {
                    me.disableScale();

                } else {
                    if (me.editor.options.scaleEnabled) {
                        me.enableScale();
                        var tmpNode = me.editor.document.createElement('span');
                        me.editor.body.appendChild(tmpNode);
                        me.editor.body.style.height = Math.max(domUtils.getXY(tmpNode).y, me.editor.iframe.offsetHeight - 20) + 'px';
                        domUtils.remove(tmpNode)
                    }
                }
            });
            function move(event) {
                clearSelection();
                var e = event || window.event;
                pageX = e.pageX || (doc.documentElement.scrollLeft + e.clientX);
                pageY = e.pageY || (doc.documentElement.scrollTop + e.clientY);
                scaleWidth = pageX - position.x;
                scaleHeight = pageY - position.y;

                if (scaleWidth >= minEditorWidth) {
                    isMouseMove = true;
                    scalelayer.style.width = scaleWidth + 'px';
                }
                if (scaleHeight >= minEditorHeight) {
                    isMouseMove = true;
                    scalelayer.style.height = scaleHeight + "px";
                }
            }

            function up() {
                if (isMouseMove) {
                    isMouseMove = false;
                    editor.ui._actualFrameWidth = scalelayer.offsetWidth - 2;
                    editorHolder.style.width = editor.ui._actualFrameWidth + 'px';

                    editor.setHeight(scalelayer.offsetHeight - bottombar.offsetHeight - toolbarBox.offsetHeight - 2);
                }
                if (scalelayer) {
                    scalelayer.style.display = "none";
                }
                clearSelection();
                domUtils.un(doc, "mousemove", move);
                domUtils.un(editorDocument, "mouseup", up);
                domUtils.un(doc, "mouseup", up);
            }

            function clearSelection() {
                if (browser.ie)
                    doc.selection.clear();
                else
                    window.getSelection().removeAllRanges();
            }

            this.enableScale = function () {
                //trace:2868
                if (editor.queryCommandState("source") == 1)    return;
                scale.style.display = "";
                this.scaleEnabled = true;
                domUtils.on(scale, "mousedown", down);
            };
            this.disableScale = function () {
                scale.style.display = "none";
                this.scaleEnabled = false;
                domUtils.un(scale, "mousedown", down);
            };
        },
        isFullScreen:function () {
            return this._fullscreen;
        },
        postRender:function () {
            UIBase.prototype.postRender.call(this);
            for (var i = 0; i < this.toolbars.length; i++) {
                this.toolbars[i].postRender();
            }
            var me = this;
            var timerId,
                domUtils = baidu.editor.dom.domUtils,
                updateFullScreenTime = function () {
                    clearTimeout(timerId);
                    timerId = setTimeout(function () {
                        me._updateFullScreen();
                    });
                };
            domUtils.on(window, 'resize', updateFullScreenTime);

            me.addListener('destroy', function () {
                domUtils.un(window, 'resize', updateFullScreenTime);
                clearTimeout(timerId);
            })
        },
        showToolbarMsg:function (msg, flag) {
            this.getDom('toolbarmsg_label').innerHTML = msg;
            this.getDom('toolbarmsg').style.display = '';
            //
            if (!flag) {
                var w = this.getDom('upload_dialog');
                w.style.display = 'none';
            }
        },
        hideToolbarMsg:function () {
            this.getDom('toolbarmsg').style.display = 'none';
        },
        mapUrl:function (url) {
            return url ? url.replace('~/', this.editor.options.UEDITOR_HOME_URL || '') : ''
        },
        triggerLayout:function () {
            var dom = this.getDom();
            if (dom.style.zoom == '1') {
                dom.style.zoom = '100%';
            } else {
                dom.style.zoom = '1';
            }
        }
    };
    utils.inherits(EditorUI, baidu.editor.ui.UIBase);


    var instances = {};


    UE.ui.Editor = function (options) {
        var editor = new UE.Editor(options);
        editor.options.editor = editor;
        utils.loadFile(document, {
            href:editor.options.themePath + editor.options.theme + "/css/ueditor.css",
            tag:"link",
            type:"text/css",
            rel:"stylesheet"
        });

        var oldRender = editor.render;
        editor.render = function (holder) {
            if (holder.constructor === String) {
                editor.key = holder;
                instances[holder] = editor;
            }
            utils.domReady(function () {
                editor.langIsReady ? renderUI() : editor.addListener("langReady", renderUI);
                function renderUI() {
                    editor.setOpt({
                        labelMap:editor.options.labelMap || editor.getLang('labelMap')
                    });
                    new EditorUI(editor.options);
                    if (holder) {
                        if (holder.constructor === String) {
                            holder = document.getElementById(holder);
                        }
                        holder && holder.getAttribute('name') && ( editor.options.textarea = holder.getAttribute('name'));
                        if (holder && /script|textarea/ig.test(holder.tagName)) {
                            var newDiv = document.createElement('div');
                            holder.parentNode.insertBefore(newDiv, holder);
                            var cont = holder.value || holder.innerHTML;
                            editor.options.initialContent = /^[\t\r\n ]*$/.test(cont) ? editor.options.initialContent :
                                cont.replace(/>[\n\r\t]+([ ]{4})+/g, '>')
                                    .replace(/[\n\r\t]+([ ]{4})+</g, '<')
                                    .replace(/>[\n\r\t]+</g, '><');
                            holder.className && (newDiv.className = holder.className);
                            holder.style.cssText && (newDiv.style.cssText = holder.style.cssText);
                            if (/textarea/i.test(holder.tagName)) {
                                editor.textarea = holder;
                                editor.textarea.style.display = 'none';

                            } else {
                                holder.parentNode.removeChild(holder);
                                holder.id && (newDiv.id = holder.id);
                            }
                            holder = newDiv;
                            holder.innerHTML = '';
                        }

                    }
                    domUtils.addClass(holder, "edui-" + editor.options.theme);
                    editor.ui.render(holder);
                    var opt = editor.options;
                    //缁欏疄渚嬫坊鍔犱竴涓紪杈戝櫒鐨勫鍣ㄥ紩鐢�
                    editor.container = editor.ui.getDom();
                    var parents = domUtils.findParents(holder,true);
                    var displays = [];
                    for(var i = 0 ,ci;ci=parents[i];i++){
                        displays[i] = ci.style.display;
                        ci.style.display = 'block'
                    }
                    if (opt.initialFrameWidth) {
                        opt.minFrameWidth = opt.initialFrameWidth;
                    } else {
                        opt.minFrameWidth = opt.initialFrameWidth = holder.offsetWidth;
                    }
                    if (opt.initialFrameHeight) {
                        opt.minFrameHeight = opt.initialFrameHeight;
                    } else {
                        opt.initialFrameHeight = opt.minFrameHeight = holder.offsetHeight;
                    }
                    for(var i = 0 ,ci;ci=parents[i];i++){
                        ci.style.display =  displays[i]
                    }
                    //缂栬緫鍣ㄦ渶澶栧鍣ㄨ缃簡楂樺害锛屼細瀵艰嚧锛岀紪杈戝櫒涓嶅崰浣�
                    //todo 鍏堝幓鎺夛紝娌℃湁鎵惧埌鍘熷洜
                    if(holder.style.height){
                        holder.style.height = ''
                    }
                    editor.container.style.width = opt.initialFrameWidth + (/%$/.test(opt.initialFrameWidth) ? '' : 'px');
                    editor.container.style.zIndex = opt.zIndex;
                    oldRender.call(editor, editor.ui.getDom('iframeholder'));

                }
            })
        };
        return editor;
    };


    /**
     * @file
     * @name UE
     * @short UE
     * @desc UEditor鐨勯《閮ㄥ懡鍚嶇┖闂�
     */
    /**
     * @name getEditor
     * @since 1.2.4+
     * @grammar UE.getEditor(id,[opt])  =>  Editor瀹炰緥
     * @desc 鎻愪緵涓�釜鍏ㄥ眬鐨勬柟娉曞緱鍒扮紪杈戝櫒瀹炰緥
     *
     * * ''id''  鏀剧疆缂栬緫鍣ㄧ殑瀹瑰櫒id, 濡傛灉瀹瑰櫒涓嬬殑缂栬緫鍣ㄥ凡缁忓瓨鍦紝灏辩洿鎺ヨ繑鍥�
     * * ''opt'' 缂栬緫鍣ㄧ殑鍙�鍙傛暟
     * @example
     *  UE.getEditor('containerId',{onready:function(){//鍒涘缓涓�釜缂栬緫鍣ㄥ疄渚�
     *      this.setContent('hello')
     *  }});
     *  UE.getEditor('containerId'); //杩斿洖鍒氬垱寤虹殑瀹炰緥
     *
     */
    UE.getEditor = function (id, opt) {
        var editor = instances[id];
        if (!editor) {
            editor = instances[id] = new UE.ui.Editor(opt);
            editor.render(id);
        }
        return editor;
    };


    UE.delEditor = function (id) {
        var editor;
        if (editor = instances[id]) {
            editor.key && editor.destroy();
            delete instances[id]
        }
    }
})();
///import core
///import uicore
 ///commands 琛ㄦ儏
(function(){
    var utils = baidu.editor.utils,
        Popup = baidu.editor.ui.Popup,
        SplitButton = baidu.editor.ui.SplitButton,
        MultiMenuPop = baidu.editor.ui.MultiMenuPop = function(options){
            this.initOptions(options);
            this.initMultiMenu();
        };

    MultiMenuPop.prototype = {
        initMultiMenu: function (){
            var me = this;
            this.popup = new Popup({
                content: '',
                editor : me.editor,
                iframe_rendered: false,
                onshow: function (){
                    if (!this.iframe_rendered) {
                        this.iframe_rendered = true;
                        this.getDom('content').innerHTML = '<iframe id="'+me.id+'_iframe" src="'+ me.iframeUrl +'" frameborder="0"></iframe>';
                        me.editor.container.style.zIndex && (this.getDom().style.zIndex = me.editor.container.style.zIndex * 1 + 1);
                    }
                }
               // canSideUp:false,
               // canSideLeft:false
            });
            this.onbuttonclick = function(){
                this.showPopup();
            };
            this.initSplitButton();
        }

    };

    utils.inherits(MultiMenuPop, SplitButton);
})();

(function () {
    var UI = baidu.editor.ui,
        UIBase = UI.UIBase,
        uiUtils = UI.uiUtils,
        utils = baidu.editor.utils,
        domUtils = baidu.editor.dom.domUtils;

    var allMenus = [],//瀛樺偍鎵�湁蹇嵎鑿滃崟
        timeID,
        isSubMenuShow = false;//鏄惁鏈夊瓙pop鏄剧ず

    var ShortCutMenu = UI.ShortCutMenu = function (options) {
        this.initOptions (options);
        this.initShortCutMenu ();
    };

    ShortCutMenu.postHide = hideAllMenu;

    ShortCutMenu.prototype = {
        isHidden : true ,
        SPACE : 5 ,
        initShortCutMenu : function () {
            this.items = this.items || [];
            this.initUIBase ();
            this.initItems ();
            this.initEvent ();
            allMenus.push (this);
        } ,
        initEvent : function () {
            var me = this,
                doc = me.editor.document;

            domUtils.on (doc , "mousemove" , function (e) {
                if (me.isHidden === false) {
                    //鏈塸op鏄剧ず灏变笉闅愯棌蹇嵎鑿滃崟
                    if (me.getSubMenuMark () || me.eventType == "contextmenu")   return;


                    var flag = true,
                        el = me.getDom (),
                        wt = el.offsetWidth,
                        ht = el.offsetHeight,
                        distanceX = wt / 2 + me.SPACE,//璺濈涓績X鏍囧噯
                        distanceY = ht / 2,//璺濈涓績Y鏍囧噯
                        x = Math.abs (e.screenX - me.left),//绂讳腑蹇冭窛绂绘í鍧愭爣
                        y = Math.abs (e.screenY - me.top);//绂讳腑蹇冭窛绂荤旱鍧愭爣

                    clearTimeout (timeID);
                    timeID = setTimeout (function () {
                        if (y > 0 && y < distanceY) {
                            me.setOpacity (el , "1");
                        } else if (y > distanceY && y < distanceY + 70) {
                            me.setOpacity (el , "0.5");
                            flag = false;
                        } else if (y > distanceY + 70 && y < distanceY + 140) {
                            me.hide ();
                        }

                        if (flag && x > 0 && x < distanceX) {
                            me.setOpacity (el , "1")
                        } else if (x > distanceX && x < distanceX + 70) {
                            me.setOpacity (el , "0.5")
                        } else if (x > distanceX + 70 && x < distanceX + 140) {
                            me.hide ();
                        }
                    });
                }
            });

            //ie\ff涓�mouseout涓嶅噯
            if (browser.chrome) {
                domUtils.on (doc , "mouseout" , function (e) {
                    var relatedTgt = e.relatedTarget || e.toElement;

                    if (relatedTgt == null || relatedTgt.tagName == "HTML") {
                        me.hide ();
                    }
                });
            }

            me.editor.addListener ("afterhidepop" , function () {
                if (!me.isHidden) {
                    isSubMenuShow = true;
                }
            });

        } ,
        initItems : function () {
            if (utils.isArray (this.items)) {
                for (var i = 0, len = this.items.length ; i < len ; i++) {
                    var item = this.items[i].toLowerCase ();

                    if (UI[item]) {
                        this.items[i] = new UI[item] (this.editor);
                        this.items[i].className += " edui-shortcutsubmenu ";
                    }
                }
            }
        } ,
        setOpacity : function (el , value) {
            if (browser.ie && browser.version < 9) {
                el.style.filter = "alpha(opacity = " + parseFloat (value) * 100 + ");"
            } else {
                el.style.opacity = value;
            }
        } ,
        getSubMenuMark : function () {
            isSubMenuShow = false;
            var layerEle = uiUtils.getFixedLayer ();
            var list = domUtils.getElementsByTagName (layerEle , "div" , function (node) {
                return domUtils.hasClass (node , "edui-shortcutsubmenu edui-popup")
            });

            for (var i = 0, node ; node = list[i++] ;) {
                if (node.style.display != "none") {
                    isSubMenuShow = true;
                }
            }
            return isSubMenuShow;
        } ,
        show : function (e , hasContextmenu) {
            var me = this,
                offset = {},
                el = this.getDom (),
                fixedlayer = uiUtils.getFixedLayer ();

            function setPos (offset) {
                if (offset.left < 0) {
                    offset.left = 0;
                }
                if (offset.top < 0) {
                    offset.top = 0;
                }
                el.style.cssText = "position:absolute;left:" + offset.left + "px;top:" + offset.top + "px;";
            }

            function setPosByCxtMenu (menu) {
                if (!menu.tagName) {
                    menu = menu.getDom ();
                }
                offset.left = parseInt (menu.style.left);
                offset.top = parseInt (menu.style.top);
                offset.top -= el.offsetHeight + 15;
                setPos (offset);
            }


            me.eventType = e.type;
            el.style.cssText = "display:block;left:-9999px";

            if (e.type == "contextmenu" && hasContextmenu) {
                var menu = domUtils.getElementsByTagName (fixedlayer , "div" , "edui-contextmenu")[0];
                if (menu) {
                    setPosByCxtMenu (menu)
                } else {
                    me.editor.addListener ("aftershowcontextmenu" , function (type , menu) {
                        setPosByCxtMenu (menu);
                    });
                }
            } else {
                offset = uiUtils.getViewportOffsetByEvent (e);
                offset.top -= el.offsetHeight + me.SPACE;
                offset.left += me.SPACE + 20;
                setPos (offset);
                me.setOpacity (el , 0.2);
            }


            me.isHidden = false;
            me.left = e.screenX + el.offsetWidth / 2 - me.SPACE;
            me.top = e.screenY - (el.offsetHeight / 2) - me.SPACE;

            if (me.editor) {
                el.style.zIndex = me.editor.container.style.zIndex * 1 + 10;
                fixedlayer.style.zIndex = el.style.zIndex - 1;
            }
        } ,
        hide : function () {
            if (this.getDom ()) {
                this.getDom ().style.display = "none";
            }
            this.isHidden = true;
        } ,
        postRender : function () {
            if (utils.isArray (this.items)) {
                for (var i = 0, item ; item = this.items[i++] ;) {
                    item.postRender ();
                }
            }
        } ,
        getHtmlTpl : function () {
            var buff;
            if (utils.isArray (this.items)) {
                buff = [];
                for (var i = 0 ; i < this.items.length ; i++) {
                    buff[i] = this.items[i].renderHtml ();
                }
                buff = buff.join ("");
            } else {
                buff = this.items;
            }

            return '<div id="##" class="%% edui-toolbar" data-src="shortcutmenu" onmousedown="return false;" onselectstart="return false;" >' +
                buff +
                '</div>';
        }
    };

    utils.inherits (ShortCutMenu , UIBase);

    function hideAllMenu (e) {
        var tgt = e.target || e.srcElement,
            cur = domUtils.findParent (tgt , function (node) {
                return domUtils.hasClass (node , "edui-shortcutmenu") || domUtils.hasClass (node , "edui-popup");
            } , true);

        if (!cur) {
            for (var i = 0, menu ; menu = allMenus[i++] ;) {
                menu.hide ()
            }
        }
    }

    domUtils.on (document , 'mousedown' , function (e) {
        hideAllMenu (e);
    });

    domUtils.on (window , 'scroll' , function (e) {
        hideAllMenu (e);
    });

}) ();

(function (){
    var utils = baidu.editor.utils,
        UIBase = baidu.editor.ui.UIBase,
        Breakline = baidu.editor.ui.Breakline = function (options){
            this.initOptions(options);
            this.initSeparator();
        };
    Breakline.prototype = {
        uiName: 'Breakline',
        initSeparator: function (){
            this.initUIBase();
        },
        getHtmlTpl: function (){
            return '<br/>';
        }
    };
    utils.inherits(Breakline, UIBase);

})();
})()