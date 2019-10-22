
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
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="js/message.js"></script>
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
            <li><a href="/operating/message/findMessagesList?isDel=0" class="on">列表</a></li>
            <li><a href="/operating/message/findMessagesList?isDel=1" >回收站</a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->
    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form>
            <dl class="lineD" id='dl_from_uid'>
                <dt>私信发送者ID：</dt>
                <dd>
                    <#if bean ?? && bean.isDel ??>
                        <input name="isDel" id="isDel" value="${bean.isDel}" type="hidden">
                    <#else >
                        <input name="isDel" id="isDel" type="hidden">
                    </#if>
                    <select id="userId">
                        <option value="0">请选择</option>
                        <#list userList as userBean>
                            <#if bean ?? && bean.userId ??>
                                <#if bean.userId == userBean.id>
                                    <option value="${userBean.id}" selected>${userBean.userName}</option>
                                <#else >
                                    <option value="${userBean.id}">${userBean.userName}</option>
                                </#if>
                            <#else >
                                <option value="${userBean.id}">${userBean.userName}</option>
                            </#if>
                        </#list>
                    </select>
                </dd>
            </dl>
            <dl class="lineD" id='dl_mix_man'>
                <dt>私信成员ID：</dt>
                <dd>
                    <select id="dialogueUser">
                        <option value="0">请选择</option>
                        <#list userList as userBean>
                            <#if bean ?? && bean.dialogueUser ??>
                                <#if bean.dialogueUser == userBean.id?string>
                                    <option value="${userBean.id}" selected>${userBean.userName}</option>
                                <#else >
                                    <option value="${userBean.id}">${userBean.userName}</option>
                                </#if>
                            <#else >
                                <option value="${userBean.id}">${userBean.userName}</option>
                            </#if>
                        </#list>
                    </select>
                </dd>
            </dl>
            <dl class="lineD" id='dl_content'>
                <dt>私信内容：</dt>
                <dd>
                    <#if bean ?? && bean.dialogueContent ??>
                        <input name="dialogueContent" id="dialogueContent" type="text" value="${bean.dialogueContent}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    <#else >
                        <input name="dialogueContent" id="dialogueContent" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="button" value="确定" class="btn_b" onclick="searchList(1)"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->
    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
        <a onclick="admin.updateToRecycles();" class="btn_a"><span>删除</span></a>
    </div>
    <!-- END TOOLBAR -->
    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"   >私信ID</th>
                <th class="line_l"   >私信发送者</th>
                <th class="line_l"   >对话发起者</th>
                <th class="line_l"   >对话成员</th>
                <th class="line_l"   >私信内容</th>
                <th class="line_l"   >发送时间</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list list.list as operationDirectMessages>
                <tr>
                    <td><input type="checkbox" value="${operationDirectMessages.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${operationDirectMessages.id}</td>
                    <td>${operationDirectMessages.userName!}</td>
                    <td>${operationDirectMessages.dialogueUserName!}</td>
                    <td>${operationDirectMessages.dialogueUserNames!}</td>
                    <td>${operationDirectMessages.dialogueContent!}</td>
                    <td>${operationDirectMessages.createTime ? string('yyyy-MM-dd hh:mm:ss')}</td>
                    <td>
                        <#if operationDirectMessages.isDel == 0>
                            <a onclick="admin.updateToRecycle(${operationDirectMessages.id})" class="btn_a"><span>删除</span></a>
                            <#elseif operationDirectMessages.isDel == 1>
                                <a onclick="admin.updateToBack(${operationDirectMessages.id})" class="btn_a"><span>恢复</span></a>
                        </#if>
                    </td>
                </tr>
            </#list>
            <tr>
                <td colspan="10" align="right">
                    <!-- 如果总页数为0 -->
                    <#if list.totalRecord == 0>
                    </#if>
                    <#if list.totalRecord &gt; 0>
                        <a onclick="searchList(${0})">首页</a>
                        <!-- 如果当前为第一页时,就没有上一页这个超链接显示 -->
                        <#if list ?? && list.pageNum == 1 && list.pageNum != list.totalPage>
                            <#list list.start..list.end as i>
                                <#if list.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                            <a onclick="searchList(${list.pageNum+1})">下一页</a>
                        </#if>
                        <!-- 如果当前不是第一页,也不是最后一页时,则有上一页跟下一页 -->
                        <#if list.pageNum &gt;1 && list.pageNum &lt; list.totalPage>
                            <a onclick="searchList(${list.pageNum-1})">上一页</a>
                            <#list list.start..list.end as i>
                                <#if list.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                            <a onclick="searchList(${list.pageNum+1})">下一页</a>
                        </#if>
                        <!-- 如果当前为最后一页时,则没有下一页 -->
                        <#if list.pageNum == list.totalPage && list.pageNum != 1>
                            <a onclick="searchList(${list.pageNum-1})">上一页</a>
                            <#list list.start..list.end as i>
                                <#if list.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                        </#if>
                        <!-- 如果当前为第一页,且为最后一页时没有上一页跟下一页 -->
                        <#if list.pageNum == list.totalPage && list.pageNum == 1>
                            <#list list.start..list.end as i>
                                <#if list.pageNum == i>
                                    ${i}
                                <#else >
                                    <a onclick="searchList(${i})">${i}</a>
                                </#if>
                            </#list>
                        </#if>
                        <a onclick="searchList(${list.totalPage})">尾页</a>
                    </#if>
                    共${list.totalRecord}条
                </td>
            </tr>
        </table>
    </div>
    <!-- END LIST -->
</div>
<script>
    function searchList(page) {
        var dialogueContent =$("#dialogueContent").val();
        var userId =$("#userId").val();
        var dialogueUser =$("#dialogueUser").val();
        var isDel = "0";
        admin.searchList(page,userId,dialogueContent,dialogueUser,isDel);
    }

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