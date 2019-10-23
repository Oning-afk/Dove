
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
        var APPNAME   = 'classroom';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1682';
        var UID		  = '1682';
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
    <!-- START TAB框 -->
    <div class="tit_tab">
        <ul>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=1"  >优惠券</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=2"  class="on" >打折卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=3"  >课程卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=4"  >充值卡</a></li>
            <li><a href="/operating/card/findCardVoucher?cardVoucherType=5"  >会员卡</a></li>
            <li><a href="/operating/card/toExportPage" >导出</a></li>
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form>
            <dl class="lineD" id='dl_id'>
                <dt>id：</dt>
                <dd>
                    <#if bean ?? && bean.id ??>
                        <input name="id" id="id" type="text" value="${bean.id?c}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    <#else >
                        <input name="id" id="id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_code'>
                <dt>卡号：</dt>
                <dd>
                    <#if bean ?? && bean.cardVoucherNo ??>
                        <input name="cardVoucherNo" id="cardVoucherNo" type="text" value="${bean.cardVoucherNo?c}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    <#else >
                        <input name="cardVoucherNo" id="cardVoucherNo" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <div class="page_btm">
                <input type ="reset" value="清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="button" onclick="searchList(1)" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->

    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <!-- <div class="page right"><span>共1条</span></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
        <a onclick="admin.delCouponAll()" class="btn_a"><span>禁用</span></a>
        <a onclick="admin.startCouponAll()" class="btn_a"><span>启用</span></a>
        <a onclick="admin.addCoupon(2)" class="btn_a"><span>添加</span></a>
        <a onclick="admin.delCouponCard()" class="btn_a"><span>删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"  style="width:30px;"  >id</th>
                <th class="line_l"   >机构名称</th>
                <th class="line_l"   >卡券编号</th>
                <th class="line_l"   >折扣</th>
                <th class="line_l"   >有效期（天）</th>
                <th class="line_l"   >打折卡数量</th>
                <th class="line_l"   >领取截止时间</th>
                <th class="line_l"   >是否禁用</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list cardVoucherPageBean.list as cardVoucher>
                <tr>
                    <td><input type="checkbox" value="${cardVoucher.id?c}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${cardVoucher.id?c}</td>
                    <td>
                        <#if cardVoucher.institutionsId ??>
                            <#elseif cardVoucher.institutionsId == 31>
                                牛顿课堂
                            <#elseif cardVoucher.institutionsId == 37>
                                金科教育
                            <#elseif cardVoucher.institutionsId == 37>
                                伊顿教育
                        </#if>
                    </td>
                    <td>${cardVoucher.cardVoucherNo?c}</td>
                    <td>${cardVoucher.cardDiscount?c}</td>
                    <td>${cardVoucher.validiteDay?c}</td>
                    <td>
                        已发送<span style="color: red">${cardVoucher.receivedNumber?c}</span>|
                        未发送<span style="color: red">${cardVoucher.cardVoucherNumber?c}</span>
                    </td>
                    <td>
                        <#if  .now?date lt cardVoucher.toReceivedDate ?date>
                            ${cardVoucher.toReceivedDate}
                        </#if>
                        <#if .now?date gt cardVoucher.toReceivedDate ?date>
                            <span style="color:red;">已过期</span>
                        </#if>
                    </td>
                    <td>
                        <#if cardVoucher.status == 0>
                            <span style='color: green;'>正常</span>
                        </#if>
                        <#if cardVoucher.status == 1>
                            <span style='color: red;'>禁用</span>
                        </#if>
                    </td>
                    <td>
                        <#if cardVoucher.status == 0>
                            <a onclick="admin.mzdelCouponAll(${cardVoucher.id?c})" class="btn_a"><span>禁用</span></a>|
                        </#if>
                        <#if cardVoucher.status == 1>
                            <a onclick="admin.mzstartCouponAll(${cardVoucher.id?c})" class="btn_a"><span>启用</span></a>|
                        </#if>
                        <a onclick="admin.echoCard(${cardVoucher.id?c})">修改</a>|
                        <a onclick="admin.toIssueCard(${cardVoucher.cardVoucherNo?c},${cardVoucher.cardVoucherType},${cardVoucher.validiteDay})">发放</a>|
                        <a onclick="admin.mzdelCouponCard(${cardVoucher.id?c})" class="btn_a"><span>删除</span></a>
                    </td>
                </tr>
            </#list>
            <tr>
                <td colspan="10" align="right">
                    <!-- 如果总页数为0 -->
                    <#if cardVoucherPageBean.totalRecord == 0>
                    </#if>
                    <#if cardVoucherPageBean.totalRecord &gt; 0>
                        <a onclick="searchList(${0})">首页</a>
                        <!-- 如果当前为第一页时,就没有上一页这个超链接显示 -->
                        <#if cardVoucherPageBean ?? && cardVoucherPageBean.pageNum == 1 && cardVoucherPageBean.pageNum != cardVoucherPageBean.totalPage>
                            <#list cardVoucherPageBean.start..cardVoucherPageBean.end as i>
                                <#if cardVoucherPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                            <a onclick="searchList(${cardVoucherPageBean.pageNum+1})">下一页</a>
                        </#if>
                        <!-- 如果当前不是第一页,也不是最后一页时,则有上一页跟下一页 -->
                        <#if cardVoucherPageBean.pageNum &gt;1 && cardVoucherPageBean.pageNum &lt; cardVoucherPageBean.totalPage>
                            <a onclick="searchList(${cardVoucherPageBean.pageNum-1})">上一页</a>
                            <#list cardVoucherPageBean.start..cardVoucherPageBean.end as i>
                                <#if cardVoucherPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                            <a onclick="searchList(${cardVoucherPageBean.pageNum+1})">下一页</a>
                        </#if>
                        <!-- 如果当前为最后一页时,则没有下一页 -->
                        <#if cardVoucherPageBean.pageNum == cardVoucherPageBean.totalPage && cardVoucherPageBean.pageNum != 1>
                            <a onclick="searchList(${cardVoucherPageBean.pageNum-1})">上一页</a>
                            <#list cardVoucherPageBean.start..cardVoucherPageBean.end as i>
                                <#if cardVoucherPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                        </#if>
                        <!-- 如果当前为第一页,且为最后一页时没有上一页跟下一页 -->
                        <#if cardVoucherPageBean.pageNum == cardVoucherPageBean.totalPage && cardVoucherPageBean.pageNum == 1>
                            <#list cardVoucherPageBean.start..cardVoucherPageBean.end as i>
                                <#if cardVoucherPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                        </#if>
                        <a onclick="searchList(${cardVoucherPageBean.totalPage})">尾页</a>
                    </#if>
                    共${cardVoucherPageBean.totalRecord}条
                </td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript">
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
    }

    function searchList(page) {
        var id = $("#id").val();
        var institutionsId =$("#institutionsId").val();
        var cardVoucherNo =$("#cardVoucherNo").val();
        admin.searchList(page,2,id,institutionsId,cardVoucherNo);
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
    /**
     * 初始化对象
     */
//表格样式
    $(document).ready(function(){
        admin.bindTrOn();});
</script>
</body>
</html>