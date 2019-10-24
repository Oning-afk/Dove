//启用
admin.mzstartIntegralList = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/integral/updateIntegralToUp',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//批量启用
admin.startIntegralList = function() {
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
            $.post('/integral/updateIntegralToUp',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//禁用
admin.mzdelIntegralList = function(id) {
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/integral/updateIntegralToDown',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};

//批量禁用
admin.delIntegralList = function() {
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
            $.post('/integral/updateIntegralToDown',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};


//跳转至新增页面
admin.addIntegral = function() {
    location.href="/integral/toAddIntegral";
};

//新增或修改数据
admin.addIntegralAndup = function(IntegralBean){
    $.post('/integral/addIntegral',(IntegralBean),function () {
    })
}

