require(['config'], function() {
    require(['jquery', 'jq_lazyload', 'jq_pagination'], function() {
        return {
            goodlist: ! function() {
                let array_default = []; //排序前的li数组
                let array = []; //排序中的数组
                //冒泡排序，比较相邻的两个数字。
                let prev = null; //前一个商品价格
                let next = null; //后一个商品价格

                //1.渲染列表页的数据-默认渲染第一页
                const list = $('.list ul');
                $.ajax({ //获取远程接口的值
                    url: 'http://192.168.11.9/YOHO!BUY/php/listdata.php',
                    dataType: 'json'
                }).done(function(data) {
                    // console.log(data);
                    let strhtml = '';
                    $.each(data, function(index, value) { //遍历数组和对象
                        strhtml += `
                            <li class="pic-${index}">
                                <a href="detail.html?sid=${value.sid}" target="_blank" class="clear_fix" >
                                  <img class="lazy" data-original="${value.url}"/>
                                </a>
                                <div>
                                  <a href="">${value.title}</a>
                                  <p>${value.sub_title}</p>
                                  <span class="price">￥${value.price}</span>
                                </div>
                            </li>                   
                        `;
                    });
                    strhtml += '';
                    list.html(strhtml); //追加数据
                    //实现懒加载效果
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });

                    $('.list li').each(function(index, element) {
                        array[index] = $(this);
                        array_default[index] = $(this);
                    });
                })

                //2.分页思路:根据传输的页码，后端返回对应的接口数据，渲染出来。
                $('.page').pagination({
                    pageCount: 3, //总的页数
                    jump: true, //是否开启跳转到指定的页数，布尔值。
                    prevContent: '上一页', //将图标改成上一页下一页。
                    nextContent: '下一页',
                    callback: function(api) {
                        console.log(api.getCurrent()); //获取当前的点击的页码。
                        $.ajax({
                            url: 'http://192.168.11.9/YOHO!BUY/php/listdata.php',
                            data: {
                                page: api.getCurrent() //传输数据
                            },
                            dataType: 'json'
                        }).done(function(data) {
                            let strhtml = '';
                            $.each(data, function(index, value) {
                                strhtml += `
                            <li class="pic-${index}">
                                <a href="detail.html?sid=${value.sid}" target="_blank" class="clear_fix" >
                                  <img class="lazy" data-original="${value.url}"/>
                                </a>
                                <div>
                                  <a href="">${value.title}</a>
                                  <p>${value.sub_title}</p>
                                  <span class="price">￥${value.price}</span>
                                </div>
                            </li>  
                            `;
                            });
                            strhtml += '';
                            list.html(strhtml);
                            $("img.lazy").lazyload({
                                effect: "fadeIn" //图片显示方式
                            });
                            //将页面的li元素加载到两个数组中
                            $('.list li').each(function(index, element) {
                                array[index] = $(this);
                                array_default[index] = $(this);
                            });
                        });
                    }
                });

                //3.排序，排序前的数组都已经具有li元素
                // 升降序
                let flag = 2;
                $('.button').on('click', function() {
                    flag++;
                    //点击切换标识
                    $('.button .low').css({
                        "display": "none"
                    })
                    $('.button .high').css({
                        "top": "0px",
                        "display": "inline-block"
                    })
                    if (flag % 2 === 0) {
                        for (let i = 0; i < array.length - 1; i++) {
                            for (let j = 0; j < array.length - i - 1; j++) {
                                prev = parseFloat(array[j].find('.price').html().substring(1)); //取上个价格
                                next = parseFloat(array[j + 1].find('.price').html().substring(1)); //下一个的价格
                                //通过价格的判断，改变的是数组li的位置。
                                if (prev < next) {
                                    let temp = array[j];
                                    array[j] = array[j + 1];
                                    array[j + 1] = temp;
                                }
                            }
                        }
                        $('.list ul').empty(); //清空原来的列表
                        $.each(array, function(index, value) {
                            $('.list ul').append(value);
                        });
                    } else {
                        //点击切换标识
                        $('.button .high').css({
                            "display": "none"
                        })
                        $('.button .low').css({
                            "top": "0px",
                            "display": "inline-block"
                        })
                        for (let i = 0; i < array.length - 1; i++) {
                            for (let j = 0; j < array.length - i - 1; j++) {
                                prev = parseFloat(array[j].find('.price').html().substring(1)); //取上个价格
                                next = parseFloat(array[j + 1].find('.price').html().substring(1)); //下一个的价格
                                //通过价格的判断，改变的是数组li的位置。
                                if (prev > next) {
                                    let temp = array[j];
                                    array[j] = array[j + 1];
                                    array[j + 1] = temp;
                                }
                            }
                        }
                        $('.list ul').empty(); //清空原来的列表
                        $.each(array, function(index, value) {
                            $('.list ul').append(value);
                        });
                    }
                });

                //切换页码重置标识
                $('.m-style').on('click', function() {
                    $('.button .low').attr({
                        style: "top:-4px;"
                    })
                    $('.button .high').attr({
                        style: "bottom:-4px;"
                    })
                })
            }()
        }
    })
})