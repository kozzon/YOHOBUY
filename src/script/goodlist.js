require(['config'], function() {
    require(['jquery', 'jq_lazyload'], function() {;
        ! function($) {
            const list = $('.list');
            $.ajax({ //获取远程接口的值
                url: 'http://localhost/YOHO!BUY/php/list-goodlist.php',
                dataType: 'json'
            }).done(function(data) {
                // console.log(data);
                let strhtml = '';
                $.each(data, function(index, value) { //遍历数组和对象
                    strhtml += `
                        <li class="pic-${index}">
                            <img class="lazy" data-original="${value.url}">
                            <a href="">${value.title}</a>
                            <div>${value.sub_title}</div>
                            <span>￥${value.price}</span>
                        </li>
                    `;
                });
                list.html(strhtml); //追加数据
                //实现懒加载效果
                $("img.lazy").lazyload({
                    effect: "fadeIn" //图片显示方式
                });
            })
        }(jQuery);
    })
})