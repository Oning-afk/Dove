
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
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/core.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/apps/admin/_static/js/module.js"></script>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/common.js"></script>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.common.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/apps/admin/_static/js/admin.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/ui.layer.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="js/cardVoucherList.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div id="container" class="so_main">
    <div class="tit_tab">
        <ul>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=1"  >优惠券</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=2"  >打折卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=3"  >课程卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=4"  >充值卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=5"  >会员卡</a></li>
            <li><a href="/operating/card/toExportPage" >导出</a></li>
        </ul>
        <form style="margin-top:5px">
            <input type="hidden" name='cardVoucherNo' id='cardVoucherNo' value="${bean.cardVoucherNo}"  class="s-txt"/>
            <input type="hidden" name='cardVoucherType' id='cardVoucherType' value="${bean.cardVoucherType}"  class="s-txt"/>
            <input type="hidden" name='validiteDay' id='validiteDay' value="${bean.validiteDay}" class="s-txt" />
            <div class="form2">
                <dl class="lineD" id='dl_user'>
                    <dt>用户名称：</dt>
                    <dd>
                        <select id="userId">
                            <option value="0">请选择</option>
                            <#list userList as userBean>
                               <option value="${userBean.id}">${userBean.userName}</option>
                            </#list>
                        </select>
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="保存" id='form_submit' onclick = "submitform()"/>
                </div>
            </div>
        </form>
    </div>
    <script>
        function submitform(){
            var cardVoucherNo = $("#cardVoucherNo").val();
            var cardVoucherType = $("#cardVoucherType").val();
            var validiteDay = $("#validiteDay").val();
            var userId = $("#userId").val();
            admin.issueCard(cardVoucherNo,cardVoucherType,validiteDay,userId)
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
    </script>

</body>
</html>