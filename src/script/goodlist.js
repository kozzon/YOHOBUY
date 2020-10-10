require(['config'], function() {
    require(['jquery', 'jq_lazyload'], function() {;
        ! function($) {
            const list = $('.list');
            $.ajax({ //获取远程接口的值
                url: 'http://192.168.11.9/YOHO!BUY/php/list-goodlist.php',
                dataType: 'json'
            }).done(function(data) {
                // console.log(data);
                let strhtml = '';
                $.each(data, function(index, value) { //遍历数组和对象
                    strhtml += `
                        <li class="pic-${index}">
                            <a href="detail.html?sid=${value.sid}" class="clear_fix">
                              <img class="lazy" data-original="${value.url}">
                            </a>
                            <div>
                              <a href="">${value.title}</a>
                              <p>${value.sub_title}</p>
                              <span>￥${value.price}</span>
                            </div>
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