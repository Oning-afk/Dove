<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${offlineClass.offlineClassName}</title>
    <meta content="Eduline多机构在线教育交易平台" name="keywords">
    <meta content="Eduline多机构在线教育交易平台" name="description">
    <meta name="viewport" charset="UTF-8" content="user-scalable=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">

    <link rel="shortcut icon" href="http://try.51eduline.com/data/upload/2018/0808/14/5b6a91bca0b3b.ico" type="image/x-icon">
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
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery-1.8.3.min.js"></script>
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
        var APPNAME   = 'course';
        var MID		  = '1710';
        var UID		  = '1710';
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
            })

            $(".search_index input").focus(function(){
                $(".search_index").css("width","250px");
                $(".search_index input").css("width","140px");
            })

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

<link rel="stylesheet" href="http://try.51eduline.com/apps/course/_static/css/view.css">
<div class="mask"></div>
<!--content start-->

<div class="topbox">
    <div class="wrap">
        <div class="classtopbox">
            <div class="left">
                <img src="${offlineClass.offlineClassImage}" alt=""></a>
            </div>
            <div class="right">
                <div class="head_box">
                    <h3>${offlineClass.offlineClassName}</h3>
                <div class="classtopitem clearfix inils" style="font-size: 16px;padding-bottom: 14px;border-bottom: 1px solid #eee;">
                    <div class="l1"><i class="icon-inils01"></i>已报名</div>
                    <div class="l2">
                        <span>${offlineClass.offlineClassBuyNum}</span>
                    </div>
                    <div class="l1"><i class="icon-inils02"></i>课时数</div>
                    <div class="l2">
                        <span>2</span>
                    </div>
                </div>
                <div class="classtopitem clearfix floatleft">
                    <div class="l1" style="width: 58px">主讲人：</div>
                    <div class="fl">${teacher.name}</div>
                </div>
                <div class="classtopitem clearfix floatleft">
                    <div class="l1" style="width: 58px">有效期：</div>
                    <div class="fl">自购买之日起<span>永久有效</span></div>
                </div>
                <div class="activityDiv threeD" style="background: none;"></div>
                <div class="price classtopitem clearfix">
                    <div class="new_price">¥
                        <span>${offlineClass.offlineClassPrice}</span>
                    </div>
                    <div class="old_price">原价：
                        <span>${offlineClass.offlineClassPrice+50}</span>
                    </div>
                </div>

                <div class="classtopitem btn clearfix" >
                    <form action="http://try.51eduline.com/pay/[vst].html" method="POST" id="pay_form">
                        <input type="hidden" value="180" name="id" />
                        <input type="hidden" value="zy_video" name="check_type" />
                        <input type="hidden" value="${offlineClass.offlineClassName}" name="title" />
                        <input type="hidden" id="money" value="${offlineClass.offlineClassPrice}" name="money" />
                    </form>
                    <a class="buy" href="/offline/class/toBuyClass?id=${offlineClass.id}" id="charge_video">立即购买</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="content bgf7 pt20">
    <div class="wrap">
        <div class="classmain">
            <div class="classmain-hd" id="view_main_nav">
                <ul>
                    <li><a href="javascript:;" onclick="switchnav(this,'video_info')">课程简介</a></li>
                </ul>
                <style>
                    a.xf_video_a{float: right;width: 148px;height: 45px;line-height: 45px;font-size: 18px;text-align: center;border-radius: 3px;margin-right: 12px;color: #fff;background-color: #f63;border: solid 1px #f63;}
                    a.xf_video_learn_a{color: #137fcb;border: solid 1px #137fcb;float: right;width: 148px;height: 45px;line-height: 45px;font-size: 18px;text-align: center;border-radius: 3px;}
                    .classtopitem_price{width: 259px;float: left;height: 48px;line-height: 50px; background-color: #f9f9f9;}
                    .classtopitem_price .ll{float: left;color: #666;padding-left: 10px;font-size: 16px;}
                    .classtopitem_price .new_price{float: left;height: 50px;margin-right: 15px;color: #fc6238;font-size: 22px;font-weight: 600;}
                    .classtopitem_price .old_price{float: left;color: #999;font-size: 16px;}
                    .classtopitem_price .old_price span{font-size: 14px;color: #999;text-decoration: line-through;}
                </style>
            </div>
            <div class="classmain-bd" style="">
                <!-- 课程简介 -->
                <div class="classmain_con" id="video_info"  style="display: none;">
                    <p>${offlineClass.offlineClassDescribe}</p>
                </div>
            </div>
        </div>
        <div class="classside">
            <div class="classsideitem">
                <h3 class="classsidetit">讲师信息</h3>
                <div class="classsidecon">
                    <dl class="class_js_dl">
                        <dt>
                            <a href="/teacher/findTeacherById?id=#{teacher.id}">
                                <img src="${teacher.image}" alt="${teacher.name}">
                            </a>
                        </dt>
                        <dd>
                            <h3><a href="${teacher.image}">${teacher.name}</a></h3>
                        </dd>
                    </dl>
                    <div class="class_js_txt"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload.js"></script>

<style>
    .zhuang-left:hover ._share_my_firends{display: block;}
    ._share_my_firends {
        height: 62px;
        position: absolute;
        right: 44px;
        bottom: 3px;
        width: 168px;
        top: 0px;
        left: 0;
        display: none;
    }

    ._share_all_channel {
        margin-top: 13px;
        width: 155px;
        background-color: #fff;
        border-radius: 4px;
        box-shadow: 0 2px 8px rgba(83,87,88,.2);
        margin-top: 10px;
    }
    .side-ills-fell {
        width: 0!important;
        position: absolute;
        height: 0!important;
        top: 5px;
        left: 11px;
        border-left: 6px solid transparent;
        border-right: 6px solid transparent;
        border-bottom: 5px solid #FFF;
    }

</style>
<script src="http://try.51eduline.com/online_check.php?uid=1710&uname=17792274425&mod=Video&app=course&act=view&action=trace"></script>
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