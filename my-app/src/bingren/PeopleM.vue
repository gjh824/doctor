<template>
<!-- 详情病例 右侧除上部 -->
<div class="g_Aa_big_div">
    <div>
        <div class="HeaNav g_pm_pM">
            个人信息
            <!-- <router-link to=""></router-link> -->
        </div>
    </div>
    <div class="elecen">
        <div class="g_ch_div">
            <h2 class="g_ch_h">我的信息</h2>
            <div class="g_ch_md"><span class="fa fa-pencil" @click="cloce"> 修改信息</span></div>
        </div>
        <div class="g_div">
            <form action="" class="g_cb_form" @submit.prevent>
                <div class="g_line g_lin"></div>
                <div class="g_lineT g_lin"></div>
                <div class="g_cb_d">
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">患者姓名</p>
                        <input type="text" value=""   v-model="uname" class="g_cb_inp" :readonly='isreadonly'>
                    </div>
                    <div class="g_cb_d_si">
                        <p class="g_cb_p">性别</p>
                        <select v-model="sex" name="" id=""  class="g_cb_in" :disabled='isreadonly'>
                            <option value="1">男</option>
                            <option value="0">女</option>
                        </select>
                    </div>
                    <!-- <div class="g_cb_d_si g_si">
                        <p class="g_cb_p">年龄</p>
                        <input type="text" class="g_cb_in">
                    </div> -->
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">就诊日期</p>
                        <div class="g_nyr">
                            <select name="" id="" v-model="year"  class="g_cb_i" :disabled='isreadonly'>
                                <option value="2020">2020</option>
                                <option value="2019">2019</option>
                                <option value="2019">2019</option>
                            </select>
                            <span>年</span>
                            <select name="" id="" v-model="month" class="g_cb_i" :disabled='isreadonly'>
                                <option value="12">12</option>
                                <option value="11">11</option>
                                <option value="10">10</option>
                            </select>
                            <span>月</span>
                        </div>
                    </div>
                    <div class="g_cb_d_side g_pm_side">
                        <p class="g_cb_p">联系电话</p>
                        <input type="text" v-model="tl" class="g_cb_inp" :readonly='isreadonly'>
                    </div>
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">预计出院日期</p>
                        <input type="text" v-model="predictdate"   class="g_cb_inp" :readonly='isreadonly'>
                    </div>
                </div>
                <div class="g_cb_di">
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">病床号码</p>
                        <input type="text" v-model="hospitalte" class="g_cb_inp" :readonly='isreadonly'>
                    </div>
                    <div class="g_cb_d_si g_si">
                        <p class="g_cb_p">年龄</p>
                        <input type="text" v-model="age" class="g_cb_in" :readonly='isreadonly'>
                    </div>
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">医院地址</p>
                        <div class="g_nyr">
                            <select name="" v-model="hospsitepro" id=""  class="g_cb_i" :disabled='isreadonly'>
                                <option value="河南">河南</option>
                                <option value="北京">北京</option>
                                <option value="上海">上海</option>
                            </select>
                            <span>省</span>
                            <select name="" v-model="hospsitecity" id=""  class="g_cb_i" :disabled='isreadonly'>
                                <option value="郑州">郑州</option>
                                <option value="北京">北京</option>
                                <option value="上海">上海</option>
                            </select>
                            <span>市</span>
                        </div>
                    </div>
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">所属科室</p>
                        <input type="text" v-model="deppartment" class="g_cb_inp" :readonly='isreadonly'>
                    </div>
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">医院地址</p>
                        <input type="text" v-model="hospsite" class="g_cb_inp" :readonly='isreadonly'>
                    </div>
                </div>
                <div class="g_cb_div">
                    <div>
                        <p class="g_cb_p">医生简介</p>
                        <textarea name="" v-model="docinfo" id="medication" cols="30" rows="10"  class="g_cb_inpR" :readonly='isreadonly'></textarea>
                    </div>
                    <div>
                        <p class="g_cb_p">工作经历</p>
                        <textarea name="" v-model="workexp" id="medication" cols="30" rows="10"  class="g_cb_inpR beizhu" :readonly='isreadonly'></textarea>
                    </div>
                    <div>
                        <p class="g_cb_p">相关证明上传</p>
                        <!-- <textarea name="" id="medication" cols="30" rows="10"  class="g_cb_inpR"></textarea> -->
                        <input type="file"   name="" id="medication" class="g_cb_inpR fu_tu" :readonly='isreadonly'>
                        <div class="tu"><img src="../assets/image/updata.png" alt=""></div>
                    </div>
                </div>
                <div class="g_btn">
                    <button class="btn_o g_bt" @click="sour">保存</button><button class="btn_t g_bt" @click="cancel">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>
