
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

<div id="transparent" style="display: none;">

    <div id="loging-worap-regsiter"><a class="loging-Cancel" href="javascript:;" onclick="removeReg()">×</a>
        <!--登录-->
        <div id="loging-worap">
            <div class="title">登录</div>
            <div class="loging" style="padding:0 20px;margin:0;width:auto;border:0">
                <ul>
                    <li class="her-login">
                        <div class="input-box">
                            <i class="icon-zhanghao"></i>
                            <input name="usercode" id="usercode" class="regsiter-width" maxlength="30" type="text" placeholder="请输入用户名/手机号/邮箱">
                            <em>×</em>
                        </div>
                    </li>
                    <li class="her-login">
                        <div class="input-box">
                            <i class="icon-mima"></i>
                            <input name="password" id="password" class="regsiter-width" maxlength="30" type="password" placeholder="请输入登录密码">
                            <em>×</em>
                        </div>
                    </li>
                    <li class="her-login">
                        <input name="" id="logSub" onclick="logSub()" class="loging-xy-submit" type="submit" value="登录"/>
                    </li>
                </ul>
                <div class="loging-xy">
                    <div class="loging-bottom">
                        <div class="third-party"><dl><dd><a href="http://try.51eduline.com/login_callback/qzone/Login/login_sync_other.html" class="icon-qzone"></a></dd><dd><a href="http://try.51eduline.com/login_callback/weixin/Login/login_sync_other.html" class="icon-weixin"></a></dd><dd><a href="http://try.51eduline.com/login_callback/sina/Login/login_sync_other.html" class="icon-sina"></a></dd></dl></div>                        <div class="loging-xy-bottom">
                        <a class="goto_res" href="http://try.51eduline.com/register.html">注册账号</a>                            <a href="http://try.51eduline.com/repwd.html" sty>忘记密码？</a></div>
                        <style>
                            #transparent a{color: #00BED4;}
                            .icon-qzone {
                                background-position: -461px -661px;
                                background-image:url(http://try.51eduline.com/addons/theme/stv1/_static/icon/icon.png);
                            }
                            .icon-weixin {
                                background-position: -511px -661px;
                                background-image:url(http://try.51eduline.com/addons/theme/stv1/_static/icon/icon.png);
                            }
                            .icon-sina {
                                background-position: -561px -661px;
                                background-image:url(http://try.51eduline.com/addons/theme/stv1/_static/icon/icon.png);
                            }
                        </style>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="loging-back"></div>
</div>

<script>

    function logSub(){
        var usercode = $("#usercode").val();
        var password = $("#password").val();
        if(usercode!=null&&password!=null){
            $.ajax({
                url:"http://localhost:5880/user/login",
                type:"post",
                data:{usercode:usercode,password:password},
                dataType:"json",
                success:function(data){
                    if(data.success){

                    }else{
                        alert(data.message);
                    }
                },
                error:function(){
                    alert("错误");
                }
            })

        }
    }

    $(document).keydown(function (event) {
        if ($("#transparent").css("display") == "block") {
            if (event.keyCode == 13) {
                logSub();
            }
        }
    });
    /**
     * 取消注册
     */
    function removeReg() {
        $("#transparent").css("display", "none");
    }

    $('.loging li .input-box em').on("click",function(){
        $(this).siblings(".regsiter-width").val("").focus();
    });

    $(".loging li .input-box .regsiter-width").blur(function(){
        $(this).parent(".loging li .input-box").css({"box-shadow":"0px 0px 0 0 rgba(255,255,255,1)","border": "1px solid #eeeeee"})
    });

    $(".loging li .input-box .regsiter-width").focus(function(){
        $(this).parent(".loging li .input-box").css({"box-shadow":"0px 0px 1px 1px rgba(0,190,212,1)","border": "1px solid transparent"})
    });
</script>
<div class="win hide"></div>

<div class="top">
    <div class="header_new2">
        <div class="top1">
            <div class="top1img">
                <a href="/" title="Eduline"><img src="http://try.51eduline.com/data/upload/2018/12/045c065a09b4e79.png" width="150"/></a>
            </div>

            <div class="nav">
                <ul>
                    <li class='active'>
                        <a href="http://try.51eduline.com" target="_self">首页</a>
                    </li>                        <li >
                    <a href="javascript:;" target="_self">课程</a>
                    <span class="course-class">
                            <a href="http://try.51eduline.com/course.html?vtype=1" target="_self">点播</a><a href="http://try.51eduline.com/course.html?vtype=2" target="_self">直播</a><a href="http://try.51eduline.com/album.html" target="_self">班级</a><a href="http://try.51eduline.com/lineclass.html" target="_self">线下</a>                            </span>                        </li>                        <li >
                    <a href="http://try.51eduline.com/exam.html" target="_self">考试</a>
                </li>                        <li >
                    <a href="http://try.51eduline.com/school.html" target="_self">机构</a>
                </li>                        <li >
                    <a href="http://try.51eduline.com/teacher.html" target="_self">名师</a>
                </li>                        <li >
                    <a href="http://try.51eduline.com/vip.html" target="_self">会员</a>
                </li>                        <li >
                    <a href="javascript:;" target="_self">更多</a>
                    <span class="course-class">
                            <a href="http://try.51eduline.com/mall.html" target="_self">商城</a><a href="http://try.51eduline.com/card_receipt/coupon.html" target="_self">卡券</a><a href="http://try.51eduline.com/news.html" target="_self">资讯</a><a href="http://try.51eduline.com/question.html" target="_self">问答</a><a href="http://try.51eduline.com/library.html" target="_self">资料</a>                            </span>                        </li>                </ul>
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
                        <a href="javascript:void(0)" attr="school">机构</a>                        <a href="javascript:void(0)" attr="teacher">讲师</a>
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
                    <li><a href="javascript:;" onclick="reg_login();">登录</a></li>
                    <li style="line-height: 80px;">丨</li>
                    <li>
                        <a href="http://try.51eduline.com/register.html">注册</a>                        </li>                </ul>
            </div>

            <div class="nav2">
                <a class="page_header_adiv" href="http://try.51eduline.com/login.html">机构入驻</a>
            </div>
        </div>
    </div>
</div>
<script>
    if($(".ewm").children().length>1){
        $(".ewm").width(203)
    }else{
        $(".ewm").width(93)
    }
</script>

<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/apps/classroom/_static/css/index.css">
<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/slick_banner.css">
<link rel="stylesheet" type="text/css" href="../css/swiper.css">
<link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/slider_banner.css">
<script src="../js/swiper.js"></script>
<script src="../js/vue/vue.js"></script>
<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/countUp.min.js"></script>
<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/index_2.0.js"></script>
<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/slick.js"></script>
<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery.SuperSlide.2.1.1.js"></script>
<script>
    $(function(){
        vm = new Vue({
            el: '#slideshow',
            data:{
                list:{
                    imgs:'',
                    url:''
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
        $.post("http://localhost:5880/findSwiper",{},function (data) {
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
                <span v-for="site in list">
                    <div class="swiper-slide">
                            <a :href="site.url" title="">
                                <img :src="site.imgs" alt="" >
                            </a>
                    </div>
                </span>
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
            <a href="https://www.pgyer.com/5RDd?version=4.1">
                <i class="icon icon-app"></i>
                <span>
                                <h3>APP下载</h3>
                                <small>海量课程随身携带</small>
                            </span>
            </a>
        </li>
        <li>
            <a href="javascript:;" onClick="reg_login();"
            >
                <i class="icon icon-laoshi"></i>
                <span>
                                <h3>认证讲师</h3>
                                <small>寻找更多志同道合的人</small>
                            </span>
            </a>
        </li>
        <li class="border-none">

            <a href="javascript:;" onClick="reg_login();"
            >
                <i class="icon icon-jigou1"></i>
                <span>
                                    <h3>入驻机构</h3>
                                    <small>打造专属的在线课堂</small>
                                </span>
            </a>
        </li>
    </ul>

    <!--热门资讯-->
    <!-- <div class="hot-news">
         <h4>热门资讯：</h4>
         <ul>
             <li><i class="icon icon-dian"></i><a href="http://try.51eduline.com/news/55.html">啊啊啊</a></li>                    </ul>
     </div>-->
</div>





<!---->




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
            </li><li>
            <img class="lefttopimg" src="http://try.51eduline.com/addons/theme/stv1/_static/images/course.png"
                 alt="">
            <a href="http://try.51eduline.com/course/170.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/08/025d432b6488191_580_320_580_320.png" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/course/170.html">内在管理111</a></h5>
                <span><strong><span style="color: #56b02a;">免费</span> </strong><small>10000003人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/166.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/06/175d07941490d11_580_320_580_320.png" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/166.html">贝刃公益</a></h5>
                <span><strong><span style="color: #56b02a;">免费</span> </strong><small>185人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/160.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/04/275cc3a293f3bea_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/160.html">mm</a></h5>
                <span><strong> ￥100</strong><small>102人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/158.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/04/105cad4231455e1_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/158.html">好直播</a></h5>
                <span><strong> ￥250</strong><small>102人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/154.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/03/295c9de7711d633_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/154.html">java从入门到放弃</a></h5>
                <span><strong><span style="color: #56b02a;">免费</span> </strong><small>168人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/152.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/03/295c9d7aef4eedb_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/152.html">222</a></h5>
                <span><strong> ￥333</strong><small>101人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/136.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/09/255ba9951b2f803_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/136.html">tesdt123456</a></h5>
                <span><strong><span style="color: #56b02a;">免费</span> </strong><small>186人购买</small></span>
            </div>
        </li>                </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/course.html?orderBy=new"  class="look-all">查看更多</a>
    </div>
</div>
<!--最新课程 end-->


<!---->



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
            </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/116.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9f1ba14b6_580_320_580_320.png" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/116.html">展示互动直播课</a></h5>
                <span><strong> ￥200</strong><small>133人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/136.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/09/255ba9951b2f803_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/136.html">tesdt123456</a></h5>
                <span><strong><span style="color: #56b02a;">免费</span> </strong><small>186人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg" src="http://try.51eduline.com/addons/theme/stv1/_static/images/course.png"
                 alt="">
            <a href="http://try.51eduline.com/course/176.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/135da30070ebe5c_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/course/176.html">一组测试</a></h5>
                <span><strong> ￥66</strong><small>300人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/117.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9faf4147c_580_320_580_320.png" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/117.html">CClive直播课</a></h5>
                <span><strong> ￥300</strong><small>130人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/118.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6aa03c4641c_580_320_580_320.png" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/118.html">微吼直播课</a></h5>
                <span><strong> ￥100</strong><small>133人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg" src="http://try.51eduline.com/addons/theme/stv1/_static/images/course.png"
                 alt="">
            <a href="http://try.51eduline.com/course/5.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0814/13/5b726b963f7e7_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/course/5.html">Oracle数据库开发</a></h5>
                <span><strong> ￥100</strong><small>138人购买</small></span>
            </div>
        </li><li>
            <img class="lefttopimg"  src="http://try.51eduline.com/apps/course/_static/icon/living.png" alt="">
            <a href="http://try.51eduline.com/live/154.html">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/03/295c9de7711d633_580_320_580_320.jpg" alt="" />
            </a>
            <div class="title">
                <h5><a href="http://try.51eduline.com/live/154.html">java从入门到放弃</a></h5>
                <span><strong><span style="color: #56b02a;">免费</span> </strong><small>168人购买</small></span>
            </div>
        </li>                </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/course.html?best=1"  class="look-all">查看更多</a>
    </div>
</div>
<!--精选课程 end-->



<!---->





<!--分享 start-->
<div class="body01" style="width:100%;background: #F5F8FA;height: 350px;overflow: hidden">
    <h1>让知识更好的分享</h1>
    <div class="share-date">
        <ul>
            <li class="co1 jumbo" style="">
                <strong style="">20</strong>
                <small>/个</small><p>在线课程</p>
            </li>
            <li class="co2 jumbo">
                <strong>12</strong>
                <small>/个</small><p>入驻机构</p>
            </li>                    <li class="co3 jumbo" style="">
            <strong style="">5</strong>
            <small>/个</small><p>入驻老师</p>
        </li>
            <li class="co4 jumbo" style="">
                <strong style="">
                    100w+                        </strong>
                <small>/个</small><p>平台用户</p>
            </li>
        </ul>
    </div>
</div>
<!--分享 end-->

<!---->






<!--讲师团队 start-->
<div class="body01">
    <h1>讲师团队</h1>
    <div class="teacher-team">
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
            </li><li>
            <a href="http://try.51eduline.com/teacher/8.html">
                            <span>
                                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a980e7ff20.png">
                            </span>
                <h5>测试机构4讲师2</h5>
                <small>普通讲师</small>
                <p>一直从事专业教育工作，旨在发现创新的教学方法，力争提升学生的理解能力，并推广有趣...</p>
            </a>
        </li><li>
            <a href="http://try.51eduline.com/teacher/7.html">
                            <span>
                                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a97fcaaa23.png">
                            </span>
                <h5>测试机构4讲师1</h5>
                <small>普通讲师</small>
                <p>一直从事专业教育工作，旨在发现创新的教学方法，力争提升学生的理解能力，并推广有趣...</p>
            </a>
        </li><li>
            <a href="http://try.51eduline.com/teacher/6.html">
                            <span>
                                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a97f035412.png">
                            </span>
                <h5>测试机构3讲师2</h5>
                <small>普通讲师</small>
                <p>她以不对称、曲面状的前卫服饰闻名全球，受到许多时尚界人士的喜爱，从那开始，她就一...</p>
            </a>
        </li>                </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/teacher.html" class="look-all">查看更多</a>
    </div>
</div>
<!--讲师团队 end-->
<!---->






<!--入驻机构 strat-->
<div class="body01">
    <h1>入驻机构</h1>
    <div class="settled-shcool">
        <ul>
            <li>
                <a href="http://aa.try.51eduline.com">
                    <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9c4eaa219_140_140_140_140.png">
                    <p>测试机构1</p>
                </a>
            </li><li>
            <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=3">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9c806d272_140_140_140_140.png">
                <p>测试机构3</p>
            </a>
        </li><li>
            <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=4">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9ce541139_140_140_140_140.png">
                <p>测试机构4</p>
            </a>
        </li><li>
            <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=5">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9cf230803_140_140_140_140.png">
                <p>测试机构5</p>
            </a>
        </li><li>
            <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=31">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/10/305bd82178af3a4_140_140_140_140.jpg">
                <p>牛顿课堂</p>
            </a>
        </li><li>
            <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=37">
                <img class="lazyload" data-original="http://try.51eduline.com/data/upload//_140_140.">
                <p>金科教育</p>
            </a>
        </li>                </ul>
    </div>
    <!--查看更多-->
    <div class="all-buy">
        <a href="http://try.51eduline.com/school.html" class="look-all">查看更多</a>
    </div>
</div>
<!--入驻机构 end-->
<div class="post-service yensen">
    <div class="other-service">
        <div class="service-class" style='width:160px; '>
            <a target="_blank"  href="javascript:;"
            ><span>服务规则</span></a>
            <a target="_blank"                         href="http://try.51eduline.com/single/1.html"  >绑卡验证协议</a><a target="_blank"                         href="http://try.51eduline.com/single/2.html"  >会员服务协议</a><a target="_blank"                         href="http://try.51eduline.com/single/23.html"  >合作专区</a><a target="_blank"                         href="http://try.51eduline.com/single/25.html"  >机构帮助</a><a target="_blank"                         href="http://try.51eduline.com/single/26.html"  >机构入驻协议</a>            </div><div class="service-class" style='width:160px; '>
        <a target="_blank"  href="javascript:;"
        ><span>机构入驻</span></a>
        <a target="_blank"                         href="http://try.51eduline.com/single/4.html"  >第一步</a><a target="_blank"  href="javascript:;"
    >机构入驻</a><a target="_blank"                         href="http://try.51eduline.com/single/5.html"  >第二步</a><a target="_blank"                         href="http://try.51eduline.com/single/6.html"  >第三步</a><a target="_blank"  href="javascript:;"
    >第四步</a>            </div><div class="service-class" style='width:160px; '>
        <a target="_blank"  href="javascript:;"
        ><span>用户注册</span></a>
        <a target="_blank"                         href="http://try.51eduline.com/single/9.html"  >第一步</a><a target="_blank"                         href="http://try.51eduline.com/single/10.html"  >第二步</a><a target="_blank"                         href="http://try.51eduline.com/single/11.html"  >第三步</a><a target="_blank"  href="javascript:;"
    >第四步</a>            </div><div class="service-class" style='width:160px; '>
        <a target="_blank"  href="javascript:;"
        ><span>名师签约</span></a>
        <a target="_blank"                         href="http://try.51eduline.com/single/13.html"  >联系平台</a><a target="_blank"                         href="http://try.51eduline.com/single/14.html"  >后台审核</a><a target="_blank"                         href="http://try.51eduline.com/single/15.html"  >签约成功</a>            </div><div class="service-class" style='width:160px; '>
        <a target="_blank"  href="javascript:;"
        ><span>平台流程</span></a>
        <a target="_blank"  href="javascript:;"
        >个人用户</a><a target="_blank"                         href="http://try.51eduline.com/single/18.html"  >机构（名师）用户</a><a target="_blank"                         href="http://try.51eduline.com/single/19.html"  >第二级页面展示</a>            </div>        <div class="tel-box">
        <div class="week">关注官方微信</div>
        <div class="tel-icon">
            <img src="http://try.51eduline.com/data/upload/2018/0808/14/5b6a92f043126_120_120_120_120.jpg">
        </div>
    </div>
    </div>
    <div class="copyright-box">
        Copyright 2017 seition All Rights Reserved  |  蜀ICP 备 16004612号    </div>
</div>
<!--footer end-->
<div class="sidernav">
    <ul>
        <li>
            <a href="javascript:;"><i class="icon-01"></i></a>
            <div class="qq_and_phone_info_div">
                <div class="siderbox">
                    <p>分享到：</p>
                    <div class="bdsharebuttonbox">
                        <!-- <a data-cmd="more" class="bds_more " href="#"></a> -->
                        <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                        <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                        <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                        <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>

                        <script>
                            window._bd_share_config = {
                                "common": {
                                    "bdSnsKey": {
                                        "tqq": "https://share.baidu.com/code#"
                                    },
                                    "bdText": "",
                                    "bdMini": "2",
                                    "bdMiniList": ["tsina", "weixin", "qzone", "sqq", "renren", "copy"],
                                    "bdPic": "",
                                    "bdStyle": "1",
                                    "bdSize": "24"
                                },
                                "share": {},
                                "image": {
                                    "viewList": ["tsina", "weixin", "qzone", "sqq"],
                                    "viewText": "分享到：",
                                    "viewSize": "0"}
                            };
                            with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement(
                                'script')).src = 'http://try.51eduline.com/addons/theme/stv1/_static/js/baiduShare/static/api/js/share.js?cdnversion=' +
                                ~(-new Date() / 36e5)];
                        </script>
                    </div>
                </div>
            </div>
        </li>
        <!--<li>-->
        <!--<a href="javascript:;">-->
        <!--<i class="icon-02"></i>-->
        <!--</a>-->
        <!--<div class="xiala">-->
        <!--<img src="http://try.51eduline.com/data/upload//_120_120." alt="">-->
        <!--<p>扫描下载APP</p>-->
        <!--</div>-->
        <!--</li>-->

        <li>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3132698449&site=http://try.51eduline.com&menu=yes"> <i class="icon-03"></i>
            </a>
            <div class="qq_and_phone_info_div">
                <div class="siderbox">
                    <dl>
                        <dt class="qq_info_dt">
                            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3132698449&site=http://try.51eduline.com&menu=yes">
                                <span class="icon-qq"></span>QQ在线咨询</a>
                        </dt>
                    </dl>
                    <dl>
                        <dt><span class="icon-ph"></span>咨询热线：</dt>
                        <dd style="color:#188eee;">010-5334-5805</dd>
                        <dd style="color:#25c151;">136-2125-8074</dd>
                    </dl>
                </div>
            </div>
        </li>

        <li>
            <a href="javascript:;">
                <i class="icon-05"></i>
            </a>
            <div class="xiala">
                <img src="http://try.51eduline.com/data/upload/2018/0808/14/5b6a92e7ca6bf_120_120_120_120.png" alt="">
                <p>扫一扫关注官方<span style="color: #FB7D30">微博</span></p>
            </div>
        </li>

        <li>
            <a href="javascript:;">
                <i class="icon-06"></i>
            </a>
            <div class="xiala">
                <img src="http://try.51eduline.com/data/upload/2018/0808/14/5b6a92f043126_120_120_120_120.jpg" alt="">
                <p>扫一扫关注官方<span style="color: #8BDA64">微信</span></p>
            </div>
        </li>

        <li class="backtop"><a href="javascript:;"><i class="icon-07"></i></a></li>
    </ul>
</div>
<script src="http://try.51eduline.com/online_check.php?uid=0&uname=&mod=Index&app=classroom&act=index&action=trace"></script>
<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload/jquery.lazyload.min.js"></script>
<script type="text/javascript">
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