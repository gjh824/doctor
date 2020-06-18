<template>
    <div>
        <div>
             <div class="HeaNav">
                <router-link to="">病历详情</router-link>
            </div>
        </div>
        <div class="elecen">
        <div class="bing" >
            <div class="g_l_div">
                <ul class="g_l_ul">
                    <li><span class="g_l_sp">姓名：</span><span>张某某</span></li>
                    <li><span class="g_l_sp">性别：</span><span>男</span></li>
                    <li><span class="g_l_sp">年龄：</span><span>40</span></li>
                    <li><span class="g_l_sp">科室：</span><span>骨科</span></li>
                    <li><span class="g_l_sp">诊断类型：</span><span>复诊</span></li>
                </ul>
            </div>
           <div>
                <ul class="g_lg_ul">
                    <router-link to="/change" tag="li" v-for="(item,k) in tab_case" :key="k" class="g_lg_li">
                        <div class="g_lg_div">就诊时间：<span class="g_lg_sp">{{item.tab_times}}</span></div>
                        <div class="g_lg_div">就诊科室：<span class="g_lg_sp">{{item.tab_office}}</span></div>
                        <div class="g_lg_div">病情描述：<span class="g_lg_sp">{{item.tab_depict}}</span></div>
                    </router-link>
                </ul>
            </div>
        </div>
    </div>
    </div>
</template>
<script>
export default {
    name:'EMRdetail',
    data() {
        return {
            tab_case:[
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                },
                {
                    tab_times:'2019-04-01',
                    tab_office:'骨科',
                    tab_depict:'都is红格佛id是佛is哈佛I好几个io哦撒高烧和'
                }
            ]
        }
    },
}
</script>
<style scoped>
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

    .g_l_div{
        padding-top: 20px;
        margin-bottom: 20px;
        height: 78px;
        line-height: 78px;
        padding-right: 15%;
    }
    .g_l_div span{
        display: inline-block;
        font-size: 16px;
    }
    .g_l_ul{
        display: -webkit-flex;
        display: flex;
        -webkit-flex-direction: row;
        flex-direction: row;
    }
    .g_l_ul li{
        flex: 1;
        margin: auto;
        color: #333333;
    }
    .g_l_sp{
        color: #797979;
    }

    .g_lg_ul{
        width: 100%;
        overflow: hidden;
    }
    .g_lg_li{
        width: 19%;
        min-width: 176px;
        height: 180px;
        padding:8px;
        background: #f8f8f8;
        box-shadow: -3px 3px 8px #ccc;
        float: left;
        color: #666666;
        margin-right: 3%;
        margin-bottom: 20px;
        font-size: 14px;
        cursor: pointer;
    }
    .g_lg_li:hover{
        background: #eaeaea;
    }
    .g_lg_div{
        overflow: hidden;
        width: 100%;
        margin: 10px;
        text-overflow: ellipsis;
        height:20px ;
        white-space: nowrap;
    }
    .g_lg_sp{
        color: #333333;
    }
</style>