<template>
    <div>
        <table>
            <tr class="g_tab_tou">
                <th><input type="checkbox" name="" id=""></th>
                <th>序号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>就诊科室</th>
                <th>诊断类型</th>
                <th>检查时间</th>
                <th>检查项目</th>
                <th>操作</th>
            </tr>
            <tr class="g_tr" v-for="(item,k) in msg" :key="k">
                <td><input type="checkbox" name="" id=""></td>
                <td>{{item.report_xh}}</td>
                <td>{{item.uname}}</td>
                <td>{{item.sex}}</td>
                <td>{{item.age}}</td>
                <td>{{item.division}}</td>
                <td>{{item.genre}}</td>
                <td>{{item.times}}</td>
                <td>{{item.examinat}}</td>
                <td><router-link :to="'/ReportDetail?id='+item.report_id" class="g_tab_a"><span>查看详情</span></router-link></td>
            </tr>
        </table>
    </div>
</template>
<script>
  
export default {
    name:'SheetReport',
    props:['msg'],
    data() {
        return {
            
        }
    },
     methods:{
        //  reDetail(id){
        //      this.$axios.get(this.HOST+'/reDetail',{params:{id:id}})
        //      .then(result=>{
        //          console.log()
        //      })
        //  }
     }
}
</script>
<style scoped>
    table{
        width: 100%;
        height: 100%;
        border-collapse: collapse;
    }
    .g_tab_tou{
        color: #999999;
        font-size: 12px;
    }
    tr{
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