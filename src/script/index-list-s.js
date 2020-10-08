require(['config'], function() {
    require(['jquery', 'jq_lazyload'], function() {;
        ! function($) {
            const list = $('.list-s');
            $.ajax({ //获取远程接口的值
                url: 'http://localhost/YOHO!BUY/php/indexlist-s.php',
                dataType: 'json'
            }).done(function(data) {
                // console.log(data);
                let strhtml = '';
                $.each(data, function(index, value) { //遍历数组和对象
                    strhtml += `
                    <a href="">
                        <li class="pic-${index}">
                            <img class="lazy" data-original="${value.url}">
                        </li>
                    </a>
                    `;
                });
                strhtml += `
                   <li class="f-tap">
                   <a href="" class="iconfont a-l">&#xe660;</a>
                   <a href="" class="iconfont a-r">&#xe65f;</a>
                   </li>
                   <li class="last-more">
                        <a href="">MORE ></a>
                    </li>
                `
                list.html(strhtml); //追加数据
                //实现懒加载效果
                $("img.lazy").lazyload({
                    effect: "fadeIn" //图片显示方式
                });
            })
        }(jQuery);
    })
})