
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
        var APPNAME   = 'admin';
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
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="js/single.js"></script>
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
            <li><a href="/operating/single/findSingleList" >列表</a></li>
            <li><a href="/operating/single/toAddPage" class="on" >添加</a></li>
        </ul>
        <!-- END TAB框 -->
        <!-- START CONFIG_FORM -->
        <form id='addSingle' style="margin-top:5px">
            <div class="form2">
                <dl class="lineD" id='dl_title'>
                    <dt><font color="red"> * </font>标题：</dt>
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
                <dl class="lineD" id='dl_key'>
                    <dt><font color="red"> * </font>唯一标识：</dt>
                    <dd>
                        <#if bean ?? && bean.onlySign ?? >
                            <input name="onlySign" id="onlySign" type="text" value="${bean.onlySign}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="onlySign" id="onlySign" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                        <p>请用英文或数字</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_text'>
                    <dt>内容：</dt>
                    <dd>
                        <#if bean ?? && bean.content ??>
                            <textarea name="content">${bean.content}</textarea>
                        <#else >
                            <textarea name="content"></textarea>
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
            admin.addSingle($("#addSingle").serialize());
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