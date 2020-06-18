<template>
    <div class="">
        <ReportNav />
        <div class="bing elecen">
            <div>
             <ul class="nav-title-ul">
                 <li class="nav-title">
                     <span>姓名:</span><em>{{data[0].uname}}</em>
                     <span>性别:</span><em>{{data[0].sex}}</em>
                     <span>年龄:</span><em>{{data[0].age}}</em>
                     <span>科别:</span><em>{{data[0].division}}</em>
                     <span>诊断类型:</span><em>{{data[0].genre}}</em>
                     <router-link :to="'/ReportAdd?id='+data[0].report_id">
                     <span class="iconfont icon-qianbi" style="margin-left: 130px; color: red; margin-right:5px;"></span><em style="color: red; cursor: pointer;">修改信息</em>
                    </router-link>
                 </li>
                 <li style="line-height: 104px;">
                     <strong style="margin-right: 26px;">临床诊断:</strong><em>{{data[0].diagnosis}}</em>
                 </li>
                 <li>
                     <strong>大体检查</strong><em>{{data[0].examinat}}</em>
                 </li>
                 <li>
                    <strong>病理诊断</strong><em>{{data[0].pathology}}</em>
                 </li>
                 <li>
                    <strong>免疫组化</strong><em>{{data[0].immune}}</em>
                 </li>
                 <li>
                    <strong style="margin-left: 30px;">结果</strong><em>{{data[0].consequence}}</em>
                 </li>
                 <li>
                    <strong style="margin-left: 30px;">备注</strong><em>{{data[0].remark}}</em>
                 </li>
                 <hr>
                 <li class="bottom-list">
                     <span>报告:&nbsp;</span><em>张医生</em> 
                     <span>审核医生:&nbsp;</span><em>赵医生</em>
                     <span>报告时间:&nbsp;</span><em>{{data[0].times}}</em>
                     <router-link to="/Affix">
                     <span style=" display: inline-block; width: 90px; height: 30px;  line-height: 30px; text-align: center; cursor: pointer; color: white; background-color: #16dcb8;">查看附件</span>
                    </router-link>
                    </li>
                </ul>
            </div>
            <div class="change">

            </div>
        </div>
    </div>
</template>
<script>
    import ReportNav from './ReportNav.vue'
    export default {
        name: 'ReportDetail',
        components: {
            ReportNav,

        },
        data() {
            return {
               data:[{
                    age: 23,
                    consequence: "等待",
                    diagnosis: "头痛",
                    division: "外科",
                    examinat: "头、肝肾",
                    genre: "复诊",
                    img: null,
                    immune: "无",
                    pathology: "住院",
                    remark: "无",
                    report_id: 1,
                    sex: "男",
                    times: "2020-06-15T16:00:00.000Z",
                    uname: "张某"
               }]
            }
        },
        methods:{
            getData(){
                this.$axios.get(this.HOST+"/reDetail",{params:{id:this.$route.query.id}})
                .then(result=>{
                    console.log(result.data)
                    this.data=result.data
                })
                .catch(error=>{
                    console.log(error)
                })
                // console.log(this.$route.query.id)
            }
        },
        created(){
            this.getData()
        }
    }
</script>
<style>
    @import 'http://at.alicdn.com/t/font_1858868_4rw6ohqjgkc.css';

    .elecen {
        /* width: 89%; */
        width: 85%;
        height: 900px;
        background: rgba(255, 255, 255, 0.8);
        margin-left: 5%;
        margin-bottom: 30px;
        padding: 0 30px;
        position: relative;
    }

    .bing .icon-search::before {
        font-size: 20px;
    }

    .mycase {
        width: 170px;
        height: 48px;
        border-radius: 30px;
        margin-right: 20px;
        outline: none;
        border: 1px solid #999999;
    }

    .bing input::placeholder {
        text-align: center;
        margin: auto;
        font-size: 16px;
    }

    .change {
        margin-top: 30px;
    }
    .nav-title em{
        margin-right: 110px;
    }
    .nav-title span{
        color: #b9b9b9;
    }
    .nav-title-ul li{
        line-height: 100px;
        height: 100px;
    }
    .nav-title-ul strong{
        margin-right: 26px;
        text-decoration: none;
        margin-top: 30px;
        color: #333333;
        font-weight: normal;
    }
    .bottom-list em{
      margin-right: 200px;
    }
</style>