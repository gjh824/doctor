<template>
<!-- 主题 左导航 -->
  <div class="g_left">
    <h1>YOUR LOGO</h1>
    <ul class="g_ul">
        <li class="g_ul_li"><router-link to="/totalpages" bname='1'><span class="fa fa-address-book-o"></span>我的病人</router-link></li>
        <li><router-link to="/eleDetail" bname='1'><span class="fa fa-file-text-o"></span>电子病历</router-link></li>
        <li><router-link to="/inhistory" bname='1'><span class="fa fa-newspaper-o"></span>住院管理</router-link></li>
        <li><router-link to="Report" bname='1'><span class="fa fa-file-text-o"></span>报告查询</router-link></li>
        <li><router-link to="/chuyuan" bname='1'><span class="fa fa-hospital-o"></span>出院管理</router-link></li>
        <li><router-link to="/chufang" bname='1'><span class="fa fa-file-text-o"></span>处方管理</router-link></li>
        <li><router-link to="/amessage" bname='1'> <span class="fa fa-question"></span>就诊资讯</router-link></li>
        <li><router-link to="/peopleM" bname='1'><span class="fa fa-user"></span>个人信息</router-link></li>
    </ul>
    <ul class="g_ul2">
      <li><div class="g_ul2_img"><img src="../assets/image/椭圆 6.png" alt=""></div><a class="g_zhang" href="#">张医生</a></li>
      <li><router-link to=""><span class="fa fa-power-off"></span>退出登录</router-link></li>
    </ul>
  </div>
</template>
<script>
export default {
  name:'Left',
  watch: {
    $route:(val,olaval)=>{
      // console.log(val.path)
      let selectDom = [];
      let dom=document.getElementsByTagName('a');
      for (let i=0; i<dom.length; i++) {
          if(dom[i].getAttribute('bname')){
              selectDom.push(dom[i]);
          }
      }
      let ly=val.path
      if(ly=='/addcase' || ly=='/bdrecord' || ly=='/change'){
        ly='/eleDetail'
      }else if(ly=='/ihaddcase'){
        ly='/inhistory'
      }else if(ly=='/case' || ly=='/ReportDetail' || ly=='/ReportAdd'|| ly=='/Affix'){
        ly='/Report'
      }else if(ly=='/dayin'){
        ly='/chuyuan'
      }

      for (let i=0; i<selectDom.length; i++) {
          selectDom[i].style.color='#797979'
      }
      for (let i=0; i<selectDom.length; i++) {
          if(ly==selectDom[i].getAttribute('href')){
            selectDom[i].style.color='#16dcb8'
            // selectDom[i].className='router-link-exact-active'
            return
          }
      }
    }
  },
}
</script>
<style scoped>
@import '../assets/css/reset.css';
@import 'https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
  .g_left a{
    color: #797979;
  }
  .fa{
    margin-right: 30px;
  }
  .g_left a:hover{
    color: #16dcb8;
    display: inline-block;
  }
  .g_left li:hover{
    color: #16dcb8;
  }
  .g_left h1{
    color: #16dcb8;
    border-bottom:2px solid #16dcb8;
    height: 128px;
    line-height: 128px;
    margin: 0;
  }
  .g_left{
    height: 100%;
  }
  .g_ul{
    list-style: none;
    margin: 0;
    padding: 0 0 270px 0;
  }
  .g_ul_li{
    margin-top: 25px;
  }
  .g_ul li{
    /* margin:25px 0; */
    line-height: 40px;
    height: 40px;
  }
  .g_ul2{
    border-top: 1px solid #dddddd;
  }
  .g_ul2 li{
    margin:30px 0;
    height: 40px;
    line-height: 40px;
  }
  .g_ul2_img{
    margin: 0 0 0 31%;
    float: left;
  }
  .g_zhang{
    margin-left: -23%;
  }
</style>
