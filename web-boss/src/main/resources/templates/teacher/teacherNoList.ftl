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
    <script type="text/javascript" src="js/teacherList.js"></script>
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
            <li><a href="/teacher/findTeacherList?type=1" >已审</a></li>
            <li><a href="/teacher/findTeacherList?type=0" class="on">待审</a></li>
        </ul>
    </div>
    <!-- END TAB框 -->
    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form>
            <dl class="lineD" id='dl_name'>
                <dt>讲师名：</dt>
                <dd>
                    <#if bean ?? && bean.name ??>
                        <input name="name" id="name" type="text" value="${bean.name}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                        <#else >
                            <input name="name" id="name" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="button" value="确定" onclick="searchList(1)" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->
    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
        <a onclick="admin.updateAllToAllowed()" class="btn_a"><span>通过</span></a>
        <a onclick="admin.updateAllToRefused()" class="btn_a"><span>拒绝</span></a>
    </div>
    <!-- END TOOLBAR -->
    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"  >讲师id</th>
                <th class="line_l"  >头像</th>
                <th class="line_l"  >讲师名称</th>
                <th class="line_l"  >简介</th>
                <th class="line_l"  >创建时间</th>
                <th class="line_l"  >操作</th>
            </tr>
            <#list list.list as teacher>
                <tr>
                    <td><input type="checkbox" value="${teacher.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${teacher.id}</td>
                    <td>
                        <#if teacher.image ??>
                            <img src="${teacher.image}" style="height: 50px;width: 50px;">
                        </#if>
                    </td>
                    <td>${teacher.name}</td>
                    <td>${teacher.describe}</td>
                    <td>${teacher.createDate ? string('yyyy-MM-dd hh:mm:ss')}</td>
                    <td>
                        <a onclick="admin.updateToAllowed(${teacher.id})" class="btn_a">通过</a>
                        <a onclick="admin.updateToRefused(${teacher.id})" class="btn_a">拒绝</a>
                    </td>
                </tr>
            </#list>
            <tr>
                <td colspan="8" align="right">
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
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
    }

    function searchList(page) {
        var name = $("#name").val();
        admin.searchList(page,name,0);
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