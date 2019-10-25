
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
        var APPNAME   = 'course';
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
    <script type="text/javascript" src="js/offlineList.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div id="container" class="so_main">
    <div class="tit_tab">
        <ul>
            <li><a href="/offline/class/findOfflineClassList?isDel=0&offlineClassIsAudit=1" >线下课</a></li>
            <li><a href="/offline/class/toAdd" class="on">添加</a></li>
        </ul>
    </div>
    <form id="addOffline">
        <#if bean ?? && bean.id ??>
            <input type="hidden" name="id" value="${bean.id}" id="id" />
            <#else >
                <input type="hidden" name="id" id="id" />
        </#if>
        <div class="form2">
            <dl class="lineD" id="dl_course_name">
                <dt><font color="red"> * </font>课程名称：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassName ??>
                        <input type="text" name="offlineClassName" value="${bean.offlineClassName}" id="offlineClassName" class="s-txt"/>
                        <#else >
                            <input type="text" name="offlineClassName" id="offlineClassName" class="s-txt"/>
                    </#if>
                </dd>
            </dl>
            <dl class="lineD">
                <dt><font color="red"> * </font>课程分类：</dt>
                <dd>
                    <select name="offlineClassType" id="offlineClassType" class='s-select' style="width:200px">
                        <#if bean ?? && bean.offlineClassType ??>
                            <#if bean.offlineClassType == 0>
                                <option value="0" selected>Java</option>
                                <option value="1">H5</option>
                                <option value="2">测试</option>
                                <option value="3">安卓</option>
                                <option value="4">IOS</option>
                                <#elseif bean.offlineClassType == 1>
                                    <option value="0">Java</option>
                                    <option value="1" selected>H5</option>
                                    <option value="2">测试</option>
                                    <option value="3">安卓</option>
                                    <option value="4">IOS</option>
                                <#elseif bean.offlineClassType == 2>
                                    <option value="0">Java</option>
                                    <option value="1">H5</option>
                                    <option value="2" selected>测试</option>
                                    <option value="3">安卓</option>
                                    <option value="4">IOS</option>
                                <#elseif bean.offlineClassType == 3>
                                    <option value="0">Java</option>
                                    <option value="1">H5</option>
                                    <option value="2" >测试</option>
                                    <option value="3" selected>安卓</option>
                                    <option value="4">IOS</option>
                                <#elseif bean.offlineClassType == 4>
                                    <option value="0">Java</option>
                                    <option value="1">H5</option>
                                    <option value="2">测试</option>
                                    <option value="3">安卓</option>
                                    <option value="4" selected>IOS</option>
                                <#else>
                                    <option value="0">Java</option>
                                    <option value="1">H5</option>
                                    <option value="2">测试</option>
                                    <option value="3">安卓</option>
                                    <option value="4">IOS</option>
                            </#if>
                            <#else >
                                <option value="0" selected>Java</option>
                                <option value="1">H5</option>
                                <option value="2">测试</option>
                                <option value="3">安卓</option>
                                <option value="4">IOS</option>
                        </#if>
                    </select>
                </dd>
            </dl>
            <dl class="lineD" id="form_mhm_id">
                <dt><font color="red"> * </font>所属机构：</dt>
                <dd>
                    <select name="offlineClassInstitution" id="offlineClassInstitution" class='s-select' style="width:200px">
                        <option value="0">金科教育</option>
                    </select>
                </dd>
            </dl>
            <dl class="lineD" id="form_teacherlist">
                <dt><font color="red"> * </font>讲师选择：</dt>
                <dd>
                    <select name="offlineClassTeacher" id="offlineClassTeacher" class='s-select' style="width:200px">
                        <option value="0">请选择</option>
                    </select>
                </dd>
            </dl>
            <dl class="lineD">
                <dt><font color="red"> * </font>封面上传：</dt>
                <dd>
                    <!--  上传插件 -->
                    <div>
                        <div id="uploadimg">
                            <div id="fileList" class="uploader-list">
                                <#if bean ?? && bean.offlineClassImage ??>
                                    <div id="WU_FILE_0" class="file-item thumbnail upload-state-done">
                                        <img src="${bean.offlineClassImage}">
                                    </div>
                                </#if>
                            </div>
                            <div id="imgPicker" style="width:100px;height:100px">选择图片</div>
                        </div>
                        <#if bean ?? && bean.offlineClassImage ??>
                            <input name="offlineClassImage" id="offlineClassImage" type="hidden" value="${bean.offlineClassImage}" class="s-txt" style="width:200px;" />
                        <#else >
                            <input name="offlineClassImage" id="offlineClassImage" type="hidden" value="" class="s-txt" style="width:200px;" />
                        </#if>
                        <!-- </FORM> -->
                    </div>
                    <p>建议尺寸：360px*360px</p>
                </dd>
            </dl>
            <dl class="lineD" id="dl_video">
                <dt><font color="red"> * </font>课程简介：</dt>
                <#if bean ?? && bean.offlineClassDescribe ??>
                    <textarea name="offlineClassDescribe">${bean.offlineClassDescribe}</textarea>
                <#else >
                    <textarea name="offlineClassDescribe"></textarea>
                </#if>
            </dl>
            <dl class="lineD" id="form_listingtime">
                <dt><font color="red"> * </font>开课时间：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassStart ??>
                        <input name="offlineClassStart" value="${bean.offlineClassStart}" type="text" class="s-txt" onfocus="core.rcalendar(this,'full');" readonly="readonly">
                    <#else >
                        <input name="offlineClassStart" type="text" class="s-txt" onfocus="core.rcalendar(this,'full');" readonly="readonly">
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id="form_uctime">
                <dt><font color="red"> * </font>结束时间：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassEnd ??>
                        <input name="offlineClassEnd" value="${bean.offlineClassEnd}" type="text" class="s-txt" onfocus="core.rcalendar(this,'full');" readonly="readonly">
                    <#else >
                        <input name="offlineClassEnd" type="text" class="s-txt" onfocus="core.rcalendar(this,'full');" readonly="readonly">
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id="form_course_price">
                <dt><font color="red"> * </font>价格：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassPrice ??>
                        <input name="offlineClassPrice" value="${bean.offlineClassPrice}" type="text" value="" class="s-txt">元
                    <#else >
                        <input name="offlineClassPrice" type="text" value="" class="s-txt">元
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id="form_course_order_count_mark">
                <dt>学习人数（营销）：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassTotalPeople ??>
                        <input name="offlineClassTotalPeople" value="${bean.offlineClassTotalPeople}" type="text" value="" class="s-txt">
                    <#else >
                        <input name="offlineClassTotalPeople" type="text" value="" class="s-txt">
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id="form_address">
                <dt>授课地点：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassPlace ??>
                        <textarea name="offlineClassPlace" id="offlineClassPlace" rows="10" cols="80">${bean.offlineClassPlace}</textarea>
                    <#else >
                        <textarea name="offlineClassPlace" id="offlineClassPlace" rows="10" cols="80"></textarea>
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id="dl_is_charge">
                <dt>是否免费：</dt>
                <dd>
                    <#if bean ?? && bean.offlineClassIsFree ??>
                        <#if bean.offlineClassIsFree == 0>
                            <label><input type="radio" name="offlineClassIsFree" value="0" checked="checked">否 </label>
                            <label><input type="radio" name="offlineClassIsFree" value="1" >是 </label>
                            <#else >
                                <label><input type="radio" name="offlineClassIsFree" value="0" >否 </label>
                                <label><input type="radio" name="offlineClassIsFree" value="1" checked="checked">是 </label>
                        </#if>
                        <#else >
                            <label><input type="radio" name="offlineClassIsFree" value="0" checked="checked">否 </label>
                            <label><input type="radio" name="offlineClassIsFree" value="1" >是 </label>
                    </#if>
                    <br>
                </dd>
            </dl>
            <div class="page_btm">
                <input type="button" class="btn_b" value="保存" onclick="submitform()">
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function submitform(){
            admin.addOffline($("#addOffline").serialize());
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
            $("#offlineClassImage").val(res.filePath)
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
            editor = K.create('textarea[name="offlineClassDescribe"]', {
                uploadJson: "js/kindeditor-4.1.10/jsp/upload_json.jsp",
                fileManagerJson: "js/kindeditor-4.1.10/jsp/file_manager_json.jsp",
                allowFileManager : true,
                //将富文本编辑中的内容同步到表单序列化中
                afterBlur:function(){this.sync();}
            });
        });


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
        /**
         * 初始化对象
         */
        //表格样式
        $(document).ready(function(){
            admin.bindTrOn();});
    </script>
</body>
</html>