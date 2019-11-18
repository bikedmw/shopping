<template>
    <div>
        <ul>
            <li v-for="(item,i) of list" :key="i"></li>
        </ul>
    </div>
</template>
<script>
export default {
data(){
    return{
        list:[{
            average_price_tip:"",
            distance:"",
            img:"",
            min_price_tip:"",
            names:"",
            shipping_fee_tip:"",
            times:""
        }]
    }
},
methods:{
    // 获取商品
    add(){
        var url="product"
        this.axios.get(url).then(res=>{
            this.list=res.data.data;
            console.log(this.list);
        })
    }
} ,
created(){
    this.add();
}   
}
</script>
<style scoped>

</style>