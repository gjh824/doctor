<template>
    <div>
        <div>
            <div class="HeaNav">
                <router-link to="">处方管理</router-link>
            </div>
        </div>
        <div class="elecen">
            <div class="bing" >
                <!-- inp 框 -->
                <form action="" class="g_iH_form">
                    <div class="g_inp"><input type="text" name="" placeholder="请输入用户姓名"></div>
                    <div class="g_inp g_inp_cen">
                        <!-- <input type="date" name="" placeholder="选择就诊时间"> -->
                        <select name="" >
                            <option hidden>请选择住院状态</option>
                            <option value="0">已住院</option>
                            <option value="1">未住院</option>
                            <option value="2">预约住院</option>
                        </select>
                    </div>
                    <div class="g_inp"><input type="text" name="" placeholder="选择病床号"></div>
                    <div class="g_inp g_inp_sp"><span class="fa fa-search"></span></div>
                </form>
                <table class="g_hs_tab">
                    <tr class="g_tab_tou">
                        <th><input type="checkbox" class="checkbox" disabled @click="EMRallChoose"></th>
                        <th>住院号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>病床号</th>
                        <th>护士</th>
                        <th>科室</th>
                        <th>日期</th>
                        <th class="g_Rd_th">处方</th>
                        <th>操作</th>
                    </tr>
                    <tr class="g_tr" v-for="(item,k) in msg" :key="k">
                        <td><input type="checkbox" class="checkbox" disabled @click="EMRoneChoose(k,item.pre_id)"></td>
                        <td>{{item.zyh}}</td>
                        <td>{{item.xm}}</td>
                        <td>{{item.xb}}</td>
                        <td>{{item.nl}}</td>
                        <td>{{item.bch}}</td>
                        <td>{{item.hs}}</td>
                        <td>{{item.ks}}</td>
                        <td>{{item.rq}}</td>
                        <td class="g_Rd_td">{{item.cf}}</td>
                        <td><router-link to="" class="g_tab_a"><span class="fa fa-pencil" @click="change(item.pre_id,k)"></span></router-link><router-link to="" class="g_tab_a"><span class="fa fa-close" @click="dele(k,item.pre_id)"></span></router-link></td>
                    </tr>
                </table>
                <div class="change">
                    <div class="g_dele">
                        <a @click="EMRmanyDele"><span class="fa fa-trash"></span>批量删除</a>
                    </div>
                    <fenye :data1="infosa" @cd='msg=$event' @ef='msg=$event'/>
                </div>
                <!-- <cRecipe class="cRecipe"></cRecipe> -->
                <div class="Re_div">
                    <form action="" class="g_Aa_mb_form" @submit.prevent>
                        <div class="g_Aa_mb_form_d">
                            <span class="fa fa-close" @click="close"></span>
                            <h3>修改处方</h3>
                        </div>
                        <div class="g_Aa_mb_form_di">
                            <p>处方: </p>
                            <textarea v-model="amend" id="Re_text" cols="30" rows="5"></textarea>
                            <!-- <input type="text" name="" id=""> -->
                        </div>
                        <div class="g_Aa_mb_form_div">
                            <button class="mb_form_div_btn mb_form_div_btnR" @click="sour">确定</button><button class="mb_form_div_btn mb_form_div_btnT" @click="close">取消</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
