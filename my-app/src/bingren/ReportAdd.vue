 <template>
        <div class="">
            <ReportNav />
            <div class="bing elecen">
                <div>
                    <form action="">
                 <ul class="nav-title-ul">
                     <li class="nav-title">
                         <span>姓名:</span><em>{{uname}}</em>
                         <span>性别:</span><em>{{sex}}</em>
                         <span>年龄:</span><em>{{age}}</em>
                         <span>科别:</span><em>{{division}}</em>
                         <span>诊断类型:</span><em>{{genre}}</em>
                         <em class="nav-title-em" style="margin-left: 50px; margin-right:10px;">取消</em><em class="nav-title-em" style="background-color: #3be1c3;" @click="dianji()">确定</em>
                         
                     </li>
                     <li>
                         <strong style="margin-right: 26px;">临床诊断:</strong><textarea v-model="diagnosis">双足畸形,皮下纤维脂肪增生</textarea>
                     </li>
                     <li>
                         <strong>大体检查:</strong><textarea v-model="examinat"> </textarea>
                     </li>
                     <li>
                        <strong>病理诊断:</strong><textarea v-model="pathology"></textarea>
                     </li>
                     <li>
                        <strong>免疫组化:</strong><textarea v-model="immune"> 因素。 2.疼痛的发作方式,自发痛,激发痛。 3...痛 病史采集要点: 1.引起疼痛的因素。 2.疼痛的发作方式,自发痛,激发痛。 3...</textarea>
                     </li>
                     <li>
                        <strong style="margin-left: 30px;">结果:</strong><textarea v-model="consequence"> 痛的因素。 2.疼痛的发作方式,自发痛,激发痛。 3...痛 病史采集要点: 1.引起疼痛的因素。 2.疼痛的发作方式,自发痛,激发痛。 3...</textarea>
                     </li>
                     <li>
                        <strong style="margin-left: 30px;">备注:</strong><textarea v-model="remark"></textarea>
                     </li>
                     <hr>
                     <li class="bottom-list">
                         <span>报告:&nbsp;</span><em>张医生</em> 
                         <span>审核医生:&nbsp;</span><em>赵医生</em>
                         <span>报告时间:&nbsp;</span><em>{{times}}</em>
                         <router-link to="/Affix">
                         <span style=" display: inline-block; width: 90px; height: 30px;  line-height: 30px; text-align: center; cursor: pointer; color: white; background-color: #16dcb8;">查看附件</span>
                        </router-link>
                    </li>
                    </ul>
                </form>
                </div>
                <div class="change">
    
                </div>
            </div>
        </div>
    </template>

<script>
    import ReportNav from './ReportNav.vue';
    export default {
        name:"ReportAdd",
        components:{
            ReportNav
        },
        data(){
            return{
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
            }
        },
        methods:{
            dianji(){
                this.$axios.post(this.HOST+'/reAddTwo',{
                    params:[
                        {id:this.$route.query.id},
                        {diagnosis:this.diagnosis},
                        {examinat:this.examinat},
                        {pathology:this.pathology},
                        {immune:this.immune},
                        {consequence:this.consequence},
                        {remark:this.remark}
                    ]
                })
                .then(result=>{
                    console.log(result)
                    this.$router.push({path: '/Report'})
                })
                .catch(error=>{
                    console.log(error)
                })
            },
            getData(){
                this.$axios.get(this.HOST+'/reAdd',{params:{id:this.$route.query.id}})
                .then(result=>{
                    console.log(result.data)
                    let data=result.data[0]
                    this.age=data.age
                    this.consequence=data.consequence
                    this.diagnosis=data.diagnosis
                    this.examinat=data.examinat
                    this.genre=data.genre
                    this.img=data.img
                    this.immune=data.immune
                    this.pathology=data.pathology
                    this.remark=data.remark
                    this.report_id=data.report_id
                    this.sex=data.sex
                    this.times=data.times
                    this.uname=data.uname
                })
                .catch(error=>{
                    console.log(error)
                })
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
    .nav-title-ul li textarea{
       width: 1128px;
       height: 84px;
       resize: none;
       outline: red;
       
    }
    .nav-title-ul strong{
        margin-right: 26px;
        text-decoration: none;
        color: #333333;
        font-weight: normal;
    }
    .bottom-list em{
      margin-right: 200px;
    }
    .nav-title-em{
        width: 86px;
        height: 36px;
        line-height: 36px;
        display: inline-block;
        background-color: #f96464;
        color: white;
        cursor: pointer;
        border-radius: 50px;
        text-align: center;
    }
</style>