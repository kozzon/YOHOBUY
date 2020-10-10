require(['config'], function() {
    require(['jquery'], function() {
        ! function($) {
            class Right {
                constructor() {
                    this.right = $('.right-floating');
                    this.code = $('.code-box');
                    this.code_show = $('.code-box-content');
                    this.return = $('.returntop');
                }
                init() {
                    let _this = this;
                    //下拉显示
                    $(window).scroll(
                        function() {
                            if ($(window).scrollTop() >= 300) {
                                _this.right.show();
                            } else {
                                _this.right.hide();
                            }
                            //右侧导航位置
                            if ($('html').width() >= 1280) {
                                _this.right.css({
                                    'margin-left': '595px',
                                    'left': '50%'
                                });
                            } else {
                                _this.right.css({
                                    'margin-left': 'auto',
                                    'left': '100%'
                                });
                            }
                        }
                    );
                    //显示二级导航
                    this.code.hover(
                            function() {
                                _this.code_show.show();
                                _this.code.addClass('active');
                            },
                            function() {
                                _this.code_show.hide();
                                _this.code.removeClass('active');
                            }
                        )
                        //自身
                    this.code_show.hover(
                            function() {
                                $(this).show()
                            },
                            function() {
                                $(this).hide()
                            }
                        )
                        //hover变色
                    this.return.hover(
                            function() {
                                _this.return.addClass('active');
                            },
                            function() {
                                _this.return.removeClass('active');
                            }
                        )
                        //点击返回
                    this.return.click(function() {
                        $('html').stop(true).animate({
                            scrollTop: 0
                        })
                    })
                }
            }
            new Right().init();
        }(jQuery)
    })
})