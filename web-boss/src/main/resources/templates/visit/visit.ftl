
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="http://try.51eduline.com/apps/admin/_static/css/admin.css" rel="stylesheet" type="text/css">
    <script>
        /**
         * 全局变量
         */
        var SITE_URL  = 'http://try.51eduline.com';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'admin';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1682';
        var UID		  = '1682';
        var initNums  =  '140';
        // Js语言变量
        var LANG = new Array();
        var info = {icon:0,time:1800,btn:false,title:'',closeBtn:0};
        var success = {icon:1,time:1800,btn:false,title:'',closeBtn:0};
        var error = {icon:2,time:1800,btn:false,title:'',closeBtn:0};
    </script>
    <script type="text/javascript" src="../js/jquery-1.8.0.js"></script>

    <script type="text/javascript" src="../js/poi/echarts.min.js"></script>

    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
</head>
<body>
<style type="text/css">
    .tit_tab { margin: 10px 0; }
    .tit_tab input{ margin-top: 5px; }
</style>
<div id="container" class="so_main">
    <div class="form2">
        <!-- START TAB框 -->
        <div class="tit_tab">
            <ul>
                <li><a  href="javascript:void(0)" onclick="queryVisit(null,null,0)">今天</a></li><li><a  href="javascript:void(0)" onclick="queryVisit(null,null,0)">近七天</a></li><li><a  href="javascript:void(0)" onclick="queryVisit(null,null,0)">近一个月</a></li><li><a  href="javascript:void(0)" onclick="queryVisit(null,null,0)">近三个月</a></li>
                <li>
                    <input type="text" style="width:200px;height:12px;line-height:12px" readonly="readonly" onfocus="core.rcalendar(this,'full');" value="" id="start_ctime" class="s-txt" name="createDate">
                    -
                    <input type="text" style="width:200px;height:12px;line-height:12px" readonly="readonly" onfocus="core.rcalendar(this,'full');" value="" id="end_ctime" class="s-txt" name="endDate">
                    <input id="submit" value="查询" class="btn_b" style="height:24px" />
                </li>
            </ul>
        </div>
        <!-- END TAB框 -->
    </div>
    <!-- START LIST -->
    <div id="visitorCount_chart" style="width: 100%;height:300px;">
    </div>
    <div id="visitorCount_chart_pie" style="width: 50%;height:300px;margin: 0 auto;">
    </div>
    <script type="text/javascript">
        $(function(){

            queryVisit();

            $("#submit").click(function(){
                var createDate = $("input[name='createDate']").val();
                var endDate = $("input[name='endDate']").val();
                queryVisit(createDate,endDate,0);

            })

        });

        function queryVisit(createDate,endDate,iTime) {
            if(iTime==null){
                iTime=0;
            }

            // 折线
            var visitorCountEcharts = echarts.init(document.getElementById('visitorCount_chart'));
            // 饼图
            var visitorCountEchartsPie = echarts.init(document.getElementById('visitorCount_chart_pie'));

            $.ajax({
                url:"http://localhost:5880/statistics/findVisit",
                type:"post",
                data:{createDate:createDate,endDate:endDate,iTime:iTime},
                dataType:"json",
                success:function(data){
                    // 指定图表的配置项和数据
                    var option = {
                        title: {
                            text: '访问统计'
                        },
                        legend: {
                            data:['游客','登录用户']
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data:data.dataList
                        },
                        yAxis:{
                            type:'value',
                            minInterval:1,
                            axisLabel:{
                                formatter:'{value} 次'
                            }
                        },
                        series: [
                            {
                                name:'游客',
                                type:'line',
                                stack: '游客',
                                data:data.list,
                                markPoint : {
                                    symbolSize:40,
                                    data : [
                                        {type : 'max', name: '最高访问量'},
                                        {type : 'min', name: '最低访问量'}
                                    ]
                                },
                                smooth: true
                            },
                            {
                                name:'登录用户',
                                type:'line',
                                stack: '登录用户',
                                data:[0,7,12],
                                markPoint : {
                                    symbolSize:40,
                                    data : [
                                        {type : 'max', name: '最高访问量'},
                                        {type : 'min', name: '最低访问量'}
                                    ]
                                },
                                smooth: true
                            }
                        ],
                        tooltip: {
                            trigger: 'axis',
                            axisPointer : {
                                type : 'line',//shadow
                                lineStyle:{
                                    width:2,
                                    type:'dashed',
                                    color:'#66D7FF'
                                }
                            }

                        },
                        toolbox: {
                            feature: {
                                // dataZoom:{show:true},
                                mark:{show:true},
                                magicType:{
                                    type:['line','bar']
                                },
                                restore:{},
                                saveAsImage: {
                                    name:'访问统计'},

                            }
                        },
                        grid:{
                            show:true,
                            containLabel:false
                        },
                        color:['#5458c9','#1d96e8',  '#d4237a','#2aa515', '#e0620d','#11c0b6',  '#594d9c', '#f4ba2a']
                    };

                    // 使用刚指定的配置项和数据显示图表。
                    visitorCountEcharts.setOption(option);

                    // 饼图
                    var option = {
                        title : {
                            text: '访问统计分布情况',
                            x:'center'
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            orient: 'vertical',
                            left: 'left',
                            data: ['游客访问','登录用户']
                        },
                        series : [
                            {
                                name: '访问情况',
                                type: 'pie',
                                radius : '60%',
                                center: ['50%', '50%'],
                                data:JSON.parse('[{"name":"\u6e38\u5ba2\u8bbf\u95ee","value":"32"},{"name":"\u767b\u5f55\u7528\u6237","value":"16"}]'),
                                itemStyle: {
                                    emphasis: {
                                        shadowBlur: 10,
                                        shadowOffsetX: 0,
                                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                                    }
                                }
                            }
                        ],
                        color:['#1eb5af','#faa51c',  '#d4237a','#2aa515', '#e0620d','#11c0b6',  '#594d9c', '#f4ba2a']
                    };
                    visitorCountEchartsPie.setOption(option);
                },
                error:function(){
                    alert("错误");
                }
            });
        }
    </script></div>
<script type="text/javascript">

    /**
     * 初始化对象
     */
//表格样式

</script>

</body>
</html>