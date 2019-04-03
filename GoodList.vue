<template>
<div>
    <div class="app-goodlist">
        <mt-header  fixed title="蜜月时光" style="background:#5d427f82"></mt-header>
      <!--轮播-->
        <div class="lunbo">
         <mt-swipe :auto="2000">
            <mt-swipe-item  v-for="item of navlist" :key="item.id">
             <img :src="item.img_url">
            </mt-swipe-item>
         </mt-swipe>
        </div>
        <!--详细信息 start-->
        <div class="goods-item">
           <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/jw_alila.jpg"></router-link> 
            <h4 class="sel">婚礼场地</h4>
            <div class="sell">
                <span>VENUE</span>
            </div>
        </div>
         <div class="goods-item">
            <img src="http://127.0.0.1:3000/img/img/jw_dreamland.gif">
            <h4 class="sel">婚礼布置</h4>
            <div class="sell">
                <span>DECORATION</span>
            </div>
        </div>
        <div class="goods-item">
            <img src="http://127.0.0.1:3000/img/img/jw_panmoon.gif">
            <h4 class="sel">婚礼客片</h4>
            <div class="sell">
                <span>GALLERY</span>
            </div>
        </div>
         <div class="goods-item">
            <img src="http://127.0.0.1:3000/img/img/jw_forest.jpg">
            <h4 class="sel">婚礼视频</h4>
            <div class="sell">
                <span>VIDEO</span>
            </div>
        </div>
        <!--视频-->
        <div class="box">
            <video src="http://127.0.0.1:3000/img/img/WgXjeG0vUo3kKFGbPfN@@hd.mp4" class="v3" controls>您的浏览器不支持播放视频,请换用Chrome浏览器</video>
        </div>
        <!--婚礼流程介绍-->
        <div class="headline-center">
            <h2 >海外婚礼流程简介 </h2>
            <p>确定您的婚礼目的地->查看目的地国家客片视频和套餐->实时报价->确定婚礼档期,查询档期是否有空档->占档期,下订单,签约,付定金->商讨日程安排计划书</p>
            <p>出发到目的地->拍摄完成,支付尾款->回国->国内与设计师沟通修片视频等->成品制作好快递寄出->完成,成为朋友</p>
        </div>
        <div class="container">
            <a href="">
                <img src="http://127.0.0.1:3000/img/img/year11hmdays_01.jpg" alt="">
            </a>
        </div>
        <div class="footer-logo">
            <img src="http://127.0.0.1:3000/img/img/logo1-default.png" alt="" srcset="">
            <p>作为中国的海外婚礼先驱者，蜜月时光海外婚礼致力于为全国及海外新人提供海外婚礼服务，已服务11年。</p>
            <p>
                无论您在世界的哪个城市，都可以与我们在线预定海外婚礼。
            </p>
            <div>
                <h2 style="border-bottom:3px solid #555;width:140px;padding-bottom:10px; font-size:1.2rem;">我们的联系方式</h2>
            </div>
        </div>

       
        <!--加载更多
        <mt-button size="large" type="primary" @click="loadMore">加载更多</mt-button>-->
      </div> 
      <div class="headline"> 
        <a id="icon-home">
            <span class="mui-icon mui-icon-home">
                地址：成都市锦江区泰合国际财富中心6栋2单元1714/15/16
            </span>
        </a>
        <a>
            <span class="mui-icon-extra mui-icon-extra-outline">工作时间: 9:00-17:30
            </span>
        </a>
        <a id="icon-phone">
            <span class="mui-icon mui-icon-phone">
                 咨询热线： 400-006-6785 
            </span>
        </a>
      </div>
      <div class="copyright">
          <p> 
				蜜月时光海外婚礼(HMDAYS)
                <br>
                「蜜月时光」、「HMDAYS」等为国家注册商标
                <br>
                COPYRIGHT 2007-2019
          </p>
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            navlist:[],//轮播图列表
            list:[],//模板中显示商品列表
            pno:0   //第几页
        }
    },
    created(){
        //当组件创建成功后立即调用加载下一页方法
        this.loadMore();
        this.handleImage();
    },
    methods:{
                //加载轮播图数据
        handleImage(){
            //1.发送ajax获取轮播数据
            var url="http://127.0.0.1:3000/imglist";
            this.axios.get(url).then(result=>{
             //2.获取返回结果
             console.log(result.data.data);
            //3.保存data属性中  
            this.navlist=result.data.data;
            })          
        },
        //加载下一页数据并且将数据显示在模块上
        loadMore(){
            //0.获取当前页码
            this.pno++;
           // console.log(123);
           //1.创建变量URL请求地址
           var url="http://127.0.0.1:3000/getProducts?pno="+this.pno;
           //2.发送ajax请求
           this.axios.get(url).then(result=>{
               //3.获取服务器返回结果保存data 
                //this.list=result.data.data;
                //console.log(this.list);
                //3.获取服务器返回结果 追加list 使用concatenate拼接数组
                var rows=this.list.concat(result.data.data);
                this.list=rows;
           })
        }
    },
}
</script>
<style scoped>
    /*外层父元素*/
    .app-goodlist{
        display:flex;/*弹性布局*/
        flex-wrap:wrap;/*子元素换行*/
        justify-content:space-between;/*两端对齐*/
        padding:4px;
    }
    .app-goodlist .goods-item[data-v-2bcd0899]{
        background:#fff;
        min-height:180px !important;
        margin-top:10px;
    }
    .app-goodlist .goods-item{
        text-align: center;
        font-size:0.8rem;
    }
       .app-goodlist .goods-item img{
        width:100%;
    }
    .sel{margin-top:13px;color: #555;}
    .container{
        background: #fff;
    }
    .container img{
        width:100%;
        margin-top:50px;
        margin-bottom:50px;
        }
    /*婚礼流程*/
    .headline-center{
        background:url("http://127.0.0.1:3000/img/img/u=3527806221,3859528695&fm=26&gp=0.jpg");
         opacity: 0.8; 
        background-size:100% 100%;
        height:375px;
        color: #fff;
        text-align: center;
         margin-top:20px;
    }
    .headline-center h2{
        margin:50px;
    }
    .headline-center p{
       color: #fff;
       margin: 30px 70px;
    }
    /* 视频 */
    .box{background:#fff;}
    .box .v3{
        width:100%;
        margin-top:10px;
        /* padding-bottom:10px; */
    }
    /*底部信息*/
    .footer-logo{
        background: #fff;
    }
    .footer-logo img{
        margin-top:70px; 
    } 
    .footer-logo p{
        margin-top: 20px;
    }
    .footer-logo div{
        margin-top: 30px;
    }
    .headline{
        background: #fff;
         padding-top:10px;  
    }
    .headline a span{
        margin-top:10px;
        font-size:1rem; 
        color:#000;
        padding-bottom:20px
    }
    .app-goodlist[data-v-2bcd0899]{
        padding:0px;
    }
    .copyright{
        margin-top: 40px;
        text-align: center;
    }
    /*信息*/
    .app-goodlist .goods-item{
        width:49%;/*商品信息元素宽度*/
        border:1px solid #ccc;/*边框*/
        margin:2px 0;/*外补丁*/
        padding:2px;
        display:flex;/*子元素弹性布局*/
        flex-direction:column;/*排列方式:按列*/
        min-height:245px;/*最小高度*/
    }
    /*轮播*/
    .app-goodlist .lunbo{
        width:100%; 
         }
        .app-goodlist .mint-swipe{
        height:200px;
    }
    .app-goodlist .mint-swipe img{
        width:100%;
        height:100%;
    }
    /*商品名称*/
    /*商品价格*/
</style>