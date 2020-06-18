<template>
<!-- 详情病例 右侧除上部 -->
<div class="g_Aa_big_div">
    <div>
        <div class="HeaNav">
            <router-link to="/inhistory">住院管理</router-link>
        </div>
        <div class="HeaNav HeaNavTwo">
            <router-link to="">添加病历</router-link>
        </div>
    </div>
    <div class="elecen">
        <div class="g_ch_div">
            <h2 class="g_ch_h">添加住院信息</h2>
            <div class="g_ch_md"><span></span></div>
        </div>
        <div class="g_div">
            <form action="" class="g_cb_form">
                <div class="g_line g_lin"></div>
                <div class="g_lineT g_lin"></div>
                <div class="g_cb_d">
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">患者姓名</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                    <div class="g_cb_d_si">
                        <p class="g_cb_p">性别</p>
                        <!-- <input type="text" class="g_cb_in" readonly> -->
                        <select name="" id=""  class="g_cb_in">
                            <option value="1">男</option>
                            <option value="0">女</option>
                        </select>
                    </div>
                    <div class="g_cb_d_si g_si">
                        <p class="g_cb_p">年龄</p>
                        <input type="text" class="g_cb_in">
                    </div>
                    <div class="g_cb_d_side">
                        <div class="g_cb_d_si">
                        <p class="g_cb_p">住院状态</p>
                        <!-- <input type="text" class="g_cb_in" readonly> -->
                        <select name="" id=""  class="g_cb_in">
                            <option value="1">已住院</option>
                            <option value="0">未住院</option>
                        </select>
                    </div>
                    <div class="g_cb_d_si g_si">
                        <p class="g_cb_p">入院日期</p>
                        <input type="text" class="g_cb_in">
                    </div>
                        <!-- <p class="g_cb_p">就诊日期</p>
                        <div class="g_nyr"> -->
                            <!-- <input type="text" readonly class="g_cb_i"> -->
                            <!-- <select name="" id=""  class="g_cb_i" disabled>
                                <option value="year_2">2020</option>
                                <option value="year_1">2019</option>
                                <option value="year_0">2019</option>
                            </select>
                            <span>年</span> -->
                            <!-- <input type="text" class="g_cb_i"> -->
                            <!-- <select name="" id=""  class="g_cb_i" disabled>
                                <option value="month_2">6</option>
                                <option value="month_1">7</option>
                                <option value="month_0">5</option>
                            </select>
                            <span>月</span> -->
                        <!-- </div> -->
                    </div>
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">联系电话</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                    <div class="g_cb_d_side">
                        <p class="g_cb_p">预计出院日期</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                </div>
                <div class="g_cb_di">
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">病床号码</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                    <!-- <div class="g_cb_d_s">
                        <p class="g_cb_p">病情描述</p>
                        <textarea name="" readonly id="medication" cols="30" rows="10"  class="g_cb_inpR"></textarea>
                    </div> -->
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">病情描述</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">过敏史</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">主治医生</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                    <div class="g_cb_d_side g_ih_inp_div">
                        <p class="g_cb_p">责任护士</p>
                        <input type="text" class="g_cb_inp">
                    </div>
                </div>
                <div class="g_cb_div">
                    <div>
                        <p class="g_cb_p">用药详情</p>
                        <textarea name=""  id="medication" cols="30" rows="10"  class="g_cb_inpR"></textarea>
                    </div>
                    <div>
                        <p class="g_cb_p">备注</p>
                        <textarea name=""  id="medication" cols="30" rows="10"  class="g_cb_inpR beizhu"></textarea>
                    </div>
                    <div>
                        <p class="g_cb_p">上传诊断报告</p>
                        <!-- <textarea name="" id="medication" cols="30" rows="10"  class="g_cb_inpR"></textarea> -->
                        <input type="file" name="" id="medication" class="g_cb_inpR fu_tu">
                        <div class="tu"><img src="../assets/image/updata.png" alt=""></div>
                    </div>
                </div>
                <div class="g_btn">
                    <button class="btn_o g_bt">保存</button><button class="btn_t g_bt">取消</button>
                </div>
            </form>
        </div>
    </div>
    <div class="mb_div">
        <!-- 第一个表单 输入手机号 查询 确认取消 -->
        <form action="" class="g_Aa_mb_form Aa_mb_formO" @submit.prevent>
            <div class="g_Aa_mb_form_d">
                <span class="fa fa-close" @click="cloce"></span>
                <h3>查询</h3>
            </div>
            <div class="g_Aa_mb_form_di">
                请输入手机号:
                <input type="text" name="" id="">
            </div>
            <div class="g_Aa_mb_form_div">
                <button class="mb_form_div_btn mb_form_div_btnR" @click="toTwofrom">确定</button><button class="mb_form_div_btn mb_form_div_btnT" @click="cloce">取消</button>
            </div>
        </form>
        <!-- 第二个确认表单 至此 -->
        <form action="" class="g_Aa_mb_form Aa_mb_formT" @submit.prevent>
            <div class="g_Aa_mb_form_d">
                <span class="fa fa-close" @click="cloce"></span>
                <h3>提示</h3>
            </div>
            <div class="g_Aa_mb_form_di Aa_mb_form_dO">
                未能找到患者信息，请输入正确手机号
                <!-- <input type="text" name="" id=""> -->
            </div>
            <div class="g_Aa_mb_form_div Aa_mb_form_dT">
                <button class="mb_form_div_btn mb_form_div_btnR" @click="TRfrom">确定</button>
            </div>
        </form>
    </div>
</div>
</template>
<script>
export default {
    name:'AddCase',
    methods: {
        cloce(){
            let formTwo=document.querySelector('.Aa_mb_formT')
            formTwo.style.display='none'
            let form=document.querySelector('.mb_div')
            form.style.display='none'
        },
        toTwofrom(){
            alert('用户输入了手机号')
            let formOne=document.querySelector('.Aa_mb_formO')
            formOne.style.display='none'
            let formTwo=document.querySelector('.Aa_mb_formT')
            console.log(formTwo)
            formTwo.style.display='block'
        },
        TRfrom(){
             let formTwo=document.querySelector('.Aa_mb_formT')
                formTwo.style.display='none'
            let formOne=document.querySelector('.Aa_mb_formO')
                formOne.style.display='block'
        }
    },
}
</script>
<style scoped>
    @import '../assets/css/AddCase.css';
    .g_ih_inp_div{
        height: 111px;
    }
    form.g_cb_form input,textarea,select{
    background: #fff;
}
</style>