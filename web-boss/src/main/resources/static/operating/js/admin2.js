/**
 * 删除讲师
 * @param _id
 * @param action
 * @returns {boolean}
 */
admin.delTeacher = function (_id, action, title, category) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请��择你要删除�?" + title + "");
        return false;
    }

    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post( U('classroom/AdminTeacher/'+action ), {
                ids:id,category:category
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

//批量删除讲师相关
admin.delTeacherAll=function(action,category){
    var ids=admin.getChecked();
    ids = ("undefined"== typeof(ids)|| ids=='') ? admin.getChecked() : ids;
    if(ids==''){
        ui.error("请��择要删除的讲师");
        return false;
    }

    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post( U('classroom/AdminTeacher/'+action ), {
                ids:ids,category:category
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

//禁用 用户卡券
admin.mzUserCardEdit = function(_id, action, title, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error('请��择要操作的卡券');
        return false;
    }
    ui.confirm('确定�?' + title + '选中�?' + type + '?', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                id: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//批量禁用 用户卡券
admin.delUserCardAll = function(action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("确定要进行此操作吗？");
        return false;
    }
    ui.confirm('确定确认删除�?', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//�����Ż�ȯ
admin.mzCouponCardEdit = function(_id, action, title, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error('ȷ��Ҫ����ѡ�е�' + title + '���ۿ�' + type);
        return false;
    }
    ui.confirm('�����ɹ�' + title + '选中�?' + type + '�?', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                id: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//删除 课程优惠�?
admin.mzdelcoupon = function(_id, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请��择要删除的卡券");
        return false;
    }
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
}
//��ת������ҳ��
admin.addCoupon = function(action, type) {
    location.href = U('classroom/Admin' + action + '/' + type) + '&tabHash=' + type;
};
//���û�����
admin.delCouponAll = function(action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("��ѡ��Ҫ���õĿ�ȯ!");
        return false;
    }
    ui.confirm('ȷ��Ҫ���д˲�����', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//����ɾ��
admin.delCouponCard = function(_id, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("��ѡ��Ҫɾ���Ŀ�ȯ!");
        return false;
    }
    ui.confirm('ȷ��Ҫ���д˲�����', {
        yes: function() {
            $.post(U('classroom/AdminOnlineCard/delCouponCard'), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
}

//导出卡券列表
admin.exportCoupon = function(explod) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : '';
    if (explod == '') {
        ui.error("还没数据喏����?");
        return false;
    }
    location.href = U('classroom/AdminEntityCard/exportCoupon') + "&explod=" + explod + "&ids=" + id;
};
/**
 * 禁用vip等级
 * @param _id
 * @param action
 * @returns {boolean}
 */
admin.closeVip = function(_id, type, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请��择你要禁用�?" + type);
        return false;
    }
    ui.confirm('确定要确认禁用此' + type + '�?', {
        yes: function() {
            $.post(U('classroom/' + action + '/closeVip'), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
}
/**
 * 启用vip等级
 * @param _id
 * @param action
 * @returns {boolean}
 */
admin.openVip = function(_id, type, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请��择你要启用�?" + type);
        return false;
    }
    ui.confirm('确定启用�?' + type + '�?', {
        yes: function() {
            $.post(U('classroom/' + action + '/closeVip'), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
/**
 * 删除讲师头衔
 * @Author   Martinsun<syh@sunyonghong.com>
 * @DateTime 2018-05-25
 */
admin.delVipAll = function(type, action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请��择你要删除�?" + type);
        return false;
    }
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post(U('classroom/' + action + '/delVip'), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//批量操作订单-假删�?
admin.delOrders = function(type) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请��择要操作的订单");
        return false;
    }
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post(U('classroom/AdminOrder/delOrders'), {
                ids: ids,
                type: type
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

//批量操作订单-真删�?
admin.realDeleteOrders = function(type,id) {

    var ids = ("undefined" == typeof(id) || id == '') ? admin.getChecked() : id;

    if (ids == '') {
        ui.error("请��择要操作的订单");
        return false;
    }
    ui.confirm('确定要执行此操作？删除后该学生将不能学习该课程且数据不可恢复�?', {
        yes: function() {
            $.post(U('classroom/AdminOrder/delOrders'), {
                ids: ids,
                type: type,
                del:'real',
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

/**
 * 逢�款审核��过
 * @param  integer id  认证ID
 * @param  integer status 认证状��?
 * @param  string info 认证资料
 * @return void
 */
admin.doThroughAudit = function(id, type) {
    if ("undefined" == typeof(id) || id == '') id = admin.getChecked();
    if (id == '') {
        ui.error('情��择要操作的内容');
        return false;
    }
    ui.box.load(U('classroom/AdminApplirefund/doThroughAudit') + '&id=' + id + '&type=' + type, '审核�?');
    return false;
};
/**
 * 逢�款驳回弹�?
 * @param integer id 驳回ID
 * @return void
 */
admin.doOverruleAudit = function(id, type) {
    if (typeof id === 'undefined') {
        return false;
    }
    ui.box.load(U('classroom/AdminApplirefund/doOverruleAudit') + '&id=' + id + '&type=' + type, '驳回理由');
    return false;
};

//导出分成报表
admin.exportResult = function(id, type) {
    if (id == '') {
        ui.error("还没有相关数�?");
        return false;
    }
    location.href = U('classroom/AdminSplit/splitExport') + '&id=' + id + '&type=' + type;
};
//处理讲师
admin.mzTeacherEdit = function(_id, action, title, type, category) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error('请��择�?' + title + '�?' + type);
        return false;
    }
    ui.confirm('确定�?' + title + '选中�?' + type + '�?', {
        yes: function() {
            $.post(U('classroom/AdminTeacher/' + action), {
                id: id,
                category: category
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
/** 删除点评 */
admin.delReview = function(_id, action, uid, ctime, review_description) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请��择删除的点�?");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminReview/' + action), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    })
}
//处理点评
admin.delReviewAll = function(action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请��择要删除的点评");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminReview/' + action), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//棢�查文库表单提�?
admin.checkLibrary = function(form) {
    if (form.title.value.replace(/^ +| +$/g, '') == '') {
        ui.error('文库名称不能为空');
        return false;
    }
    if ($('.mzTopLevel option:selected').val() <= 0) {
        ui.error('请��择文库分类');
        return false;
    }
    if (form.info.value.replace(/^ +| +$/g, '') == '') {
        ui.error('文库信息不能为空');
        return false;
    }
    if (form.price.value.replace(/^ +| +$/g, '') == '') {
        ui.error('文库价格不能为空');
        return false;
    }
    if (isNaN(form.price.value)) {
        ui.error('文库价格必须为数�?');
        return false;
    }
    return true;
};
//禁用文库
admin.closeLibrary = function(library_id) {
    if (library_id == '') {
        ui.error("请��择你要禁用的文�?");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminLibrary/closeLibrary'), {
                library_id: library_id
            }, function(msg) {
                if (msg.status == 0) {
                    ui.error(msg.info);
                } else {
                    ui.success(msg.info, {
                        end: function() {
                            window.location.href = window.location.href;
                        }
                    });
                }
            }, 'json');
        }
    });
};
//启用文库
admin.openLibrary = function(library_id) {
    if (library_id == '') {
        ui.error("请��择你要启用的文�?");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminLibrary/openLibrary'), {
                library_id: library_id
            }, function(msg) {
                if (msg.status == 0) {
                    ui.error(msg.info);
                } else {
                    ui.success(msg.info, {
                        end: function() {
                            window.location.href = window.location.href;
                        }
                    });
                }
            }, 'json');
        }
    });
};
//批量禁用--删除文库
admin.delLibraryAll = function(action, status) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请��择要禁用的文库");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminLibrary/' + action), {
                ids: ids,
                status: status
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//处理点评  (30,'closereview','隐藏','点评',1,'23333333333333333333',1529563077)
admin.mzReviewEdit = function(_id, action) { //,title,type
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    // if(id==''){
    //     ui.error(L('PUBLIC_SELECT_TITLE_TYPE',{'title':title,'type':type}));
    //     return false;
    // }
    $.post(U('classroom/AdminReview/' + action), {
        id: id
    }, function(msg) {
        admin.ajaxReload(msg);
    }, 'json');
};
//处理银行�?
admin.BankCardEdit = function(_id, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请��择删除的卡�?");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminCard/' + action), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//导出卡号列表
admin.exportCard = function() {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : '';
    location.href = U('classroom/AdminCard/export') + "&ids=" + id;
};
//批量删除学习记录
admin.delLearns = function(type) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请��择要删除的学习记录");
        return false;
    }
    ui.confirm("确定要进行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminLearnRecord/delLearn'), {
                id: ids,
                type: type
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

//批量审核提现
admin.doManyDispose=function(id){
    if('undefined' == typeof(id)||!id) id = admin.getChecked();
    if( id == '' ){
        ui.error('请��择要操作的记录');
        return false;
    }
    ui.confirm("此次操作只会审核提现到支付宝的申请，确定要执行此操作吗？", {
        yes: function() {
            $.post(U('classroom/AdminWithdraw/dispose'),{id:id},function(msg){
                if (msg.status == 0) {
                    ui.error(msg.info);
                } else {
                    ui.success(msg.info, {
                        end: function() {
                            setTimeout('window.location.reload()', 10000);

                            window.location.href = window.location.href;
                        }
                    });
                }
            },'json');
        }
    });
}


admin.SubmitCheck = function(id){

    if ( '' == $("input[name='name']").val() ){
        ui.error('请输入讲师姓�?');
        return false;
    }
    if(!id){
        var email = $("input[name='email']").val();
        var isEmail = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        if ( '' == email ){
            ui.error('请输入邮�?');
            return false;
        }else if( !( isEmail.test(email) ) ){
            ui.error('邮箱格式错误');
            return false;
        }

        var phone = $("input[name='phone']").val();
        var isPhone = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
        if ( '' == phone ){
            ui.error('请输入手机号');
            return false;
        }else if( !( isPhone.test(phone) ) ){
            ui.error('请输入正确的手机�?');
            return false;
        }

        var pass = $("input[name='password']").val();
        if ( '' == pass ){
            ui.error('请输入密�?');
            return false;
        }else if( pass.length < 6 || pass.length > 20){
            ui.error('密码长度�?6-20�?');
            return false;
        }
    }
}

//限时打折操作
admin.choiceVideo = function(obj) {
    $("#salbum").val('');
    $("#course_list").html('');
    $(".admin-kcid").html('');

    //$("#dl_video_category").html('');
    var html = '';
    var type = obj.value;
    var content = '';
    $.post( U('classroom/AdminDiscount/choiceVideo' ), {
        type:type
    }, function(txt) {
        if (txt.status == 1) {
            html = txt.html;
            if(type == 3){
                // $("#dl_album_category").children('dd').html('');
                $("#dl_album_category").children('dd').append(html);
            }
        }
    }, 'json');

    if(type == 3){
        $("#dl_album_category").show();
        $("#dl_video_category").hide();
    }else{
        $("#dl_video_category").show();
        $("#dl_album_category").hide();
        $("#dl_album_category").children('dd').html('');
    }
    // $("#dl_course_id").children('dd').html("<span>暂时没有课程数据</span>");
}

//限时打折操作
admin.hideCategory = function(obj) {
    $("#dl_album_category").hide();
    $("#dl_course_id").children('dd').html("<span>暂时没有课程数据</span>");

    //课程分类操作
    $("#dl_video_category,#dl_album_category").on("change",'.mzLevel',function(){
        //判断是否填写日期--未填错误提示
        var start_time= $("input[name='start_time']").val();
        var end_time  = $("input[name='end_time']").val();
        if(!start_time || !end_time){
            ui.error('请先填写日期');
            return false;
        }else{
            var stime = new Date(start_time);
            var etime = new Date(end_time);
            var time  = new Date();
            if(etime < time){
                ui.error('结束时间不能小于当前时间');
                return false;
            }
        }

        //var video_levelhidden = $("#video_levelhidden").val();
        var video_levelhidden = $(this).val();
        var video_type= $("input[name='course_type']:checked").val();
        $.ajax({
            type: 'POST',
            url:U('classroom/AdminDiscount/seachVideo'),
            data:{category:video_levelhidden,type:video_type},
            dataType:"json",
            cache: false,
            success: function(data){
                $("#dl_course_id").children('dd').html("");
                $("#dl_course_id").children('dd').append(data.html);
            }
        });
    });

    //判断课程是否参与活动
    $("#dl_course_id").on("click",'.vid_check',function(){
        var _this = $(this);
        var vid = _this.val();
        var video_type= $("input[name='course_type']:checked").val();
        var start_time= $("input[name='start_time']").val();
        var end_time  = $("input[name='end_time']").val();
        $.ajax({
            type: 'POST',
            url:U('classroom/AdminDiscount/checkVideo'),
            data:{vid:vid,type:video_type,start_time:start_time,end_time:end_time},
            dataType:"json",
            cache: false,
            success: function(data){
                if(data.status == 0){
                    _this.prop('checked',false);
                    ui.error(data.info);
                    return false;
                }
            }
        });
    });

    //查看更多
    $("#dl_course_id").on("click",'#show_more',function(){
        var video_levelhidden = $("#video_levelhidden").val();
        var video_type= $("input[name='course_type']:checked").val();
        var count = $(this).data('count');

        $.ajax({
            type: 'POST',
            url:U('classroom/AdminDiscount/seachVideo'),
            data:{category:video_levelhidden,type:video_type,p:count},
            dataType:"json",
            cache: false,
            success: function(data){
                $("#show_more").remove();
                $("#dl_course_id").children('dd').append(data.html);
            }
        });
    });

}

// 删除活动
admin.delEvents = function(id) {
    if(!id){
        id = admin.getChecked();
    }
    var id = ("undefined" == typeof(id) || id == '') ? admin.getChecked() : id;
    if (id == '') {
        ui.error("请��择你要删除的活�?");
        return false;
    }

    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post( U('classroom/AdminDiscount/delEvents' ), {
                ids:id
            }, function(txt) {
                if (txt.status == 0) {
                    ui.error(txt.info);
                } else {
                    ui.success(txt.info);
                    window.location.href = window.location.href;
                }
            }, 'json');
        }
    });
};

// 卡券发放操作--线上卡券
admin.hideCoupon = function() {
    var type = $("input[name='type']:checked").val();
    if(type == 1){
        $("#dl_user").hide();
        $("#dl_user_group").show();
    }else{
        $("#dl_user").show();
        $("#dl_user_group").hide();
    }
};

admin.choiceCouponType = function(obj) {
    var type = obj.value;
    if(type == 1){
        $("#dl_user").hide();
        $("#dl_user_group").show();
    }else{
        $("#dl_user").show();
        $("#dl_user_group").hide();
    }
};