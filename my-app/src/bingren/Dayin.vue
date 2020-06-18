<template>
<div>
    <div>
        <div class="HeaNav">
            <router-link to="">出院管理</router-link>
        </div>
        
    </div>
    <div class="elecen">
        <div>
            <h3 class="clear">
                <ul class="clear">
                    <li>
                        姓名：张三
                    </li>
                    <li>
                        姓别：男
                    </li>
                    <li>
                        年龄：49
                    </li>
                    <li>
                        科室：骨科
                    </li>
                    <li>
                        住院时间：2018/12/5
                    </li>
                    <li>
                        住院号：33365
                    </li>
                    <li>
                        病床号：2403
                    </li>
                    <li>
                        主治医师：张医生
                    </li>
                    <li>
                        护士：王护士
                    </li>
                </ul>
                <div class="wa">打印证明</div>
            </h3>
        </div>
        <ul class="uu">
            <li>
                d诊断症状：右小臂骨折
            </li>
             <li>
                手术：钢板固定
            </li>
            <li>
                恢复情况：回复完好
            </li>
            <li>
                备注
            </li>
        </ul>
        <div class="nm">
            <span>出院时间： 2018/2/14</span>
            <span>核准医生：王医生</span>
        </div>
        
    </div>
    </div>
</template>
<style scoped>
@import '../css/1.css';
@import 'https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
.elecen{
        /* width: 89%; */
        width: 85%;
        height: 900px;
        background: rgba(255, 255, 255, 0.8);
        margin-left: 5%;
        margin-bottom: 30px;
        padding:30px 30px 0px 30px;
        /* background: white; */
        /* position: relative; */
    }
    .change{
        margin-top: 0px;
    }
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
    .elecen h3{
        width: 90%;
        height: 70px;
        margin: 0px auto;
        border-bottom: 1px solid #707070;
        /* background: #f00; */
    }
    .elecen li{
        font-size: 12px;
        margin-right: 7%;
        float: left;
        margin-bottom: 10px;
    }
    .elecen h3 ul{
        width: 80%;
        float: left;
        /* background: #ccc; */
    }
    .elecen h3 .wa{
        width: 155px;
        text-align: center;
        height: 36px;
        float: left;
        line-height: 36px;
        border-radius: 25px;
        font-size: 16px;
        color: #fff;
        margin-left: 60px;
        margin-top: 16px;
        background: rgb(22,220,184);
    }
    .elecen .uu{
        width: 90%;
        margin: 55px auto;
        border-bottom: 1px solid #000;
    }
    .elecen .uu li{
        float: none;
        margin-bottom: 150px;
        font-size: 18px;
        font-weight: 600;
    }
    .elecen .nm{
        width: 90%;
        margin: -30px auto;
    }
    .elecen .nm span{
        display: inline-block;
        margin-right: 280px;
         font-size: 18px;
        font-weight: 600;

    }
    

</style>