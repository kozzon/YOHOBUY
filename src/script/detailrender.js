require(['config'], function() {
    require(['jquery', 'jq_cookie'], function() {;
        ! function($) {
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
                $('.goodsimgs ul li').first().css({
                        'border': '2px solid'
                    })
                    //移动到小图改大图
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

            function getcookie() {
                if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在
                    arrsid = $.cookie('cookiesid').split(','); //获取cookie的sid，存放到数组中。
                    arrnum = $.cookie('cookienum').split(','); //获取cookie的数量，存放到数组中。
                } else { //cookie不存在
                    arrsid = [];
                    arrnum = [];
                }
            }

            $('.addtocart ').on('click', function() {
                getcookie();
                if ($.inArray(sid, arrsid) === -1) {
                    arrsid.push(sid);
                    $.cookie('cookiesid', arrsid, { expires: 10, path: '/' }); //插件完成的cookie的添加。
                    arrnum.push($('#count').val()); //添加商品的数量
                    $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                } else {
                    let index = $.inArray(sid, arrsid); //sid在数组中的位置
                    let num = parseInt(arrnum[index]); //sid对应的数量
                    arrnum[index] = num + parseInt($('#count').val()); //原来的数量+新添加数量进行赋值
                    $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                }
            })


        }(jQuery)
    })
})