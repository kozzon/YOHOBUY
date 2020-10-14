require(['config'], function() {
    require(['jquery', 'jq_lazyload', 'jq_cookie'], function() {;
        return {
            index_list_f: ! function() {
                var list_f = $('.list-f');
                $.ajax({ //获取远程接口的值
                    url: 'http://192.168.11.9/YOHO!BUY/php/indexlist-f.php',
                    dataType: 'json'
                }).done(function(data) {
                    // console.log(data);
                    var strhtml = '';
                    $.each(data, function(index, value) { //遍历数组和对象
                        strhtml += '<a href=""><li class="pic-' + index + '"><img class="lazy" data-original="' + value.url + '"></li></a>';
                    });
                    list_f.html(strhtml); //追加数据
                    //实现懒加载效果
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });
                })
            }(),
            index_list_s: ! function() {
                var list_s = $('.list-s');
                $.ajax({ //获取远程接口的值
                    url: 'http://192.168.11.9/YOHO!BUY/php/indexlist-s.php',
                    dataType: 'json'
                }).done(function(data) {
                    // console.log(data);
                    var strhtml = '';
                    $.each(data, function(index, value) { //遍历数组和对象
                        strhtml += '<a href=""><li class="pic-' + index + '"><img class="lazy" data-original="' + value.url + '"></li></a>';;
                    });
                    strhtml += '<li class="f-tap"><a href="" class="iconfont a-l">&#xe660;</a><a href="" class="iconfont a-r">&#xe65f;</a></li><li class="last-more"><a href="">MORE ></a></li>'
                    list_s.html(strhtml); //追加数据
                    //实现懒加载效果
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });
                })
            }(),
            index_list_t: ! function() {
                var list_t = $('.list-t');
                $.ajax({ //获取远程接口的值
                    url: 'http://192.168.11.9/YOHO!BUY/php/indexlist-t.php',
                    dataType: 'json'
                }).done(function(data) {
                    // console.log(data);
                    var strhtml = '';
                    $.each(data, function(index, value) { //遍历数组和对象
                        strhtml += '<a href=""><li class="pic-' + index + '"><img class="lazy" data-original="' + value.url + '"></li></a>';;
                    });
                    strhtml += '<li class="list-t-nav"><a href="">T恤</a><a href="">卫衣</a><a href="">夹克</a><a href="">衬衫</a><a href="">POLO</a><a href="">风衣</a><a href="">PUMA</a><a href="">DC</a><a href="">Timberland</a><a href="">Converse</a><a href="">VANS</a><a href="">HIPANDA</a></li>'
                    list_t.html(strhtml); //追加数据
                    //实现懒加载效果
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });
                })
            }(),
            index_list_fo: ! function() {
                var list_fo = $('.list-fo');
                $.ajax({ //获取远程接口的值
                    url: 'http://192.168.11.9/YOHO!BUY/php/indexlist-fo.php',
                    dataType: 'json'
                }).done(function(data) {
                    // console.log(data);
                    var strhtml = '';
                    $.each(data, function(index, value) { //遍历数组和对象
                        strhtml += '<a href=""><li class="pic-' + index + '"><img class="lazy" data-original="' + value.url + '"></li></a>';;
                    });
                    list_fo.html(strhtml); //追加数据
                    //实现懒加载效果
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });
                })
            }(),
            index_lunbo: ! function() {
                class Lunbo {
                    constructor() {
                        this.lunbo = $('.banner');
                        this.piclist = $('.banner ul li');
                        this.btnlist = $('.banner ol li');
                        this.leftarrow = $('#left');
                        this.rightarrow = $('#right');
                        this.index = 0;
                        this.timer = null;
                    }
                    init() {
                        //事件里面的this指向当前操作的元素对象。方法里面的this指向实例。
                        var _this = this; //实例对象
                        this.lunbo.hover(function() {
                            // _this.leftarrow.show();
                            // _this.rightarrow.show();
                            //     // 5.鼠标移入lunbo,停止。
                            clearInterval(_this.timer);
                        }, function() {
                            // _this.leftarrow.hide();
                            // _this.rightarrow.hide();
                            //     //继续轮播
                            _this.timer = window.setInterval(function() {
                                _this.rightarrowclick();
                            }, 4000);
                        });
                        // 2.点击对应得小圆圈，当前点击的小圆圈添加类名，其他的隐藏（和小圆圈对应的图片显示）
                        this.btnlist.on('click', function() {
                            _this.index = $(this).index(); //将当前按钮对应的索引存储下来
                            _this.tabswitch();
                        });

                        //3.点击左右箭头进行图片切换
                        this.rightarrow.on('click', function() {
                            _this.rightarrowclick();
                        });

                        this.leftarrow.on('click', function() {
                            _this.leftarrowclick();
                        });

                        //4.自动轮播
                        this.timer = window.setInterval(function() {
                            _this.rightarrowclick();
                        }, 4000);
                    }

                    tabswitch() {
                        this.btnlist.eq(this.index).addClass('active').siblings().removeClass('active');
                        this.piclist.eq(this.index).stop(true).animate({
                            opacity: 1
                        }).siblings().stop(true).animate({
                            opacity: 0
                        });
                    }

                    rightarrowclick() {
                        this.index++;
                        if (this.index > this.btnlist.size() - 1) {
                            this.index = 0;
                        }
                        this.tabswitch();
                    }

                    leftarrowclick() {
                        this.index--;
                        if (this.index < 0) {
                            this.index = this.btnlist.size() - 1;
                        }
                        this.tabswitch();
                    }
                }
                new Lunbo().init();
            }(),
            index_stap: ! function() {
                class Stap {
                    constructor() {
                        this.lunbo = $('.list-stap');
                        this.list = $('.list-stap ul');
                        this.piclist = $('.list-stap ul li');
                        this.leftarrow = $('#sleft');
                        this.rightarrow = $('#sright');
                        this.index = 0;
                        this.timer = null;
                    }
                    init() {
                        //事件里面的this指向当前操作的元素对象。方法里面的this指向实例。
                        var _this = this; //实例对象
                        this.list.css({ "width": `${_this.piclist.size()*_this.piclist.width()}px` })
                        this.liwidth = this.piclist.width();
                        this.lunbo.hover(function() {
                            _this.leftarrow.show();
                            _this.rightarrow.show();
                            //     // 5.鼠标移入lunbo,停止。
                            clearInterval(_this.timer);
                        }, function() {
                            _this.leftarrow.hide();
                            _this.rightarrow.hide();
                            //     //继续轮播
                            _this.timer = window.setInterval(function() {
                                _this.tabswitch();
                            }, 5000);
                        });

                        //3.点击左右箭头进行图片切换
                        this.rightarrow.on('click', function() {
                            _this.tabswitch();
                        });

                        this.leftarrow.on('click', function() {
                            _this.index -= 2;
                            _this.tabswitch();
                        });

                        // 4. 自动轮播
                        this.timer = window.setInterval(function() {
                            _this.tabswitch();
                        }, 5000);

                    }
                    tabswitch() {
                        this.index++;
                        if (this.index === this.piclist.size()) {
                            this.list.css({ "left": "0px" })
                            this.index = 1;
                        }
                        if (this.index === -1) {
                            this.list.css({ "left": `-${(this.liwidth)*(this.piclist.size())}px` })
                            this.index = this.piclist.size() - 2;
                        }
                        this.list.stop(true).animate({
                            left: `-${(this.index)*(this.liwidth)}px`
                        }, 360)
                    }
                }
                new Stap().init();
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
        }
    })
})