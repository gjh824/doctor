<template>
    <div>
        <div class="HeaNav">
            <router-link to="">我的病人</router-link>
        </div>
        <div class="elecen">
            <div class="bing" >
               <div id="boxR" class="clear">
                    <form class="for1" action="" method="">
                        <div class="cla1">
                            <input type="text" placeholder="请输入患者姓名" v-model="inp" />
                            <span class="fa fa-search" @click="mysearch"></span>
                        </div>
                    </form>
                </div>
                <div class="g_div">
                    <ul>
                        <li class="g_left_li" v-for="(item,key) in msg" :key="key" @click="record(key,$event,item.tel)">
                            <div class="g_img"><img :src=item.imgs alt=""></div>
                            <div class="g_xin">
                                <p>
                                <span class="g_sp">姓名：</span><span>{{item.xm}}</span>
                                </p>
                                <p>
                                    <span class="g_sp">性别：</span><span>{{item.xb}}</span>
                                </p>
                                <p>
                                    <span class="g_sp">年龄：</span><span>{{item.nl}}</span>
                                </p>
                                <p>
                                    <span class="g_sp">序号：</span><span>{{item.xh}}</span>
                                </p>
                                <p><router-link to=''><span class="fa fa-eye"></span></router-link><router-link to=''><span class="fa fa-pencil"></span></router-link><router-link to=""><span class="fa fa-trash-o" @click="oneDele(key,item.tel)"></span></router-link></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="change">
                     <div class="g_ele">
                        <a @click="batchChoose"><span class="fa fa-check"></span> 批量选择</a>
                    </div>
                    <div class="g_dele">
                        <a @click="batchDele"><span class="fa fa-trash"></span> 批量删除</a>
                    </div>
                    <fenye :data1="infosa" @cd='msg=$event' @ef='msg=$event'/>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import fenye from './fenye'
