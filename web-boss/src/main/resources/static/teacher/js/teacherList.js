//分页查询
admin.searchList = function(page,name,type){
    var url = "/teacher/findTeacherList?page="+page
    if("undefined" != typeof(name) && name != null && name != '' ){
        url +="&name="+name;
    }
    if("undefined" != typeof(type) && type != null && type != '' ){
        url +="&type="+type;
    }
    location.href = url
}

//通过审核
admin.updateToAllowed = function(id){
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/teacher/updateToAllowed',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//拒绝审核
admin.updateToRefused = function(id){
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/teacher/updateToRefused',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//批量通过审核
admin.updateAllToAllowed = function(_id) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要审核的讲师!");
        return false;
    }
    var ids = ""; //定义数组，用来记录列表id
    for (var i = 0; i < id.length; i++) {
        ids +=","+ id[i] ;
    }
    ids = ids.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/teacher/updateToAllowed',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//批量拒绝审核
admin.updateAllToRefused = function(_id) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要审核的讲师!");
        return false;
    }
    var ids = ""; //定义数组，用来记录列表id
    for (var i = 0; i < id.length; i++) {
        ids +=","+ id[i] ;
    }
    ids = ids.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/teacher/updateToRefused',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}