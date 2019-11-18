<template>
  <div>
    <ul id="d1">
      <li v-for="(item,i) of lists" :key="i">
        <router-link to="/*">
        <img :src="item.img" alt />{{item.title}}
        </router-link>
      </li>
    </ul>
    <ul></ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      lists: [
        {
          title: "zhang",
          img: "123456"
        }
      ]
    };
  },
  methods: {
    //获取前五条数据
    add() {
      var pno = 1;
      var pageSize = 16;
      var obj = { pno, pageSize };
      this.axios.get("list", { params: obj }).then(res => {
        this.lists = res.data.data;
      });
    }
  },
  created() {
    //在加载页面时候获取
    this.add();
  }
};
</script>
<style  scoped>
*{
    margin:0;
    padding:0;
}
    #d1{
        list-style: none;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        width:100%;
    }
    #d1 :nth-child(-n+5){
        width:20%;
    }
  #d1 :nth-child(-n+5)>a{
     text-decoration: none;
     display:flex;
     margin-left:5px;
     flex-direction: column;
     color:black;
    text-align: center;
     width:100%;
     font-size:10px;
     justify-content: space-between;
  }
  #d1 :nth-child(-n+5)>a>img{
      width:80%;
      align-self: center;
      margin-bottom: 5px;
  }
  #d1 :nth-child(n+6){
      width:20%;
  }
  #d1 :nth-child(n+6)>a{
      text-decoration: none;
      margin-top:20px;
      display: flex;
      flex-direction: column;
      text-align: center;
      color:black;
      width:100%;
  }
    #d1 :nth-child(n+6)>a>img{
      width:30px;
      align-self: center;
      margin-bottom: 5px;
  }
</style>