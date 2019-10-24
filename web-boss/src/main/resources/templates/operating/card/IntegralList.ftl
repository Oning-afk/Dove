
<style media="screen">
    .Toolbar_inbox .btn_a{color: #fff!important;}
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
    <div class="tit_tab">
        <ul>
            <li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=credit" class="on">积分规则</a></li>
            <!--<li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=creditType">积分类型</a></li>-->
            <!--<li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=creditLevel">积分等级</a></li>-->
        </ul>
    </div>
    <div class="Toolbar_inbox">
        <a onclick="admin.delIntegralList()" class="btn_a"><span>关闭</span></a>
        <a onclick="admin.addIntegral(1)" class="btn_a"><span>添加</span></a>
    </div>

    <div class="list">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"  style="width:30px;"  >ID</th>
                <th class="line_l"   >名称</th>
                <th class="line_l"   >别名</th>
                <th class="line_l"   >类型</th>
                <th class="line_l"   >积分</th>
                <th class="line_l"   >执行次数</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list integralPageBean.list as integral>
                <tr>
                    <td><input type="checkbox" value="${integral.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${integral.id}</td>
                    <td>${integral.name}</td>
                    <td>${integral.alias}</td>
                    <td>${integral.type}</td>
                    <td>${integral.integral}</td>
                    <td>${integral.execute}</td>

                    <td>
                        <#if integral.status == 0>
                            <a onclick="admin.mzdelIntegralList(${integral.id?c})" class="btn_a"><span>关闭</span></a>|
                        </#if>
                        <#if integral.status == 1>
                            <a onclick="admin.mzstartIntegralList(${integral.id?c})" class="btn_a"><span>启用</span></a>|
                        </#if>
                        <a onclick="echoIntegral(${integral.id?c})">编辑</a>
                    </td>
                </tr>


            </#list>
            <tr>
                <td colspan="11" align="right">
                    <!-- 如果总页数为0 -->
                    <#if integralPageBean.totalRecord == 0>
                    </#if>
                    <#if integralPageBean.totalRecord &gt; 0>
                        <a href="/integral/findIntegral?page=1">首页</a>
                        <!-- 如果当前为第一页时,就没有上一页这个超链接显示 -->
                        <#if integralPageBean ?? && integralPageBean.pageNum == 1 && integralPageBean.pageNum != integralPageBean.totalPage>
                            <#list integralPageBean.start..integralPageBean.end as i>
                                <#if integralPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a href="/integral/findIntegral?page=${i}">${i}</a>
                                </#if>
                            </#list>
                            <a href="/integral/findIntegral?page=${integralPageBean.pageNum + 1}">下一页</a>
                        </#if>
                        <!-- 如果当前不是第一页,也不是最后一页时,则有上一页跟下一页 -->
                        <#if integralPageBean.pageNum &gt;1 && integralPageBean.pageNum &lt; integralPageBean.totalPage>
                            <a href="/integral/findIntegral?page=${integralPageBean.pageNum-1}">上一页</a>
                            <#list integralPageBean.start..integralPageBean.end as i>
                                <#if integralPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a href="/integral/findIntegral?page=${i}">${i}</a>
                                </#if>
                            </#list>
                            <a href="/integral/findIntegral?page=${integralPageBean.pageNum + 1}">下一页</a>
                        </#if>
                        <!-- 如果当前为最后一页时,则没有下一页 -->
                        <#if integralPageBean.pageNum == integralPageBean.totalPage && integralPageBean.pageNum != 1>
                            <a href="/integral/findIntegral?page=${integralPageBean.pageNum-1}">上一页</a>
                            <#list integralPageBean.start..integralPageBean.end as i>
                                <#if integralPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a href="/integral/findIntegral?page=${i}">${i}</a>
                                </#if>
                            </#list>
                        </#if>
                        <!-- 如果当前为第一页,且为最后一页时没有上一页跟下一页 -->
                        <#if integralPageBean.pageNum == integralPageBean.totalPage && integralPageBean.pageNum == 1>
                            <#list integralPageBean.start..integralPageBean.end as i>
                                <#if integralPageBean.pageNum == i>
                                    ${i}
                                <#else >
                                    <a href="/integral/findIntegral?page=${i}">${i}</a>
                                </#if>
                            </#list>
                        </#if>
                        <a href="/integral/findIntegral?page=${integralPageBean.totalPage}">尾页</a>
                    </#if>
                    共${integralPageBean.totalRecord}条
                </td>
            </tr></td></tr> </table>
    </div>
</div>

<script>

    //跳转至修改页面
    function echoIntegral(id){
        location.href="/integral/echoIntegral?id="+id;
    }
    //鼠标移动表格效果
    $(document).ready(function(){
        $("tr[overstyle='on']").hover(
            function () {
                $(this).addClass("bg_hover");
            },
            function () {
                $(this).removeClass("bg_hover");
            }
        );
    });

    function checkon(o){
        if( o.checked == true ){
            $(o).parents('tr').addClass('bg_on') ;
        }else{
            $(o).parents('tr').removeClass('bg_on') ;
        }
    }

    function checkAll(o){
        if( o.checked == true ){
            $('input[name="checkbox"]').attr('checked','true');
            $('tr[overstyle="on"]').addClass("bg_on");
        }else{
            $('input[name="checkbox"]').removeAttr('checked');
            $('tr[overstyle="on"]').removeClass("bg_on");
        }
    }

    //获取已选择的ID数组
    function getChecked() {
        var ids = new Array();
        $.each($('table input:checked'), function(i, n){
            ids.push( $(n).val() );
        });
        return ids;
    }

    function deleteCredit(ids) {
        var length = 0;
        if(ids) {
            length = 1;
        }else {
            ids    = getChecked();
            length = ids.length;
            ids    = ids.toString();
        }
        if(ids=='') {
            ui.error('请先选择一个规则');
            return ;
        }

        ui.confirm('删除成功后将无法恢复，确认继续？', {
            yes: function () {
                $.post("http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=doDeleteCredit", {ids:ids}, function(res){
                    if(res == '1') {
                        ui.success('删除成功',{
                            end:function(){
                                window.location.href = location.href;
                                ids = ids.split(',');
                                for(i = 0; i < ids.length; i++) {
                                    $('#credit_'+ids[i]).remove();
                                }
                            }
                        });
                    }else {
                        ui.error('删除失败');
                    }
                });
            }
        });
    }

    function openCredit(ids) {
        var length = 0;
        if(ids) {
            length = 1;
        }else {
            ids    = getChecked();
            length = ids.length;
            ids    = ids.toString();
        }
        if(ids=='') {
            ui.error('请先选择一个规则');
            return ;
        }

        ui.confirm('确定要进行此操作吗？', {
            yes: function () {
                $.post("http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=openCredit", {ids:ids}, function(res){
                    if(res == '1') {
                        ui.success('操作成功',{
                            end:function(){
                                window.location.href = location.href;
                                ids = ids.split(',');
                                for(i = 0; i < ids.length; i++) {
                                    $('#credit_'+ids[i]).remove();
                                }
                            }
                        });
                    }else {
                        ui.error('操作失败');
                    }
                });
            }
        });
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