<template>
 <p class="pageContainer">
  <ul class="pagesInner">
   <li class="page"><span  @click="prevOrNext(-1)" class="aa fa fa-chevron-left" aria-hidden="true"></span></li>
   <li class="page biaji" v-for="(item, index) in data1.pag" :key="index"    @click="select($event,index,data1.url)">
    <span>{{item.page}}</span>
   </li>
   <li class="page"><span  @click="prevOrNext(1)" class=" aa fa fa-chevron-right" aria-hidden="true"></span></li>
  <span style="display: inline-block; width: 40px; height: 30px; background-color: #93e9e0; text-align: center; line-height: 30px; border-radius: 50%; margin-left: 10px;">前往</span>
          <span><input style="text-align: center; margin-left: 10px; margin-right: 10px; width: 30px; height: 20px;" type="text" v-model="changPage"></span>
          <span @click="jumpPage(changPage)" style="display: inline-block; width: 40px; height: 30px; line-height: 30px; border: 1px solid #93e9e0; text-align: center; border-radius: 50%; background-color: #93e9e0; cursor: pointer;">GO</span>

  </ul>
 </p>
</template>
<script>
export default {
  props:['data1'],
  data() {
  return {
   currentPage: 1,
   totalPages: 10,
   changPage:'',
   activeClass: 'actived',
  }
 },
 methods: {
select(e,index,url) {
  // e.target.classList.add('actived')
  // let biaoji=document.getElementsByClassName('biaoji')
  // biaoji.forEach(ele=>{
  //   ele.classList.remove("actived")
  // })
  // :class="[item.page==1?activeClass:'']"
  // this.changPage=index
   this.$axios.get(url,{params:{page:index}})
      .then(result=>{
          this.count=result.data
          this.count.forEach(ele => {
              ele.imgs='http://localhost:3000'+ele.imgs
          });
          this.$emit('cd',this.count)
      })
},
jumpPage(id){
  let url=this.data1.url
  console.log(this.data1.url)
  this.$axios.get(url,{params:{page:id-1}})
      .then(result=>{
          this.count=result.data
          this.count.forEach(ele => {
              ele.imgs='http://localhost:3000'+ele.imgs
          });
          this.$emit('ef',this.count)
})
          
},
prevOrNext(n) {
  this.currentPage += n
  this.currentPage < 1
 ? this.currentPage = 1
 : this.currentPage > this.totalPages
 ? this.currentPage = this.totalPages
  : null
},
},
 computed: {
  pages() {
  const c = this.currentPage
   const t = this.totalPages
   if (c <= 3) {
    return [1, 2, 3,4,5,6,7, '...', t]
   } else if (c >=t-4) {
    return [1, '...',t-6,t-5,t-4,t-3,t-2,t-1,t]
   }else {
    return[1, 2, 3,4,5,6,7, '...', t] 
   }
  }
 }
};
</script>
<style scoped>
.pageContainer{
    /* float: left; */
    display: inline-block;
    margin-left: 150px;
    /* margin-top: 15px; */
}
.pageContainer li{
  float: left;
  list-style: none;
  width: 30px;
  height: 30px;
  border-radius: 50%;
  text-align: center;
  line-height: 30px;
  margin-right: 10px;
}
.pageContainer li .aa {
  display:block;
  width: 35px;
  height: 35px;
  border-radius: 50%;
  margin-top: -3px;
  text-align: center;
  line-height: 35px;
  border: 1px solid #93e9e0;
}
.pageContainer li :hover{
  cursor: pointer;
}
.actived {
  border-color: #93e9e0;
  background-color: #93e9e0;
  color: #fff;
}
</style>