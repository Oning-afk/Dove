//分页查询
admin.searchList = function(page,userId,dialogueContent,dialogueUser,isDel){
    var url = "/operating/message/findMessagesList?page="+page
    if("undefined" != typeof(userId) && userId != null && userId != '' ){
        url +="&userId="+userId;
    }
    if("undefined" != typeof(dialogueContent) && dialogueContent != null && dialogueContent != '' ){
        url +="&dialogueContent="+dialogueContent;
    }
    if("undefined" != typeof(dialogueUser) && dialogueUser != null && dialogueUser != '' ){
        url +="&dialogueUser="+dialogueUser;
    }
    if("undefined" != typeof(isDel) && isDel != null && isDel != '' ){
        url +="&isDel="+isDel;
    }
    location.href = url
}

//删除-回收站
admin.updateToRecycle = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/message/updateToRecycle',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//批量删除-回收站
admin.updateToRecycles = function(_id, type) {
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
            $.post('/operating/message/updateToRecycle',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//恢复
admin.updateToBack = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/operating/message/updateToBack',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//批量彻底删除
admin.deleteMessages = function() {
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
            $.post('/operating/message/deleteMessages',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};