export default {
    components:{
        fenye
   
  },
    name:'MPdefault',
    data() {
        return {
            flag:false,
            arr:[],
            id:[],
            msg:'',
            infosa:{
                pag:'',//{'page':i+1}
                url:'http://localhost:3000/doctor/pag1'
            },
            inp:''
        }
    },
    methods: {
        oneDele(k,id){
            alert('删除下标'+k)
            this.msg.splice(k,1)
            this.$axios.get(this.HOST+'/MySingDele',{params:{id:id}})
            .then(response=>{
                console.log(response)
            })
            .catch(error=>{
                console.log(error)
            })
        },
        batchChoose(){
            let oLi=document.getElementsByClassName('g_left_li')
            if(this.flag){
                this.flag=!this.flag
                oLi.forEach(ele => {
                ele.style.border='1px solid white'
                });
                this.arr=[]
                this.id=[]
            }else{
                alert('可以开始选择')
                this.flag=!this.flag
            }
        },
        batchDele(){
            if(this.flag){
                alert('进行删除')
                this.arr.sort((a,b)=>b-a)
                for(let j=0;j<this.arr.length;j++){
                    // this.detail.splice(this.arr[j],1,'')
                    this.msg.splice(this.arr[j],1)
                }
                // this.detail=this.detail.filter(item => item)
                // 后端请求
                this.$axios.get(this.HOST+'/MyBatchDele',{params:{id:this.id}})
                .then(response=>{
                    console.log(response)
                })
                .catch(error=>{
                    console.log(error)
                })
            }
            this.flag=!this.flag

            let oLi=document.getElementsByClassName('g_left_li')
            oLi.forEach(ele => {
                ele.style.border='1px solid white'
            });
            this.arr=[]
            this.id=[]
        },
        record(key,e,id){
            if(this.flag){
                // 判断是否重复
                if(this.arr.indexOf(key)>-1){
                    this.arr.splice(this.arr.indexOf(key),1)
                    this.id.splice(this.id.indexOf(id),1)
                    e.target.style.border='1px solid white'
                }else{
                    this.arr.push(key)
                    this.id.push(id)
                    e.target.style.border='1px solid red'
                }
            }
            console.log(this.arr+'-------')
        },
        // 初始 获得 病人 数据
        getDzbl(){
            this.$axios.get(this.HOST+'/eleDetail')
            .then(response=>{
                // this.dzbl=response.data[0]
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

            this.$axios.get(this.HOST+'/pag1',{params:{page:0}})
            .then(result=>{
                result.data.forEach(ele => {
                    ele.imgs='http://localhost:3000'+ele.imgs
                });
                this.msg=result.data
            })
        },
        mysearch(){
            if(this.inp!=''){
                this.$axios.post(this.HOST+'/MySearch',{myinp:this.inp})
                .then(response=>{
                    response.data.forEach(ele => {
                        ele.imgs='http://localhost:3000'+ele.imgs
                    });
                    this.msg=response.data
                    // console.log(Math.ceil(response.data.length/16))
                    // this.infosa.pag={'page':Math.ceil(response.data.length/16)+1}
                    // console.log(this.infosa.pag)
                })
                .catch(error=>{
                    console.log(error)
                })
            }else{
                this.getDzbl()
            }
        }
    },
    created(){
        this.getDzbl()
    }
}
</script>
<style scoped>
/* 绿头 */
    .HeaNav{
        width: 140px;
        height: 42px;
        background:linear-gradient(to right,#2dc4de,#16dcb9);
        border-radius: 50px 0 50px 0;
        text-align: center;
        font-size: 17px;
        line-height: 42px;
        font-weight: normal;
        color: white;
        margin-left: 120px;
        margin-top: 47px;
    }
    .HeaNav a{
        color: #ffffff;
    }
    /* 右大框 inp */
    #boxR{
    /* width: 1340px; */
    width: 89%;
    overflow: hidden;
    }
    #boxR .for1 input{
        border-style: none;
        width: 300px;
        height: 46px;
        border: 1px solid #cccccd;
        border-radius: 25px;
        padding-left: 20px;
        outline:none;
    }
    #boxR .cla1{
        position: relative;
        width: 320px;
        margin-left: 10px;
        margin-top: 41px;
    }
    #boxR .for1 .cla1 span{
        display: inline-block;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background: #16dcb8;
        text-align: center;
        line-height: 38px;
        position: absolute;
        right: 8px;
        top: 6px;
        color: white;
    }
    /* 右大框 */
    .elecen{
        /* width: 89%; */
        width: 85%;
        height: 900px;
        background: rgba(255, 255, 255, 0.8);
        margin-left: 5%;
        margin-bottom: 30px;
        padding:0 30px;
        /* background: white; */
        position: relative;
    }
    .change{
        margin-top: 50px;
        /* margin-top: 10px;
        width: 100%;
        position: absolute;
        left: 100px;
        bottom: 70px; */
    }
    /* 中间 表格 */
    .g_div{
        height: 100%;
    }
    .g_div ul{
        padding:0.8%;
        height: 97%;
        overflow: hidden;
    }
    .g_div li{
        /* width: 249px; */
        width: 19%;
        min-width: 176px;
        height: 137px;
        padding:8px;
        background: white;
        font-size: 12px;
        box-shadow: -8px 8px 8px #ccc;
        color: #333333;
        float: left;
        margin-right: 3%;
        margin-bottom: 12px;
        border: 1px solid white;
    }
    .g_img{
        /* width: 109px; */
        width: 41%;
        height: 137px;
        float: left;
        margin-right: 14px;
    }
    .g_img img{
        width: 100%;
        height: 100%;
    }
    .g_sp{
        color: #999999;
    }
    .g_div .fa-pencil{
        margin: 0 8px;
    }
    .g_div .fa{
        color:#16dcb8
    }
    .g_div .fa-trash-o{
        color: #f40000;
    }
    .g_div p{
        height: 18px;
        line-height: 18px;
    }
    .g_xin{
        float: left;
    }
    /* .g_xin p{ */
        /* float: right; */
    /* } */
    /* 下面 删除  */
    .g_dele{
        /* width: 141px; */
        text-align: center;
        width: 11%;
        height: 36px;
        line-height: 36px;
        display: inline-block;
    }
    .g_dele a{
        border-radius: 25px;
        width: 100%;
        display: inline-block;
        color: #fff;
        background: #f96464;
    }
    .g_dele a:hover{
        color: #f96464;
        background: #fff;
    }
    /* 选择 */
    .g_ele{
        border-radius: 25px;
        /* width: 141px; */
        text-align: center;
        width: 11%;
        height: 36px;
        line-height: 36px;
        background:#16dcb8;
        display: inline-block;
        margin-right: 10px;
    }
    .g_ele a{
        border-radius: 25px;
        width: 100%;
        display: inline-block;
        color: #fff;
    }
    .g_ele a:hover{
        color: #16dcb8;
        background: #fff;
    }
</style>