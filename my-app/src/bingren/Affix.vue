<template>
 <div>
    <ReportNav />

    <div class="bing elecen">
         <div>
         <ul class="nav-title-ul">
             <li class="nav-title">
                 <span>姓名:</span><em>张某某</em>
                 <span>性别:</span><em>男</em>
                 <span>年龄:</span><em>50</em>
                 <span>类型:</span><em>复诊</em>
                 <span>时间:</span><em>2018/6/6</em>
                 <router-link to="/ReportAdd">
                 <span class="iconfont icon-qianbi" style="margin-left: 130px; color: red; margin-right:10px;"></span><em style="color: red; cursor: pointer;">修改信息</em>
                </router-link>
             </li>
        </ul>
        <div>
            <img style="width:1130px;" src="../assets/image/bsgg.gif" alt="">
        </div>
    </div>
</div>
</div>
</template>
<script>
    import  ReportNav from './ReportNav.vue'
    export default {
        name: 'ReportDetail',
        components: {
            ReportNav,

        },}
</script>