
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
    <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../js/core.js"></script>
    <script type="text/javascript" src="../js/module.js"></script>
    <script src="../js/common.js"></script>
    <script src="../js/module.common.js"></script>
    <script type="text/javascript" src="../js/admin.js"></script>
    <script type="text/javascript" src="../js/ui.layer.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="../js/admin2.js"></script>
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
            <li><a href="findDingdan" class="on">点播下单</a></li>
            <li><a href="findDingdanBj" >班级订单</a></li>
            <li><a href="findDingdanZb" >直播课堂订单</a></li>
            <li><a href="findDingdanXx" >线下课订单</a></li>

        </ul>
    </div>
    <!-- END TAB框 -->
    <!-- START 搜索配置 -->
    <div id='search_config' class = "form2 list" >
        <div class="hd">提示:checkbox如果默认有多个值,请以","隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=saveSearchConfig" method="POST">
            <input type="hidden" name='searchPageKey' value="S_classroom_AdminOnlineCard_index" />
            <input type="hidden" name='pageTitle' value="优惠券" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">输入类型</th>
                    <th class="line_l">提示信息</th>
                    <th class="line_l">验证事件</th>
                </tr>
                <tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='id'> id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' selected="selected">文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='sid'> sid</td>
                    <td width="20%"><input type="text" name='key_name[]' value='机构名称' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' selected="selected">下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='code'> code</td>
                    <td width="20%"><input type="text" name='key_name[]' value='优惠券编码' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' selected="selected">文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>			</table>
            <div class="page_btm">
                <input type="submit" class="btn_b" value="确定" />
            </div>
        </form>
    </div>
    <!-- END 搜索配置 -->
    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form action="/operating/findCardVoucher" method="post">
            <dl class="lineD" id='dl_id'>
                <dt>id：</dt>
                <dd>
                    <input name="id" id="id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                </dd>
            </dl>
            <dl class="lineD" id='dl_sid'>
                <dt>机构名称：</dt>
                <dd>
                    <select name="institutionsId" id="institutionsId"  class='s-select' style="width:200px">

                    </select>
                </dd>
            </dl>
            <dl class="lineD" id='dl_code'>
                <dt>优惠券编码：</dt>
                <dd>
                    <input name="cardVoucherNo" id="cardVoucherNo" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
                </dd>
            </dl>
            <div class="page_btm">
                <input type ="reset" value="清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="submit" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->

    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <!-- <div class="page right"><span>共1条</span></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
        <a onclick="admin.delCouponCard()" class="btn_a"><span>删除</span></a>
        <a onclick="admin.delCouponCard()" class="btn_a"><span>彻底删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>

                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"  style="width:30px;"  >序号</th>
                <th class="line_l"   >用户</th>
                <th class="line_l"   >课程名-课时</th>
                <th class="line_l"   >课程机构</th>
                <th class="line_l"   >原价</th>
                <th class="line_l"   >折扣类型</th>
                <th class="line_l"   >价格</th>
                <th class="line_l"   >状态</th>
                <th class="line_l"   >有效天数</th>
                <th class="line_l"   >有效期至</th>
                <th class="line_l"   >付款时间</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list cardVoucherPageBean.list as finDingdan>
                <tr>
                    <td><input type="checkbox" value="${finDingdan.id}" onclick="admin.checkon(this)"  name="checkbox"></td>
                    <td>${finDingdan.id}</td>
                    <td>${finDingdan.name}</td>
                    <td><a href="">点播测试</a></td>
                    <td>${finDingdan.jigou}</td>
                    <td>${finDingdan.yuanjia}</td>
                    <td>${finDingdan.zhekouleixing}</td>
                    <td>${finDingdan.jiage}</td>
                    <td>${finDingdan.zhaungtai}</td>
                    <td>${finDingdan.youxiaotianshu}</td>
                    <td>${finDingdan.youxiaoqi}</td>
                    <td>${finDingdan.fukuanshijian}</td>
                    <td>
                        <a href="">查看明细</a>|
                        <a href="">彻底删除</a>
                    </td>
                </tr>
            </#list>

        </table>
    </div>
</div>
<script type="text/javascript">
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
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
     表格样式*/
//
    $(document).ready(function(){
        admin.bindTrOn();});
</script>
</body>
</html>