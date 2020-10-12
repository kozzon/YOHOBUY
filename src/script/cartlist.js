require(['config'], function() {
    require(['jquery', 'jq_cookie'], function() {
        return {
            cartlist: ! function() {
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
                                  <input type="checkbox"  name="" id="g-checkbox" value=""/>
                                  <img src="${value.url}" alt="">
                               </div>
                               <div class="goodstitle">${value.title}</div>
                               <div class="goodsprice">￥${value.price}</div>
                               <div class="goodscount">${num}</div>
                               <div class="goodssum">￥${(value.price*num).toFixed(2)}</div>
                               <div class="goodsoption">
                               <div>删除</div><div>移入收藏</div>
                               </div>
                            </div>
                            `;
                                $('.item-list').append(strhtml);
                                selectALl();
                            }
                        });
                    })
                }

                //计算数量及总价
                function calc() {
                    let allprice = 0;
                    let allcount = 0;
                    $('.item').each(function(index, element) {
                        if ($(this).find('#g-checkbox').prop('checked')) { //复选框选中。
                            allcount += +($(this).find('.goodscount').html()); //总的件数
                            allprice += +($(this).find('.goodssum').html().substring(1)); //总价
                        }
                    });
                    $('.amountnumber').html(allcount);
                    $('.amount').html(`￥${(allprice).toFixed(2)}`);
                };

                //全选
                function selectALl() {
                    let all1 = $('.allsel1');
                    let all2 = $('.allsel2');
                    let inputlength = 0;
                    $('.item').each(function(index, element) {
                        inputlength++;
                        let inputs = $(this).find('#g-checkbox')
                        all1.on('click', function() {
                            inputs.prop('checked', all1.prop('checked'));
                            all2.prop('checked', all1.prop('checked'));
                            calc();
                        });
                        all2.on('click', function() {
                            inputs.prop('checked', all2.prop('checked'));
                            all1.prop('checked', all2.prop('checked'));
                            calc();
                        });
                        inputs.on('click', function() {
                            calc();
                            if ($('#g-checkbox:checked').size() === inputlength) {
                                all1.prop('checked', true);
                                all2.prop('checked', true);
                            } else {
                                all1.prop('checked', false);
                                all2.prop('checked', false);
                            }
                        });
                    })
                }
            }(),
        }
    })
})