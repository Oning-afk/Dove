
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="../mall/commodity/css/admin.css" rel="stylesheet" type="text/css">
    <script>
        /**
         * 全局变量
         */
        var SITE_URL  = 'http://try.51eduline.com';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'mall';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1688';
        var UID		  = '1688';
        var initNums  =  '140';
        // Js语言变量
        var LANG = new Array();
        var info = {icon:0,time:1800,btn:false,title:'',closeBtn:0};
        var success = {icon:1,time:1800,btn:false,title:'',closeBtn:0};
        var error = {icon:2,time:1800,btn:false,title:'',closeBtn:0};
    </script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../mall/commodity/js/core.js"></script>
    <script type="text/javascript" src="../mall/commodity/js/module.js"></script>
    <script src="../mall/commodity/js/common.js"></script>
    <script src="../mall/commodity/js/module.common.js"></script>
    <script type="text/javascript" src="../mall/commodity/js/admin.js"></script>
    <script type="text/javascript" src="../mall/commodity/js/ui.layer.js"></script>
    <script type="text/javascript" src="../mall/commodity/js/commodityList.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="../mall/commodity/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="../mall/commodity/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <!--引入CSS-->
    <link rel="stylesheet" type="text/css" href="../mall/commodity/js/webuploader/webuploader.css">
    <!--引入JS-->
    <script type="text/javascript" src="../mall/commodity/js/webuploader/webuploader.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
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
            <li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGoods&act=index&tabHash=index"  >列表</a></li><li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGoods&act=close&tabHash=close"  >回收站</a></li><li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGoods&act=addGoods&tabHash=addGoods" class="on" >添加</a></li>
        </ul>                    <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="mall_AdminGoods_addGoods" />
                <input type="hidden" name='pageTitle' value="添加" />
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
                        <td> <input type="hidden" name='key[]' value='title'> title</td>
                        <td><input type="text" name='key_name[]' value=' 商品名称'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' selected="selected">文本框:input_text</option>
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
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='goods_cate'> goods_cate</td>
                        <td><input type="text" name='key_name[]' value=' 商品分类'  class="s-txt"/></td>
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
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' selected="selected">自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='cover'> cover</td>
                        <td><input type="text" name='key_name[]' value=' 商品封面'  class="s-txt"/></td>
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
                                <option value='image' selected="selected">图片上传:input_image</option>
                                <option value='file' >附件上传:input_file</option>
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='建议尺寸：360px*360px' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='info'> info</td>
                        <td><input type="text" name='key_name[]' value=' 商品简介'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' selected="selected">文本域:textarea</option>
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
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='details'> details</td>
                        <td><input type="text" name='key_name[]' value='商品详情'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' selected="selected">编辑器:editor</option>
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
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='status'> status</td>
                        <td><input type="text" name='key_name[]' value=' 商品状态'  class="s-txt"/></td>
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
                        <td><input type='text' name='key_default[]' value='1' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='price'> price</td>
                        <td><input type="text" name='key_name[]' value='兑换价格（积分）'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' selected="selected">文本框:input_text</option>
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
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='真实价格与积分兑换比例为1:100' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='stock'> stock</td>
                        <td><input type="text" name='key_name[]' value='库存'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' selected="selected">文本框:input_text</option>
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
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='fare'> fare</td>
                        <td><input type="text" name='key_name[]' value=' 运费（积分）'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' selected="selected">文本框:input_text</option>
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
                                <option value='user' >用户选择:selectUser</option>
                                <option value='oneUser' >单用户选择:selectOneUser</option>
                                <option value='stringText' >分割存储:stringText</option>
                                <option value='color' >色彩框：color</option>
                                <option value='define' >自定义</option>
                            </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='真实价格与积分兑换比例为1:100' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='is_best'> is_best</td>
                        <td><input type="text" name='key_name[]' value='是否精华'  class="s-txt"/></td>
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
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                </table>
                <div class="page_btm">
                    <input type="submit" class="btn_b" value="确认" />
                </div>
            </form>
        </div>
        <!-- END PAGE_CONFIG -->

        <!-- START CONFIG_FORM -->


        <form id='addConsult' style="margin-top:5px">
            <div class="form2">
                <dl class="lineD" id='dl_title'>
                    <dt>商品名称：</dt>
                    <dd>
                        <#if bean ?? && bean.id ?? >
                            <input name="id" id="id" type="hidden" value="${bean.id}"  class="s-txt" style='width:200px'>
                        </#if>
                            <input name="commodityName" id="commodityName" type="text" value="" class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_cate'>
                    <dt>商品分类：</dt>
                    <dd>
                        <#if bean ?? && bean.classificationId ??>
                            <#if bean.classificationId == 1>
                                <select name="consultType" id="consultType" >
                                    <option value="1" selected>教育资讯</option>
                                    <option value="2" >eduline资讯</option>
                                    <option value="3" >新闻资讯</option>
                                    <option value="4" >学生资讯</option>
                                </select>
                            <#elseif bean.classificationId == 2>
                                <select name="consultType" id="consultType" >
                                    <option value="1" >教育资讯</option>
                                    <option value="2" selected>eduline资讯</option>
                                    <option value="3" >新闻资讯</option>
                                    <option value="4" >学生资讯</option>
                                </select>
                            <#elseif bean.classificationId == 3>
                                <select name="consultType" id="consultType" >
                                    <option value="1" >教育资讯</option>
                                    <option value="2" >eduline资讯</option>
                                    <option value="3" selected>新闻资讯</option>
                                    <option value="4" >学生资讯</option>
                                </select>
                            <#elseif bean.classificationId == 4>
                                <select name="consultType" id="consultType" >
                                    <option value="1" >教育资讯</option>
                                    <option value="2" >eduline资讯</option>
                                    <option value="3" >新闻资讯</option>
                                    <option value="4" selected>学生资讯</option>
                                </select>
                            <#else >
                                <select name="classificationId" id="classificationId" >
                                    <option value="1" >教育资讯</option>
                                    <option value="2" >eduline资讯</option>
                                    <option value="3" >新闻资讯</option>
                                    <option value="4" >学生资讯</option>
                                </select>
                            </#if>
                        <#else >
                            <select name="classificationId" id="classificationId" >
                                <option value="1" >教育资讯</option>
                                <option value="2" >eduline资讯</option>
                                <option value="3" >新闻资讯</option>
                                <option value="4" >学生资讯</option>
                            </select>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_image'>
                    <dt>封面图片：</dt>
                    <dd>
                        <!--  上传插件 -->
                        <div>
                            <div id="uploadimg">
                                <div id="fileList" class="uploader-list">
                                    <#if bean ?? && bean.coverimg ??>
                                        <div id="WU_FILE_0" class="file-item thumbnail upload-state-done">
                                            <img src="${bean.coverimg}">
                                        </div>
                                    </#if>
                                </div>
                                <div id="imgs" style="width:100px;height:100px">选择图片</div>
                            </div>
                            <#if bean ?? && bean.coverimg ??>
                                <input name="coverimg" id="coverimg" type="hidden" value="${bean.coverimg}" class="s-txt" style="width:200px;" />
                            <#else >
                                <input name="coverimg" id="coverimg" type="hidden"  class="s-txt" style="width:200px;" />
                            </#if>
                            <!-- </FORM> -->
                        </div>
                        <p>建议尺寸：360px*360px</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_from'>
                    <dt>商品简介：</dt>
                    <dd>
                        <#if bean ?? && bean.introduction ??>
                            <input name="introduction" id="introduction" type="text" value="${bean.introduction}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="introduction" id="introduction" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_text'>
                    <dt>商品详情：</dt>
                    <dd>
                        <!--发布样式 begi-->
                        <#if bean ?? && bean.details ??>
                            <textarea name="details">${bean.details}</textarea>
                        <#else >
                            <textarea name="details"></textarea>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re'>
                    <dt>状态：</dt>
                    <dd>
                        <#if bean ?? && bean.state ??>
                            <#if bean.state == 0>
                                <label><input type="radio" name="state" value='0' checked="checked" >删除 </label>
                                <label><input type="radio" name="state" value='1' >正常 </label>
                                <label><input type="radio" name="state" value='2' >禁用 </label>
                            <#else>
                                <label><input type="radio" name="state" value='0' checked="checked" >删除 </label>
                                <label><input type="radio" name="state" value='1' >正常 </label>
                                <label><input type="radio" name="state" value='2' >禁用 </label>
                            </#if>
                        <#else>
                            <label><input type="radio" name="state" value='0' >删除 </label>
                            <label><input type="radio" name="state" value='1' checked="checked" >正常 </label>
                            <label><input type="radio" name="state" value='2' >禁用 </label>
                        </#if>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re_sort'>
                    <dt>商品价格：</dt>
                    <dd>
                        <#if bean ?? && bean.price ??>
                            <input name="price" id="price" type="text" value="${bean.price}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="price" id="price" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                        <p>0-999，值越小越靠前</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_from'>
                    <dt>库存：</dt>
                    <dd>
                        <#if bean ?? && bean.inventory ??>
                            <input name="inventory" id="inventory" type="text" value="${bean.inventory}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="inventory" id="inventory" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_recount'>
                    <dt>运费：</dt>
                    <dd>
                        <#if bean ?? && bean.freight ??>
                            <input name="freight" id="freight" type="text" value="${bean.freight}"  class="s-txt" style='width:200px'>
                        <#else >
                            <input name="freight" id="freight" type="text" value=""  class="s-txt" style='width:200px'>
                        </#if>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re'>
                    <dt>是否精华：</dt>
                    <dd>
                        <#if bean ?? && bean.essence ??>
                            <#if bean.state == 0>
                                <label><input type="radio" name="essence" value='0' checked="checked" >是 </label>
                                <label><input type="radio" name="essence" value='1' >否 </label>
                            <#else>
                                <label><input type="radio" name="essence" value='0' >是 </label>
                                <label><input type="radio" name="essence" value='1' checked="checked" >否 </label>
                            </#if>
                        <#else>
                            <label><input type="radio" name="essence" value='0' >是 </label>
                            <label><input type="radio" name="essence" value='1' checked="checked" >否 </label>
                        </#if>
                        <br />
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="保存" onclick = "submitform()"/>
                </div>
            </div>
        </form>

        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
           /* admin.addCommodity($("#addConsult").serialize());*/
            var commodity = $("#addConsult").serialize();
            location.href="/mall/addCommodity?commodity="+commodity;
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

        var uploader = WebUploader.create({
            auto: true, // 选完文件后，是否自动上传
            swf: '../mall/commodity//js/webuploader/Uploader.swf', // swf文件路径
            server: '/mall/headImgUpload', // 文件接收服务端
            pick: '#imgs', // 选择文件的按钮。可选
            // 只允许选择图片文件。
            accept: {
                title: 'Images',
                extensions: 'gif,jpg,jpeg,bmp,png',
                mimeTypes: 'image/*'
            }
        });
        uploader.on( 'fileQueued', function( file ) {
            $("#fileList").empty();
            var $list = $("#fileList"),
                $li = $(
                    '<div id="' + file.id + '" class="file-item thumbnail">' +
                    '<img>' +
                    '<div class="info">' + file.name + '</div>' +
                    '</div>'
                ),
                $img = $li.find('img');
            // $list为容器jQuery实例
            $list.append( $li );
            // 创建缩略图
            uploader.makeThumb( file, function( error, src ) {
                if ( error ) {
                    $img.replaceWith('<span>不能预览</span>');
                    return;
                }
                $img.attr( 'src', src );
            }, 100, 100 ); //100x100为缩略图尺寸
        });
        // 文件上传过程中创建进度条实时显示。
        uploader.on( 'uploadProgress', function( file, percentage ) {
            var $li = $( '#'+file.id ),
                $percent = $li.find('.progress span');
            // 避免重复创建
            if ( !$percent.length ) {
                $percent = $('<p class="progress"><span></span></p>')
                    .appendTo( $li )
                    .find('span');
            }
            $percent.css( 'width', percentage * 100 + '%' );
        });
        // 文件上传成功，给item添加成功class, 用样式标记上传成功。
        uploader.on( 'uploadSuccess', function( file, res ) {
            $("#coverimg").val(res.filePath)
            $( '#'+file.id ).addClass('upload-state-done');
        });
        // 文件上传失败，显示上传出错。
        uploader.on( 'uploadError', function( file ) {
            var $li = $( '#'+file.id ),
                $error = $li.find('div.error');
            // 避免重复创建
            if ( !$error.length ) {
                $error = $('<div class="error"></div>').appendTo( $li );
            }
            $error.text('上传失败');
        });
        // 完成上传完了，成功或者失败，先删除进度条。
        uploader.on( 'uploadComplete', function( file ) {
            $( '#'+file.id ).find('.progress').remove();
        });
        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('textarea[name="details"]', {
                uploadJson: "../mall/commodity/js/kindeditor-4.1.10/jsp/upload_json.jsp",
                fileManagerJson: "../mall/commodity/js/kindeditor-4.1.10/jsp/file_manager_json.jsp",
                allowFileManager : true,
                //将富文本编辑中的内容同步到表单序列化中
                afterBlur:function(){this.sync();}
            });
        });
        /**
         * 初始化对象
         */
//表格样式
        $(document).ready(function(){
            admin.bindTrOn();});
    </script>

</body>
</html>