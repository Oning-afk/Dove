
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eduline — Eduline在线教育平台|在线网校系统|在线教育系统|在线教育解决方案|在线教育系统|在线学习系统|在线培训系统</title>
    <meta content="在线教育，教育系统，在线教育系统，在线教育平台，在线教育网站，在线教育解决方案，网络教学系统，直播系统，点播系统，录播系统，在线约课，在线考试，在线题库，题库系统，在线教育app，在线网校系统，网校系统，培训系统，企业培训系统，企业内训系统，在线培训系统，在线教育系统，在线学习系统，慕课系统，教育系统源码，教育源码，教育源码" name="keywords">
    <meta content="Eduline多机构在线教育交易平台" name="description">
    <meta name="viewport" charset="UTF-8" content="user-scalable=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">

    <link rel="shortcut icon" href="http://try.51eduline.com/data/upload/2018/0808/14/5b6a91bca0b3b.ico" type="image/x-icon">

    <!-- 站点css -->
    <!--<link href="http://try.51eduline.com/addons/theme/stv1/_static/css/css.php?t=css&f=common_new.css,basic_new.css,common.css,index.css,logincss.css,media.css,style.css,style_add.css,style_new.css,wenda.css,_header_footer.css&v=20180814.css" rel="stylesheet" type="text/css" />-->
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/rest.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfont.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/common.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/index.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/style.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/js/tbox/box.css?v=20180814">
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;}
    </style>
    <!--<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/js.php?t=js&f=jquery.form.js,common.js,core.js,module.js,module.common.js,jwidget_1.0.0.js,jquery.atwho.js,jquery.caret.js,ui.core.js,ui.draggable.js,plugins/core.comment.js,plugins/core.digg.js&v=20180814.js"></script>-->
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery.atwho.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery.caret.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/core.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.common.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/common.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/script.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/user.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/plugins/core.comment.js?v=20180814"></script>

    <script>
        //全局变量
        var SITE_URL  = 'http://try.51eduline.com';
        var UPLOAD_URL= 'http://try.51eduline.com/data/upload';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'classroom';
        var MID		  = '0';
        var UID		  = '0';
        var initNums  =  '140';
        var SYS_VERSION = '20180814';
        var _ROOT_    = 'http://try.51eduline.com';

        //注册登录模板
        var REG_LOGIN="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=regLogin";
        //邮箱验证地址
        var CLICK_EMIL="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=clickEmail";
        //异步注册地址
        var REG_ADDRESS="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=ajaxReg";
        //异步登录
        var LOGIN_ADDRESS="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=ajaxLogin";
        //退出登录
        var LOGINOUT_ADDRESS="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=logout";
        //手机号正则
        var PHONE_MATCH = /^1[3|4|5|6|7|8|9][0-9]\d{8}$/;
        //邮箱正则
        var EMAIL_MATCH = /([\w\-\.]+\@[\w\-\.]+\.[\w\-\.]+)/;

        $(function(){
            $('.backtop').click(function(){
                $('body,html').animate({scrollTop:0},300);
                return false;
            });
            $('.full-course').hover(function(){
                $(this).addClass('hover');
            },function(){
                $(this).removeClass('hover');
            });

            $(".search_index_val span a").click(function(){
                var span_Val = $(this).text();
                var a_Attr = $(this).attr("attr");
                $(".search_index_val p").html(span_Val);
                $("#search_cate").val(a_Attr);
                $(".search_index #search_combo_input").attr("placeholder","搜索"+span_Val);
                $(this).hide().siblings().show();
            });

            $(".search_index input").focus(function(){
                $(".search_index").css("width","250px");
                $(".search_index input").css("width","140px");
            });
            $.post("http://localhost:5880/statistics/saveVisit");
        });

        $(window).scroll(function(){
            if($(window).scrollTop()>300){
                $('.backtop').fadeIn(300);
            }else{
                $('.backtop').fadeOut(200);
            }
        });

        if(navigator.userAgent.match(/(iPhone|Android|ios)/i)) {
            $(window).load(function () {
                $('.modular,.logos,.window-box').show();
                $('.users').attr('style','display:block');
            });
        }

        function closeMsg(obj){
            $(".news-msg").remove();
        }
    </script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/ui.layer.js"></script>

    <!-- 站点js -->
    <!--[if lt IE 9]>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload/html5shiv.js"></script>
    <![endif]-->
    <!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->

