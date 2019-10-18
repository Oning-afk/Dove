
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
            <li><a href="/operating/card/findCardLog" class="on">列表</a></li>
            <li><a href="/operating/card/exportCardLog" >导出</a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->
    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form action="/operating/card/findCardLog" method="post">
            <dl class="lineD" id='dl_id'>
                <dt>编号：</dt>
                <dd>
                    <#if bean ?? && bean.id ??>
                        <input name="id" id="id" type="text" value="${bean.id}"  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    <#else >
                        <input name="id" id="id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                    </#if>
                </dd>
            </dl>
            <dl class="lineD" id='dl_uid'>
                <dt>用户名称：</dt>
                <dd>
                    <div class="choose-user left">
                        <input style="display:none" name="avoidSubmitByReturn">
                        <input type="hidden" rel="uids" id="search_uids" name="uid" value="" >
                        <input event-node="search_user" event-args="name=uid&uid=&defaultValue=" value="" type="text" onfocus="this.className='s-txt-focus'" onblur="this.className='s-txt'" class="s-txt" name="" autocomplete="off"  >
                        <script type="text/javascript">
                            M.addEventFns({
                                search_user:{
                                    load:function(){
                                        var obj = $(this);
                                        if("undefined" == typeof(core.searchUser)){
                                            core.plugFunc('searchUser',function(){
                                                core.searchUser.init(obj,'0','0','','0','','');
                                                core.searchUser._stopUser();
                                            });
                                        }
                                    },
                                    click:function(){
                                        var args = M.getEventArgs(this);
                                        if(this.value == args.defaultValue){
                                            this.value = ''
                                        };
                                        var obj = $(this);
                                        core.searchUser.init(obj,'0','0','','0','','');
                                    },
                                    blur: function() {
                                        var args = M.getEventArgs(this);
                                        if(this.value == '' || this.value ==args.defaultValue) {
                                            this.value = args.defaultValue;
                                            core.searchUser.inputReset();
                                        }
                                    },
                                    focus: function() {
                                        var args = M.getEventArgs(this);
                                        if(this.value == args.defaultValue) {
                                            this.value = '';
                                        }
                                        core.searchUser.init($(this),'0','0','','0','','');
                                    }
                                }
                            });
                        </script>
                    </div>
                </dd>
            </dl>
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="submit" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->
    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
        <a onclick="admin.delCardLogs()" class="btn_a"><span>删除</span></a>
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
                <th class="line_l"   >用户名称</th>
                <th class="line_l"   >卡号</th>
                <th class="line_l"   >卡券类型</th>
                <th class="line_l"   >有效期（天）</th>
                <th class="line_l"   >状态</th>
                <th class="line_l"   >领取时间</th>
                <th class="line_l"   >是否删除</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list list.list as cardLog>
                <tr>
                    <td><input type="checkbox" value="${cardLog.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${cardLog.id}</td>
                    <td>${cardLog.userId}</td>
                    <td>${cardLog.cardVoucherNo}</td>
                    <td>
                        <#if cardLog.cardType == 1>
                            <span>优惠券</span>
                        </#if>
                        <#if cardLog.cardType == 2>
                            <span>打折卡</span>
                        </#if>
                        <#if cardLog.cardType == 3>
                            <span>课程卡</span>
                        </#if>
                        <#if cardLog.cardType == 4>
                            <span>充值卡</span>
                        </#if>
                        <#if cardLog.cardType == 5>
                            <span>会员卡</span>
                        </#if>
                    </td>
                    <td>${cardLog.validiteDay}</td>
                    <td>
                        <#if cardLog.cardStatus == 1>
                            <span>未使用</span>
                        </#if>
                        <#if cardLog.cardStatus == 2>
                            <span>已使用</span>
                        </#if>
                        <#if cardLog.cardStatus == 3>
                            <span>已过期</span>
                        </#if>
                        <#if cardLog.cardStatus == 4>
                            <span>已作废</span>
                        </#if>
                    </td>
                    <td>${cardLog.receivedDate ? string('yyyy-MM-dd hh:mm:ss')}</td>
                    <td>
                        <#if cardLog.isDel == 0>
                            <span style='color: green;'>正常</span>
                        </#if>
                        <#if cardLog.isDel == 1>
                            <span style='color: red;'>删除</span>
                        </#if>
                    </td>
                    <td>
                        <#if cardLog.isDel == 0>
                            <a onclick="admin.mzdelCardLogs(${cardLog.id})" class="btn_a"><span>删除</span></a>
                        </#if>
                        <#if cardLog.isDel == 1>
                            <a onclick="admin.mzRestoreCardLogs(${cardLog.id})" class="btn_a"><span>恢复</span></a>
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
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
    }

    function searchList(page) {
        var id = $("#id").val();
        admin.searchList(page,id);
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