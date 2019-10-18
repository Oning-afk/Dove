
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
        <ul>
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=index&tabHash=index"  >优惠券</a></li>
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=discount&tabHash=discount"  >打折卡</a></li>
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=course&tabHash=course"  >课程卡</a></li>
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=recharge&tabHash=recharge"  >充值卡</a></li>
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=vipCard&tabHash=vipCard"  >会员卡</a></li>
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=export&tabHash=export"  >导出</a></li>
        </ul>
        <!-- END TAB框 -->
        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="classroom_AdminOnlineCard_addCard" />
                <input type="hidden" name='pageTitle' value="" />
                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <th>字段</th>
                        <th class="line_l">名称</th>
                        <th class="line_l">输入类型</th>
                        <th class="line_l">默认值格式</th>
                        <th class="line_l">提示信息</th>
                        <th class="line_l">验证事件</th>
                    </tr>
                    <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='type'> type</td>
                        <td><input type="text" name='key_name[]' value='选择模式'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' selected="selected">单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' >编辑器:editor</option>
                                <option value='word' >纯文字:word</option>
                                <option value='hidden' >隐藏值:input_hidden</option>
                                <option value='image' >图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='admin.choiceCouponType(this)' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='user'> user</td>
                        <td><input type="text" name='key_name[]' value='用户名称'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' >编辑器:editor</option>
                                <option value='word' >纯文字:word</option>
                                <option value='hidden' >隐藏值:input_hidden</option>
                                <option value='image' >图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' selected="selected">用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='user_group'> user_group</td>
                        <td><input type="text" name='key_name[]' value='用户组'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' selected="selected">下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' >编辑器:editor</option>
                                <option value='word' >纯文字:word</option>
                                <option value='hidden' >隐藏值:input_hidden</option>
                                <option value='image' >图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                </table>
                <div class="page_btm">
                    <input type="submit" class="btn_b" value="确认" />
                </div>
            </form>
        </div>
        <!-- END PAGE_CONFIG -->
        <!-- START CONFIG_FORM -->
        <form method="POST" action="http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=doUserCard&id=43404"  name='detail_form' style="margin-top:5px">
            <input type="hidden" name='systemdata_list' value="classroom_AdminOnlineCard"  class="s-txt"/>
            <input type="hidden" name='systemdata_key' value="addCard"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="" class="s-txt" />
            <div class="form2">
                <dl class="lineD" id='dl_type'>
                    <dt>选择模式：</dt>
                    <dd>
                        <label><input type="radio" name="type" value='0'  checked="checked" onclick = "admin.choiceCouponType(this)" >用户 </label>
                        <label><input type="radio" name="type" value='1'  onclick = "admin.choiceCouponType(this)" >用户组 </label>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_user'>
                    <dt>用户名称：</dt>
                    <dd>
                        <div class="choose-user left">
                            <input style="display:none" name="avoidSubmitByReturn">
                            <input type="hidden" rel="uids" id="search_uids" name="user" value="" >
                            <input event-node="search_user" event-args="name=user&uid=&defaultValue=" value="" type="text" onfocus="this.className='s-txt-focus'" onblur="this.className='s-txt'" class="s-txt" name="" autocomplete="off"  >
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
                            </script></div>










                    </dd>
                </dl>
                <dl class="lineD" id='dl_user_group'>
                    <dt>用户组：</dt>
                    <dd>


                        <select name="user_group" id="form_user_group" >
                            <option value="2" >学生</option>
                            <option value="3" >教师</option>
                            <option value="4" >机构用户</option>
                            <option value="6" >首页管理员</option>
                            <option value="17" >系统管理员</option>
                            <option value="18" >统计管理员</option>
                            <option value="19" >运营管理员</option>
                            <option value="20" >用户管理员</option>
                            <option value="21" >课堂管理员</option>
                            <option value="22" >财务管理员</option>
                            <option value="23" >商城管理员</option>
                            <option value="24" >2级运营</option>
                            <option value="25" >体验用户</option>
                        </select>



















                    </dd>
                </dl>


                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="保存" id='form_submit' onclick = "submitform()"/>

                </div>
            </div>
        </form>

        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
            $('[name="detail_form"]').submit();
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
            admin.bindTrOn();admin.hideCoupon();});
    </script>

</body>
</html>