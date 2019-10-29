
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="css/admin_header.css" rel="stylesheet" type="text/css">
    <link href="icon/iconfont.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Eduline - Eduline在线教育平台|在线网校系统|在线教育系统|在线教育解决方案|在线教育系统|在线学习系统|在线培训系统</title>
    <link rel="shortcut icon" href="images/5b6a91bca0b3b.ico" type="image/x-icon">
    <script type="text/javascript" src="js/jquery-1.8.0.js"></script>

    <script type="text/javascript">
        var SITE_URL = 'http://try.51eduline.com';
        var APPNAME = 'admin';
        /* 按下F5时仅刷新iframe页面 */
        document.onkeydown=function (e) {
            e=window.event||e;
            var key = e.keyCode;
            if ((e.ctrlKey && key == 82) || key == 116) {
                parent.MainIframe.location.reload();
                if(document.all) {
                    e.keyCode = 0;
                    e.returnValue = false;
                }else {
                    e.cancelBubble = true;
                    e.preventDefault();
                }
            }
        }
        function nof5() {
            return true;
        }
        //模拟ts U函数 需要预先定义JS全局变量 SITE_URL 和 APPNAME
        var U = function(url, params) {
            var website = SITE_URL + '/index.php';
            url = url.split('/');
            if (url[0] == '' || url[0] == '@') url[0] = APPNAME;
            if (!url[1]) url[1] = 'Index';
            if (!url[2]) url[2] = 'index';
            website = website + '?app=' + url[0] + '&mod=' + url[1] + '&act=' + url[2];
            if (params) {
                params = params.join('&');
                website = website + '&' + params;
            }
            return website;
        };
        function refresh() {
            parent.MainIframe.location.reload();
        }
    </script>

    <!--主题色配置-->
    <style>
        .header , .header .logo ,.MenuList ul, .MenuList li ,.submenu li ,#FrameTitle{background-color:#323944;}
        .treemenu .actuator{background-color: #3f4856;}
        .header .main_nav a , .submenu li a{color:#c8cee0;}
        .header .logo a .icon{color: #3676b3;}
    </style>
</head>

<body style="margin:0; padding:0;" onLoad="nof5()">

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3">
            <div class="header"><!-- 头部 begin -->
                <div class="logo">
                    <a href="http://try.51eduline.com/admin.html"><i class="icon icon-houtai9"></i>管理中心</a>
                </div>
                <div class="nav_sub">
                    您好,admin &nbsp; |
                    <a target="_blank" href="/main">返回前台</a> |
                    <a href="javascript:void(0);" onClick="refresh();">刷新</a> |
                    <a href="http://try.51eduline.com/index.php?app=admin&mod=Public&act=logout">退出</a><br/>
                    <div id="TopTime"></div>
                </div>
                <div class="main_nav">
                    <a id="channel_index" class="on" href="javascript:void(0)" onclick="switchChannel('index');" hidefocus="true" style="outline:none;">首页</a>
                    <a id="channel_content"  href="javascript:void(0)" onclick="switchChannel('content');" hidefocus="true" style="outline:none;">运营</a>
                    <a id="channel_course"  href="javascript:void(0)" onclick="switchChannel('course');" hidefocus="true" style="outline:none;">课堂</a>
                    <a id="channel_finance"  href="javascript:void(0)" onclick="switchChannel('finance');" hidefocus="true" style="outline:none;">财务</a>
                    <a id="channel_mall"  href="javascript:void(0)" onclick="switchChannel('mall');" hidefocus="true" style="outline:none;">商城</a>
                    <a id="channel_school"  href="javascript:void(0)" onclick="switchChannel('school');" hidefocus="true" style="outline:none;">讲师</a>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td width="234px" height="100%" valign="top" id="FrameTitle" >
            <div class="LeftMenu">
                <!--<div class="g-icon">
                    <img src="http://try.51eduline.com/apps/admin/_static/images/jin.png" alt="">
                </div>-->
                <!-- 第一级菜单，即大频道 -->
                <ul class="MenuList" id="root_index" >
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_1" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('1');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">首页</span></a>
                        <ul id="tree_1" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_2" href="javascript:void(0)" onClick="switch_sub_menu('2', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=statistics&');" class="submenuA" hidefocus="true" style="outline:none;">基本信息</a></li>
                            <li><a id="menu_3" href="javascript:void(0)" onClick="switch_sub_menu('3', 'http://try.51eduline.com/index.php?app=admin&mod=Tool&act=cleancache&');" class="submenuA" hidefocus="true" style="outline:none;">缓存清理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_content" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_13" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('13');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">营销卡管理</span></a>
                        <ul id="tree_13" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_14" href="javascript:void(0)" onClick="switch_sub_menu('14', '/operating/card/findCardLog');" class="submenuA" hidefocus="true" style="outline:none;">卡券发放记录</a></li>
                            <li><a id="menu_15" href="javascript:void(0)" onClick="switch_sub_menu('15', '/operating/card/findCardVoucher');" class="submenuA" hidefocus="true" style="outline:none;">线上卡券管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_17" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('17');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">内容管理</span></a>
                        <ul id="tree_17" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_18" href="javascript:void(0)" onClick="switch_sub_menu('18', '/operating/content/findConsultingList');" class="submenuA" hidefocus="true" style="outline:none;">资讯管理</a></li>
                            <li><a id="menu_19" href="javascript:void(0)" onClick="switch_sub_menu('19', '/operating/single/findSingleList');" class="submenuA" hidefocus="true" style="outline:none;">单页管理</a></li>
                            <li><a id="menu_20" href="javascript:void(0)" onClick="switch_sub_menu('20', '/operating/message/findMessagesList?isDel=0');" class="submenuA" hidefocus="true" style="outline:none;">私信管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_27" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('27');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">等级头衔管理</span></a>
                        <ul id="tree_27" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_28" href="javascript:void(0)" onClick="switch_sub_menu('28', '/membership/findMembership');" class="submenuA" hidefocus="true" style="outline:none;">会员等级</a></li>
                            <li><a id="menu_29" href="javascript:void(0)" onClick="switch_sub_menu('29', '/lecturership/findLecturership');" class="submenuA" hidefocus="true" style="outline:none;">讲师头衔</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_30" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('30');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">财务配置</span></a>
                        <ul id="tree_30" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_31" href="javascript:void(0)" onClick="switch_sub_menu('31', '/integral/findIntegral');" class="submenuA" hidefocus="true" style="outline:none;">积分规则配置</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_34" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('34');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">营销配置</span></a>
                        <ul id="tree_34" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_35" href="javascript:void(0)" onClick="switch_sub_menu('35', 'http://try.51eduline.com/index.php?app=admin&mod=Config&act=marketConfig&');" class="submenuA" hidefocus="true" style="outline:none;">营销数据开关</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_user" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_36" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('36');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">用户</span></a>
                        <ul id="tree_36" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_38" href="javascript:void(0)" onClick="switch_sub_menu('38', '/teacher/findTeacherList?type=1');" class="submenuA" hidefocus="true" style="outline:none;">讲师管理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_course" style="display:none;">
                    <li class="treemenu">
                        <a id="root_43" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('43');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">班级管理</span></a>
                        <ul id="tree_43" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_44" href="javascript:void(0)" onClick="switch_sub_menu('44', 'http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">班级课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_45" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('45');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">线下课管理</span></a>
                        <ul id="tree_45" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_46" href="javascript:void(0)" onClick="switch_sub_menu('46', '/offline/class/findOfflineClassList');" class="submenuA" hidefocus="true" style="outline:none;">线下课管理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_finance" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_61" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('61');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">订单与账户</span></a>
                        <ul id="tree_61" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_62" href="javascript:void(0)" onClick="switch_sub_menu('62', 'finance/findDingdan');" class="submenuA" hidefocus="true" style="outline:none;">订单管理</a></li>
                            <li><a id="menu_63" href="javascript:void(0)" onClick="switch_sub_menu('63', 'finance/findTuikuan');" class="submenuA" hidefocus="true" style="outline:none;">申请退款管理</a></li>
                            <li><a id="menu_64" href="javascript:void(0)" onClick="switch_sub_menu('64', 'finance/findTixian');" class="submenuA" hidefocus="true" style="outline:none;">提现申请</a></li>
                            <li><a id="menu_65" href="javascript:void(0)" onClick="switch_sub_menu('65', 'finance/findKahao');" class="submenuA" hidefocus="true" style="outline:none;">卡号列表</a></li>
                            <li><a id="menu_66" href="javascript:void(0)" onClick="switch_sub_menu('66', 'finance/findZhifu');" class="submenuA" hidefocus="true" style="outline:none;">支付记录</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_67" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('67');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">财务明细管理</span></a>
                        <ul id="tree_67" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_68" href="javascript:void(0)" onClick="switch_sub_menu('68', 'finance/findYue');" class="submenuA" hidefocus="true" style="outline:none;">余额管理</a></li>
                            <li><a id="menu_69" href="javascript:void(0)" onClick="switch_sub_menu('69', 'finance/findShouru');" class="submenuA" hidefocus="true" style="outline:none;">收入管理</a></li>
                            <li><a id="menu_70" href="javascript:void(0)" onClick="switch_sub_menu('70', 'finance/findFencheng');" class="submenuA" hidefocus="true" style="outline:none;">分成明细</a></li>
                            <li><a id="menu_71" href="javascript:void(0)" onClick="switch_sub_menu('71', 'finance/findJifen');" class="submenuA" hidefocus="true" style="outline:none;">积分管理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_mall" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_72" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('72');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">商城管理</span></a>
                        <ul id="tree_72" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_73" href="javascript:void(0)" onClick="switch_sub_menu('73', '/mall/findCommodity');" class="submenuA" hidefocus="true" style="outline:none;">商品管理</a></li>
                            <li><a id="menu_74" href="javascript:void(0)" onClick="switch_sub_menu('74', '/order/findOrder');" class="submenuA" hidefocus="true" style="outline:none;">订单管理</a></li>
                            <li><a id="menu_75" href="javascript:void(0)" onClick="switch_sub_menu('75', '/receiving/findReceiving');" class="submenuA" hidefocus="true" style="outline:none;">收货地址管理</a></li>
                            <li><a id="menu_76" href="javascript:void(0)" onClick="switch_sub_menu('76', '/commodityType/findTree');" class="submenuA" hidefocus="true" style="outline:none;">商品分类配置</a></li>
                            <li><a id="menu_77" href="javascript:void(0)" onClick="switch_sub_menu('77', 'http://try.51eduline.com/index.php?app=admin&mod=Config&act=kuaidiConfig&');" class="submenuA" hidefocus="true" style="outline:none;">物流信息配置</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_school" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_78" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('78');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">机构</span></a>
                        <ul id="tree_78" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_79" href="javascript:void(0)" onClick="switch_sub_menu('79', 'http://try.51eduline.com/index.php?app=school&mod=AdminSchool&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">机构管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_82" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('82');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">内容管理</span></a>
                        <ul id="tree_82" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_86" href="javascript:void(0)" onClick="switch_sub_menu('86', 'http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">班级课管理</a></li>
                            <li><a id="menu_87" href="javascript:void(0)" onClick="switch_sub_menu('87', '/offline/class/findOfflineClassList');" class="submenuA" hidefocus="true" style="outline:none;">线下课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_88" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('88');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">讲师</span></a>
                        <ul id="tree_88" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_89" href="javascript:void(0)" onClick="switch_sub_menu('89', '/teacher/findTeacherList?type=1');" class="submenuA" hidefocus="true" style="outline:none;">讲师管理</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </td>

        <td style="width: 100%;height: 100%;">
            <iframe style="background-color: #ffffff;" onload="nof5()" id="MainIframe" name="MainIframe" scrolling="yes"  width="100%" height="100%" frameborder="0" noresize> </iframe>
        </td>
    </tr>
</table>

</body>
</html>
<script type="text/javascript">
    var current_channel = null;
    var current_menu_root = null;
    var current_menu_sub = null;
    var viewed_channel = new Array();
    $(function() {
        $(".g-icon img").click(function() {
            if ($("#FrameTitle").css("width") == "160px") {
                $("#FrameTitle").css({
                    "width": "50px"
                });
                $(".treemenu .text").hide();
                $(".submenu li a").addClass("on").css("padding-left", "0px");
                $(this).attr("src", "http://try.51eduline.com/apps/admin/_static/images/chu.png");
                $(".MenuList a i").css("margin-left", "17px")
            } else {
                $("#FrameTitle").css({
                    "width": "160px"
                });
                $(".treemenu .text").show();
                $(".submenu li a").removeClass("on").css("padding-left", "60px");
                $(this).attr("src", "http://try.51eduline.com/apps/admin/_static/images/jin.png");
                $(".MenuList a i").css("margin-left", "40px")
            }
        });
        if ($('.main_nav a:first').attr('id') != 'channel_index') {
            switchChannel($('.main_nav a:first').attr('id').substring(8));
        } else {
            switchChannel('index');
        }
    });
    //切换频道（即头部的tab）
    function switchChannel(channel) {
        //if(current_channel == channel) return false;
        $('.main_nav').find('a').removeClass('on');
        $('#channel_' + current_channel).removeClass('on');
        $('#channel_' + channel).addClass('on');
        $('#root_' + current_channel).css('display', 'none');
        $('#root_' + channel).css('display', 'block');
        var tmp_menulist = $('#root_' + channel).find('a');
        tmp_menulist.each(function(i, n) {
            // 防止重复点击ROOT菜单
            if (i == 0 && $.inArray($(n).attr('id'), viewed_channel) == -1) {
                $(n).click();
                viewed_channel.push($(n).attr('id'));
            }
            if (i == 1) {
                $(n).click();
            }
        });
        current_channel = channel;
    }
    function switch_root_menu(root) {
        root = $('#tree_' + root);
        if (root.css('display') == 'block') {
            root.css('display', 'none');
            root.siblings("a").find("i").addClass("icon-sanjiaoxing-right").removeClass("icon-sanjiaoxing-down");
        } else {
            root.css('display', 'block').parent(".treemenu").siblings(".treemenu").find(".submenu").css("display", "none")
            root.siblings("a").find("i").addClass("icon-sanjiaoxing-down").removeClass("icon-sanjiaoxing-right").parents(".treemenu").siblings(".treemenu").find("i").removeClass("icon-sanjiaoxing-down").addClass("icon-sanjiaoxing-right");
        }
    }
    function switch_sub_menu(sub, url) {
        if (current_menu_sub) {
            $('#menu_' + current_menu_sub).addClass('submenuA').removeClass("submenuB");
        }
        $('#menu_' + sub).addClass('submenuB').removeClass("submenuA");
        current_menu_sub = sub;
        parent.MainIframe.location = url;
    }
</script>