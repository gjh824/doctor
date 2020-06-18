<template>
    <div>
        <table class="g_hs_tab">
            <tr class="g_tab_tou">
                <th><input type="checkbox" name="" id=""></th>
                <th>序号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>就诊科室</th>
                <th>省</th>
                <th>市</th>
                <th>就诊科室</th>
                <th>诊断类型</th>
                <th>就诊时间</th>
                <th>操作</th>
            </tr>
            <tr class="g_tr" v-for="(item,k) in tab_info" :key="k">
                <td><input type="checkbox" name="" id=""></td>
                <td>{{item.info_id}}</td>
                <td>{{item.info_name}}</td>
                <td>{{item.info_sex}}</td>
                <td>{{item.info_age}}</td>
                <td>{{item.info_office}}</td>
                <td>{{item.info_site}}</td>
                <td>{{item.info_address}}</td>
                <td>{{item.info_clinic}}</td>
                <td>{{item.info_examine}}</td>
                <td>{{item.info_time}}</td>
                <td><router-link to="/bdrecord" class="g_tab_a"><span>{{item.info_detail}}</span></router-link></td>
            </tr>
        </table>
    </div>
</template>
<script>
export default {
    name:'HistorySheet',
    data() {
        return {
            tab_info:[{
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            {
                info_id:'序号',
                info_name:'刘德华',
                info_sex:'男',
                info_age:'40',
                info_office:'外科',
                info_site:'河南',
                info_address:'郑州',
                info_clinic:'外科',
                info_examine:'检查/诊断',
                info_time:'2018-12-4',
                info_detail:'查看详情'
            },
            ]
        }
    },
}
</script>
<style scoped>
    .g_hs_tab{
        width: 100%;
        height: 100%;
        border-collapse: collapse;
    }
    .g_tab_tou{
        color: #999999;
        font-size: 12px;
    }
    .g_hs_tab tr{
        text-align: center;
    }
    .g_tr{
        border-bottom: 1px solid #dddddd;
        height: 65px;
        line-height: 65px;
        font-size: 14px;
        color: #333333;
    }
    .g_tab_a{
        background: #16dcb8;
        color: #fff;
        display: inline-block;
        height: 20px;
        line-height: 20px;
        font-size: 12px;
        border-radius: 3px;
        padding: 3px;
    }
    .g_tab_a:hover{
        background: #fff;
        border:1px solid #16dcb8;
        color: #16dcb8;
        padding: 2px;
    }
</style>