require(['config'], function() {
    require(['jquery', 'jq_lazyload'], function() {;
        ! function($) {
            const list = $('.list-t');
            $.ajax({ //获取远程接口的值
                url: 'http://192.168.11.9/YOHO!BUY/php/indexlist-t.php',
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
                <li class="list-t-nav">
                  <a href="">T恤</a>
                  <a href="">卫衣</a>
                  <a href="">夹克</a>
                  <a href="">衬衫</a>
                  <a href="">POLO</a>
                  <a href="">风衣</a>
                  <a href="">PUMA</a>
                  <a href="">DC</a>
                  <a href="">Timberland</a>
                  <a href="">Converse</a>
                  <a href="">VANS</a>
                  <a href="">HIPANDA</a>
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