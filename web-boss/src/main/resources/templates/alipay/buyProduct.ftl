
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
        var UID		  = '5';
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

<link rel="stylesheet" href="http://try.51eduline.com/apps/course/_static/css/pay_video.css">
<div class="content" style="background-color:#f0f0f2">
    <div class="wrap">
        <div class="class-order">
            <div class="class_order_tit">确认订单</div>
            <div class="class_order_box" style="background:#fff">
                <div class="info-assd-lirxd">
                    <div class="info" style="width:50%;">
                        <div class="tit">课程详情</div>
                        <a href="http://try.51eduline.com/course/124.html">
                            <img src="http://try.51eduline.com/data/upload/2018/0903/14/5b8cd9be2c196_220_130_220_130.png" width="220" height="130" alt="点播 app测试用 勿删">
                            <h3>点播 app测试用 勿删</h3>
                        </a>
                        <div class="item"><span>课时：23 节</span><!--<span>有效期    永久</span>--></div>
                    <div class="info" style="width:25%;">
                        <div class="tit">讲师</div>
                        <div class="item">
                            <span>测试机构2讲师1</span>                        </div>
                    </div>
                    <div class="info ddiel-us" style="width:25%;">
                        <div class="tit">价格</div>
                        <h3 style="color:#fc6238">¥200.00</h3>
                    </div>
                </div>
                <dl class="class_order_card">
                    <dt class="open"><span>使用优惠券/打折卡/课程卡/实体卡<i class="icon-jt"></i></span></dt>
                    <dd>
                        <ul class="class_order_hd">
                            <li class="on" val="1">优惠券</li>
                            <li val="2">打折卡</li>
                            <li val="3">课程卡</li>
                            <li val="4">实体卡</li>
                        </ul>
                        <div class="class_order_bd">
                            <div class="con">
                                <div class="center_right_con">
                                    <ul class="carlist green">
                                        <li>您暂无相关优惠券。。</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="con">
                                <div class="center_right_con">
                                    <ul class="couponlist red">
                                        <li>您暂未获得相关打折卡。。</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="con">
                                <div class="center_right_con">
                                    <ul class="couponlist green">
                                        <li>您暂未获得相关课程卡。。</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="con">
                                <ul class="relCard">
                                    <p>卡券编号：</p>
                                    <li style="height: 66px">
                                        <input name="card" type="text" class="pay_number" placeholder="请输入卡券编号" value="">
                                        <a onclick="draw(2,200.00)" class="pay_use_draw" href="javascript:;">使用</a>
                                        <a onclick="removeUse(2)" class="pay_use_draw removeUse" style="display: none;" href="javascript:;">取消使用</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="class_order_pr">优惠金额：<span id="cod_money1">￥0.00</span></div>
                    </dd>
                </dl>
                <dl class="class_order_pay">
                    <dt>支付方式</dt>
                    <dd>
                        <span class="selected" val="alipay">支付宝支付</span>
                    </dd>
                </dl>
                <div class="class_order_bot">
                    <div class="custom-box">
                        <form action="http://try.51eduline.com/index.php?app=course&mod=PayVideo&act=payLibrary" method="POST" id="pay_video_form">
                            <input type="hidden" value="124" name="vid" />
                            <div class="btn"><a href="javascript:;" onclick="buyOperat(this,124,'video');" type="submit">立即支付</a></div>
                        </form>
                        <div class="price">
                            <div class="item">实付金额：<div class="dne-omns-elis" id="pay_money" style="display: inline">¥200.00</div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function(){
        var id = '';
        var price = '200.00';
        $.ajax({
            type:"POST",
            url:"http://try.51eduline.com/index.php?app=course&mod=PayVideo&act=getCouponInfo",
            data:{id:id},
            dataType:"json",
            success:function(data){
                if(data){
                    buyvCoupon(data.coupon_id,data.cuid,data.type,price);
                }else{
                    return false;
                }
            }
        });
    });
    $(document).ready(function () {
        $(".phone").text($(".phone").text().substring(0, 3) + "****" + $(".phone").text().substring(7, 11));
    });
    $(".more_add").click(function(){
        if ($(".consignee .more_box").css("display")=="none") {
            $(this).parent("dd").nextAll("dd").show();
        } else {
            $(this).parent("dd").nextAll("dd").hide();
        }

    })
    //使用课程卡
    function doExchange(vid,vtype,coupon_id){
        var url = '';
        if(vtype == 1){
            vtype = 'zy_video';
            url = "http://try.51eduline.com/course/124.html";
        }else if(vtype == 2){
            vtype = 'zy_live';
            url = "http://try.51eduline.com/live/124.html";
        }else if(vtype == 3){
            vtype = 'zy_album';
            url = "http://try.51eduline.com/index.php?app=course&mod=Album&act=view&id=124";
        }
        $.post(U("course/PayVideo/add_order"),{vid:vid,vtype:vtype,coupon_id:coupon_id},function(text){
            if(text.status == 1){
                ui.success('使用成功', {
                    end: function() {
                        window.location.href = url;
                    }
                });
            } else {
                ui.error("使用失败");
                return false;
            }
        },'json');
    }
    //获取实体卡数据
    function draw(sid,price) {
        var code = $("input[name='card']").val();
        var vid = '124';
        var type = '1',
            vtype = '',
            url = '',
            coupon_id = '',
            event = '';
        $.ajax({
            type:"POST",
            url:"http://try.51eduline.com/index.php?app=course&mod=PayVideo&act=getExchangeCard",
            data:{code:code,mhm_id:sid,vid:vid,price:price,event:event},
            dataType:"json",
            success:function(data){
                if(data.status != 0){
                    coupon_id = data.id;
                    if(data.type == 1 || data.type == 2){
                        buyvCoupon(coupon_id,data.coupon_id,data.type,price);
                    }else if(data.type == 5){
                        if(data.video_type == 1){
                            vtype = 'zy_video';
                            url = "http://try.51eduline.com/course/124.html";
                        }else if(data.video_type == 2){
                            vtype = 'zy_live';
                            url = "http://try.51eduline.com/live/124.html";
                        }else if(data.video_type == 3){
                            vtype = 'zy_album';
                            url = "http://try.51eduline.com/index.php?app=course&mod=Album&act=view&id=124";
                        }
                        $.post(U("course/PayVideo/add_order"),{vid:vid,vtype:vtype,coupon_id:coupon_id},function(data){
                            if(data.status == 1){
                                ui.success('购买成功', {
                                    end: function() {
                                        window.location.href = url;
                                    }
                                });
                            } else {
                                removeUse(sid);
                                ui.error(data.info);
                                return false;
                            }
                        },'json');
//                      $('.draw').hide();
//                      $('.removeUse').show();
                    }
                }else{
                    ui.error(data.info);
                    return false;
                }
            }
        });
    }

    //取消使用
    function removeUse(sid){
        var code = $("input[name='card']").val();
        $.ajax({
            type:"POST",
            url:"http://try.51eduline.com/index.php?app=course&mod=PayVideo&act=cancelExchangeCard",
            data:{code:code,mhm_id:sid},
            dataType:"json",
            success:function(data){
                if(data.status == 1){
                    ui.success(data.info);
                    window.location.reload();
                }else{
                    ui.error(data.info);
                    return false;
                }
            }
        });
    }

    function buyvCoupon(cid,coupon_id,discount_type,price) {
        if(MID<=0){
            $(".buyOperating").hide();
            $(".mask").hide();
            ui.error("请先登录");
            return false;
        }
        if(!cid || !coupon_id || !discount_type){
            ui.error('参数错误');
            return false;
        }
//        var price = $('#pay_money_val').val();
        if(price<=0){
            ui.error('该课程不需要您购买');
            return false;
        }
        $('#coupon_id').val(coupon_id);
        $.post(U("course/PayVideo/checkCoupon"),{cid:cid,coupon_id:coupon_id,discount_type:discount_type,price:price},function(e){
            if(e.status == 1){
                $('#cod_money1').text("￥"+e.data.minus_price);
                $('#cod_money2').text("￥"+e.data.minus_price);
                $('#pay_money').text("￥"+e.data.after_price);
                $('#pay_money_val').val(e.data.after_price);
                // ui.success(e.info);
                $('.draw').hide();
                $('.removeUse').show();
            }else{
                ui.error(e.info);
            }
        },'json');
    }

    var s = 0;
    //购买操作
    var buyOperat = function(sbt,vid,type){
        if(MID<=0){
            $(".buyOperating").hide();
            $(".mask").hide();
            ui.error("请先登录");
            return false;
        }
        if(!vid || !type){
            ui.error('参数错误');
            return false;
        }
        var checkbox = document.getElementById('check_xy');//
        if(!checkbox.checked){
            ui.error("购买必须同意《Eduline购买协议》");
            return false;
        }

        var form  = $(sbt).parents('form');
        var pay   = form.find('input:hidden[name="pay"]').val();
        var money = form.find('input:hidden[name="money"]').val();
        if(pay!='alipay'&&pay!='unionpay'&&pay!='wxpay'&&pay!='lcnpay'){
            ui.error('支付方式错误');
            return false;
        }
        if(money <= 0){
            ui.error('该课程不需要您购买');
            return false;
        }

        $(sbt).attr('style','background:rgba(102, 102, 102, 0.65)').removeAttr('onclick');

        setTimeout(function() {
            $.post(U("course/PayVideo/checkPayOperat"), $('#pay_video_form').serialize(), function (data) {
                if (data.status == 1) {
                    $(sbt).attr("onclick", "buyOperat(this,'124','video')").removeAttr('style');

                    if (pay == 'wxpay') {
                        $.ajax({
                            url: "http://try.51eduline.com/index.php?app=course&mod=PayVideo&act=payLibrary",
                            data: form.serialize(),
                            async: false,
                            type: 'post',
                            success: function (data) {
                                var data = getResponseData(data);

                                clearInterval(s);

                                if (data.status == 1) {
                                    $("body").append(data.data.html);

                                    $(".hide_box,.shang_box").show();

                                    s = setInterval(function () {
                                        $.ajax({
                                            url: "http://try.51eduline.com/index.php?app=course&mod=PayVideo&act=getPayStatus",
                                            data: {pay_pass_num: data.data.pay_pass_num},
                                            type: 'post',
                                            success: function (res) {
                                                try {
                                                    res = JSON.parse(res);
                                                    if (res.status == 1) {
                                                        clearInterval(s);

                                                        $(".hide_box,.shang_box").remove();

                                                        ui.success('购买成功');
                                                        setTimeout(function () {
                                                            window.location.href = res.data;
                                                        }, 2000);
                                                    }
                                                } catch (e) {
                                                    return;
                                                }
                                            }
                                        });
                                    }, 1800);
                                    return true;
                                } else {
                                    ui.error(data.data);
                                    setTimeout(function () {
                                        window.location.href = res.data;
                                    }, 2000);
                                }
                            },
                            error: function () {
                                return false
                            }

                        });
                    } else if (pay == 'lcnpay') {
                        $.post(U("course/PayVideo/payLibrary"), $('#pay_video_form').serialize(), function (res) {
                            res = JSON.parse(res);
                            if (res.status == 1) {
                                ui.success(res.info);
                                setTimeout(function () {
                                    window.location.href = res.data;
                                }, 2000);
                            } else {
                                ui.error(res.info);
                                return false
                            }
                        });
                    } else {
                        $(".buyOperating").hide();
                        $(".mask").hide();
                        $("#charge").attr('id', '');
                        setTimeout("", 3000);
                        form.submit();
                    }
                } else if (data.status == 9) {
                    ui.error(data.info);
                    window.location.reload();
                } else {
                    var time = 15;
                    var _codesetInterval = setInterval(function () {
                        if (time <= 0) {
                            $(sbt).attr("onclick", "buyOperat(this,'124','video')").removeAttr('style');
                            clearInterval(_codesetInterval);
                        } else {
                            $(sbt).attr('style', 'background:rgba(102, 102, 102, 0.65)').removeAttr('onclick');
                            time--;
                        }
                    }, 1000);
                    ui.error(data.info);
                    return false;
                }
            }, 'json');
        },1000);
    }

    function dashangToggle(){
        $(".hide_box,.shang_box").remove();

        try{
            clearInterval(s);
        }catch(e){}}

    $("#new_add").click(function(){
        $(".g-modle-add").show();
    })
    $(".center_right .icon-weibiaoti101").click(function(){
        $(".g-modle-add").hide();
    })
    $(".g-modle-add .close").click(function(){
        $(".g-modle-add").hide();
    })
    $(".consignee dd .name").click(function(){
        $(this).addClass("selected").parent("dd").siblings("dd").find(".name").removeClass("selected");
        var id_num=$(this).attr("data-address_id");
        $("#input_val").val(id_num);
    })
</script>
<script src="http://try.51eduline.com/online_check.php?uid=1710&uname=17792274425&mod=PayVideo&app=course&act=index&action=trace"></script>
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