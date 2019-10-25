
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
    <link rel="stylesheet" type="text/css" href="../teacher/css/rest.css">
    <link rel="stylesheet" type="text/css" href="../teacher/css/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../teacher/css/common.css">
    <link rel="stylesheet" type="text/css" href="../teacher/css/index.css">
    <link rel="stylesheet" type="text/css" href="../teacher/css/style.css">
    <link rel="stylesheet" type="text/css" href="../teacher/css/box.css">
    <link rel="stylesheet" type="text/css" href="../teacher/js/webuploader/webuploader.css">
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;}
    </style>
    <!--<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/js.php?t=js&f=jquery.form.js,common.js,core.js,module.js,module.common.js,jwidget_1.0.0.js,jquery.atwho.js,jquery.caret.js,ui.core.js,ui.draggable.js,plugins/core.comment.js,plugins/core.digg.js&v=20180814.js"></script>-->
    <script type="text/javascript" src="../teacher/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../teacher/js/jquery.atwho.js"></script>
    <script type="text/javascript" src="../teacher/js/jquery.caret.js"></script>
    <script type="text/javascript" src="../teacher/js/core.js"></script>
    <script type="text/javascript" src="../teacher/js/module.js"></script>
    <script type="text/javascript" src="../teacher/js/module.common.js"></script>
    <script type="text/javascript" src="../teacher/js/common.js"></script>
    <script type="text/javascript" src="../teacher/js/script.js"></script>
    <script type="text/javascript" src="../teacher/js/webuploader/webuploader.js"></script>


    <script>
        //全局变量
        var SITE_URL  = 'http://try.51eduline.com';
        var UPLOAD_URL= 'http://try.51eduline.com/data/upload';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'home';
        var MID		  = '1682';
        var UID		  = '1682';
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
    <script type="text/javascript" src="../teacher/js/ui.layer.js"></script>


</head>
<body>



<div class="win hide"></div>

<div class="top">
    <div class="header_new2">
        <div class="top1">
            <div class="top1img">
                <a href="/" title="Eduline"><img src="../images/shu.png" width="150"/></a>
            </div>

            <div class="nav">
                <ul>
                    <li >
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
            </div>
            <div class="nav2">
                <a class="page_header_adiv" href="http://try.51eduline.com/school/authentication.html">机构入驻</a>
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


<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery.form.js?v=20180814"></script>

<link rel="stylesheet" href="http://try.51eduline.com/apps/home/_static/css/setinfo.css">
<!---选择地址弹出框-->
<script>
    $(document).ready(function(){
        $('div.user-con-title a:eq(0)').click();
        $("#user-shcool_select").click(function(){
            $(".user-fixdworap").css("display","block");
        });
    });
