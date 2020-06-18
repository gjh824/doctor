<template>
<div>
<div id='qw'>
 <div class="swiperBox">
      <swiper ref="mySwiper" :options="swiperOptions">
        <swiper-slide><img src="../images/5.jpg" width="1200"></swiper-slide>
        <swiper-slide><img src="../images/4.jpg" width="1200"></swiper-slide>
        <swiper-slide><img src="../images/3.jpg" width="1200"></swiper-slide>
        <swiper-slide><img src="../images/2.jpg" width="1200"></swiper-slide>
        <swiper-slide><img src="../images/1.jpg" width="1200"></swiper-slide>
        <div class="swiper-pagination" slot="pagination"></div>
      </swiper>
      <div class="swiper_btn swiper-button-prev" slot="button-prev"></div>
      <div class="swiper_btn swiper-button-next" slot="button-next"></div>
      </div>
      </div>
      <router-view></router-view>
      </div>
      
      

</template>
<script>
  export default {
    name: 'carrousel',
    data() {
      return {
        swiperOptions: {
          pagination: {
            el: '.swiper-pagination'
          },
          // Some Swiper option/callback...
          loop: true,
          // autoplay:false,
          speed: 1000,
            // autoplayDisableOnInteraction: false,
            navigation: {
                prevEl: ".swiper-button-prev",
                nextEl: ".swiper-button-next",
            } 
        }
      }
    },
    computed: {
      swiper() {
        return this.$refs.mySwiper.$swiper
      }
    },
    mounted() {
      console.log('Current Swiper instance object', this.swiper)
      this.swiper.slideTo(1, 1000, false)
    }
  }
</script> 

<style scoped>
#qw{
  width: 100%;
  height: 400px;
  background: #57C7F6;
}
    .swiperBox{
        width:62%;
        height: 400px;
        margin: 0px auto;
        
        position: relative;
    }
    img{
      width: 100%;

        height: 400px;
    }
    .swiper_btn{
        position: absolute;
        top:200px;
        z-index: 100 ;
    }
    .swiper-button-prev{
        width: 34px;
        height: 80px ;
        left: 48px;
        color: #fff;
        opacity:0.8;
        background-color: #8C258D;
    }
    .swiper-button-next{
        width: 34px;
        height: 80px ;
        right: 48px;
        opacity:0.8;
        color: #fff;
        background-color: #8C258D;
        /*background: url("路径") no-repeat;
        background-size: 100% 100%; */ 
    }
    .ad{
      background: none;
    }
</style>
