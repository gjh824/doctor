<template>
<!-- inp 框 -->
    <form action="" class="g_iH_form">
        <div class="g_inp"><input type="text" name="" placeholder="请输入用户姓名"></div>
        <div class="g_inp g_inp_cen" @mousemove="show" @mouseout="noShow"><input type="text" name="" placeholder="选择就诊时间"><span class="fa fa-sort-down"></span></div>
        <div class="g_inp g_inp_sp"><span class="fa fa-search"></span></div>
    </form>
</template>
<script>
export default {
    name:'Binp',
    methods: {
        show(){
            let sp=document.getElementsByClassName('fa-sort-down')[0]
            sp.style.display='block'
        },
        noShow(){
            let sp=document.getElementsByClassName('fa-sort-down')[0]
            sp.style.display='none'
            console.log(22222)
        }
    },
}
</script>
<style scoped>
    form{
        padding-top: 20px;
        margin-bottom: 20px;
    }
    .g_inp{
        display: inline-block;
    }
    .g_inp input{
        border-style: none;
        width: 140px;
        height: 30px;
        border: 1px solid #cccccd;
        border-radius: 25px;
        padding-left: 20px;
        outline:none;
    }
    .g_inp_cen{
        margin: 0 10px;
        position: relative;
    }
    .fa-sort-down{
        position: absolute;
        right: 20px;
        top: 5px;
        display: none;
    }
    .g_inp span{
        font-size: 20px;
    }
    .g_inp_sp{
        width: 30px;
        height: 30px;
        border-radius: 50%;
        background: #16dcb8;
        text-align: center;
        line-height: 30px;
        color: #fff;
    }
</style>
