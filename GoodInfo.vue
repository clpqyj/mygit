<template>
    <div class="app-goodeinfo">
        <h1>商品详细</h1>
        <div class="mui-card">
            <div class="mui-card-header">商品名称:{{info.title}}</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p>销售价:{{info.price}}</p>
                </div>
            </div>
            <div class="mui-card-footer">
                <mt-button @click="addcart">加入购物车</mt-button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {//上一个
            lid:this.$route.query.lid,
            info:{} //显示商品对象
        }
    },
    created() {
        this.findProduct();
    },
    methods:{
        //当组件创建成功后加载当前商品信息
        findProduct(){
            //console.log(123);
            //1.获取商品lid
            //2.发送ajax请求
            var url = "http://127.0.0.1:3000"
            url+="/findProduct?lid="+this.lid;
            this.axios.get(url).then(result=>{
                console.log(result);
                this.info= result.data.data[0];
            })
            //3.获取服务器返回结果[]
            //4.保存返回结果 info{}
        },
        addcart(){
            //console.log("123");
            //1.获取三个参数 pid pname price
            var pid=this.lid;
            var pname=this.info.lname;
            var price=this.info.price;
            //2.发送ajax
            console.log(pid)
            console.log(pname)
            console.log(price)
            var url="http://127.7.7.1:3000"
            url+="/addcart";
            url+="?pid="+pid;
            url+="&price="+price;
            url+="&panme="+pname;
            this.axios.get(url).then(result=>{
                console.log(result);
                //如果将商品已经加入购物车
                //GoodInfo.vue addcart
                this.$store.commit("increment")
            })
            //3.获取返回结果
        }
    },
}
</script>
<style>

</style>
