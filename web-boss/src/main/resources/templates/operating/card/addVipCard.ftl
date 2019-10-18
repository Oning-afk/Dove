
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
    <script type="text/javascript" src="js/cardVoucherList.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
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
        <form name='detail_form' id="addVip" style="margin-top:5px">

            <div class="form2">
                <dl class="lineD" id='dl_sid'>
                    <dt><font color="red"> * </font>机构名称：</dt>
                    <dd>
                        <#if bean ?? && bean.id ??>
                            <input name="id" id="id" type="hidden" value="${bean.id?c}">
                        </#if>
                        <#if bean ?? && bean.receivedNumber ??>
                            <input name="receivedNumber" id="receivedNumber" type="hidden" value="${bean.receivedNumber?c}">
                        </#if>
                        <input name="cardVoucherType" id="cardVoucherType" type="hidden" value="5">
                        <#if bean ?? && bean.cardVipType ??>
                            <select name="cardVipType" id="cardVipType" class='s-select' style="width:200px">

                            </select>
                        <#else >
                            <select name="cardVipType" id="cardVipType" >
                                <option value="1" >VIP</option>
                                <option value="2" >SVIP</option>
                            </select>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_maxprice'>
                    <dt><font color="red"> * </font>会员时限（天）：</dt>
                    <dd>
                        <#if bean ?? && bean.cardVipDay ??>
                            <input name="cardVipDay" id="cardVipDay" type="text" value="${bean.cardVipDay?c}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="cardVipDay" id="cardVipDay" type="text" class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_exp_date'>
                    <dt><font color="red"> * </font>有效期（天）：</dt>
                    <dd>
                        <#if bean ?? && bean.validiteDay ??>
                            <input name="validiteDay" id="validiteDay" type="text" value="${bean.validiteDay?c}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="validiteDay" id="validiteDay" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_end_time'>
                    <dt><font color="red"> * </font>领取截止时间：</dt>
                    <dd>
                        <#if bean ?? && bean.toReceivedDate ??>
                            <input name="toReceivedDate" type="text" class="text" id="toReceivedDate" value='${bean.toReceivedDate}' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" class="s-txt"/>
                        <#else >
                            <input name="toReceivedDate" type="text" class="text" id="toReceivedDate" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" class="s-txt"/>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_count'>
                    <dt><font color="red"> * </font>领取总人数：</dt>
                    <dd>
                        <#if bean ??>
                            <#if bean.cardVoucherNumber ?? && bean.receivedNumber ??>
                                <input name="cardVoucherNumber" id="cardVoucherNumber" type="text" value="${bean.cardVoucherNumber?c + bean.receivedNumber?c}"  class="s-txt" style='width:200px'>
                            </#if>
                        <#else >
                            <input name="cardVoucherNumber" id="cardVoucherNumber" type="text" value=""  class="s-txt" style='width:200px'>
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
            admin.addCard($("#addVip").serialize());
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