</head>
<body>


<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/reg_login.css?v=20180814">
<div class="top">
    <div class="header_new2">
        <div class="top1">
            <div class="top1img">
                <a href="/" title="Eduline"><img src="http://try.51eduline.com/data/upload/2018/12/045c065a09b4e79.png" width="150"/></a>
            </div>
            <div class="nav">
                <ul>
                    <li class='active'>
                        <a href="/" target="_self">首页</a>
                    </li>
                    <li >
                        <a href="javascript:;" target="_self">课程</a>
                        <span class="course-class">
                            <a href="http://try.51eduline.com/album.html" target="_self">班级</a>
                            <a href="http://try.51eduline.com/lineclass.html" target="_self">线下</a>
                        </span>
                    </li>
                    <li >
                        <a href="http://try.51eduline.com/teacher.html" target="_self">名师</a>
                    </li>
                    <li >
                        <a href="javascript:;" target="_self">更多</a>
                        <span class="course-class">
                            <a href="http://try.51eduline.com/mall.html" target="_self">商城</a>
                            <a href="http://try.51eduline.com/card_receipt/coupon.html" target="_self">卡券</a>
                            <a href="http://try.51eduline.com/news.html" target="_self">资讯</a>
                        </span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="top3">
            <!--消息提示-->
            <ul class="news-msg" style="display:none;">
                <a class="shanchu-ico" href="javascript:;" onClick="closeMsg(this)">×</a>
            </ul>
            <div class="search_index">
                <div class="search_index_val">
                    <div>
                        <p>课程</p><i></i>
                    </div>
                    <span>
                        <a href="javascript:void(0)" attr="course">课程</a>
                        <a href="javascript:void(0)" attr="teacher">讲师</a>
                    </span>
                    <input value="video" id="search_cate" type="hidden" disabled />
                </div>
                <p class="bd_right"></p>
                <input type="text" id="search_combo_input" placeholder="搜索课程">
                <i class="search_start icon icon-sousuo" id="btn_search_site"></i>
            </div>
            <script>
                $(function(){
                    $('#btn_search_site').click(function(){
                        var search_cate = $('#search_cate').val();
                        var search_combo_input = $('#search_combo_input').val();
                        if(search_combo_input != ''){
                            if(search_cate == 'video'){
                                window.open("http://try.51eduline.com/course.html"+"?search="+search_combo_input);
                            }else if(search_cate == 'school'){
                                window.open("http://try.51eduline.com/school.html"+"?search="+search_combo_input);
                            }else if(search_cate == 'teacher'){
                                window.open("http://try.51eduline.com/teacher.html"+"?search="+search_combo_input);
                            }
                        }
                    });

                    $(".search_index_val").hover(function(){
                        $(".search_index").css("border-radius","4px 4px 4px 0px")
                    },function(){
                        $(".search_index").css("border-radius","4px 4px 4px 4px")
                    })
                })
                function closeMsg(){
                    $(".news-msg").remove();
                }
            </script>

            <div class="nav1">
                <div class="look_scanning">
                    <i></i>
                    <div class="ewm">
                        <div class="h5">
                            <div id="nav_h5_qrcode"><img style="display: block;" width="86" height="86" src="http://try.51eduline.com/index.php?app=basic&mod=Qrcode&act=index&config[content]=http%3A%2F%2Ftry.51eduline.com&config[print]=1" data-bd-imgshare-binded="1"></div>
                            <p>手机网页端</p>
                        </div>
                        <div class="app">
                            <div id="nav_app_qrcode"><img src="http://try.51eduline.com/index.php?app=basic&mod=Qrcode&act=index&config[content]=https%3A%2F%2Fwww.pgyer.com%2F5RDd%3Fversion%3D4.1&config[print]=1" data-bd-imgshare-binded="1"></div>
                            <p>APP下载</p>
                        </div>
                    </div>
                </div>
                <ul class="page_header_adiv">
                    <li class="header_top_nav">
                        <a href="http://try.51eduline.com/my/set_up/info.html">admin</a>
                        <i class="icon-nav-arrow"></i>
                    </li>
                    <dl class="login-after-position">
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/index.html">个人中心</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/order.html">财务中心</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/set_up/info.html">我的设置</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/message/index.html">我的消息</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/admin.html">后台管理</a></dd>
                        <dd class="login-after-bdbt"><a href="javascript:;" onClick="logout()">退出</a></dd>
                    </dl>
                </ul>
                </li>
                </ul>
            </div>

            <div class="nav2">
                <a class="page_header_adiv" href="http://try.51eduline.com/login.html">机构入驻</a>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/apps/classroom/_static/css/index.css">
