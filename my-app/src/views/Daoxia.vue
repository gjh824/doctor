<template>
<div class="ic">
   <div id="daxi" class="clear">
    <div class="clear le">
        <h2>
            <span>健康资讯</span>
            <ul>
                <li id="ie">
                    <span>更多     ></span>
                    
                </li>
                <li>
                    <span>健康科普</span>
                    
                </li>
                <li>
                    <span>热点讨论</span>
                </li>
                <li >
                   <span>冬季养生</span>
                </li>
            </ul>
        </h2>
        <div class="xi">
           <p>Health  information</p>
           <ul>
               <li v-for="(item,k) in tab_bb" :key="k" class="bb">
                   <div class="tu">
                   <img :src=item.bb_imone class="im1">
                   <img :src=item.bb_imtwo class="im2">
                   <div class="ni">
                   <p>{{item.bb_p}}</p>
                   <span>{{item.bb_span}}</span>
                   </div>   
                   </div>
               </li>
            </ul> 
        </div>
       
        </div>
         <div class="ri">
             <ul>
                 <li class="li1">
                     <img src="../images/健康档案.png" alt="">
                     <div>
                     <p>健康档案入口</p>
                     <span>Health   Archive</span>
                     </div>
                 </li>
                 <li class="li2">
                     <router-link to="/doc">
                     <img src="../images/男医生-面.png" alt="">
                     <div>
                     <p>医生登录入口</p>
                     <span>Doctor   Login</span>
                     </div>
                     </router-link>
                     
                 </li>
                 <li class="li3">
                     <img src="../images/护士.png" alt="">
                     <div>
                     <p>护士登录入口</p>
                     <span>Nurse   Login</span>
                     </div>
                 </li>
                 <li class="li4">
                     <img src="../images/药房.png" alt="">
                     <div>
                     <p>药房信息入口</p>
                     <span>Pharmacy   Informati</span>
                     </div>
                 </li>
             </ul>
        </div>
    </div>
    <div class="id">
            <router-view></router-view>
    </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            tab_bb:[
                {
                bb_imone:require(('../images/matheus-feero-198223-unsplash.png')),
                bb_imtwo:require(('../images/matheus-ferrero-198223-unsplash.png')),
                bb_p:'春节打好“保卫战”',
                bb_span:'13种养胃食物'
                },
                {
                bb_imone:require(('../images/matheus-feero-198223-unsplash.png')),
                bb_imtwo:require(('../images/matheus-ferrero-198223-unsplash.png')),
                bb_p:'春节打好“保卫战”',
                bb_span:'13种养胃食物'
                },
                {
                bb_imone:require(('../images/matheus-feero-198223-unsplash.png')),
                bb_imtwo:require(('../images/matheus-ferrero-198223-unsplash.png')),
                bb_p:'春节打好“保卫战”',
                bb_span:'13种养胃食物'
                }
            ]


        }


    }
}
</script>
<style scoped>
@import '../css/1.css';
@import 'https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';

    #daxi{
        width: 1198px;
        margin: 0px auto;
        margin-top: 80px;
        margin-bottom: 53px
    }
    h2{
      width: 878px;
      height: 24px;
    }
    h2 span{
        float: left;
        font-size: 22px;
        line-height: 24px;
        color: #333;
    }
    h2 ul li span{
        float: right;
        font-size: 14px;
        line-height: 24px;
        color: #666;
        padding: 0px 21px;
        border-right:1px solid #333 ;
    }
    #ie span{
        padding-right: 0px;
        border:none;
    }
    .xi{
       width: 290px;
       height: 384px;
      
        
       
    }
    .xi p{
        line-height: 28px;
        font-size: 12px;
        color: #2B2B2B;
        margin-bottom: 76px;

    }
    .xi ul{
        width: 880px;
        display:-webkit-box;
        -webkit-box-pack: justify
        ;
    }
    .xi li{
         border-bottom: 1px solid rgb(87,200,243);
    }
    
    .xi .tu{
        
        position: relative;
        width: 288px;
        height: 281px;
        
        
    }
    .xi  .tu .im1{
        position: absolute;
        top:-20px;
        left: 20px;

    }

    .xi  .tu .im2{
        position: absolute;
        top:-66px;
        left: 20px;
        display: none;
        
    }
    .xi  .tu .ni{
        height: 74px;
        position: absolute;
        top:200px;
    }
    .xi  .tu .ni p{
        height: 50px;
        line-height: 50px;
        font-size: 14px;
        margin-bottom: 0px;
    }
    .xi  .tu .ni span{
        font-size: 11px;
        margin-bottom: 10px;

    }
    .bb:hover .im1{
        display: none;
    }
    .bb:hover .im2{
        display: block;
    }
    .bb:hover .tu{
        background: linear-gradient(0deg,rgb(87,200,243),rgb(87,245,151));
    }
    .bb:hover .ni{
        top:204px;
        color: #fff;
    }
    .bb:hover .ni p{
        color: #fff;
    }
    
    .le{
        float: left;
    }
    .ri{
        float: left;
        margin-left: 35px;
    }
    .ri li{
        width: 285px;
        height: 87px;
        background: rgb(152,120,255);
        border-radius: 10px;
        margin-bottom: 20px;
    }
    .ri li img{
        display: inline-block;
        width: 55px;
        margin: 16px 30px 0px 19px;
    }
    .ri li div{
         display: inline-block;
         color: #fff;
       
    }
    .ri li p{
        line-height: 50px;
        font-size: 23px;
    }
    .ri .li2{
       background: rgb(67,185,246) 
    }
    .ri .li3{
       background: rgb(102,134,255) 
    }
    .ri .li4{
       background: rgb(255,197,120) 
    }
    /* .id{
        /* width: 1200px; */
        /* background: #57C7F6; */
    /* }  */
</style>
