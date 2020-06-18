<template>
    <div class="">
        <div>
            <div class="HeaNav">
                <router-link to="/Report">报告查询</router-link>
            </div>
            <div class="HeaNav HeaNavTwo">
                <router-link to="">添加报告</router-link>
            </div>
        </div>
        <div class="bing elecen">
            <div>
                <form action="">
                    <ul class="nav-title-ul">
                        <li class="nav-title">
                            <span>患者姓名&nbsp;:</span>&nbsp;<input type="text" v-model="uname" placeholder="请输入患者姓名">
                            &nbsp;<span>性别:</span>&nbsp;<select v-model="sex" id="">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>&nbsp;
                            <span>年龄&nbsp;:</span>&nbsp;<input v-model="age" type="text">&nbsp;
                            <span>科别&nbsp;:</span>&nbsp;<select v-model="division" id="">&nbsp;
                                <option value="内科">内科</option>
                                <option value="外科">外科</option>
                            </select>&nbsp;
                            <span>诊断类型&nbsp;:</span>&nbsp;<select v-model="genre" id="">
                                <option value="复诊">复诊</option>
                                <option value="复查">复查</option>
                            </select>&nbsp;
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
                            <strong
                                style="margin-left: 30px;">结果:</strong><textarea v-model="consequence"> 痛的因素。 2.疼痛的发作方式,自发痛,激发痛。 3...痛 病史采集要点: 1.引起疼痛的因素。 2.疼痛的发作方式,自发痛,激发痛。 3...</textarea>
                        </li>
                        <li>
                            <strong style="margin-left: 30px;">备注:</strong><textarea v-model="remark "></textarea>
                        </li>
                        <div style="height: 30px; line-height: 0xp;"><strong
                                style="line-height: 30px;">上传附件:</strong>&nbsp;<span
                                style="line-height: 30px; color: #16dcb8;">最多上传三个附件每个附件发小不得超过3M</span></div>
                        <div style="height: 30px; line-height: 0xp;"><strong>文件描述:</strong>&nbsp;<span
                                style="color: #16dcb8;">最多上传三个附件每个附件发小不得超过3M</span></div>
                        <!-- <div class="foot"> -->
                        <form target="nm_iframe" action="http://localhost:3000/doctor/reportUpData" method="post" class="foot" enctype="multipart/form-data">
                            <strong>文件描述</strong>
                            <span
                                style=" display: inline-block; width: 304px;height: 34px; border: 1px solid #999999;"><input
                                    type="file" name="userImg" disabled id="up"></span>
                            <em @click="up">浏览</em>
                            <button><em>上传</em></button>
                        </form>
                         <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
                        <!-- </div> -->
                        <strong class="stongg" @click='saveData'>保存</strong>
                        <strong class="stongg">取消</strong>
                        
                    </ul>
                   
                </form>
            </div>
            <div class="change">

            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            uname:'',
            sex:'',
            age:'',
            division:'',
            genre:'',
            diagnosis:'',
            examinat:'',
            pathology:'',
            immune:'',
            consequence:'',
            remark:'',
        }
    },
    methods:{
        saveData(){
            // 数据不为空 才能传
            this.$axios.post(this.HOST+'/reportData',{
                uname:this.uname,
                sex:this.sex,
                age:this.age,
                division:this.division,
                genre:this.genre,
                diagnosis:this.diagnosis,
                examinat:this.examinat,
                pathology:this.pathology,
                immune:this.immune,
                consequence:this.consequence,
                remark:this.remark,
            })
            .then(result=>{
                console.log(result)
                this.$router.push({path: '/Report'})
            })
            .catch(error=>{
                console.log(error)
            })
        },
        up(){
            let up=document.querySelector('#up')
            up.disabled=false
            up.click()
        },
        upData(){
            let foot=document.getElementsByClassName('foot')[0]
            
            this.$axios.post(this.HOST+'/reportUpData')
            .then(result=>{
                console.log(result)
            })
            .catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>
<style scoped>
/* @import 'http://at.alicdn.com/t/font_1858868_4rw6ohqjgkc.css'; */
    .stongg {
        display: inline-block;
        width: 180px;
        height: 50px;
        text-align: center;
        line-height: 50px;
        background-color: #16dcb8;
        margin-right: 50px;
    }

    .foot em {
        width: 80px;
        text-align: center;
        line-height: 36px;
        display: inline-block;
        height: 36px;
        background-color: #16dcb8;
        margin-left: 22px;
    }

    .HeaNav {
        width: 140px;
        height: 42px;
        background-color: white;
        border-radius: 50px 0 50px 0;
        text-align: center;
        font-size: 17px;
        line-height: 42px;
        font-weight: normal;
        color: black;
        margin-left: 120px;
        margin-top: 47px;
        display: inline-block;
    }

    .HeaNav a {
        color: black;
    }

    .HeaNavTwo {

        margin-left: 20px;
        background: linear-gradient(to right, #2dc4de, #16dcb9);
    }

    .HeaNavTwo a {
        color: white;
    }

    .nav-title input {
        width: 140px;
        height: 30px;
        outline: blue;
    }
    .nav-title {
        height: 90px;
        line-height: 90px;
    }

    .nav-title select {
        width: 80px;
        height: 30px;
        resize: none;
        outline: blue;
        text-decoration: none;
        list-style: none;
        text-align: center;
        /* appearance: none; */
    }
    .nav-title-ul textarea{
        width: 900px;
    }
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