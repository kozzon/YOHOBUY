require(['config'], function() {
    require(['jquery', 'jq_cookie'], function() {
        return {
            detailrender: ! function() {
                var sid = location.search.substring(1).split('=')[1];
                if (!sid) {
                    sid = 1;
                }
                $.ajax({
                    url: 'http://192.168.11.9/YOHOBUY/php/getsid.php',
                    data: {
                        datasid: sid
                    },
                    dataType: 'json'
                }).done(function(data) {
                    $('.goodsbigimg img').attr('src', data.url);
                    $('.color-name img').attr('src', data.url);
                    $('.bf img').attr('src', data.url);
                    $('.goodstitle').html(data.title);
                    $('.goods-price').html('￥' + data.price);
                    // console.log(data.piclisturl.split(','));
                    var picarr = data.piclisturl.split(','); //数据转换成数组
                    var strhtml = '';
                    $.each(picarr, function(index, value) {
                        strhtml += '<li><img src="' + value + '"/></li>';
                    });
                    $('.goodsimgs ul').append(strhtml);

                    //移动小图切换大图
                    $('.goodsimgs ul li').first().css({
                        'border': '2px solid'
                    })
                    $('.goodsimgs ul li img').on('mouseover', function() {
                        $('.goodsbigimg img').attr({
                            src: `${$(this).attr('src')}`
                        });
                        $('.scale .bf img').attr({
                            src: `${$(this).attr('src')}`
                        });
                        $(this).parent().css({
                            'border': '2px solid'
                        })
                        $(this).parent().siblings().css({
                            'border': '2px solid #fff'
                        })
                    });
                    $('.goodsimgs ul li img').on('mouseout', function() {
                        $(this).parent().siblings().css({
                            'border': '2px solid #fff'
                        })
                    });
                });
                //cookie
                var arrsid = [];
                var arrnum = [];
                // var arrprice = [];

                function getcookie() {
                    if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在
                        arrsid = $.cookie('cookiesid').split(','); //获取cookie的sid，存放到数组中。
                        arrnum = $.cookie('cookienum').split(','); //获取cookie的数量，存放到数组中。
                        // arrprice = $.cookie('cookieprice').split(','); //获取cookie的尺寸，存放到数组中。
                    } else { //cookie不存在
                        arrsid = [];
                        arrnum = [];
                        // arrprice = [];
                    }
                }
                $('.addtocart').bind("selectstart", function() { return false; });
                $('.addtocart').on('click', function() {
                    getcookie();
                    if ($.inArray(sid, arrsid) === -1) {
                        arrsid.push(sid);
                        $.cookie('cookiesid', arrsid, { expires: 10, path: '/' }); //插件完成的cookie的添加。
                        arrnum.push($('#count').text()); //添加商品的数量
                        $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                        // arrprice.push(+$('.goods-price').text().substring(1)); //添加商品的尺寸
                        // console.log(+$('.goods-price').text().substring(1));
                        // console.log(typeof $('.goods-price').text().substring(1));
                        // $.cookie('cookieprice', arrprice, { expires: 10, path: '/' });
                    } else {
                        var index = $.inArray(sid, arrsid); //sid在数组中的位置
                        var num = parseInt(arrnum[index]); //sid对应的数量
                        // var price = arrprice[index];
                        arrnum[index] = num + parseInt($('#count').text()); //原来的数量+新添加数量进行赋值
                        // arrprice[index] = price + $('.goods-price').text().substring(1);
                        // arrprice.push('+$('.goods-price').text().substring(1)'); //添加商品的尺寸
                        $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                        // $.cookie('cookieprice', arrprice, { expires: 10, path: '/' });
                    }
                })
            }(),
            //+-点击数量变化
            number: ! function() {
                var goodsnum = 1;
                $('.numbercountadd').bind("selectstart", function() { return false; });
                $('.numbercountminus').bind("selectstart", function() { return false; });
                $('#count').text(goodsnum);
                $('.numbercountadd').on('click', function() {
                    ++goodsnum;
                    $('#count').text(goodsnum);
                })
                $('.numbercountminus').on('click', function() {
                    --goodsnum;
                    if (goodsnum < 1) {
                        goodsnum = 1
                    }
                    $('#count').text(goodsnum);
                })
            }(),
            //选择尺寸
            size: ! function() {
                $('.sizebutton').bind("selectstart", function() { return false; });
                $('.sizebutton').on('click', function() {
                    $(this).addClass('buttonchosen').siblings().removeClass('buttonchosen')
                })
            }(),
            //点击加入购物车后弹出进入购物车  继续购物
            addtocart: ! function() {
                $('.addtocart').on('click', function() {
                    $('.none').slideUp();
                    $('.show').css('display', 'inline-block');
                })
                $('.show').eq(1).on('click', function() {
                    $('.show').css('display', 'none')
                    $('.none').slideDown();
                })
            }(),
            user: ! function() {
                if ($.cookie('cookieuser')) {
                    $('.username').css("display", "inline-block");
                    $('.username').text($.cookie('cookieuser'))
                    $('.login').css("display", "none");
                    $('.registry').css("display", "none");
                    $('.quit').css("display", "inline-block");
                }
                $('.quit').on('click', function() {
                    window.location.reload();
                    $('.login').css("display", "inline-block");
                    $('.registry').css("display", "inline-block");
                    $('.username').css("display", "none");
                    $('.quit').css("display", "none");
                    if ($.cookie('cookieuser')) {
                        $.cookie('cookieuser', null, { expires: -1, path: '/' })
                    }
                })
            }()
        };
    })
})