
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
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src=" js/cardVoucherList.js"></script>
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
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=1"  >优惠券</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=2"  >打折卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=3"  >课程卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=4"  >充值卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=5"  >会员卡</a></li>
            <li><a href="/operating/card/toExportPage" >导出</a></li>
        </ul>
        <!-- END TAB框 -->
        <!-- START CONFIG_FORM -->
        <form istyle="margin-top:5px" method="post" action="/operating/exportCardVoucher" >
            <div class="form2">
                <dl class="lineD" id='dl_mhm_id'>
                    <dt>机构：</dt>
                    <dd>
                        <select name="institutionsId" id="form_mhm_id" >
                            <option value="0"  selected="selected" >全部</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_type'>
                    <dt>类型：</dt>
                    <dd>
                        <select name="cardVoucherType" id="form_type" >
                            <option value="1"  selected="selected" >优惠券</option>
                            <option value="2" >打折卡</option>
                            <option value="4" >充值卡</option>
                            <option value="5" >课程卡</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_status'>
                    <dt>状态：</dt>
                    <dd>
                        <select name="status" id="form_status" >
                            <option value="-1"  selected="selected" >全部</option>
                            <option value="0" >已过期</option>
                            <option value="1" >未使用</option>
                            <option value="2" >已使用</option>
                            <option value="3" >已作废</option>
                        </select>
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="submit" class="btn_b" value="导出"/>
                </div>
            </div>
        </form>
        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
            $('[name="detail_form"]').submit();
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