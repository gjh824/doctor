<template>
    <div class="">
        <ReportNav />
        <div class="bing elecen" >
            <div style="padding-top:40px;">
                 <form action="">
                     <input class="mycase" type="text" placeholder="请输入患者名">
                     <input class="mycase" type="date" value="请输入检查日期">
                     <input class="mycase" type="text" placeholder="请输入检查项目">
                     <button style=" margin-bottom: 50px; outline: none; width: 40px;height: 40px; border-style: none; background-color:#16dcb8; border-radius: 50%" ><span  style=" color: white;" class="iconfont icon-search"></span></button>
                     <ReportSheet :msg='msg'></ReportSheet>
                 </form>
             </div>
             <div class="change">
                <Dele></Dele> 
                <fenye :data1="infosa" @cd='msg=$event' @ef='msg=$event' />
              </div>
        </div>
    </div>
</template>
<script>
    import fenye from './fenye'     
    import ReportNav from './ReportNav'
    import ReportSheet from './ReportSheet.vue'
    import Dele from './Dele.vue'
    export default {
        name:'Report',
        components:{
            ReportNav,
            ReportSheet,
            Dele,
            fenye
        },
        data() {
            return {
                msg:'',
                infosa:{
                    pag:'',//{'page':i+1}
                    url:'http://localhost:3000/doctor/rePag'
                }
            }
        },
        methods:{
            // 初始 获得 病人 数据
            getreport(){
                this.$axios.get(this.HOST+'/reDefault')
                .then(response=>{
                    let count=Math.ceil(response.data[0].count/10)
                    let list=[]
                    for(let i=0;i<count;i++){
                        list.push({'page':i+1})
                    }
                    this.infosa.pag=list
                })
                .catch(error=>{
                    console.log(error)
                })
                this.$axios.get(this.HOST+'/rePag',{params:{page:0}})
                .then(result=>{
                    this.msg=result.data
                    // console.log(this.msg)
                })
            },
        },
        created(){
            this.getreport()
        }
       
}
</script>
<style scoped>
    @import 'http://at.alicdn.com/t/font_1858868_7tw20if79g3.css';
    .elecen{
        /* width: 89%; */
        width: 85%;
        height: 900px;
        background: rgba(255, 255, 255, 0.8);
        margin-left: 5%;
        margin-bottom: 30px;
        padding:0 30px;
        /* position: relative; */
    }
    .bing .icon-search::before{
        font-size: 20px;
    }
    .mycase{
        width: 170px;
        height: 48px;
        border-radius: 30px;
        margin-right: 20px;
        outline: none;
        border: 1px solid #999999;
    }
    .bing input::placeholder{
        text-align: center;
        margin: auto;
        font-size: 16px;
    }
    .change{
        margin-top: 30px;
        /* margin-top: 10px;
        width: 100%;
        position: absolute;
        left: 100px;
        bottom: 120px; */
    }
</style>