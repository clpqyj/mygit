<template>
    <div class="app-login">
        <h1>登陆组件</h1>
        <form>
        用户名:
        <input type="text" name="uname" v-model="uname">
        <br>
        密码:
        <input type="password" name="upwd" v-model="upwd">
        <br>
        <input type="button" value="登陆" @click="btnLogin">
        </form>
    </div>
</template>
<script>
//1.引入mint-ui Toast 局部使用
import {Toast} from "mint-ui"
export default {
    data(){
        return{
            uname:"",
            upwd:"",
        }
    },
    methods: {
        btnLogin(){
            //console.log(123);
            //1.获取用户输入用户名和密码
            var u=this.uname;
            var p=this.upwd;
            //console.log(u+":"+p);
            //2.创建正则表达式验证用户名和密码格式是否正确
            var reg=/^[a-z0-9_]{3,8}$/i
            if(!reg.test(u)){
                //提示信息
                Toast("用户名格式不正确,请检查");
                return;
            }
            if(!reg.test(p)){
                Toast("密码格式不正确,请检查");
                return;
            }
            console.log(3)
            //3.发送ajax
            var url="http://127.0.0.1:3000/login?uname="+u+"&upwd="+p;
            this.axios.get(url).then(result=>{
                    //console.log(result);
                    if(result.data.code==1){
                        Toast("登陆成功");
                    }else{
                        Toast("用户名或密码有误")
                    }
            });
            //4.获取服务器返回结果
            //5.提示用户
        }
    },
}
</script>
<style scoped>
    
</style>