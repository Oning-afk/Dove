
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
    <script type="text/javascript" src="http://try.51eduline.com/apps/classroom/_static/js/admin.js"></script>
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
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=index&tabHash=index" class="on">点播订单</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=album&tabHash=album" >班级订单</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=live&tabHash=live" >直播课堂订单</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=meetingcourse&tabHash=meetingcourse" >线下课订单</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=export&tabHash=export" >导出</a></li>
            <!-- 点播订单 - 交易记录 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="classroom_AdminOrder_index"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="点播订单 - 交易记录" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">是否隐藏</th>
                    <th class="line_l">点击事件</th>
                </tr>
                <tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='id'> id</td>
                    <td width="30%"><input type="text" name='key_name[]' value='序号'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='uid'> uid</td>
                    <td width="30%"><input type="text" name='key_name[]' value='用户'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='video_id'> video_id</td>
                    <td width="30%"><input type="text" name='key_name[]' value='课程名---课时'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='mhm_title'> mhm_title</td>
                    <td width="30%"><input type="text" name='key_name[]' value='课程机构'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='mount_id'> mount_id</td>
                    <td width="30%"><input type="text" name='key_name[]' value='挂载机构'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" >显示</option>
                            <option value="1" selected="selected">隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='old_price'> old_price</td>
                    <td width="30%"><input type="text" name='key_name[]' value='原价'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='discount'> discount</td>
                    <td width="30%"><input type="text" name='key_name[]' value='折扣'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" >显示</option>
                            <option value="1" selected="selected">隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='discount_type'> discount_type</td>
                    <td width="30%"><input type="text" name='key_name[]' value='折扣类型'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='price'> price</td>
                    <td width="30%"><input type="text" name='key_name[]' value='价格'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='order_album_title'> order_album_title</td>
                    <td width="30%"><input type="text" name='key_name[]' value='通过班级'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" >显示</option>
                            <option value="1" selected="selected">隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='pay_status'> pay_status</td>
                    <td width="30%"><input type="text" name='key_name[]' value='状态'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='learn_status'> learn_status</td>
                    <td width="30%"><input type="text" name='key_name[]' value='学习状态'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" >显示</option>
                            <option value="1" selected="selected">隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='term'> term</td>
                    <td width="30%"><input type="text" name='key_name[]' value='有效天数'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='time_limit'> time_limit</td>
                    <td width="30%"><input type="text" name='key_name[]' value='有效期至'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='ctime'> ctime</td>
                    <td width="30%"><input type="text" name='key_name[]' value='付款时间'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
            <input type="hidden" name='searchPageKey' value="S_classroom_AdminOrder_index" />
            <input type="hidden" name='pageTitle' value="点播订单 - 交易记录" />
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
                    <td width="20%"><input type="text" name='key_name[]' value='订单ID' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"><input type='text' name='key_tishi[]' value='根据ID查询某个订单' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='uid'> uid</td>
                    <td width="20%"><input type="text" name='key_name[]' value='购买用户' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' selected="selected">用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='mhm_id'> mhm_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='机构名称' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' selected="selected">隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='mhm_title'> mhm_title</td>
                    <td width="20%"><input type="text" name='key_name[]' value='' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' selected="selected">隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='mhm_id'> mhm_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='机构名称' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' selected="selected">隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='video_id'> video_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='课程ID' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"><input type='text' name='key_tishi[]' value='根据某个课程ID搜索' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='order_album_id'> order_album_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='班级ID' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"><input type='text' name='key_tishi[]' value='根据套餐ID进行搜索,为0时只限时不是通过专辑购买的记录' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='startTime'> startTime</td>
                    <td width="20%"><input type="text" name='key_name[]' value='开始时间' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' selected="selected">日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='根据时间范围进行搜索' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='endTime'> endTime</td>
                    <td width="20%"><input type="text" name='key_name[]' value='结束时间' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' selected="selected">日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='根据时间范围进行搜索' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
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
        <form action="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=index&tabHash=index&dosearch=1" method="post">
            <dl class="lineD" id='dl_id'>
                <dt>订单ID：</dt>
                <dd>

                    <input name="id" id="form_id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >








                    <p>根据ID查询某个订单</p>

                </dd>
            </dl>
            <dl class="lineD" id='dl_uid'>
                <dt>购买用户：</dt>
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
                        </script></div>






                </dd>
            </dl>








            <input name="mhm_id" id="form_mhm_id" type="hidden" value=""  class='s-txt'>










            <input name="mhm_title" id="form_mhm_title" type="hidden" value=""  class='s-txt'>










            <input name="mhm_id" id="form_mhm_id" type="hidden" value=""  class='s-txt'>


            <dl class="lineD" id='dl_video_id'>
                <dt>课程ID：</dt>
                <dd>

                    <input name="video_id" id="form_video_id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >








                    <p>根据某个课程ID搜索</p>

                </dd>
            </dl>
            <dl class="lineD" id='dl_order_album_id'>
                <dt>班级ID：</dt>
                <dd>

                    <input name="order_album_id" id="form_order_album_id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >








                    <p>根据套餐ID进行搜索,为0时只限时不是通过专辑购买的记录</p>

                </dd>
            </dl>
            <dl class="lineD" id='dl_startTime'>
                <dt>开始时间：</dt>
                <dd>







                    <input name="startTime" type="text" class="s-txt" id="form_startTime" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" />


                    <p>根据时间范围进行搜索</p>

                </dd>
            </dl>
            <dl class="lineD" id='dl_endTime'>
                <dt>结束时间：</dt>
                <dd>







                    <input name="endTime" type="text" class="s-txt" id="form_endTime" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" />


                    <p>根据时间范围进行搜索</p>

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
        <!-- <div class="page right"><span>共461条</span> <a class='current'>1</a><a p='2' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=2'>2</a><a p='3' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=3'>3</a><a p='4' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=4'>4</a><a p='5' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=5'>5</a><a p='24' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=24' >..24</a><a p='2' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=2' class='next'>下一页</a></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="admin.delOrders('zy_order_course')" class="btn_a"><span>删除</span></a><a onclick="admin.realDeleteOrders('zy_order_course')" class="btn_a"><span>彻底删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>

                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>

                <th class="line_l"   >序号</th>				<th class="line_l"   >用户</th>				<th class="line_l"   >课程名---课时</th>				<th class="line_l"   >课程机构</th>				<th class="line_l"   >原价</th>				<th class="line_l"   >折扣类型</th>				<th class="line_l"   >价格</th>				<th class="line_l"   >状态</th>				<th class="line_l"   >有效天数</th>				<th class="line_l"   >有效期至</th>				<th class="line_l"   >付款时间</th>				<th class="line_l"   style="width:auto;" >操作</th>		</tr>

            <tr overstyle="on" id="tr635">

                <td><input type="checkbox" value="635" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    635					</td>					<td >
                    <a event-node="face_card" uid="1692" href="http://try.51eduline.com/user/index/1692.html" class="" target="_blank">18435913891</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/176.html' style='color:#3b5999; ' target='_blank'>一组测试</a> - 课时：无敌的我又来了					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>金科教育</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥99.00</span>					</td>					<td >
                    <span style="color:gray">无折扣</span>					</td>					<td >
                    <span style="color:red">￥99.00</span>					</td>					<td >
                    <span style='color: red;'>未支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2019/10/24 18:44					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=635&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",635)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr634">

                <td><input type="checkbox" value="634" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    634					</td>					<td >
                    <a event-node="face_card" uid="1750" href="http://try.51eduline.com/user/index/1750.html" class="" target="_blank">13173698230</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/176.html' style='color:#3b5999; ' target='_blank'>一组测试</a> - 课时：无敌的我又来了					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>金科教育</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥99.00</span>					</td>					<td >
                    <span style="color:gray">无折扣</span>					</td>					<td >
                    <span style="color:red">￥99.00</span>					</td>					<td >
                    <span style='color: red;'>未支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2019/10/24 10:42					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=634&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",634)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr633">

                <td><input type="checkbox" value="633" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    633					</td>					<td >
                    <a event-node="face_card" uid="1748" href="http://try.51eduline.com/user/index/1748.html" class="" target="_blank">18685162238</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/176.html' style='color:#3b5999; ' target='_blank'>一组测试</a> - 课时：无敌的我又来了					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>金科教育</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥99.00</span>					</td>					<td >
                    <span style="color:gray">无折扣</span>					</td>					<td >
                    <span style="color:red">￥99.00</span>					</td>					<td >
                    <span style='color: red;'>未支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2019/10/23 20:49					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=633&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",633)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr632">

                <td><input type="checkbox" value="632" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    632					</td>					<td >
                    <a event-node="face_card" uid="1738" href="http://try.51eduline.com/user/index/1738.html" class="" target="_blank">18264011110</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/175.html' style='color:#3b5999; ' target='_blank'>三组测试</a> - 课时：啦啦啦					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>金科教育</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥888.00</span>					</td>					<td >
                    <span style="color:gray">无折扣</span>					</td>					<td >
                    <span style="color:red">￥888.00</span>					</td>					<td >
                    <span style='color: red;'>未支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2019/10/21 14:08					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=632&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",632)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr460">

                <td><input type="checkbox" value="460" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    460					</td>					<td >
                    <a event-node="face_card" uid="420" href="http://try.51eduline.com/user/index/420.html" class="" target="_blank">星悦</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=460&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",460)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr459">

                <td><input type="checkbox" value="459" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    459					</td>					<td >
                    <a event-node="face_card" uid="419" href="http://try.51eduline.com/user/index/419.html" class="" target="_blank">pike</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=459&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",459)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr458">

                <td><input type="checkbox" value="458" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    458					</td>					<td >
                    <a event-node="face_card" uid="418" href="http://try.51eduline.com/user/index/418.html" class="" target="_blank">阿辉啊</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=458&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",458)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr457">

                <td><input type="checkbox" value="457" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    457					</td>					<td >
                    <a event-node="face_card" uid="417" href="http://try.51eduline.com/user/index/417.html" class="" target="_blank">JINZHONGAN</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=457&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",457)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr456">

                <td><input type="checkbox" value="456" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    456					</td>					<td >
                    <a event-node="face_card" uid="416" href="http://try.51eduline.com/user/index/416.html" class="" target="_blank">ceshibill</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=456&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",456)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr455">

                <td><input type="checkbox" value="455" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    455					</td>					<td >
                    <a event-node="face_card" uid="415" href="http://try.51eduline.com/user/index/415.html" class="" target="_blank">尹至真</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=455&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",455)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr454">

                <td><input type="checkbox" value="454" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    454					</td>					<td >
                    <a event-node="face_card" uid="414" href="http://try.51eduline.com/user/index/414.html" class="" target="_blank">作答</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=454&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",454)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr453">

                <td><input type="checkbox" value="453" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    453					</td>					<td >
                    <a event-node="face_card" uid="413" href="http://try.51eduline.com/user/index/413.html" class="" target="_blank">测试123</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=453&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",453)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr452">

                <td><input type="checkbox" value="452" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    452					</td>					<td >
                    <a event-node="face_card" uid="412" href="http://try.51eduline.com/user/index/412.html" class="" target="_blank">哈哈pt</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=452&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",452)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr451">

                <td><input type="checkbox" value="451" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    451					</td>					<td >
                    <a event-node="face_card" uid="411" href="http://try.51eduline.com/user/index/411.html" class="" target="_blank">xdxd9108</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=451&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",451)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr449">

                <td><input type="checkbox" value="449" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    449					</td>					<td >
                    <a event-node="face_card" uid="409" href="http://try.51eduline.com/user/index/409.html" class="" target="_blank">阅龄</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=449&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",449)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr448">

                <td><input type="checkbox" value="448" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    448					</td>					<td >
                    <a event-node="face_card" uid="408" href="http://try.51eduline.com/user/index/408.html" class="" target="_blank">Scott</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=448&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",448)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr447">

                <td><input type="checkbox" value="447" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    447					</td>					<td >
                    <a event-node="face_card" uid="407" href="http://try.51eduline.com/user/index/407.html" class="" target="_blank">挖的</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=447&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",447)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr446">

                <td><input type="checkbox" value="446" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    446					</td>					<td >
                    <a event-node="face_card" uid="406" href="http://try.51eduline.com/user/index/406.html" class="" target="_blank">淳宝</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=446&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",446)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr445">

                <td><input type="checkbox" value="445" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    445					</td>					<td >
                    <a event-node="face_card" uid="405" href="http://try.51eduline.com/user/index/405.html" class="" target="_blank">罗老师</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=445&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",445)'>彻底删除</a>					</td>			</tr><tr overstyle="on" id="tr444">

                <td><input type="checkbox" value="444" onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    444					</td>					<td >
                    <a event-node="face_card" uid="404" href="http://try.51eduline.com/user/index/404.html" class="" target="_blank">weiwei</a>					</td>					<td >
                    <a href='http://try.51eduline.com/course/138.html' style='color:#3b5999; ' target='_blank'>点播测试</a>					</td>					<td >
                    <a href='http://try.51eduline.com/index.php?app=school&mod=School&act=index&' style='color:#3b5999; ' target='_blank'>测试机构4</a>					</td>					<td >
                    <span style="text-decoration:line-through;">￥100.00</span>					</td>					<td >
                    系统赠送					</td>					<td >
                    <span style="color:red">￥0.00</span>					</td>					<td >
                    <span style='color: green;'>已支付</span>					</td>					<td >
                    <span style='color: green;'>不限</span>					</td>					<td >
                    <span style='color: green;'>永久</span>					</td>					<td >
                    2018/12/05 06:54					</td>					<td >
                    <a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=viewOrder&id=444&type=zy_order_course&tabHash=viewOrder">查看详细</a> | <a href='javascript:;' onclick='admin.realDeleteOrders("zy_order_course",444)'>彻底删除</a>					</td>			</tr>
        </table>
    </div>
    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <div class="Toolbar_inbox">
        <div class="page right"><span>共461条</span> <a class='current'>1</a><a p='2' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=2'>2</a><a p='3' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=3'>3</a><a p='4' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=4'>4</a><a p='5' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=5'>5</a><a p='24' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=24' >..24</a><a p='2' href='/index.php?app=classroom&mod=AdminOrder&act=index&p=2' class='next'>下一页</a></div>
        <!-- 	<a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="admin.delOrders('zy_order_course')" class="btn_a"><span>删除</span></a><a onclick="admin.realDeleteOrders('zy_order_course')" class="btn_a"><span>彻底删除</span></a> -->
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