<template>
    <div>
        <div>
            <div class="HeaNav">
                <router-link to="">病例查看</router-link>
            </div>
        </div>
        <div class="elecen">
            <div class="bing" >
                 <div class="g_ch_div">
                    <h2 class="g_ch_h">病历夹</h2>
                    <div class="g_ch_md"><span class="fa fa-pencil"> 修改信息</span></div>
                </div>
            </div>
            <div class="g_div">
                <form action="" class="g_cb_form" @submit.prevent>
                    <div class="g_line g_lin"></div>
                    <div class="g_lineT g_lin"></div>
                    <div class="g_cb_d">
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">患者姓名</p>
                            <input type="text" class="g_cb_inp" readonly>
                        </div>
                        <div class="g_cb_d_si">
                            <p class="g_cb_p">性别</p>
                            <!-- <input type="text" class="g_cb_in" readonly> -->
                            <select name="" id=""  class="g_cb_in" disabled>
                                <option value="1">男</option>
                                <option value="0">女</option>
                            </select>
                        </div>
                        <div class="g_cb_d_si g_si">
                            <p class="g_cb_p">年龄</p>
                            <input type="text" class="g_cb_in" readonly>
                        </div>
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">就诊日期</p>
                            <div class="g_nyr">
                                <!-- <input type="text" readonly class="g_cb_i"> -->
                                <select name="" id=""  class="g_cb_i" disabled>
                                    <option value="year_2">2020</option>
                                    <option value="year_1">2019</option>
                                    <option value="year_0">2019</option>
                                </select>
                                <span>年</span>
                                <!-- <input type="text" class="g_cb_i"> -->
                                <select name="" id=""  class="g_cb_i" disabled>
                                    <option value="month_2">6</option>
                                    <option value="month_1">7</option>
                                    <option value="month_0">5</option>
                                </select>
                                <span>月</span>
                            </div>
                        </div>
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">联系电话</p>
                            <input type="text" class="g_cb_inp" readonly>
                        </div>
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">地址</p>
                            <input type="text" class="g_cb_inp" readonly>
                        </div>
                    </div>
                    <div class="g_cb_di">
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">患者姓名</p>
                            <input type="text" class="g_cb_inp" readonly>
                        </div>
                        <div class="g_cb_d_s">
                            <p class="g_cb_p">病情描述</p>
                            <textarea name="" readonly id="medication" cols="30" rows="10"  class="g_cb_inpR"></textarea>
                        </div>
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">过敏史</p>
                            <input type="text" class="g_cb_inp" readonly>
                        </div>
                        <div class="g_cb_d_side">
                            <p class="g_cb_p">诊断医生</p>
                            <input type="text" class="g_cb_inp" readonly>
                        </div>
                    </div>
                    <div class="g_cb_div">
                    <div>
                            <p class="g_cb_p">用药详情</p>
                            <textarea name="" readonly id="medication" cols="30" rows="10"  class="g_cb_inpR"></textarea>
                    </div>
                        <div>
                            <p class="g_cb_p">备注</p>
                            <textarea name="" readonly id="medication" cols="30" rows="10"  class="g_cb_inpR beizhu"></textarea>
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
    </div>
</template>
<style scoped>
    .HeaNav{
        width: 140px;
        height: 42px;
        background:linear-gradient(to right,#2dc4de,#16dcb9);
        /* background: #fff; */
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
        /* color: black; */
    }
    .HeaNavTwo{
        background:linear-gradient(to right,#2dc4de,#16dcb9);
        margin-left: 20px;
    }
    .HeaNavTwo a{
        color: black;
        /* color: #ffffff; */
    }

    .elecen{
        /* width: 89%; */
        width: 87%;
        height: 900px;
        background: rgba(255, 255, 255, 0.8);
        margin-left: 5%;
        margin-bottom: 30px;
        padding:0 30px;
        position: relative;
    }

    .g_ch_div{
        width: 100%;
        height: 38px;
        padding-top: 40px;
    }
    .g_ch_h{
        width: 20%;
        height: 100%;
        border-bottom: 2px solid #16dcb8;
        font-size: 24px;
        font-weight: 500;
        float: left;
        margin-top: -1px;
    }
    .g_ch_md{
        margin: 0;
        width: 80%;
        height: 100%;
        border-bottom:1px solid #999999 ;
        color: #f96464;
        font-size: 16px;
        text-align: right;
        float: right;
    }
    .g_ch_div .fa-pencil{
        margin-top: 10px;
    }
    .g_ch_div .fa-pencil:hover{
        cursor: pointer;
        color: #ff0000;
    }

     .g_cb_p{
        padding: 14px 0;
        color: #a699b3;
        font-size: 14px;
    }
    .g_div{
        height: 100%;
    }
    .g_cb_form{
        height: 100%;
        position: relative;
    }
    .g_cb_form input,textarea,select{
        background: #f8f8f8;
    }
    .g_lin{
        height: 350px;
        border: 1px solid #dfdfdf;
        top: 100px;
    }
    .g_line{
        position: absolute;
        left: 30%;
    }
    .g_lineT{
        position: absolute;
        right: 34%;
    }
    .g_btn{
        position: absolute;
        left: 30%;
        bottom: 30%;
    }
    .g_bt{
        width: 140px;
        height: 38px;
        margin: 0 50px;
        border: none;
        border-radius: 2px;
    }
    .btn_o{
        background: #16dcb8;
        color: #fff;
    }
    .btn_t{
        background: #999999;
    }
    .btn_o:hover{
        background: #fff;
        color: #16dcb8;
        border: 1px solid #16dcb8;
    }
    .btn_t:hover{
        color: #ff0000;
        background: #fff;
         border: 1px solid #f0f0f0;
    }
    .g_cb_d{
        width: 28%;
        /* width: 33%; */
        float: left;
        -webkit-flex: 1;
        flex: 1;
    }
    .g_cb_di{
        width: 32%;
        float: left;
        margin:0 3% 0 4%;
    }
    .g_cb_div{
        width: 30%;
        float: right;
    }
    #medication{
        resize:none;
    }
    .g_cb_inp{
        width: 98%;
        height: 34px;
        border: 1px solid #d3d3d3;
        border-radius: 4px;
        outline:none;
    }
    .g_cb_inpT{
        width: 98%;
        height: 34px;
        border: 1px solid #d3d3d3;
        border-radius: 4px;
        outline:none;
    }
    .g_cb_inpR{
        width: 98%;
        height: 114px;
        border: 1px solid #d3d3d3;
        border-radius: 4px;
        outline:none;
    }
    .g_cb_d_side{
        width: 100%;
        height: 120px;
    }
    .g_cb_in{
        width: 100%;
        height: 36px;
        border: 1px solid #d3d3d3;
        border-radius: 4px;
        outline:none;
        padding: 0;
    }
    .g_cb_d_si{
        width: 45%;
        display: inline-block;
    }
    .g_si{
        margin-left:7%;
    }
    .g_cb_i{
        width: 39.5%;
        height: 38px;
        border: 1px solid #d3d3d3;
        border-radius: 4px;
        outline:none;
    }
    .g_nyr span{
        margin: 0 1%;
        color:#a699b3;
    }
   
    .g_cb_d_s textarea{
        height: 146px;
    }
    .beizhu{
        height: 124px;
    }
    .fu_tu{
        position: relative;
    }
    .tu{
        position: absolute;
        bottom: 42.7%;
        width: 30%;
        height: 120px;
        border: 1px solid #d3d3d3;
        border-radius: 4px;
    }
    .tu img{
        width: 100%;
        height: 100%;
    }
</style>