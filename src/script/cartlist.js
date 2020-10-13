require(['config'], function() {
    require(['jquery', 'jq_cookie'], function() {
        return {
            cartlist: ! function() {
                if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在,获取cookie转成数组
                    let sid = $.cookie('cookiesid').split(','); //[1,2,3]
                    let num = $.cookie('cookienum').split(','); //[100,200,300]
                    // let price = $.cookie('cookieprice').split(',');
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
                            // let price = value.price;
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
                               <div class="goodscount">  
                                   <span class="numbercountminus">-</span> 
                                   <div class="goodscountchange">${num}</div>
                                   <span class="numbercountadd">+</span>
                               </div>
                               <div class="goodssum">￥${(value.price*num).toFixed(2)}</div>
                               <div class="goodsoption">
                                   <a href="javascript:;">删除</a>
                                   <div>移入收藏</div>
                               </div>
                            </div>
                            `;
                                $('.item-list').append(strhtml);
                            }
                            selectAll();
                        });
                    })
                }

                //+-点击数量变化
                $('.item-list').on('click', '.numbercountadd', function() {
                    $('.numbercountadd').bind("selectstart", function() { return false; });
                    let goodsnum = +$(this).parent().find('.goodscountchange').text();
                    let goodprice = +$(this).parent().parent().find('.goodsprice').text().substring(1);
                    ++goodsnum;
                    $(this).parent().find('.goodscountchange').text(goodsnum);
                    $(this).parent().parent().find('.goodssum').text(`￥${(goodprice*goodsnum).toFixed(2)}`);
                })
                $('.item-list').on('click', '.numbercountminus', function() {
                    $('.numbercountminus').bind("selectstart", function() { return false; });
                    let goodsnum = +$(this).parent().find('.goodscountchange').text();
                    let goodprice = +$(this).parent().parent().find('.goodsprice').text().substring(1);
                    --goodsnum;
                    if (goodsnum < 1) {
                        goodsnum = 1
                    }
                    $(this).parent().find('.goodscountchange').text(goodsnum);
                    $(this).parent().parent().find('.goodssum').text(`￥${(goodprice*goodsnum).toFixed(2)}`);
                });

                //删除
                function getcookie() {
                    if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在
                        arrsid = $.cookie('cookiesid').split(','); //获取cookie的sid，存放到数组中。
                        arrnum = $.cookie('cookienum').split(','); //获取cookie的数量，存放到数组中。
                    } else { //cookie不存在
                        arrsid = [];
                        arrnum = [];
                    }
                }

                function delcookie(sid, arrsid) { //sid:当前删除的sid  arrsid:存放sid的数组[3,5,6,7]
                    let $index = -1; //删除的索引位置
                    $.each(arrsid, function(index, value) {
                        if (sid === value) {
                            $index = index;
                        }
                    });
                    arrsid.splice($index, 1);
                    arrnum.splice($index, 1);

                    $.cookie('cookiesid', arrsid, { expires: 10, path: '/' })
                    $.cookie('cookienum', arrnum, { expires: 10, path: '/' })
                }

                $('.item-list').on('click', '.goodsoption a', function() {
                    getcookie();
                    if (window.confirm('你确定要删除吗?')) {
                        $(this).parents('.item').remove();
                        delcookie($(this).parents('.item').find('img').attr('sid'), arrsid);
                        calc();
                    }
                });
                //删除所有
                $('.clearall').on('click', function() {
                    getcookie();
                    if (!$('.allsel1').prop('checked') ||
                        !$('.allsel2').prop('checked')) {
                        alert('您未全选!');
                        return false;
                    }
                    if (window.confirm('你确定要全部删除吗?')) {
                        $('.item:visible').each(function() {
                            if ($(this).find(':checkbox').is(':checked')) { //判断复选框是否选中
                                $(this).remove();
                                delcookie($(this).find('img').attr('sid'), arrsid);
                            }
                        });
                        calc();
                    }
                });
                //删除当前
                $('.delthis').on('click', function() {
                    getcookie();
                    if (!$('.item:visible').find(':checkbox').is(':checked')) {
                        alert('您未选中商品!');
                        return false;
                    }
                    if (window.confirm('你确定要删除吗?')) {
                        $('.item:visible').each(function() {
                            if ($(this).find(':checkbox').is(':checked')) { //判断复选框是否选中
                                $(this).remove();
                                delcookie($(this).find('img').attr('sid'), arrsid);
                            }
                        });
                        calc();
                    }
                })

                //计算数量及总价
                function calc() {
                    let allprice = 0;
                    let allcount = 0;
                    $('.item').each(function(index, element) {
                        if ($(this).find('#g-checkbox').prop('checked')) { //复选框选中。
                            allcount += +($(this).find('.goodscountchange').html()); //总的件数
                            allprice += +($(this).find('.goodssum').html().substring(1)); //总价
                        }
                    });
                    $('.amountnumber').html(allcount);
                    $('.amount').html(`￥${(allprice).toFixed(2)}`);
                };

                //全选
                function selectAll() {
                    let all1 = $('.allsel1');
                    let all2 = $('.allsel2');
                    let inputlength = 0;
                    $('.item').each(function(index, element) {
                        inputlength++;
                        let inputs = $(this).find('#g-checkbox')
                        all1.on('click', function() {
                            inputs.prop('checked', all1.prop('checked'));
                            all2.prop('checked', all1.prop('checked'));
                            if (inputs.prop('checked')) {
                                $('.item').attr('style', 'background:#f5f5f5')
                            } else {
                                $('.item').attr('style', 'background:#fff')
                            }
                            calc();
                        });
                        all2.on('click', function() {
                            inputs.prop('checked', all2.prop('checked'));
                            if (inputs.prop('checked')) {
                                $('.item').attr('style', 'background:#f5f5f5')
                            } else {
                                $('.item').attr('style', 'background:#fff')
                            }
                            all1.prop('checked', all2.prop('checked'));
                            calc();
                        });
                        inputs.on('click', function() {
                            calc();
                            if (inputs.prop('checked')) {
                                $(this).parent().parent().attr('style', 'background:#f5f5f5')
                            } else {
                                $(this).parent().parent().attr('style', 'background:#fff')
                            }
                            if ($('#g-checkbox:checked').size() === inputlength) {
                                all1.prop('checked', true);
                                all2.prop('checked', true);
                            } else {
                                all1.prop('checked', false);
                                all2.prop('checked', false);
                            }
                        });
                    })
                };

            }(),
        }
    })
})