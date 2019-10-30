
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
        var MID		  = '1688';
        var UID		  = '1688';
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
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="http://try.51eduline.com/apps/mall/_static/js/admin.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div id="container" class="so_main">

    <div class="tit_tab">
        <ul>
            <li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGoodsAddress&act=index&tabHash=index" >列表</a></li><li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGoodsAddress&act=addAddress&tabHash=addAddress" class="on">添加</a></li>        </ul>
    </div>

    <form action="/receiving/addRecervring" style="margin-top:5px">
        <div class="form2">
            <#--<dl class="lineD" id='dl_cate'>
                <dt>省/市/区：</dt>
                <dd>

                    <#if bean ?? && bean.regionId ??>
                        <#if bean.regionId == 1>
                            <select name="consultType" id="consultType" >
                                <option value="1" selected>教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        <#elseif bean.regionId == 2>
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" selected>eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        <#elseif bean.regionId == 3>
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" selected>新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        <#elseif bean.regionId == 4>
                            <select name="consultType" id="consultType" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" selected>学生资讯</option>
                            </select>
                        <#else >
                            <select name="regionId" id="regionId" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        </#if>
                    <#else >
                        <select name="regionId" id="regionId" >
                            <option value="1" >教育资讯</option>
                            <option value="2" >eduline资讯</option>
                            <option value="3" >新闻资讯</option>
                            <option value="4" >学生资讯</option>
                        </select>
                    </#if>
                </dd>
            </dl>-->
            <dl class="lineD" id='dl_text'>
                <dt>详细地址：</dt>
                <dd>
                    <#if bean ?? && bean.orderId ?? >
                        <input name="id" id="id" type="hidden" value="${bean.id}"  class="s-txt" style='width:200px'>
                    </#if>
                    <!--发布样式 begi-->
                    <#if bean ?? && bean.address ??>
                        <input name="address" id="address" type="text" value="${bean.address}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="address" id="address" type="text" value=""  class="s-txt" style='width:200px'>
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_image'>
                <dt>收货人姓名：</dt>
                <dd>
                    <#if bean ?? && bean.name ??>
                        <input name="name" id="name" type="text" value="${bean.name}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="name" id="name" type="text" value=""  class="s-txt" style='width:200px'>
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_re'>
                <dt>收货人手机：</dt>
                <dd>
                    <#if bean ?? && bean.phone ??>
                        <input name="phone" id="phone" type="text" value="${bean.phone}"  class="s-txt" style='width:200px'>
                    <#else >
                        <input name="phone" id="phone" type="text" value=""  class="s-txt" style='width:200px'>
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_re_sort'>
                <dt>是否设为默认收货地址：</dt>
                <dd>
                    <#if bean ?? && bean.defaultAddress ??>
                        <#if bean.defaultAddress == 0>
                            <label><input type="radio" name="defaultAddress" value='0' checked="checked" >是 </label>
                            <label><input type="radio" name="defaultAddress" value='1' >否 </label>
                        <#else>
                            <label><input type="radio" name="defaultAddress" value='0' >是 </label>
                            <label><input type="radio" name="defaultAddress" value='1' checked="checked" >否 </label>
                        </#if>
                    <#else>
                        <label><input type="radio" name="defaultAddress" value='0' >是 </label>
                        <label><input type="radio" name="defaultAddress" value='1' checked="checked" >否 </label>
                    </#if>
                </dd>
            </dl>
            <div class="page_btm" >
                <input type='text' style="display:none">
                <input type="submit" class="btn_b" value="保存" />
            </div>
        </div>
    </form>
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