
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
        var APPNAME   = 'news';
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
    <script type="text/javascript" src="js/content.js"></script>
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
            <li><a href="" class="on">列表</a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->
<!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form action="http://try.51eduline.com/index.php?app=news&mod=AdminTopic&act=index&dosearch=1" method="post">
            <dl class="lineD" id='dl_id'>
                <dt>资讯id：</dt>
                <dd>
                    <#if bean ?? && bean.id ??>
                        <input name="id" id="id" type="text" value="${bean.id}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    <#else >
                        <input name="id" id="id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_title'>
                <dt>标题：</dt>
                <dd>
                    <#if bean ?? && bean.title ??>
                        <input name="title" id="title" type="text" value="${bean.title}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    <#else >
                        <input name="title" id="title" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_cate'>
                <dt>分类：</dt>
                <dd>
                    <#if bean ?? && bean.consultType ??>
                        <#if bean.consultType == 1>
                            <select name="consultType" id="consultType"  class='s-select' style="width:200px">
                                <option value="1" selected>教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        </#if>
                        <#if bean.consultType == 2>
                            <select name="consultType" id="consultType"  class='s-select' style="width:200px">
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" selected>新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        </#if>
                        <#if bean.consultType == 3>
                            <select name="consultType" id="consultType"  class='s-select' style="width:200px">
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" selected>新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        </#if>
                        <#if bean.consultType == 4>
                            <select name="consultType" id="consultType"  class='s-select' style="width:200px">
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" selected>学生资讯</option>
                            </select>
                        </#if>
                        <#else>
                            <select name="consultType" id="consultType"  class='s-select' style="width:200px">
                                <option value="1" selected>教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                    </#if>
                </dd>
            </dl>
            <input name="re" id="form_re" type="hidden" value=""  class='s-txt'>
            <input name="from" id="form_from" type="hidden" value=""  class='s-txt'>
            <input name="ctime" id="form_ctime" type="hidden" value=""  class='s-txt'>
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="button" onclick="searchList(1 )" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->

    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <!-- <div class="page right"><span>共1条</span></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
        <a href="/operating/content/toAddPage" class="btn_a"><span>添加</span></a>
        <a onclick="admin.delConsult()" class="btn_a"><span>删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"   >编号</th>
                <th class="line_l"   >标题</th>
                <th class="line_l"  style="width:30px;"  >分类</th>
                <th class="line_l"   >时间</th>
                <th class="line_l"   >来源</th>
                <th class="line_l"   >是否推荐</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list list.list as operationConsult>
                <tr>
                    <td><input type="checkbox" value="${operationConsult.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${operationConsult.id}</td>
                    <td>${operationConsult.title}</td>
                    <td>
                        <#if operationConsult.consultType == 1>
                            <span>教育咨询</span>
                        </#if>
                        <#if operationConsult.consultType == 2>
                            <span>eduline咨询</span>
                        </#if>
                        <#if operationConsult.consultType == 3>
                            <span>新闻咨询</span>
                        </#if>
                        <#if operationConsult.consultType == 4>
                            <span>学生咨询</span>
                        </#if>
                    </td>
                    <td>${operationConsult.createTime ? string('yyyy-MM-dd hh:mm:ss')}</td>
                    <td>${operationConsult.source}</td>
                    <td>
                        <#if operationConsult.isRecommended == 0>
                            <a onclick="admin.updateDownRecommended(${operationConsult.id})"><span>取消推荐</span></a>
                        </#if>
                        <#if operationConsult.isRecommended == 1>
                            <a onclick="admin.updateToRecommended(${operationConsult.id})"><span>设为推荐</span></a>
                        </#if>
                    </td>
                    <td>
                        <a onclick="admin.echoConsult(${operationConsult.id})" class="btn_a"><span>修改</span></a>
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
</div>
<script>
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
    }

    function searchList(page) {
        var id = $("#id").val();
        var title = $("#title").val();
        var type = $("#consultType").val();
        admin.searchList(page,id,title,type);
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