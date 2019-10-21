//分页查询
admin.searchList = function(page,id,title,type){
    var url = "/operating/content/findConsultingList?page="+page
    if("undefined" != typeof(id) && id != null && id != '' ){
        url +="&id="+id;
    }
    if("undefined" != typeof(type) && type != null && type != '' ){
        url +="&consultType="+type;
    }
    if("undefined" != typeof(title) && title != null && title != '' ){
        url +="&title="+title;
    }
    location.href = url
}

//跳转至新增页面
admin.addCoupon = function() {
    location.href="/operating/content/toAddPage"
};

//新增或修改数据
admin.addCard = function(operationConsult){
    $.post('/operating/content/addConsult',(operationConsult),function () {
        location.href="/operating/content/findConsultingList";
    })
}

//跳转至修改页面
admin.echoCard = function(id){
    location.href="/operating/content/echoConsult?id="+id
}

//批量删除
admin.delConsult = function(_id, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要删除的咨询!");
        return false;
    }
    var ids = ""; //定义数组，用来记录列表id
    for (var i = 0; i < id.length; i++) {
        ids +=","+ id[i] ;
    }
    ids = ids.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/content/deleteConsult',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//取消推荐
admin.updateDownRecommended = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/content/updateDownRecommended',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};


//设为推荐
admin.updateToRecommended = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/content/updateToRecommended',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//新增或修改
admin.addConsult = function (operationConsult) {
    $.post('/operating/content/addOperationConsult',(operationConsult),function () {
        location.href="/operating/content/findConsultingList";
    })
}

//回显
admin.echoConsult = function (id) {
    location.href="/operating/content/echoConsult?id="+id
}