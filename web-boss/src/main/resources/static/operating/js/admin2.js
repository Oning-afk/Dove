/**
 * 鍒犻櫎璁插笀
 * @param _id
 * @param action
 * @returns {boolean}
 */
admin.delTeacher = function (_id, action, title, category) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("璇烽€夋嫨浣犺鍒犻櫎鐨�" + title + "");
        return false;
    }

    ui.confirm('纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵', {
        yes: function() {
            $.post( U('classroom/AdminTeacher/'+action ), {
                ids:id,category:category
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

//鎵归噺鍒犻櫎璁插笀鐩稿叧
admin.delTeacherAll=function(action,category){
    var ids=admin.getChecked();
    ids = ("undefined"== typeof(ids)|| ids=='') ? admin.getChecked() : ids;
    if(ids==''){
        ui.error("璇烽€夋嫨瑕佸垹闄ょ殑璁插笀");
        return false;
    }

    ui.confirm('纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵', {
        yes: function() {
            $.post( U('classroom/AdminTeacher/'+action ), {
                ids:ids,category:category
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};

//绂佺敤 鐢ㄦ埛鍗″埜
admin.mzUserCardEdit = function(_id, action, title, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error('璇烽€夋嫨瑕佹搷浣滅殑鍗″埜');
        return false;
    }
    ui.confirm('纭畾瑕�' + title + '閫変腑鐨�' + type + '?', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                id: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//鎵归噺绂佺敤 鐢ㄦ埛鍗″埜
admin.delUserCardAll = function(action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵");
        return false;
    }
    ui.confirm('纭畾纭鍒犻櫎锛�', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//禁用优惠券
admin.mzCouponCardEdit = function(_id, action, title, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error('确定要禁用选中的' + title + '打折卡' + type);
        return false;
    }
    ui.confirm('操作成功' + title + '閫変腑鐨�' + type + '锛�', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                id: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//鍒犻櫎 璇剧▼浼樻儬鍒�
admin.mzdelcoupon = function(_id, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("璇烽€夋嫨瑕佸垹闄ょ殑鍗″埜");
        return false;
    }
    ui.confirm('纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
}
//跳转至新增页面
admin.addCoupon = function(action, type) {
    location.href = U('classroom/Admin' + action + '/' + type) + '&tabHash=' + type;
};
//禁用或启用
admin.delCouponAll = function(action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("请选择要禁用的卡券!");
        return false;
    }
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post(U('classroom/AdminUserCard/' + action), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//批量删除
admin.delCouponCard = function(_id, type) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("请选择要删除的卡券!");
        return false;
    }
    ui.confirm('确定要进行此操作吗？', {
        yes: function() {
            $.post(U('classroom/AdminOnlineCard/delCouponCard'), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
}

//瀵煎嚭鍗″埜鍒楄〃
admin.exportCoupon = function(explod) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : '';
    if (explod == '') {
        ui.error("杩樻病鏁版嵁鍠忋€傘€�");
        return false;
    }
    location.href = U('classroom/AdminEntityCard/exportCoupon') + "&explod=" + explod + "&ids=" + id;
};
/**
 * 绂佺敤vip绛夌骇
 * @param _id
 * @param action
 * @returns {boolean}
 */
admin.closeVip = function(_id, type, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("璇烽€夋嫨浣犺绂佺敤鐨�" + type);
        return false;
    }
    ui.confirm('纭畾瑕佺‘璁ょ鐢ㄦ' + type + '锛�', {
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
 * 鍚敤vip绛夌骇
 * @param _id
 * @param action
 * @returns {boolean}
 */
admin.openVip = function(_id, type, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("璇烽€夋嫨浣犺鍚敤鐨�" + type);
        return false;
    }
    ui.confirm('纭畾鍚敤姝�' + type + '锛�', {
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
 * 鍒犻櫎璁插笀澶磋
 * @Author   Martinsun<syh@sunyonghong.com>
 * @DateTime 2018-05-25
 */
admin.delVipAll = function(type, action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("璇烽€夋嫨浣犺鍒犻櫎鐨�" + type);
        return false;
    }
    ui.confirm('纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵', {
        yes: function() {
            $.post(U('classroom/' + action + '/delVip'), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//鎵归噺鎿嶄綔璁㈠崟-鍋囧垹闄�
admin.delOrders = function(type) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("璇烽€夋嫨瑕佹搷浣滅殑璁㈠崟");
        return false;
    }
    ui.confirm('纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵', {
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

//鎵归噺鎿嶄綔璁㈠崟-鐪熷垹闄�
admin.realDeleteOrders = function(type,id) {

    var ids = ("undefined" == typeof(id) || id == '') ? admin.getChecked() : id;

    if (ids == '') {
        ui.error("璇烽€夋嫨瑕佹搷浣滅殑璁㈠崟");
        return false;
    }
    ui.confirm('纭畾瑕佹墽琛屾鎿嶄綔锛熷垹闄ゅ悗璇ュ鐢熷皢涓嶈兘瀛︿範璇ヨ绋嬩笖鏁版嵁涓嶅彲鎭㈠锛�', {
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
 * 閫€娆惧鏍搁€氳繃
 * @param  integer id  璁よ瘉ID
 * @param  integer status 璁よ瘉鐘舵€�
 * @param  string info 璁よ瘉璧勬枡
 * @return void
 */
admin.doThroughAudit = function(id, type) {
    if ("undefined" == typeof(id) || id == '') id = admin.getChecked();
    if (id == '') {
        ui.error('鎯呴€夋嫨瑕佹搷浣滅殑鍐呭');
        return false;
    }
    ui.box.load(U('classroom/AdminApplirefund/doThroughAudit') + '&id=' + id + '&type=' + type, '瀹℃牳涓�');
    return false;
};
/**
 * 閫€娆鹃┏鍥炲脊绐�
 * @param integer id 椹冲洖ID
 * @return void
 */
admin.doOverruleAudit = function(id, type) {
    if (typeof id === 'undefined') {
        return false;
    }
    ui.box.load(U('classroom/AdminApplirefund/doOverruleAudit') + '&id=' + id + '&type=' + type, '椹冲洖鐞嗙敱');
    return false;
};

//瀵煎嚭鍒嗘垚鎶ヨ〃
admin.exportResult = function(id, type) {
    if (id == '') {
        ui.error("杩樻病鏈夌浉鍏虫暟鎹�");
        return false;
    }
    location.href = U('classroom/AdminSplit/splitExport') + '&id=' + id + '&type=' + type;
};
//澶勭悊璁插笀
admin.mzTeacherEdit = function(_id, action, title, type, category) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error('璇烽€夋嫨瑕�' + title + '鐨�' + type);
        return false;
    }
    ui.confirm('纭畾瑕�' + title + '閫変腑鐨�' + type + '锛�', {
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
/** 鍒犻櫎鐐硅瘎 */
admin.delReview = function(_id, action, uid, ctime, review_description) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("璇烽€夋嫨鍒犻櫎鐨勭偣璇�");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
        yes: function() {
            $.post(U('classroom/AdminReview/' + action), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    })
}
//澶勭悊鐐硅瘎
admin.delReviewAll = function(action) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("璇烽€夋嫨瑕佸垹闄ょ殑鐐硅瘎");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
        yes: function() {
            $.post(U('classroom/AdminReview/' + action), {
                ids: ids
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//妫€鏌ユ枃搴撹〃鍗曟彁浜�
admin.checkLibrary = function(form) {
    if (form.title.value.replace(/^ +| +$/g, '') == '') {
        ui.error('鏂囧簱鍚嶇О涓嶈兘涓虹┖');
        return false;
    }
    if ($('.mzTopLevel option:selected').val() <= 0) {
        ui.error('璇烽€夋嫨鏂囧簱鍒嗙被');
        return false;
    }
    if (form.info.value.replace(/^ +| +$/g, '') == '') {
        ui.error('鏂囧簱淇℃伅涓嶈兘涓虹┖');
        return false;
    }
    if (form.price.value.replace(/^ +| +$/g, '') == '') {
        ui.error('鏂囧簱浠锋牸涓嶈兘涓虹┖');
        return false;
    }
    if (isNaN(form.price.value)) {
        ui.error('鏂囧簱浠锋牸蹇呴』涓烘暟瀛�');
        return false;
    }
    return true;
};
//绂佺敤鏂囧簱
admin.closeLibrary = function(library_id) {
    if (library_id == '') {
        ui.error("璇烽€夋嫨浣犺绂佺敤鐨勬枃搴�");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
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
//鍚敤鏂囧簱
admin.openLibrary = function(library_id) {
    if (library_id == '') {
        ui.error("璇烽€夋嫨浣犺鍚敤鐨勬枃搴�");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
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
//鎵归噺绂佺敤--鍒犻櫎鏂囧簱
admin.delLibraryAll = function(action, status) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("璇烽€夋嫨瑕佺鐢ㄧ殑鏂囧簱");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
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
//澶勭悊鐐硅瘎  (30,'closereview','闅愯棌','鐐硅瘎',1,'23333333333333333333',1529563077)
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
//澶勭悊閾惰鍗�
admin.BankCardEdit = function(_id, action) {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : _id;
    if (id == '') {
        ui.error("璇烽€夋嫨鍒犻櫎鐨勫崱鍙�");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
        yes: function() {
            $.post(U('classroom/AdminCard/' + action), {
                ids: id
            }, function(msg) {
                admin.ajaxReload(msg);
            }, 'json');
        }
    });
};
//瀵煎嚭鍗″彿鍒楄〃
admin.exportCard = function() {
    var id = ("undefined" == typeof(_id) || _id == '') ? admin.getChecked() : '';
    location.href = U('classroom/AdminCard/export') + "&ids=" + id;
};
//鎵归噺鍒犻櫎瀛︿範璁板綍
admin.delLearns = function(type) {
    var ids = admin.getChecked();
    ids = ("undefined" == typeof(ids) || ids == '') ? admin.getChecked() : ids;
    if (ids == '') {
        ui.error("璇烽€夋嫨瑕佸垹闄ょ殑瀛︿範璁板綍");
        return false;
    }
    ui.confirm("纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵", {
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

//鎵归噺瀹℃牳鎻愮幇
admin.doManyDispose=function(id){
    if('undefined' == typeof(id)||!id) id = admin.getChecked();
    if( id == '' ){
        ui.error('璇烽€夋嫨瑕佹搷浣滅殑璁板綍');
        return false;
    }
    ui.confirm("姝ゆ鎿嶄綔鍙細瀹℃牳鎻愮幇鍒版敮浠樺疂鐨勭敵璇凤紝纭畾瑕佹墽琛屾鎿嶄綔鍚楋紵", {
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
        ui.error('璇疯緭鍏ヨ甯堝鍚�');
        return false;
    }
    if(!id){
        var email = $("input[name='email']").val();
        var isEmail = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        if ( '' == email ){
            ui.error('璇疯緭鍏ラ偖绠�');
            return false;
        }else if( !( isEmail.test(email) ) ){
            ui.error('閭鏍煎紡閿欒');
            return false;
        }

        var phone = $("input[name='phone']").val();
        var isPhone = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
        if ( '' == phone ){
            ui.error('璇疯緭鍏ユ墜鏈哄彿');
            return false;
        }else if( !( isPhone.test(phone) ) ){
            ui.error('璇疯緭鍏ユ纭殑鎵嬫満鍙�');
            return false;
        }

        var pass = $("input[name='password']").val();
        if ( '' == pass ){
            ui.error('璇疯緭鍏ュ瘑鐮�');
            return false;
        }else if( pass.length < 6 || pass.length > 20){
            ui.error('瀵嗙爜闀垮害涓�6-20浣�');
            return false;
        }
    }
}

//闄愭椂鎵撴姌鎿嶄綔
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
    // $("#dl_course_id").children('dd').html("<span>鏆傛椂娌℃湁璇剧▼鏁版嵁</span>");
}

//闄愭椂鎵撴姌鎿嶄綔
admin.hideCategory = function(obj) {
    $("#dl_album_category").hide();
    $("#dl_course_id").children('dd').html("<span>鏆傛椂娌℃湁璇剧▼鏁版嵁</span>");

    //璇剧▼鍒嗙被鎿嶄綔
    $("#dl_video_category,#dl_album_category").on("change",'.mzLevel',function(){
        //鍒ゆ柇鏄惁濉啓鏃ユ湡--鏈～閿欒鎻愮ず
        var start_time= $("input[name='start_time']").val();
        var end_time  = $("input[name='end_time']").val();
        if(!start_time || !end_time){
            ui.error('璇峰厛濉啓鏃ユ湡');
            return false;
        }else{
            var stime = new Date(start_time);
            var etime = new Date(end_time);
            var time  = new Date();
            if(etime < time){
                ui.error('缁撴潫鏃堕棿涓嶈兘灏忎簬褰撳墠鏃堕棿');
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

    //鍒ゆ柇璇剧▼鏄惁鍙備笌娲诲姩
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

    //鏌ョ湅鏇村
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

// 鍒犻櫎娲诲姩
admin.delEvents = function(id) {
    if(!id){
        id = admin.getChecked();
    }
    var id = ("undefined" == typeof(id) || id == '') ? admin.getChecked() : id;
    if (id == '') {
        ui.error("璇烽€夋嫨浣犺鍒犻櫎鐨勬椿鍔�");
        return false;
    }

    ui.confirm('纭畾瑕佽繘琛屾鎿嶄綔鍚楋紵', {
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

// 鍗″埜鍙戞斁鎿嶄綔--绾夸笂鍗″埜
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