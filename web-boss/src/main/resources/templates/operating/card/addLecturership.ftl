
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
        var MID		  = '1703';
        var UID		  = '1703';
        var initNums  =  '140';
        // Js语言变量
        var LANG = new Array();
        var info = {icon:0,time:1800,btn:false,title:'',closeBtn:0};
        var success = {icon:1,time:1800,btn:false,title:'',closeBtn:0};
        var error = {icon:2,time:1800,btn:false,title:'',closeBtn:0};
    </script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../operating/card/js/core.js"></script>
    <script type="text/javascript" src="../operating/card/js/module.js"></script>
    <script src="../operating/card/js/common.js"></script>
    <script src="../operating/card/js/module.common.js"></script>
    <script type="text/javascript" src="../operating/card/js/admin.js"></script>
    <script type="text/javascript" src="../operating/card/js/ui.layer.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="../operating/card/js/Membership.js"></script>
    <script type="text/javascript" src="../operating/content/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="../operating/content/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <!--引入CSS-->
    <link rel="stylesheet" type="text/css" href="../operating/content/js/webuploader/webuploader.css">
    <!--引入JS-->
    <script type="text/javascript" src="../operating/content/js/webuploader/webuploader.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="../operating/content/js/content.js"></script>
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
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminTeacherVip&act=index&tabHash=index"  >列表</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminTeacherVip&act=addVip&tabHash=addVip" class="on" >添加</a></li>
        </ul>                    <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="classroom_AdminTeacherVip_addVip" />
                <input type="hidden" name='pageTitle' value="添加讲师头衔" />
                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <th>字段</th>
                        <th class="line_l">名称</th>
                        <th class="line_l">输入类型</th>
                        <th class="line_l">默认值格式</th>
                        <th class="line_l">提示信息</th>
                        <th class="line_l">验证事件</th>
                    </tr>
                    <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='title'> title</td>
                        <td><input type="text" name='key_name[]' value='名称'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' selected="selected">文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' >编辑器:editor</option>
                                <option value='word' >纯文字:word</option>
                                <option value='hidden' >隐藏值:input_hidden</option>
                                <option value='image' >图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='sort'> sort</td>
                        <td><input type="text" name='key_name[]' value='排序'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' selected="selected">文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' >编辑器:editor</option>
                                <option value='word' >纯文字:word</option>
                                <option value='hidden' >隐藏值:input_hidden</option>
                                <option value='image' >图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='cover'> cover</td>
                        <td><input type="text" name='key_name[]' value='图标'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' >编辑器:editor</option>
                                <option value='word' >纯文字:word</option>
                                <option value='hidden' >隐藏值:input_hidden</option>
                                <option value='image' selected="selected">图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                </table>
                <div class="page_btm">
                    <input type="submit" class="btn_b" value="确认" />
                </div>
            </form>
        </div>
        <!-- END PAGE_CONFIG -->

        <!-- START CONFIG_FORM -->


        <form id='addConsult' style="margin-top:5px">
            <div class="form2">
                <dl class="lineD" id='dl_from'>
                    <dt>名称：</dt>
                    <dd>
                        <#if bean ?? && bean.id ??>
                            <input name="id" id="id" type="hidden" value="${bean.id?c}">
                        </#if>
                        <#if bean ?? && bean.lecturership ??>
                            <input name="lecturership" id="lecturership" type="text" value="${bean.lecturership}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="lecturership" id="lecturership" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_from'>
                    <dt>排序：</dt>
                    <dd>
                        <#if bean ?? && bean.ordering ??>
                            <input name="ordering" id="ordering" type="text" value="${bean.ordering}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="ordering" id="ordering" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_cover'>
                    <dt>图标：</dt>
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


                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="保存" id='form_submit' onclick = "submitform()"/>

                </div>
            </div>
        </form>

        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
            addLecturership($("#addConsult").serialize());
        }
    </script>
    <script type="text/javascript">

        //新增或修改
         function addLecturership (LecturershipBean) {
            $.post('/lecturership/addLecturership',(LecturershipBean),function () {
                location.href="/lecturership/findLecturership";
            })
        }

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