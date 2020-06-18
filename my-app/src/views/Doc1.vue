<template>
    <div class="ee clear">
        <div class="aa">
            医疗管理后台
        </div>
        <div class="cc">
            <div class="bb">
                <div class="ff">
                    <h3>医生登录</h3>
                    <input type="text">
                    <input type="password" >
                    <span class="fa fa-user sp1"></span>
                    <span class="fa fa-lock sp2"></span>
                    <span class="fa fa-eye sp3"></span>
                    <p>忘记密码  ?</p>
                     <router-link to="/totalpages">登录</router-link>
                </div>
                 <div class="gg"></div>
            </div>
           

        </div>

    </div>
</template>
<style scoped>
@import '../css/1.css';
@import 'https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
    .ee{
        width: 100%;
        margin: 0px auto;
        /* border: 1px solid #f00; */
        background: url('../images/arvin-chingcuangco-1337415-unsplash.jpg') no-repeat;
        background-size: 90%;
        position: relative;
    }
    .aa{
        position: absolute;
        width: 300px;
        height: 100px;
        left: 300px;
        font-size: 30px;
        font-weight: 500;
        color: #fff;
        text-align: center;
        line-height: 100px;
        background: rgb(22,220,184);
        transform: skew(160deg);
    }
    .cc{
        width: 45%;
        height: 806px;
        /* border: 1px solid #f00; */
        float: right;
        position: relative;
        /* background: #f00; */
        /* overflow: hidden; */
    }
    .bb{
        width: 100%;
        height: 100%;
        background: #fff;
        transform: skew(165deg);
        position: absolute;
        left: 110px;
    }
    .ff{
        width: 56%;
        height: 60%;
        margin-top: 160px;
        margin-left: 66px;
        background: #ccc;
        transform: skew(195deg);
        position: relative;
    }
    .ff h3{
        width: 90px;
        margin-top: 100px;
        color: rgb(22,220,184);
        display: inline-block;
        border-bottom: 2px solid rgb(22,220,184);
        padding-bottom: 10px;
    }
    .ff input{
        display: block;
        width: 170px;
        height: 36px;
        border-radius: 25px;
        border: none;
        padding-left: 50px;
        margin-top: 38px;
        font-size: 16px;
        display: block;
    }
    .ff input:focus{
        box-shadow: 5px 5px 5px #888888;
    }
    .ff span{
        
        color: #999;
        
        border-right: 1px solid #999;
        padding-right: 10px;
    }
    .ff .sp1{
        position: absolute;
        left: 19px;
        top: 185px;

    }
    .ff .sp2{
        position: absolute;
        left: 19px;
        top: 260px;

    }
    .ff .sp3{
        position: absolute;
        left: 186px;
        top: 260px;
        border-right:none;

    }
    .ff p{
        margin-top: 10px;
        font-size: 14px;
        color: rgb(22,220,184);
        margin-left: 10px;
        margin-bottom: 30px;
    }
    .ff a{
       display: block;
        width: 220px;
        text-align: center;
        height: 36px;
        line-height: 36px;
        border-radius: 25px;
        font-size: 16px;
        color: #fff;
        background: rgb(22,220,184); 
    }
    .gg{
                width: 0;
			    height: 0;
			    border-left: 130px solid transparent;
			    border-bottom: 484px solid #ccc;
                transform: skew(195deg);
                position: absolute;
                left: -64px;
                top:159px;
                /* top:-10px; */
        
    }
    
</style>