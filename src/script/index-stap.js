require(['config'], function() {
    require(['jquery'], function() {
        ! function($) {
            class Lunbo {
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
                    let _this = this; //实例对象
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
            new Lunbo().init();
        }(jQuery)
    })
})