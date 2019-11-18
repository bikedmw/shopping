<template>
    <div>
        <input type="text" v-model="uname" placeholder="请输入账号"><br>
        <input type="password" v-model="upwd" placeholder="请输入密码">
        <mt-button @click="add">提交</mt-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
            //要查询的页数
            uname:"",
            upwd:""
        }
    },
    methods:{
        add(){
            var uname=this.uname;
            var upwd=this.upwd;
            var obj={uname,upwd}
            let param=new URLSearchParams();
            param.append("uname",uname);
            param.append("upwd",upwd)
            this.axios.post('login',param).then(res=>{
                console.log(res);
            })
        }
    },
    created(){

    },
}
</script>