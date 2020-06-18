<template>
    <div>
        <div class="HeaNav">
            <router-link to="">电子病历</router-link>
        </div>
        <div class="HeaNav HeaNavTwo">
            <router-link to="/addcase">添加病历</router-link>
        </div>
    </div>
</template>
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
    .HeaNavTwo{
        background: #fff;
        margin-left: 20px;
    }
    .HeaNavTwo a{
        color: black;
    }
</style>