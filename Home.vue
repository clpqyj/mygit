<template>
    <div class="app-home">
      <div class="mui-bar mui-bar-nav" style="background:#fff;">
        <a id="icon-menu" class="mui-action-menu mui-icon mui-icon-bars mui-pull-left" style="background:#f28da9;color:#fff;border-radius:10px;height:36px;margin-top:5px;">菜单</a>
        <a class="mui-action-back mui-btn mui-btn-link mui-pull-right"><img src="http://127.0.0.1:3000/img/img/hmdLogo2019.png" style="height:40px;margin-top:5px;" alt=""></a>
      </div>
      <div class="goods-item">
           <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/forAlila_01.jpg"></router-link> 
            <h4 class="sel">港丽酒店</h4>
            <div class="sell">
                <span>PINKY 婚礼+晚宴</span>
            </div>
      </div>
      <div class="goods-item">
        <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/forestspringB_01.jpg"></router-link> 
        <h4 class="sel">彩虹宫殿</h4>
        <div class="sell">
            <span>RAINBOW PALACE</span>
        </div>
      </div>
      <div class="goods-item">
        <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/foreststpionA_01.jpg"></router-link> 
        <h4 class="sel">丽思卡尔顿</h4>
        <div class="sell">
            <span>FAIRY TALE</span>
        </div>
      </div>
      <div class="goods-item">
        <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/foreststpionA_01.jpg"></router-link> 
        <h4 class="sel">时光森林</h4>
        <div class="sell">
            <span>TIME FOREST</span>
        </div>
      </div>
      <div class="goods-item">
        <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/bluecrown_01.jpg"></router-link> 
        <h4 class="sel">丽思卡尔顿</h4>
        <div class="sell">
            <span>FLORA PNIK</span>
        </div>
      </div>
       <div class="goods-item">
        <router-link to="/Home"><img src="http://127.0.0.1:3000/img/img/oceangreen_01.jpg"></router-link> 
        <h4 class="sel">海神庙</h4>
        <div class="sell">
            <span>OCEAN GREEN</span>
        </div>
      </div>
      <div class="heading">
      <router-link to="/GoodList">
      <button>返回</button>
      
      </router-link> 
    </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
    .app-container{
      background:#fff !important;
    }
    .app-home .goods-item img{
      width: 100%;
      margin-top: 40px;
    }
     .app-home .goods-item{
       text-align: center;
       font-size:1rem;
       color: #333;
     }
    .app-home .goods-item .sel{
      
      margin-top: 40px;

    }
    .heading{
      text-align: center;
      margin-top: 50px;
    }
    .heading button{
      font-size: 23px;
      /* padding: 20px; */
    }
</style>