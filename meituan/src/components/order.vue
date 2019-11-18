<template>
  <div>
    <div id="nav">
      <ul>
        <li v-for="(item,i) in items" :key="i">
          <h2 @click="showToggle(item)">{{ item.name }}</h2>
          <ul v-if="item.isSubshow">
            <li v-for="(subItem,i ) in item.subItems" :key="i">
              <h3>{{ subItem.name }}</h3>
            </li>
          </ul>
                    <ul v-if="item.isSubshow">
            <li v-for="(subItem,i ) in item.subItems" :key="i">
              <h3>{{ subItem.name }}</h3>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
                 items:[
           { 
              name: "Web前端",
              isSubshow:false,
              subItems:[
                {
                  name:"HTML"
                },
                {
                  name:"Css"
                },
                {
                  name:"JavaScript"
                }
              
              ]
           },
           {
              name:"写代码的兔子",
              isSubshow:false,
              subItems:[
                {
                  name:"Vue组件"
                },
                {
                  name:"Vue实现下拉菜单"
                },
                {
                  name:"Vue实现简易留言板"
                }
              ]
           }
         ]
    };
  },
  methods: {
    showToggle(item) {
      item.isSubshow = !item.isSubshow;
    }
  },
  created() {}
};
</script>
<style scoped>
</style>