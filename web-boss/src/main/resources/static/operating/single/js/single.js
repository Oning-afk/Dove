//分页查询
admin.searchList = function(page){
    var url = "/operating/single/findSingleList?page="+page
    location.href = url
}

//删除
admin.delSingle = function(id){
    $.post('/operating/single/delSingle',{id:id},function () {
        var callback = "location.href = location.href";
        ui.success("操作成功");
        setTimeout(callback,1500);
    })
}

//批量删除
admin.delSingles = function(_id, type) {
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
            $.post('/operating/single/delSingles',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//新增或修改
admin.addSingle = function (operationConsult) {
    $.post('/operating/single/addSingle',(operationConsult),function () {
        location.href="/operating/single/findSingleList";
    })
}

//回显
admin.echoSingle = function (id) {
    location.href="/operating/single/echoSingle?id="+id
}