</template>
<script>
export default {
    name:'AddCase',
    data() {
        return {
            isreadonly:true,
            message:'',
            uname:'',
            sex:'',
            year:'',
            month:'',
            tl:'',
            predictdate:'',
            hospitalte:'',
            age:'',
            hospsitepro:'',
            hospsitecity:'',
            deppartment:'',
            hospsite:'',
            docinfo:'',
            workexp:'',
            relevant:''

        }
    },
    methods: {
        //创建表的时候把里面的内容放在表里面
        msgInfo(){
            this.$axios.post('http://localhost:3000/doctor/msgInfo',{})
            .then(result=>{
                //从后端传过来的东西
                console.log(result);
                this.message=result.data
                console.log(this.message.uname);
                this.uname=this.message.uname
                this.sex=this.message.sex
                this.year=this.message.year
                this.month=this.message.month
                this.tl=this.message.tl
                this.predictdate=this.message.predictdate
                this.hospitalte=this.message.hospitalte
                this.age=this.message.age
                this.hospsitepro=this.message.hospsitepro
                this.hospsitecity=this.message.hospsitecity
                this.deppartment=this.message.deppartment
                this.hospsite=this.message.hospsite
                this.docinfo=this.message.docinfo
                this.workexp=this.message.workexp
                this.relevant=this.message.relevant
             })
            .catch(result=>{
                console.log(result);
                
            })
        },
        cloce(){
            let btn=document.querySelector('.g_btn')
            btn.style.display='block'
            let span=document.querySelector('.fa-pencil')
            span.style.display='none'
            // let inp=document.querySelectorAll('input')
            this.isreadonly=false
        },
        cancel(){
            let btn=document.querySelector('.g_btn')
            btn.style.display='none'
            let span=document.querySelector('.fa-pencil')
            span.style.display='block'
        },
        
        sour(){
            alert('要保存的信息')
            let btn=document.querySelector('.g_btn')
            btn.style.display='none'
            let span=document.querySelector('.fa-pencil')
            span.style.display='block'
            this.isreadonly=true
            this.$axios.post('http://localhost:3000/doctor/save',
            {
                uname:this.uname,
                sex:this.sex,
                year:this.year,
                month:this.month,
                tl:this.tl,
                predictdate:this.predictdate,
                hospitalte:this.hospitalte,
                age:this.age,
                hospsitepro:this.hospsitepro,
                hospsitecity:this.hospsitecity,
                deppartment:this.deppartment,
                hospsite:this.hospsite,
                docinfo:this.docinfo,
                workexp:this.workexp,
                relevant:this.relevant
            })
            .then(result=>{
                console.log('输入成功');
                
            })
            .catch(result=>{
                console.log('传送失败');
                
            })
        }
    },
    created(){
        this.msgInfo()
    }
}
</script>
<style scoped>
    @import '../assets/css/AddCase.css';
    .g_btn{
        display: none;
    }
    .g_ih_inp_div{
        height: 111px;
    }
    /* form.g_cb_form input,textarea,select{
    background: #fff;
    } */
    .g_pm_pM{
        background:linear-gradient(to right,#2dc4de,#16dcb9);
    }
    /* .g_pm_pM a{
        color: #fff;
    } */
    .g_si{
        margin-left: 0;
    }
    .g_pm_side{
        height: 104px;
    }
</style>