require(['config'], function() {
    require(['jquery', 'jq_cookie'], function() {
        return {
            detailrender: ! function() {
                let sid = location.search.substring(1).split('=')[1];
                if (!sid) {
                    sid = 1;
                }
                $.ajax({
                    url: 'http://192.168.11.9/YOHO!BUY/php/getsid.php',
                    data: {
                        datasid: sid
                    },
                    dataType: 'json'
                }).done(function(data) {
                    $('.goodsbigimg img').attr('src', data.url);
                    $('.color-name img').attr('src', data.url);
                    $('.bf img').attr('src', data.url);
                    $('.goodstitle').html(data.title);
                    $('.goods-price').html(`￥${data.price}`);
                    console.log(data.piclisturl.split(','));
                    let picarr = data.piclisturl.split(','); //数据转换成数组
                    let strhtml = '';
                    $.each(picarr, function(index, value) {
                        strhtml += `  
                            <li>   
                                <img src="${value}"/>
                            </li>
                        `;
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
                let arrsid = [];
                let arrnum = [];
                let arrsize = [];

                function getcookie() {
                    if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在
                        arrsid = $.cookie('cookiesid').split(','); //获取cookie的sid，存放到数组中。
                        arrnum = $.cookie('cookienum').split(','); //获取cookie的数量，存放到数组中。
                        // arrsize = $.cookie('cookiesize').split(','); //获取cookie的尺寸，存放到数组中。
                    } else { //cookie不存在
                        arrsid = [];
                        arrnum = [];
                        // arrsize = [];
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
                        // arrsize.push($('.buttonchosen').text()); //添加商品的尺寸
                        // $.cookie('cookiesize', arrsize, { expires: 10, path: '/' });
                    } else {
                        let index = $.inArray(sid, arrsid); //sid在数组中的位置
                        let num = parseInt(arrnum[index]); //sid对应的数量
                        // let size = arrsize[index];
                        arrnum[index] = num + parseInt($('#count').text()); //原来的数量+新添加数量进行赋值
                        // arrsize[index] = size + $('.buttonchosen').text()
                        $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                        // $.cookie('cookiesize', arrsize, { expires: 10, path: '/' });
                    }
                })


            }(),
            //+-点击数量变化
            number: ! function() {
                let goodsnum = 1;
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
                    $('.none').css('display', 'none')
                    $('.show').css('display', 'inline-block')
                })
                $('.show').eq(1).on('click', function() {
                    $('.show').css('display', 'none')
                    $('.none').css('display', 'block')
                })
            }(),
        };
    })
})