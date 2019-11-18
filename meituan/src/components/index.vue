<template>
    <div>
        <div id="d1">
           <router-link to="">文化商厦</router-link>
           <img src="" alt="">
        </div>
        <lists id="d2"></lists>
        <div><h1>附近商家</h1></div>
        <fujin></fujin>
    </div>
</template>
<script>
import Lists from './index/list'
import fujin from './index/fujin'
export default {
    components:{
        Lists,
        fujin
    }
}
</script>
<style scoped>
    #d1{
        width:100%;
        height:80px;
        background-color:red;
    }
    #d2{
        margin-top:10px;
    }
</style>