
<template>
        <div id="tou">
            <h1>
                <div class="logo">YOUR LOGO</div>
                <div class="inp">
                    <span class="fa fa-search"></span>
                <input type="text" placeholder="请输入疾病名/科室名/医生名">
                <button>搜索</button>
                </div>
                <div class="tiao1">
                    <router-link to="/guanli">
                    <span class="fa fa-user"></span>
                    /  管理员登录
                    </router-link>
                    </div>
            </h1>
            <div id="tou2">
                <ul class="clear">
                    <li class="add" ><router-link to="/">首页</router-link></li>
                    <li><router-link to="/yy">预约挂号</router-link></li>
                    <li><router-link to="/zx">在线问诊</router-link></li>
                    <li><router-link to="/ge">个人中心</router-link></li>
                    <li><router-link to="/jk">健康资讯</router-link></li>
                    <li><router-link to="/jb">疾病专题</router-link></li>
                </ul>
                <div>
                   <router-view></router-view>
              </div>
            </div> 
        </div>
        
</template>

<style  scoped>
@import '../css/1.css';
@import 'https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
#tou{
        /* width: 1920px; */
        width: 100%;
        /* height: 100px; */
        /* border: 1px solid #f00; */
        margin: 0px auto;

}
h1{
   /* width: 1198px; */
   width: 62%;
   height: 90px;
   margin: 0px auto;
   line-height: 90px;
   
   display: -webkit-box;
   -webkit-box-pack: justify;

}
.logo{
    font-size: 25px;
    font-weight: bold;
    color: #57C7F6;
}
.inp{
   position: relative;
}
.inp button{
width:62px;
height: 39px;
outline: none;
padding-bottom: 5px;
padding-top: 3px;
border-left: 0;
border:1px solid #CB66CB;
background: #C149FC; 

}
.inp input{
    width: 318px;
    height: 37px;
    padding-left: 40px;
    line-height: 90px;
    background: #FF9AFF; 
	border:1px solid #CB66CB;
    
}
.inp span{
    position: absolute;
    font-size: 16px;
    left: 12px;
    top:42px;
    color: #C15CC1;
}
.tiao1 span{
 font-size: 16px;
 color: #999999;
}
.tiao1 a{
 font-size: 16px;
 color: #999;
}
#tou2{
    width: 100%;
    border-top: 1px solid #AAAAAA;
}
#tou2 ul{
    margin-left: 360px;
}
#tou2 ul li{
    float: left;
    /* margin-right: 40px; */
    padding: 0px 10px 0px 10px;
    height: 60px;
    line-height: 60px;
}
.add{
    background: #9978F9;
}

</style>

