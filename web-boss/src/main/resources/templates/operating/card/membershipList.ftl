
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
    <script type="text/javascript" src="../operating/card/js/Membership.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>g
</head>
<body>
<div id="container" class="so_main">
    <!-- START TAB框 -->
    <div class="tit_tab">
        <ul>
            <li><a href="../membership/findMembership" class="on">列表</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminVip&act=addVip&tabHash=addVip" ></a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="classroom_AdminVip_index"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="列表" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">是否隐藏</th>
                    <th class="line_l">点击事件</th>
                </tr>
                <tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='id'> id</td>
                    <td width="30%"><input type="text" name='key_name[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                <td width="20%"> <input type="hidden" name='key[]' value='title'> title</td>
                <td width="30%"><input type="text" name='key_name[]' value='名称'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" selected="selected">显示</option>
                        <option value="1" >隐藏</option>
                    </select>
                </td>
                <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <!-- <td style="background-color:#1E325C">
                <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                </td> -->
            </tr>					<tr overstyle="on">
                <td width="20%"> <input type="hidden" name='key[]' value='sort'> sort</td>
                <td width="30%"><input type="text" name='key_name[]' value='等级'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" selected="selected">显示</option>
                        <option value="1" >隐藏</option>
                    </select>
                </td>
                <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <!-- <td style="background-color:#1E325C">
                <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                </td> -->
            </tr>					<tr overstyle="on">
                <td width="20%"> <input type="hidden" name='key[]' value='vip_month'> vip_month</td>
                <td width="30%"><input type="text" name='key_name[]' value='月费（元）'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" selected="selected">显示</option>
                        <option value="1" >隐藏</option>
                    </select>
                </td>
                <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <!-- <td style="background-color:#1E325C">
                <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                </td> -->
            </tr>					<tr overstyle="on">
                <td width="20%"> <input type="hidden" name='key[]' value='vip_year'> vip_year</td>
                <td width="30%"><input type="text" name='key_name[]' value='年费（元）'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" selected="selected">显示</option>
                        <option value="1" >隐藏</option>
                    </select>
                </td>
                <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <!-- <td style="background-color:#1E325C">
                <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                </td> -->
            </tr>					<tr overstyle="on">
                <td width="20%"> <input type="hidden" name='key[]' value='is_del'> is_del</td>
                <td width="30%"><input type="text" name='key_name[]' value='禁用'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" selected="selected">显示</option>
                        <option value="1" >隐藏</option>
                    </select>
                </td>
                <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <!-- <td style="background-color:#1E325C">
                <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                </td> -->
            </tr>					<tr overstyle="on">
                <td width="20%"> <input type="hidden" name='key[]' value='DOACTION'> DOACTION</td>
                <td width="30%"><input type="text" name='key_name[]' value='操作'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" selected="selected">显示</option>
                        <option value="1" >隐藏</option>
                    </select>
                </td>
                <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <!-- <td style="background-color:#1E325C">
                <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                </td> -->
            </tr>			</table>
            <div class="page_btm">
                <input type="submit" class="btn_b" value="确定" />
            </div>
        </form>
    </div>
    <!-- END 页面配置 -->

    <!-- START 搜索配置 -->
    <div id='search_config' class = "form2 list" >
        <div class="hd">提示:checkbox如果默认有多个值,请以","隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=saveSearchConfig" method="POST">
            <input type="hidden" name='searchPageKey' value="S_classroom_AdminVip_index" />
            <input type="hidden" name='pageTitle' value="列表" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">输入类型</th>
                    <th class="line_l">提示信息</th>
                    <th class="line_l">验证事件</th>
                </tr>
            </table>
            <div class="page_btm">
                <input type="submit" class="btn_b" value="确定" />
            </div>
        </form>
    </div>
    <!-- END 搜索配置 -->

    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form action="http://try.51eduline.com/index.php?app=classroom&mod=AdminVip&act=index&dosearch=1" method="post">
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="submit" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->

    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <!-- <div class="page right"><span>共2条</span></div> -->
        <a onclick="admin.delMembership1()" class="btn_a"><span>删除</span></a>
        <a onclick="admin.addCoupon1()" class="btn_a"><span>添加</span></a>
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
                <th class="line_l"   >名称</th>
                <th class="line_l"   >等级</th>
                <th class="line_l"   >月费（元）</th>
                <th class="line_l"   >年费（元）</th>
                <th class="line_l"   >禁用</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list membershipPageBean.list as memberShip>
            <tr>
                <td><input type="checkbox" value="${memberShip.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td>${memberShip.id}</td>
                <td>${memberShip.name}</td>
                <td>${memberShip.grade}</td>
                <td>${memberShip.monthly}</td>
                <td>${memberShip.annualized}</td>
                <td>
                    <#if memberShip.forbidden == 0>
                    <span style='color: green;'>正常</span>
                </#if>
                <#if memberShip.forbidden == 1>
                <span style='color: red;'>禁用</span>
            </#if>
            </td>
                <td>
                    <#if memberShip.forbidden == 0>
                        <a onclick="admin.mzdelCouponAll(${memberShip.id?c})" class="btn_a"><span>禁用</span></a>|
                    </#if>
                    <#if memberShip.forbidden == 1>
                        <a onclick="admin.mzstartCouponAll1(${memberShip.id?c})" class="btn_a"><span>启用</span></a>|
                    </#if>
                    <a onclick="admin.echoCard(${memberShip.id?c})">编辑</a>
                </td>
        </tr>
    </#list>
    <tr>
        <td colspan="11" align="right">
            <!-- 如果总页数为0 -->
            <#if membershipPageBean.totalRecord == 0>
        </#if>
        <#if membershipPageBean.totalRecord &gt; 0>
        <a href="/membership/findMembership?page=1">首页</a>
        <!-- 如果当前为第一页时,就没有上一页这个超链接显示 -->
        <#if membershipPageBean ?? && membershipPageBean.pageNum == 1 && membershipPageBean.pageNum != membershipPageBean.totalPage>
        <#list membershipPageBean.start..membershipPageBean.end as i>
        <#if membershipPageBean.pageNum == i>
        ${i}
        <#else >
        <a href="/membership/findMembership?page=${i}">${i}</a>
    </#if>
