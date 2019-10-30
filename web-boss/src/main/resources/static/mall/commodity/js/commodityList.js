//批量删除
admin.delCouponCard = function(_id, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要删除的商品!");
        return false;
    }
    var ids = ""; //定义数组，用来记录列表id
    for (var i = 0; i < id.length; i++) {
        ids +=","+ id[i] ;
    }
    ids = ids.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/mall/delCommodity',{id:ids},function () {
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
            $.post('/mall/updateStateToUp',{id:id},function () {
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
        ui.error("请选择要启用的商品!");
        return false;
    }
    var id = ""; //定义数组，用来记录列表id
    for (var i = 0; i < ids.length; i++) {
        id +=","+ ids[i] ;
    }
    id = id.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('/mall/updateStateToUp',{id:id},function () {
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
            $.post('../mall/updateStateToDown',{id:id},function () {
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
        ui.error("请选择要禁用的商品!");
        return false;
    }
    var id = ""; //定义数组，用来记录列表id
    for (var i = 0; i < ids.length; i++) {
        id +=","+ ids[i] ;
    }
    id = id.substring(1)
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post('../mall/updateStateToDown',{id:id},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
};
//跳转至新增页面
admin.addCoupon = function() {
    location.href="/operating/toAddPage";
};
//跳转至新增页面
admin.addCommodity = function() {
    location.href="/mall/toAddPage";
};

//批量删除
admin.deleteCommodity = function(_id, type) {
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
            $.post('/mall/deleteCommodity',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}

//批量删除
admin.delOrder = function(_id, type) {
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
            $.post('/order/delGoodsOrder',{id:ids},function () {
                var callback = "location.href = location.href";
                ui.success("操作成功");
                setTimeout(callback,1500);
            })
        }
    });
}