// import cRecipe from './cRecipe'
import fenye from './fenye'
export default {
    name:'ReDefault',
    components:{
        fenye
    },
    data() {
        return {
            falg:false,
            num:0,
            index:[],
            id:[],
            k_info:'',
            pre_id:'',
            amend:'',
            msg:'',
            infosa:{
                pag:'',//{'page':i+1}
                url:'http://localhost:3000/doctor/chufangPag'
            }
        }
    },
    methods: {
        change(id,k){
            this.k_info=k
            this.pre_id=id
            let cRecipe=document.querySelector('.Re_div')
            cRecipe.style.display='block'
            this.amend=this.msg[k].cf
        },
        close(){
            let cRecipe=document.querySelector('.Re_div')
            cRecipe.style.display='none'
        },
        sour(){
            let cRecipe=document.querySelector('.Re_div')
            cRecipe.style.display='none'
            this.$axios.post(this.HOST+'/cfUpData',{amend:this.amend,id:this.pre_id})
            .then(response=>{
                // console.log(response.data)
                this.msg[this.k_info].cf=response.data
            })
            .catch(error=>{
                console.log(error)
            })
        },
        dele(k,id){
            console.log(k)
            alert('删除下标'+k)
            this.msg.splice(k,1)
            this.$axios.get(this.HOST+'/cFoneDele',{params:{id:id}})
            .then(response=>{
                console.log(response)
            })
            .catch(error=>{
                console.log(error)
            })
        },
        // 初始 获得 病人 数据
        getDzbl(){
            this.$axios.get(this.HOST+'/chufang')
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
            this.$axios.get(this.HOST+'/chufangPag',{params:{page:0}})
            .then(result=>{
                this.msg=result.data
                // console.log(this.msg)
            })
        },
        // 全选按钮
        EMRallChoose(){
            // 拿到所有 多选框
            let checkbox=document.getElementsByClassName('checkbox')
            // 判断状态
            if(this.falg){
                // 判断 全选按钮 点击 次数
                if(this.num%2==1){
                    // if(this.falgTwo){
                    // 全选完成 改变所有框状态
                    checkbox.forEach(ele => {
                        ele.checked=true
                    });
                    // 把 所有框 的 下标值 和 传后端序号 拿到 点击次数+1
                    this.msg.forEach((ele,k)=>{
                        this.id.push(ele.pre_id)
                        this.index.push(k)
                    })
                    // this.falgTwo=!this.falgTwo
                    this.num++
                }else{
                    // 取消全选 清除 框 选中 状态 清空 下标、序号数组 点击次数+1
                    checkbox.forEach(ele => {
                        ele.checked=false
                    });
                    this.id=[]
                    this.index=[]
                    this.num++
                    // this.falgTwo=!this.falgTwo
                }
            }
        },
        // 批量删除 按钮
        EMRmanyDele(){
            let checkbox=document.getElementsByClassName('checkbox')
            // 判断状态
            if(this.falg){
                // 大到小排列 下标 数组
                this.index.sort((a,b)=>b-a)
                // 对dzbl 数组进行 数据删除
                this.index.forEach(ele=>{
                    this.msg.splice(ele,1)
                })
                // 发送 对应序号 给后端
                this.$axios.get(this.HOST+'/chufangDele',{params:{id:this.id}})
                .then(response=>{
                    console.log(response)
                })
                .catch(error=>{
                    console.log(error)
                })
                // 改变多选框的 状态
                checkbox.forEach(ele => {
                    ele.checked=false
                    ele.disabled=true
                });
                // 改变状态 清空 记录num 下标、序号数组
                this.falg=!this.falg
                this.num=0
                this.index=[]
                this.id=[]
            }else{
                // 改变状态
                this.falg=!this.falg
                this.num++
                checkbox.forEach(ele => {
                    ele.disabled=false
                });
            }
        },
        // 单个选中
        EMRoneChoose(index,id){
            let checkbox=document.getElementsByClassName('checkbox')
            if(this.falg){
                // 判断下标数组中是否存在 存在 删除下标 和对应序号
                if(this.index.indexOf(index)>-1){
                    this.index.splice(this.index.indexOf(index),1)
                    this.id.splice(this.id.indexOf(id),1)
                }else{
                    // 不存在加入
                    this.index.push(index)
                    this.id.push(id)
                }
                // 判断 单个点击 完成全选状态
                if(this.index.length==this.msg.length){
                    // 完成全选状态 记录num+1 全选按钮选中
                    checkbox[0].checked=true
                    if(this.num%2==1){
                        this.num++
                    }
                }else{
                    // 没有完成全选状态 记录num+1 全选不按钮选中
                    checkbox[0].checked=false
                    if(this.num%2==0){
                        this.num++
                    }
                }
            }
        }
    },
    created(){
        this.getDzbl()
    }
}
</script>
<style scoped>
    @import '../assets/css/InHdefault.css';
    .Re_div{
        display: none;
    }
    th.g_Rd_th{
        width: 180px !important;
    }
    td.g_Rd_td{
        /* width: 180px !important; */
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
       -webkit-line-clamp: 1;
       -webkit-box-orient: vertical;
    }


    .Re_div{
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.6);
    }
    .g_Aa_mb_form{
    width: 400px;
    height: 246px;
    position: absolute;
    top: 35%;
    left: 35%;
    background: #f8f8f8;
    border-radius: 10px;
    border: 1px solid #707070;
}
.g_Aa_mb_form input{
    margin-top: 10px;
    width: 350px;
    height: 34px;
    border: 1px solid #32c0e6;
    border-radius: 5px;
}
.g_Aa_mb_form textarea{
    resize: none;
    outline: none;
    background: #ffffff;
    border: 1px solid #eeeeee;
}
.g_Aa_mb_form_di{
    margin: 0 0 0 20px;
    font-size: 18px;
    color: #595b59;
    font-weight: 300;
}
.g_Aa_mb_form_di p{
    margin-left: 25px;
    float: left;
}
.g_Aa_mb_form_d h3{
    height: 40px;
    font-size: 22px;
    padding: 30px 30px 0 30px;
}
.g_Aa_mb_form_d span{
    margin: 20px;
    border: 2px solid #979898;
    border-radius: 50%;
    width: 16px;
    color: #979898;
    height: 16px;
    line-height: 16px;
    text-align: center;
    float: right;
}
.g_Aa_mb_form_d span:hover{
    border: 2px solid #16dcb8;
    width: 20px;
    color: #16dcb8;
    height: 20px;
    line-height: 20px;
}
.g_Aa_mb_form_div{
    text-align: right;
    margin-top: 20px;
}
.mb_form_div_btn{
    width: 104px;
    height: 32px;
    border-radius: 25px;
    margin-right: 20px;
    background: #16dcb8;
    border:none ;
    color: #fff;
    font-size: 16px;
    outline: none;
}
.mb_form_div_btnT{
    background: #979898;
}
.mb_form_div_btnR:hover{
    background: #fff;
    border: 1px solid #16dcb8;
    color: #16dcb8;
}
.mb_form_div_btnT:hover{
    background: #fff;
    color: #ff0000;
    border: 1px solid #ff0000;
}
</style>