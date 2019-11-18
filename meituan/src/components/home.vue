<template>
  <div>
      <!-- tab-container -->
<mt-tab-container v-model="selected">
  <mt-tab-container-item id="tab1">
   <indexs></indexs>
  </mt-tab-container-item>
  <mt-tab-container-item id="tab2">
      <orders></orders>
  </mt-tab-container-item>
  <mt-tab-container-item id="tab3">
      <mine></mine>
  </mt-tab-container-item>
</mt-tab-container>
    <mt-tabbar v-model="selected">
      <mt-tab-item id="tab1">首页</mt-tab-item>
      <mt-tab-item id="tab2">订单</mt-tab-item>
      <mt-tab-item id="tab3">我的</mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<script>
import indexs from './index.vue'
import orders from './order.vue'
import mine from './mine.vue'
export default {
  data() {
    return {
      selected: "tab1"
    };
  },
  methods: {},
  created() {},
  components:{
      orders,
      mine,
      indexs
  }
};
</script>
<style scoped>
</style>