<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/slick_banner.css">
<link rel="stylesheet" type="text/css" href="../css/swiper.css">
<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/slider_banner.css">
<script src="../js/swiper.js"></script>
<script src="../js/vue/vue.js"></script>
<script>
    $(function(){
        vm = new Vue({
            el: '#slideshow',
            data:{
                list:{

                }
            }
        });

        findSwiper();

        $(".direction a").on("click",function(){
            $("#search_cate").val($(this).attr("attr"));
            var search_cate = $("search_cate").val();
        });
        $('#btn_search_site').click(function(){
            var search_cate = $('#search_cate').val();
            var search_combo_input = $('#search_combo_input').val();
            if(search_combo_input != ''){
                if(search_cate == 'video'){
                    window.open("http://try.51eduline.com/course.html"+"?search="+search_combo_input);
                }else if(search_cate == 'school'){
                    window.open("http://try.51eduline.com/school.html"+"?search="+search_combo_input);
                }else if(search_cate == 'teacher'){
                    window.open("http://try.51eduline.com/teacher.html"+"?search="+search_combo_input);
                }
            }
        });
        $('.search_hot a').click(function(){
            var cateId = $(this).attr('attr');
            var search_cate = $('#search_cate').val();
            if(search_cate == 'video'){
                window.open("http://try.51eduline.com/course.html"+"?search="+cateId);
            }else if(search_cate == 'school'){
                window.open("http://try.51eduline.com/school.html"+"&search="+cateId);
            }else if(search_cate == 'teacher'){
                window.open("http://try.51eduline.com/teacher.html"+"?search="+cateId);
            }
        });
        $(window).scroll(function () {
            var _lazydata=[];
            $.each($(".information-imgtxt .lazyload"),function () {
                lazydata={
                    obj:$(this),
                    url:$(this).attr("data-original"),
                };
                _lazydata.push(lazydata)
            });
            $.each(_lazydata,function (i,data) {
                if(data.obj.offset().top-$(document).scrollTop()<$(window).height()){
                    data.obj.attr("src",data.url)
                }
            })
        })
    })

    function findSwiper(){
        $.post("http://localhost:5880/teacher/findSwiper",{},function (data) {
            vm.list = data;
        })
    }

    var mySwiper = new Swiper('.swiper-container',{
        prevButton:'.swiper-button-prev',
        nextButton:'.swiper-button-next',
    })
</script>
<!--banner start-->
<section>
    <div class="swiper-container" >
            <div class="swiper-wrapper" id="slideshow">
                    <div class="swiper-slide" v-for="site in list">
                            <a :href="site.url" title="">
                                <img :src="site.imgs" alt="" width="100%">
                            </a>
                    </div>
            </div>
            <!-- Add Pagination -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</section>
<!--banner end-->

