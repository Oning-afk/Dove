//分页查询
admin.searchList = function(page,id,offlineClassName,teacherName){
    var url = "/offline/class/findOfflineClassList?page="+page+"&isDel=0&offlineClassIsAudit=1"
    if("undefined" != typeof(id) && id != null && id != '' ){
        url +="&id="+id;
    }
    if("undefined" != typeof(offlineClassName) && offlineClassName != null && offlineClassName != '' ){
        url +="&offlineClassName="+offlineClassName;
    }
    if("undefined" != typeof(teacherName) && teacherName != null && teacherName != '' ){
        url +="&teacherName="+teacherName;
    }
    location.href = url
}

//新增或修改数据
admin.addOffline = function(offlineClass){
    $.post('/offline/class/addOffline',(offlineClass),function () {
        location.href="/offline/class/findOfflineClassList?isDel=0&offlineClassIsAudit=1"
    })
}

//跳转至修改页面
admin.echoOffline = function(id){
    location.href="/offline/class/echoOffline?id="+id
}