<style media="screen">
    body{background: #fff;}

</style>
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
        var APPNAME   = 'news';
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
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/core.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/apps/admin/_static/js/module.js"></script>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/common.js"></script>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.common.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/apps/admin/_static/js/admin.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/ui.layer.js"></script>
    <script type="text/javascript" src="js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <!--引入CSS-->
    <link rel="stylesheet" type="text/css" href="js/webuploader/webuploader.css">
    <!--引入JS-->
    <script type="text/javascript" src="js/webuploader/webuploader.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="js/content.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div id="container" class="so_main">
    <div class="tit_tab">
        <!-- START TAB框 -->
        <ul>
            <li><a href="/operating/content/findConsultingList" >列表</a></li>
            <li><a href="/operating/content/toAddPage" class="on" >添加资讯</a></li>
        </ul>
        <!-- END TAB框 -->
        <!-- START CONFIG_FORM -->
        <form id='addConsult' style="margin-top:5px">
            <div class="form2">
                <dl class="lineD" id='dl_title'>
                    <dt>标题：</dt>
                    <dd>
                        <#if bean ?? && bean.id ?? >
                            <input name="id" id="id" type="hidden" value="${bean.id}"  class="s-txt" style='width:200px'>
                        </#if>
                        <#if bean ?? && bean.title ?? >
                            <input name="title" id="title" type="text" value="${bean.title}"  class="s-txt" style='width:200px'>
                            <#else >
                                <input name="title" id="title" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_cate'>
                    <dt>资讯分类：</dt>
                    <dd>
                        <#if bean ?? && bean.consultType ??>
                            <#if bean.consultType == 1>
                                <select name="consultType" id="consultType" >
                                    <option value="1" selected>教育资讯</option>
                                    <option value="2" >eduline资讯</option>
                                    <option value="3" >新闻资讯</option>
                                    <option value="4" >学生资讯</option>
                                </select>
                            <#elseif bean.consultType == 2>
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" selected>eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                            <#elseif bean.consultType == 3>
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" selected>新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                            <#elseif bean.consultType == 4>
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" selected>学生资讯</option>
                            </select>
                            <#else >
                                <select name="consultType" id="consultType" >
                                    <option value="1" >教育资讯</option>
                                    <option value="2" >eduline资讯</option>
                                    <option value="3" >新闻资讯</option>
                                    <option value="4" >学生资讯</option>
                                </select>
                            </#if>
                        <#else >
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_text'>
                    <dt>资讯内容：</dt>
                    <dd>
                        <!--发布样式 begi-->
                        <#if bean ?? && bean.content ??>
                            <textarea name="content">${bean.content}</textarea>
                            <#else >
                            <textarea name="content"></textarea>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_image'>
                    <dt>封面图片：</dt>
                    <dd>
                        <!--  上传插件 -->
                        <div>
                            <div id="uploadimg">
                                <div id="fileList" class="uploader-list">
                                    <#if bean ?? && bean.image ??>
                                        <div id="WU_FILE_0" class="file-item thumbnail upload-state-done">
                                            <img src="${bean.image}">
                                        </div>
                                    </#if>
                                </div>
                                <div id="imgPicker" style="width:100px;height:100px">选择图片</div>
                            </div>
                            <#if bean ?? && bean.image ??>
                                <input name="image" id="image" type="hidden" value="${bean.image}" class="s-txt" style="width:200px;" />
                                <#else >
                                    <input name="image" id="image" type="hidden" value="" class="s-txt" style="width:200px;" />
                            </#if>
                            <!-- </FORM> -->
                        </div>
                        <p>建议尺寸：360px*360px</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re'>
                    <dt>是否推荐：</dt>
                    <dd>
                        <#if bean ?? && bean.isRecommended ??>
                            <#if bean.isRecommended == 0>
                                <label><input type="radio" name="isRecommended" value='0' checked="checked" >是 </label>
                                <label><input type="radio" name="isRecommended" value='1' >否 </label>
                            <#else>
                                <label><input type="radio" name="isRecommended" value='0' >是 </label>
                                <label><input type="radio" name="isRecommended" value='1' checked="checked" >否 </label>
                            </#if>
                        <#else>
                            <label><input type="radio" name="isRecommended" value='0' >是 </label>
                            <label><input type="radio" name="isRecommended" value='1' checked="checked" >否 </label>
                        </#if>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re_sort'>
                    <dt>推荐排序：</dt>
                    <dd>
                        <#if bean ?? && bean.sortRecommended ??>
                            <input name="sortRecommended" id="sortRecommended" type="text" value="${bean.sortRecommended}"  class="s-txt" style='width:200px'>
                            <#else >
                                <input name="sortRecommended" id="sortRecommended" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                        <p>0-999，值越小越靠前</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_from'>
                    <dt>来源：</dt>
                    <dd>
                        <#if bean ?? && bean.source ??>
                            <input name="source" id="source" type="text" value="${bean.source}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="source" id="source" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_recount'>
                    <dt>浏览量：</dt>
                    <dd>
                        <#if bean ?? && bean.views ??>
                            <input name="views" id="views" type="text" value="${bean.views}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="views" id="views" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="保存" onclick = "submitform()"/>
                </div>
            </div>
        </form>

        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
            admin.addConsult($("#addConsult").serialize());
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