<!-- 首页模块 -->
<!--APP下载、创建小组、入驻机构-->
<div class="body01" style="margin:0 auto">
    <ul class="my-server">
        <li>
            <a href="javascript:;" onClick="reg_login();">
                <i class="icon icon-laoshi"></i>
                <span>
                    <h3>认证讲师</h3>
                    <small>寻找更多志同道合的人</small>
                </span>
            </a>
        </li>
    </ul>
</div>

<!--最新课程 start-->
<div class="body01">
    <h1>最新课程</h1>
    <div class="body01-content">

        <ul>
            <li>
                <img class="lefttopimg" src="http://try.51eduline.com/addons/theme/stv1/_static/images/course.png"
                     alt="">
                <a href="http://try.51eduline.com/course/176.html">
                    <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/135da30070ebe5c_580_320_580_320.jpg" alt="" />
                </a>
                <div class="title">
                    <h5><a href="http://try.51eduline.com/course/176.html">一组测试</a></h5>
                    <span><strong> ￥66</strong><small>300人购买</small></span>
                </div>
            </li>
        </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/course.html?orderBy=new"  class="look-all">查看更多</a>
    </div>
</div>
<!--最新课程 end-->

<!--精选课程 start-->
<div class="body01">
    <h1>精选课程</h1>
    <div class="body01-content">
        <ul>
            <li>
                <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
                <a href="http://try.51eduline.com/live/166.html">
                    <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/06/175d07941490d11_580_320_580_320.png" alt="" />
                </a>
                <div class="title">
                    <h5><a href="http://try.51eduline.com/live/166.html">贝刃公益</a></h5>
                    <span><strong><span style="color: #56b02a;">免费</span> </strong><small>185人购买</small></span>
                </div>
            </li>
        </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/course.html?best=1"  class="look-all">查看更多</a>
    </div>
</div>
<!--精选课程 end-->

<!--讲师团队 start-->
<div class="body01">
    <h1>讲师团队</h1>
    <div class="teacher-team">
        <ul v-for="">
            <li>
                <a href="">
                    <span>
                        <img class="lazyload" data-original="">
                    </span>
                    <h5></h5>
                    <small></small>
                    <p></p>
                </a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="http://try.51eduline.com/teacher/80.html">
                            <span>
                                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/125da1914735f67.jpg">
                            </span>
                    <h5>王新生</h5>
                    <small>金牌讲师</small>
                    <p></p>
                </a>
            </li>
        </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/teacher.html" class="look-all">查看更多</a>
    </div>
</div>
<!--讲师团队 end-->
<script src="http://try.51eduline.com/online_check.php?uid=0&uname=&mod=Index&app=classroom&act=index&action=trace"></script>
<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload/jquery.lazyload.min.js"></script>
<script type="text/javascript">

    function reg_login(){
        location.href="../teacher";
    }

    $(function () {
        // 初始化
        $("img.lazyload").lazyload({
            effect: "fadeIn",
            placeholder: "http://try.51eduline.com/addons/theme/stv1/_static/images/loading_image.png"
        });
    });
</script>

</body>

