
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="http://try.51eduline.com/apps/admin/_static/css/admin.css" rel="stylesheet" type="text/css">
    <script>
        /**
         * 全局变量
         */
        var SITE_URL  = 'http://try.51eduline.com';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'classroom';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1710';
        var UID		  = '1710';
        var initNums  =  '140';
        // Js语言变量
        var LANG = new Array();
        var info = {icon:0,time:1800,btn:false,title:'',closeBtn:0};
        var success = {icon:1,time:1800,btn:false,title:'',closeBtn:0};
        var error = {icon:2,time:1800,btn:false,title:'',closeBtn:0};
    </script>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/core.js"></script>
    <script type="text/javascript" src="js/module.js"></script>
    <script src="js/common.js"></script>
    <script src="js/module.common.js"></script>
    <script type="text/javascript" src="js/admin.js"></script>
    <script type="text/javascript" src="js/ui.layer.js"></script>
    <link rel="stylesheet" type="text/css" href="js/webuploader/webuploader.css">
    <!--引入JS-->
    <script type="text/javascript" src="js/webuploader/webuploader.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="js/cardVoucherList.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}100000000000000
    </style>
</head>
<body>
<div id="container" class="so_main">
    <div class="tit_tab">
        <!-- START TAB框 -->
        <div class="tit_tab">
            <ul>
                <li><a href="/operating/card/findCardVoucher?cardVoucherType=1"  >优惠券</a></li>
                <li><a href="/operating/card/findCardVoucher?cardVoucherType=2"  >打折卡</a></li>
                <li><a href="/operating/card/findCardVoucher?cardVoucherType=3"  >课程卡</a></li>
                <li><a href="/operating/card/findCardVoucher?cardVoucherType=4"  >充值卡</a></li>
                <li><a href="/operating/card/findCardVoucher?cardVoucherType=5"  >会员卡</a></li>
                <li><a href="/operating/card/toExportPage" >导出</a></li>
            </ul>
        </div>
        <!-- END TAB框 -->
        <form method="POST" action="addManage" onsubmit="return admin.SubmitCheck(1);" name="detail_form" style="margin-top:5px">
            <input type="hidden" name="systemdata_list" value="course_AdminAlbum" class="s-txt">
            <input type="hidden" name="systemdata_key" value="addAlbum" class="s-txt">
            <input type="hidden" name="pageTitle" value="添加" class="s-txt">
            <div class="form2">
                <dl class="lineD" id="dl_album_category">
                    <dt><font color="red"> * </font>分类：</dt>
                    <dd>
                        <div id="package_level"></div><select data-level="2" name="classType" class="mzTopLevel mzLevel" id="zy_package_category"><option value="0">请选择</option><option value="1">IT/互联网</option><option value="6">资格考试</option><option value="7">出国留学</option><option value="8">中小学</option><option value="9">福建省专升本</option></select><input id="package_levelhidden" name="package_levelhidden" type="hidden" value="0">

                        <script type="text/javascript" src="./index_files/core.mzVideoLevel.js.下载"></script>

                        <style>
                            .mzLevel{padding:4px;margin-right:5px;}
                        </style>
                        <script>
                            $('#package_level').mzVideoLevel({
                                'table':'zy_package_category',
                                'isadmin':true,//是否是后台
                                'defaultids':'',
                            },function(fun){
                            });
                        </script>
                        <a></a>
                    </dd>
                </dl>
                <dl class="lineD" id="dl_album_title">
                    <dt><font color="red"> * </font>名称：</dt>
                    <dd>
                        <input name="className" id="form_album_title" type="text" value="" class="s-txt" style="width:200px">
                    </dd>
                </dl>
                <dl class="lineD" id="dl_mhm_id">
                    <dt>机构名称：</dt>
                    <dd>
                        <select name="classJigou" id="form_mhm_id">
                            <option value="0" selected="selected">请选择</option>
                            <option value="1">金科教育</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id="dl_album_intro">
                    <dt><font color="red"> * </font>简介：</dt>
                    <dd>
                        <textarea name="classDescribe" id="form_album_intro" rows="10" cols="80"></textarea>
                    </dd>
                </dl>
                <input name="vip_level" id="form_vip_level" type="hidden" value="" class="s-txt">
                <dl class="lineD" id="dl_price">
                    <dt>价格：</dt>
                    <dd>
                        <input name="classPrice" id="form_price" type="text" value="" class="s-txt" style="width:200px">
                    </dd>
                </dl>
                <dl class="lineD" id="dl_order_count_mark">
                    <dt>学习人数（营销）：</dt>
                    <dd>
                        <input name="classTotalePeople" id="form_order_count_mark" type="text" value="" class="s-txt" style="width:200px">
                    </dd>
                </dl>
                <dl class="lineD" id="dl_album_html">
                    <dt>包含课程</dt>
                    <dd>
                        <select name="classContent" id="form_mhm_id">
                            <option value="0" selected="selected">请选择</option>
                            <option value="1">java</option>
                            <option value="2">C++</option>
                            <option value="3">Cmd入侵</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id="dl_cover">
                    <dt><font color="red"> * </font>封面：</dt>
                    <dd>
                        <!--  上传插件 -->
                        <div>
                            <div id="uploadimg">
                                <div id="fileList" class="uploader-list">
                                        <div id="WU_FILE_0" class="file-item thumbnail upload-state-done">
                                        </div>
                                </div>
                                <div id="imgPicker" style="width:100px;height:100px">选择图片</div>
                            </div>
                                <input name="image" id="image" type="hidden"  class="s-txt" style="width:200px;" />
                                <input name="image" id="image" type="hidden" value="" class="s-txt" style="width:200px;" />
                            <!-- </FORM> -->
                        </div>
                        <p>建议尺寸：580*320</p>
                    </dd>
                </dl>
                <div class="page_btm">
                    <input type="text" style="display:none">
                    <input type="submit" class="btn_b" value="保存" id="form_submit" >

                </div>
            </div>
        </form>
        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
            admin.addCard($("#addRecharge").serialize());
        }
    </script>
    <script type="text/javascript">
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
        var uploader = WebUploader.create({
            auto: true, // 选完文件后，是否自动上传
            swf: '../js/webuploader/Uploader.swf', // swf文件路径
            server: '/operating/content/headImgUpload', // 文件接收服务端
            pick: '#imgPicker', // 选择文件的按钮。可选
            // 只允许选择图片文件。
            accept: {
                title: 'Images',
                extensions: 'gif,jpg,jpeg,bmp,png',
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
            }, 100, 100 ); //100x100为缩略图尺寸
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
            $("#image").val(res.filePath)
            $( '#'+file.id ).addClass('upload-state-【【4done');
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
        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('textarea[name="content"]', {
                uploadJson: "js/kindeditor-4.1.10/jsp/upload_json.jsp",
                fileManagerJson: "js/kindeditor-4.1.10/jsp/file_manager_json.jsp",
                allowFileManager : true,
                //将富文本编辑中的内容同步到表单序列化中
                afterBlur:function(){this.sync();}
            });
        });
        /**
         * 初始化对象
         */
//表格样式
        $(document).ready(function(){
            admin.bindTrOn();});
    </script>

</body>
</html>