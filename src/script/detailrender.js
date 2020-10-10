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
                        <span>
                            <img src="${value}"/>
                        </span>
                    `;
                });
                $('.goodsimgs').html(strhtml);
            });
        }(jQuery)
    })
})