</html>
<style>
    .swiper-slide{position:absolute;top:0;opacity:0}
    .swiper-slide:first-child{opacity:1}
    .swiper-container-android .swiper-slide,.swiper-wrapper{height:416.28px}
    .slideTxtBox{overflow:hidden}
    .slideTxtBox .icon-youjiantou{position:absolute;top:0;right:0}
    .slideTxtBox .icon-zuojiantou{position:absolute;top:0;left:0;z-index:10}
    .slideTxtBox .bd ul{padding:0 40px;float:left;}
    .slideTxtBox .icon:hover{cursor:pointer}
    .slideTxtBox .bd{position:relative;left:0;-webkit-transition:all .2s linear;-moz-transition:all .2s linear;-ms-transition:all .2s linear;-o-transition:all .2s linear;transition:all .2s linear}
    .slideTxtBox .hd ul li:first-child em{color:#00bed4}
    .single-item{position:relative;min-height:364px}
    .content{position: relative}
    .single-item div{position:absolute;top:0;left:0;width:570px;}
    .single-item div img{width:100%;min-height:364px}
    .single-item div span{width:100%;position:absolute;bottom:0;left:0;line-height:50px;font-size:20px;background:-webkit-linear-gradient(transparent,rgba(51,51,51,.8));background:-o-linear-gradient(transparent,rgba(51,51,51,.8));background:-moz-linear-gradient(transparent,rgba(51,51,51,.8));background:linear-gradient(transparent,rgba(51,51,51,.8))}
    .single-item div span p{color:#fff;width:430px;margin-left:16px;white-space:nowrap;-ms-text-overflow:ellipsis;text-overflow:ellipsis;overflow:hidden;font-weight:700}
</style>
<script >
    /*首页轮播兼容ie9*/
    var newimg=0; //0==1 1==2 2==3
    var length = $(".swiper-slide").length;
    $(".swiper-button-next").click(function () {
        newimg++;
        if(newimg>length-1){
            newimg=0;
        }
        $(".swiper-slide").css("opacity","0");
        $($(".swiper-slide")[newimg]).css("opacity","1");
        return false;
    });
    $(".swiper-button-prev").click(function(){
        newimg--;
        if (newimg<0){
            newimg=length-1;
        }
        $(".swiper-slide").css("opacity","0");
        $($(".swiper-slide")[newimg]).css("opacity","1");
        return false;
    });
    /*直播预告*/
    $(".slideTxtBox .bd").width($(".slideTxtBox .bd ul").width()*$(".slideTxtBox .bd ul").length+(80*$(".slideTxtBox .bd ul").length))
    var bdlength=$(".slideTxtBox .bd").width();
    var num=$(".slideTxtBox .bd ul").length;
    var datalength=$(".slideTxtBox .bd ul").outerWidth(); //初始化
    var data=[];
    var page=0;//第几个 0==1 1==2 2==3 。。。。
    for (var i=0;i<$(".slideTxtBox .bd ul").length;i++){
        datalength=datalength-$(".slideTxtBox .bd ul").outerWidth();
        data[i]=datalength
    }
    $(".icon-youjiantou").click(function () {
        page++;
        if(page<=data.length-1){
            $(".slideTxtBox .bd").css("left",data[page]+"px");
            $(".icon-yuandian").css("color","#888");
            $($(".hd li")[page]).children(".icon-yuandian").css("color","#00bed4");
        }else{
            page=data.length-1;
            return false;
        }
    });
    $(".icon-zuojiantou").click(function(){
        page--;
        if(page>=0){
            $(".icon-yuandian").css("color","#888");
            $($(".hd li")[page]).children(".icon-yuandian").css("color","#00bed4");
            $(".slideTxtBox .bd").css("left", data[page]+"px")
        }else{
            page=0;
            return false;
        }
    });
    (function(){
        $("img.lazyload").lazyload({effect: "fadeIn",placeholder:"http://try.51eduline.com/addons/theme/stv1/_static/images/loading_image.png"});
    })();
    /*轮播
    * 1，数量
    * 长度
    * 标识框*/
    lunbo($(".content .single-item"),$(".content .single-item div"),$(".slick-prev"),$(".slick-next"));
    function lunbo(a,b,pre,next){
        //设置外框长度 a 为外框  b为每张轮播 pre为点击上一页 next 为下一页
        a.width(parseInt(b.outerWidth())*b.length);
        var i=0;  //当前项
        var mylunbo=[];
        b.each(function (i,index) {
            mylunbo.push(index)
        });
        pre.on("click",function () {
            i--;
            if(i>0){

            }else{
                i=b.length-1;
            }
            b.hide();
            $(mylunbo[i]).show()
        });
        next.on("click",function () {
            i++;
            if (i<b.length-1){

            }else{
                i=0;
            }
            b.hide();
            $(mylunbo[i]).show()
        })
    }
</script>
