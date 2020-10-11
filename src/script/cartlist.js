require(['config'], function() {
    require(['jquery', 'jq_cookie'], function() {;
        ! function($) {
            if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在,获取cookie转成数组
                let sid = $.cookie('cookiesid').split(','); //[1,2,3]
                let num = $.cookie('cookienum').split(','); //[100,200,300]
                for (let i = 0; i < sid.length; i++) {
                    rendercart(sid[i], num[i])
                }
            }
            //封装函数实现渲染。
            function rendercart(sid, num) { //sid:渲染的商品编号    num:渲染的商品的数量。
                $.ajax({
                    url: 'http://192.168.11.9/YOHO!BUY/php/piclist.php',
                    dataType: 'json'
                }).done(function(data) {
                    $.each(data, function(index, value) {
                        if (value.sid == sid) { //数据接口的sid和当前商品的sid进行比较，如果相等，直接赋值。
                            let strhtml = '';
                            strhtml += `
                            <div class="item">
                               <div class="allselect">
                                  <a href="javascript:;" class="iconfont">&#xe654;</a>
                                  <img src="${value.url}" alt="">
                               </div>
                               <div class="goodstitle">${value.title}</div>
                               <div class="goodsprice">￥${value.price}</div>
                               <div class="goodscount">${num}</div>
                               <div class="goodssum">￥${value.price}</div>
                               <div class="goodsoption">
                               <div>删除</div><div>移入收藏</div>
                               </div>
                            </div>
                            `;
                            $('.item-list').append(strhtml);
                            // calc(); //总算总价
                        }
                    });
                })
            }
        }(jQuery)
    })
})