</#list>
<a href="/membership/findMembership?page=${membershipPageBean.pageNum + 1}">下一页</a>
</#if>
<!-- 如果当前不是第一页,也不是最后一页时,则有上一页跟下一页 -->
<#if membershipPageBean.pageNum &gt;1 && membershipPageBean.pageNum &lt; membershipPageBean.totalPage>
<a href="/membership/findMembership?page=${membershipPageBean.pageNum-1}">上一页</a>
<#list membershipPageBean.start..membershipPageBean.end as i>
<#if membershipPageBean.pageNum == i>
${i}
<#else >
<a href="/membership/findMembership?page=${i}">${i}</a>
</#if>
</#list>
<a href="/membership/findMembership?page=${membershipPageBean.pageNum + 1}">下一页</a>
</#if>
<!-- 如果当前为最后一页时,则没有下一页 -->
<#if membershipPageBean.pageNum == membershipPageBean.totalPage && membershipPageBean.pageNum != 1>
<a href="/membership/findMembership?page=${membershipPageBean.pageNum-1}">上一页</a>
<#list membershipPageBean.start..membershipPageBean.end as i>
<#if membershipPageBean.pageNum == i>
${i}
<#else >
<a href="/membership/findMembership?page=${i}">${i}</a>
</#if>
</#list>
</#if>
<!-- 如果当前为第一页,且为最后一页时没有上一页跟下一页 -->
<#if membershipPageBean.pageNum == membershipPageBean.totalPage && membershipPageBean.pageNum == 1>
<#list membershipPageBean.start..membershipPageBean.end as i>
<#if membershipPageBean.pageNum == i>
${i}
<#else >
<a href="/membership/findMembership?page=${i}">${i}</a>
</#if>
</#list>
</#if>
<a href="/membership/findMembership?page=${membershipPageBean.totalPage}">尾页</a>
</#if>
共${membershipPageBean.totalRecord}条
</td>
</tr>				</td>			</tr>
        </table>
    </div>
    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <div class="Toolbar_inbox">
        <div class="page right"><span>共2条</span></div>
        <!-- 	<a onclick="admin.delVipAll('会员等级','AdminVip')" class="btn_a"><span>删除</span></a> -->
    </div>
    <!-- END BOTTOMBAR -->
</div>
<script>
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
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