
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
        var APPNAME   = 'mall';
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
    <script type="text/javascript" src="../operating/js/admin.js"></script>
    <script type="text/javascript" src="../operating/js/ui.layer.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="../operating/card/js/IntegralList.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div class="so_main">
    <!-- <div class="page_tit">添加积分规则</div> -->
    <div class="form2">
        <form name='detail_form' id="addRecharge" style="margin-top:5px">
            <h3>添加积分规则</h3>
            <dl class="lineD" id='dl_maxprice'>
                <dt><font color="red"> * </font>名称：</dt>
                <dd>
                    <#if bean ?? && bean.id ??>
                        <input name="id" id="id" type="hidden" value="${bean.id?c}">
                    </#if>
                    <#if bean ?? && bean.name ??>
                        <input name="name" id="name" type="text" value="${bean.name}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="name" id="name" type="text" class="s-txt" style='width:200px'>
                    </#if>
                </dd>
                <p>英文名，保持唯一。推荐使用“应用_动作”，如“blog_add”</p>
            </dl>
            <dl class="lineD" id='dl_maxprice'>
                <dt><font color="red"> * </font>别名：</dt>
                <dd>
                    <#if bean ?? && bean.alias ??>
                        <input name="alias" id="alias" type="text" value="${bean.alias}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="alias" id="alias" type="text" class="s-txt" style='width:200px'>
                    </#if>
                </dd>
                <p>如“发表博客”</p>
            </dl>
            <dl class="lineD" id='dl_maxprice'>
                <dt><font color="red"> * </font>类型：</dt>
                <dd>
                    <#if bean ?? && bean.type ??>
                        <input name="type" id="type" type="text" value="${bean.type}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="type" id="type" type="text" class="s-txt" style='width:200px'>
                    </#if>
                </dd>
                <p>如“blog”</p>
            </dl>


            <!--
            <dl class="lineD">
              <dt>模板名称：</dt>
              <dd>
                <input name="info" type="text" value="">
                <p>{sign}:增加or减少、{action}:动作名、{alias}:别名、{score}:增减量</p>
            </dl>
            -->

            <dl class="lineD" id='dl_maxprice'>
                <dt><font color="red"> * </font>积分增量：</dt>
                <dd>
                    <#if bean ?? && bean.integral ??>
                        <input name="integral" id="integral" type="text" value="${bean.integral}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="integral" id="integral" type="text" class="s-txt" style='width:200px'>
                    </#if>
                </dd>
                <p>正数为增加，负数为减少</p>
            </dl>
            <dl class="lineD" id='dl_maxprice'>
                <dt><font color="red"> * </font>用户单日执行最大次数：</dt>
                <dd>
                    <#if bean ?? && bean.cardVipDay ??>
                        <input name="execute" id="execute" type="text" value="${bean.execute}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="execute" id="execute" type="text" class="s-txt" style='width:200px'>
                    </#if>
                </dd>
                <p>正数为增加，负数为减少</p>
            </dl>

            <div class="page_btm">
                <input type='text' style="display:none">
                <input type="button" class="btn_b" value="保存" onclick = "submitform()"/>
            </div>
        </form>
    </div>
</div>

<script>
    function submitform(){
        admin.addIntegralAndup($("#addRecharge").serialize());
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
    /**
     * 初始化对象
     */
//表格样式
    $(document).ready(function(){
        admin.bindTrOn();});
</script>

</body>
</html>