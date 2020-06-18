<template>
<!-- 登录后 默认 页面跳转 最大根 -->
    <div class="gg clear">
      <div id="left">
        <Left />
      </div>
      <div id="right">
          <router-view></router-view>
        <div class="foot">
            <Foot />
        </div>
      </div>
    </div>
</template>
<script>
import Left from './Left'
import Foot from './Foot'
export default {
    name:'TotalPages',
    components:{
    Left,
    Foot,
  }
}
</script>
<style scoped>
@import '../css/1.css';
@import 'https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
    #left{
        width: 18%;
        text-align: center;
        /* background-color: rgba($color: #ffffff, $alpha: 0.8); */
        background-color: rgba(255, 255, 255, 0.8);
        /* height: 100%; */
        height: 1080px;
        float: left;
    }
    #right{
        width:82%;
        float: left;
        height: 1080px;
        position: relative;
    }
    .foot{
        width: 100%;
        position: absolute;
        bottom: 0;
    }
    .gg{
      width: 100%;
      margin: 0px auto;
      height: 1080px;
      background: url('../images/bg.jpg')no-repeat -30px 0px;

    }
 
</style>