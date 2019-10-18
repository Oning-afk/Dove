//分页查询
admin.searchList = function(page,type,id,institutionsId,cardVoucherNo,cardRecharge){
    var url = "/operating/card/findCardVoucher?page="+page
    if("undefined" != typeof(id) && id != null && id != '' ){
        url +="&id="+id;
    }
    if("undefined" != typeof(type) && type != null && type != '' ){
        url +="&cardVoucherType="+type;
    }
    if("undefined" != typeof(institutionsId) && institutionsId != null && institutionsId != '' ){
        url +="&institutionsId="+institutionsId;
    }
    if("undefined" != typeof(cardVoucherNo) && cardVoucherNo != null && cardVoucherNo != '' ){
        url +="&cardVoucherNo="+cardVoucherNo;
    }if("undefined" != typeof(cardRecharge) && cardRecharge != null && cardRecharge != '' ){
        url +="&cardRecharge="+cardRecharge;
    }
    location.href = url
}

//发放记录分页查询
admin.searchLogsList = function(page,id){
    var url = "/operating/card/findCardLog?page="+page
    if("undefined" != typeof(id) && id != null && id != '' ){
        url +="&id="+id;
    }
    location.href = url
}

//跳转至新增页面
admin.addCoupon = function(type) {
    location.href="/operating/card/toAddPage?type="+type
};

//新增或修改数据
admin.addCard = function(cardVoucher){
    $.post('/operating/card/addCardVoucher',(cardVoucher),function () {
    })
}

//跳转至修改页面
admin.echoCard = function(id){
    location.href="/operating/card/echoCard?id="+id
}

//删除
admin.mzdelCouponCard = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/delCardVoucher',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//批量删除
admin.delCouponCard = function(_id, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要删除的卡券!");
        return false;
    }
    var ids = ""; //定义数组，用来记录列表id
    for (var i = 0; i < id.length; i++) {
        ids +=","+ id[i] ;
    }
    ids = ids.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/delCardVoucher',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//启用
admin.mzstartCouponAll = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/updateStatusToUp',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//批量启用
admin.startCouponAll = function() {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请选择要启用的卡券!");
        return false;
    }
    var id = ""; //定义数组，用来记录列表id
    for (var i = 0; i < ids.length; i++) {
        id +=","+ ids[i] ;
    }
    id = id.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/updateStatusToUp',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//禁用
admin.mzdelCouponAll = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/updateStatusToDown',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//批量禁用
admin.delCouponAll = function() {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请选择要禁用的卡券!");
        return false;
    }
    var id = ""; //定义数组，用来记录列表id
    for (var i = 0; i < ids.length; i++) {
        id +=","+ ids[i] ;
    }
    id = id.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/updateStatusToDown',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//导出卡券列表
admin.exportCoupon = function(explod) {
    $.post('/operating/card/exportCardVoucher',(explod),function (result) {

    })
};

//删除卡券发放记录
admin.mzdelCardLogs = function(ids){
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/delCardLogs',{ids:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//批量删除卡券发放记录
admin.delCardLogs = function(_id,type){
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要删除的卡券!");
        return false;
    }
    var ids = ""; //定义数组，用来记录列表id
    for (var i = 0; i < id.length; i++) {
        ids +=","+ id[i] ;
    }
    ids = ids.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/delCardLogs',{ids:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//恢复卡券发放记录
admin.mzRestoreCardLogs = function(ids){
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/card/restoreCardLog',{ids:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

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