</script>
<style>
    .center_right_tit h5 {float: left;color: #656565; padding: 0 25px;font-size: 16px;}
    .center_right_tit div .on{color:#00BED4}
    .box-ver{float:right;margin-right:70px}
    .user-con-title a{float:left;width:auto}
    .center_left{float:left;overflow:hidden;border-radius:4px}
    .center_right{float:right}
    .showSchoolList{position:absolute;display:none;width:390px;border:1px solid #b6c7d6;background:#FFF}
    .showSchoolList li{padding-left:10px;height:30px;border-bottom:1px solid #b6c7d6;line-height:30px;cursor:pointer}
    .showSchoolList div{padding-left:10px}
</style>
<div class="content">
    <div class="wrap">
        <style>
            .center_left dl{padding-bottom:0}
        </style>
        <div class="center_left">
            <dl style="border-bottom: solid 1px #e7e6e5;">
                <dt><a href="javascript:;" onclick="magbtn(this)">我的设置</a></dt>
                <dd>
                    <ul>
                        <li  ><a href="http://try.51eduline.com/my/set_up/info.html">账户设置</a></li>
                        <li class='on' ><a href="http://try.51eduline.com/my/certified_teacher.html">讲师认证</a></li>
                        <li  ><a href="http://try.51eduline.com/my/address.html">收货地址设置</a></li>
                    </ul>
                </dd>
            </dl>
        </div>

        <div class="center_right">
            <div class="center_right_tit">
                <h5>讲师认证</h5>
            </div>
            <!-- 申请认证 -->
            <div class="center_right_con Manage_all">
                <form class="infobox" id="renzhengform" method="post" action="" onsubmit="return false;">
                    <dl>
                        <dt><span>*</span>当前状态：</dt>
                        <dd>未认证</dd>
                    </dl>
                    <dl>
                        <dt><span>*</span>分类：</dt>
                        <dd>
                            <select class="mzTopLevel mzLevel" name="rankId">
                                <option value="0">--请选择--</option>
                                <option value="0">初级讲师</option>
                                <option value="1">中级讲师</option>
                                <option value="2">高级讲师</option>
                                <option value="3">专家</option>
                                <option value="4">教授</option>
                            </select>
                        </dd>
                    </dl>

                    <dl>
                        <dt><span>*</span>真实姓名：</dt>
                        <dd>
                            <input type="text" class="inp01" name="realname" id="realname" value="" class="head_search upload_input_a" rel="真实姓名">
                        </dd>
                    </dl>

                    <dl>
                        <dt><span>*</span>认证理由：</dt>
                        <dd>
                            <textarea id="reason" class="tex01" name="reason"></textarea>
                            <p>提示：请填写认证理由</p>
                        </dd>
                    </dl>

                    <dl>
                        <dt><span>*</span>资格认证附件：</dt>
                        <p>教师认证必须上传教师资格证等其相关证明 </p>
                        <p>建议尺寸：360px*360px</p>
                        <dd>
                            <style>.weibo-file-list .ico-close{padding: 5px 10px;line-height: 30px;font-size: 14px;color: #9e9e9e;display: inline-block;cursor: pointer;}</style>
                            <div style="height:40px;">
                                <div>
                                    <div id="uploadimg">
                                        <div id="fileList" class="uploader-list">

                                        </div>
                                        <div id="imgPicker" style="width:100px;height:100px" >选择图片</div>
                                    </div>
                                        <input name="attach" id="attach" type="hidden" value="" class="s-txt" style="width:200px;" />
                                    <!-- </FORM> -->
                                </div>
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dd>
                            <p></p><label class="check"><input type="checkbox" id="check_xy" checked>我已阅读并同意<a target="_blank" href="http://try.51eduline.com/single/serivce.html" style="color: #188eee;">《Eduline服务条款》</a> 及 <a target="_blank" href="http://try.51eduline.com/single/verify.html" style="color: #188eee;">《Eduline认证条款》</a></label>
                            <a href="javascript:;" class="btn" type="button" onclick="saveVerify();" style="height: 40px;line-height: 40px;">提交申请</a>
                        </dd>
                    </dl>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="../teacher/js/jquery.mz.js" type="text/javascript"></script>

<script>

    var uploader = WebUploader.create({
        auto: true, // 选完文件后，是否自动上传
        swf: '../teacher/js/webuploader/Uploader.swf', // swf文件路径
        server: '../teacher/uploadImg', // 文件接收服务端
        pick: '#imgPicker', // 选择文件的按钮。可选
        // 只允许选择图片文件。
        accept: {
            title: 'Images',
            extensions: 'jpg,jpeg,bmp,png',
            mimeTypes: 'image/*'
        }
    });
    uploader.on( 'fileQueued', function( file ) {
        $("#fileList").empty();
        var $list = $("#fileList"),
            $li = $(
                '<div id="' + file.id + '" class="file-item thumbnail">' +
                '<img>' +
                '<div class="info">' + file.name + '</div>' +
                '</div>'
            ),
            $img = $li.find('img');
        // $list为容器jQuery实例
        $list.append( $li );
        // 创建缩略图
        uploader.makeThumb( file, function( error, src ) {
            if ( error ) {
                $img.replaceWith('<span>不能预览</span>');
                return;
            }
            $img.attr( 'src', src );
        }, 50, 50 ); //100x100为缩略图尺寸
        $("#attach").val(src)
    });
    // 文件上传过程中创建进度条实时显示。
    uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
            $percent = $li.find('.progress span');
        // 避免重复创建
        if ( !$percent.length ) {
            $percent = $('<p class="progress"><span></span></p>')
                .appendTo( $li )
                .find('span');
        }
        $percent.css( 'width', percentage * 100 + '%' );
    });
    // 文件上传成功，给item添加成功class, 用样式标记上传成功。
    uploader.on( 'uploadSuccess', function( file, res ) {
        $("#image").val(res.filePath);
        $( '#'+file.id ).addClass('upload-state-done');

    });
    // 文件上传失败，显示上传出错。
    uploader.on( 'uploadError', function( file ) {
        var $li = $( '#'+file.id ),
            $error = $li.find('div.error');
        // 避免重复创建
        if ( !$error.length ) {
            $error = $('<div class="error"></div>').appendTo( $li );
        }
        $error.text('上传失败');
    });
    // 完成上传完了，成功或者失败，先删除进度条。
    uploader.on( 'uploadComplete', function( file ) {
        $( '#'+file.id ).find('.progress').remove();
    });

    $('#renzhengform input:file').click(function(){
        $('#renzhengform input:file').val('');
    });
    var setInfo3 = 'http://try.51eduline.com/my/certified_teacher.html';
    var delverify = function(){
        ui.confirm('确定要注销认证吗？', {
            yes: function () {
                $.post(U('basic/Account/delverify'),{},function(txt){
                    if(txt == 1){
                        ui.success('注销成功')
                        setTimeout(function(){
                            window.location = setInfo3;},'2000');
                    }else{
                        ui.error('注销失败');
                    }
                });
            }
        });
    };
    var saveVerify = function(){
        var rankId = $('[name="rankId"]').val();
        var realname = $('#realname').val();
        var reason   = $('#reason').val();
        var attach = $('#attach').val();

        // if(!verifiedCategory || verifiedCategory == 0 || verifiedCategory == '' || verifiedCategory == undefined){
        //     ui.error('请选择认证的讲师分类');
        //     return false;
        // }

        if(!realname){
            ui.error('请输入真实姓名');
            return false;
        }

        if(!reason){
            ui.error('请输入认证理由');
            return false;
        }



        var data = $('#renzhengform').serialize();
        $.post(('http://localhost:5880/teacher/applyFor'),data,function(msg){
            if(msg.status == 1){
                ui.success('申请成功，请等待审核')
                setTimeout(function(){
                    location.reload();
                },'2000');
            }else{
                ui.error(msg.info);
                return false;
            }
        });
    }
</script>

<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.form.js"></script>

<!--footer start-->
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
<script src="http://try.51eduline.com/online_check.php?uid=1682&uname=13525434041&mod=User&app=home&act=authTeacher&action=trace"></script>
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