<template>
    <div>
        <div>
            <div class="HeaNav">
                <router-link to="">电子病历</router-link>
            </div>
            <div class="HeaNav HeaNavTwo">
                <router-link to="/addcase">添加病历</router-link>
            </div>
        </div>
        <div class="elecen">
            <div class="bing" >
                <form action="" class="g_iH_form">
                    <div class="g_inp"><input type="text" name="" placeholder="请输入用户姓名"></div>
                    <div class="g_inp g_inp_cen" @mousemove="show" @mouseout="noShow"><input type="text" name="" placeholder="选择就诊时间"><span class="fa fa-sort-down"></span></div>
                    <div class="g_inp g_inp_sp"><span class="fa fa-search"></span></div>
                </form>
                <div>
                    <table class="g_hs_tab">
                        <tr class="g_tab_tou">
                            <th><input type="checkbox" class="checkbox" disabled @click="EMRallChoose"></th>
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
                        <tr class="g_tr" v-for="(item,k) in msg" :key="k">
                            <td><input type="checkbox" class="checkbox" disabled @click="EMRoneChoose(k,item.xh)"></td>
                            <td>{{item.xh}}</td>
                            <td>{{item.xm}}</td>
                            <td>{{item.xb}}</td>
                            <td>{{item.nl}}</td>
                            <td>{{item.jzks}}</td>
                            <td>{{item.sheng}}</td>
                            <td>{{item.shi}}</td>
                            <td>{{item.jzks}}</td>
                            <td>{{item.zdlx}}</td>
                            <td>{{item.jzsj}}</td>
                            <td><router-link to="/bdrecord" class="g_tab_a"><span>查看详情</span></router-link></td>
                        </tr>
                    </table>
                </div>
                <div class="change">
                     <div class="g_dele">
                        <a @click="EMRmanyDele"><span class="fa fa-trash"></span>批量删除</a>
                    </div>
                    <fenye :data1="infosa" @cd='msg=$event'  @ef='msg=$event'/>
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
    name:'EMRdefault',
    data() {
        return {
            falg:false,
            falgTwo:false,
            num:0,
            index:[],
            xh:[],
            msg:'',
            infosa:{
                pag:'',//{'page':i+1}
                url:'http://localhost:3000/doctor/pag2'
            }
        }
    },
    methods: {
        show(){
            let sp=document.getElementsByClassName('fa-sort-down')[0]
            sp.style.display='block'
        },
        noShow(){
            let sp=document.getElementsByClassName('fa-sort-down')[0]
            sp.style.display='none'
        },
        // 初始 获得 病人 数据
        getDzbl(){
            this.$axios.get(this.HOST+'/eleDetail')
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
            this.$axios.get(this.HOST+'/pag2',{params:{page:0}})
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
                        this.xh.push(ele.xh)
                        this.index.push(k)
                    })
                    // this.falgTwo=!this.falgTwo
                    this.num++
                }else{
                    // 取消全选 清除 框 选中 状态 清空 下标、序号数组 点击次数+1
                    checkbox.forEach(ele => {
                        ele.checked=false
                    });
                    this.xh=[]
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
                this.$axios.get(this.HOST+'/EMRdeleDzbl',{params:{xh:this.xh}})
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
                // this.falgTwo=false
                this.num=0
                this.index=[]
                this.xh=[]
            }else{
                // 改变状态
                this.falg=!this.falg
                this.num++
                // this.falgTwo=true
                checkbox.forEach(ele => {
                    ele.disabled=false
                });
            }
        },
        // 单个选中
        EMRoneChoose(index,xh){
            let checkbox=document.getElementsByClassName('checkbox')
            if(this.falg){
                // 判断下标数组中是否存在 存在 删除下标 和对应序号
                if(this.index.indexOf(index)>-1){
                    this.index.splice(this.index.indexOf(index),1)
                    this.xh.splice(this.xh.indexOf(xh),1)
                }else{
                    // 不存在加入
                    this.index.push(index)
                    this.xh.push(xh)
                }
                // 判断 单个点击 完成全选状态
                if(this.index.length==this.msg.length){
                    // console.log(this.index.length)
                    // console.log(this.msg.length+'----')
                    // 完成全选状态 记录num+1 全选按钮选中
                    // this.falgTwo=!this.falgTwo
                    checkbox[0].checked=true
                    if(this.num%2==1){
                        this.num++
                    }
                    // console.log(this.num)
                }else{
                    // 没有完成全选状态 记录num+1 全选不按钮选中
                    // this.falgTwo=!this.falgTwo
                    checkbox[0].checked=false
                    if(this.num%2==0){
                        this.num++
                    }
                    // console.log(this.num)
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
        display: inline-block;
    }
    .HeaNav a{
        color: #ffffff;
    }
    .HeaNavTwo{
        background: #fff;
        margin-left: 20px;
    }
    .HeaNavTwo a{
        color: black;
    }

    .elecen{
        /* width: 89%; */
        width: 87%;
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

    .g_iH_form{
        padding-top: 20px;
        margin-bottom: 20px;
    }
    .g_inp{
        display: inline-block;
    }
    .g_inp input{
        border-style: none;
        width: 140px;
        height: 30px;
        border: 1px solid #cccccd;
        border-radius: 25px;
        padding-left: 20px;
        outline:none;
    }
    .g_inp_cen{
        margin: 0 10px;
        position: relative;
    }
    .fa-sort-down{
        position: absolute;
        right: 20px;
        top: 5px;
        display: none;
    }
    .g_inp span{
        font-size: 20px;
    }
    .g_inp_sp{
        width: 30px;
        height: 30px;
        border-radius: 50%;
        background: #16dcb8;
        text-align: center;
        line-height: 30px;
        color: #fff;
    }

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
</style>