<template>
    <div>
        <div>
            <div class="HeaNav">
                <router-link to="">住院管理</router-link>
            </div>
            <div class="HeaNav HeaNavTwo">
                <router-link to="/ihaddcase">添加病历</router-link>
            </div>
        </div>
        <div class="elecen">
            <div class="bing" >
                <!-- inp 框 -->
                <form action="" class="g_iH_form">
                    <div class="g_inp"><input type="text" name="" placeholder="请输入用户姓名"></div>
                    <div class="g_inp g_inp_cen"><input type="date" name="" placeholder="选择就诊时间"></div>
                    <div class="g_inp"><input type="text" name="" placeholder="请输入手机号"></div>
                    <div class="g_inp"><input type="text" class="g_ih_inp" name="" placeholder="选择住院号"></div>
                    <div class="g_inp"><input type="text" name="" placeholder="选择病床号"></div>
                    <div class="g_inp g_inp_sp"><span class="fa fa-search"></span></div>
                </form>
                <table class="g_hs_tab">
                    <tr class="g_tab_tou">
                        <th><input type="checkbox" class="checkbox" disabled @click="EMRallChoose" ></th>
                        <th>序号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>病床号</th>
                        <th>主治医生</th>
                        <th>护士</th>
                        <th>住院状态</th>
                        <th>入院时间</th>
                        <th>诊断情况</th>
                        <th>出院时间</th>
                        <th>操作</th>
                    </tr>
                    <tr class="g_tr" v-for="(item,k) in msg" :key="k">
                        <td><input type="checkbox" class="checkbox" disabled @click="EMRoneChoose(k,item.inh_id)" ></td>
                        <td>{{item.zyh}}</td>
                        <td>{{item.xm}}</td>
                        <td>{{item.xb}}</td>
                        <td>{{item.nl}}</td>
                        <td>{{item.bch}}</td>
                        <td>{{item.zzys}}</td>
                        <td>{{item.hs}}</td>
                        <td>{{item.zyzt}}</td>
                        <td>{{item.rysj}}</td>
                        <td>{{item.zdqk}}</td>
                        <td>{{item.cysj}}</td>
                        <td><router-link to="" class="g_tab_a"><span class="fa fa-pencil"></span></router-link><router-link to="" class="g_tab_a"><span class="fa fa-close" @click="dele(k,item.inh_id)"></span></router-link></td>
                    </tr>
                </table>
                <div class="change">
                    <div class="g_dele">
                        <a @click="EMRmanyDele"><span class="fa fa-trash"></span>批量删除</a>
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
    name:'InHdefault',
    data() {
        return {
             falg:false,
            num:0,
            index:[],
            id:[],
            // k_info:'',
            // out_id:'',
            msg:'',
            infosa:{
                pag:'',//{'page':i+1}
                url:'http://localhost:3000/doctor/outHosPag'
            },
            tab_info:[
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'预约住院',
                    info_iTime:'',
                    info_situation:'心脏搭桥',
                    info_oTime:'',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                },
                {
                    info_id:'序号',
                    info_name:'刘德华',
                    info_sex:'男',
                    info_age:'40',
                    info_Thebad:'3028',
                    info_Attending:'张医生',
                    info_nurse:'护士',
                    info_inhos:'已住院',
                    info_iTime:'2020-05-20',
                    info_situation:'心脏搭桥',
                    info_oTime:'2020-08-20',
                }
            ]
        }
    },
    methods: {
        dele(k,id) {
            alert("删除下标" + k);
            //   this.tab_info.splice(k, 1);
            this.msg.splice(k,1)
            this.$axios.get(this.HOST+'/inHoneDele',{params:{id:id}})
            .then(response=>{
                console.log(response)
            })
            .catch(error=>{
                console.log(error)
            })
        },
        // 初始 获得 病人 数据
        getDzbl(){
            this.$axios.get(this.HOST+'/inhistory')
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

            this.$axios.get(this.HOST+'/inHosPag',{params:{page:0}})
            .then(result=>{
                this.msg=result.data
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
                        this.id.push(ele.inh_id)
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
                this.$axios.get(this.HOST+'/inHosdele',{params:{id:this.id}})
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
</style>