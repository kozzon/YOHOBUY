require(['config'], function() {
    require(['jquery'], function() {
        ! function($) {
            class Close {
                constructor() {
                    this.codefixed = $('.codefixed');
                    this.closebutton = $('.codefixed .iconfont');
                }
                init() {
                    let _this = this;
                    this.closebutton.on('click', function() {
                        _this.codefixed.hide();
                    })
                }
            }
            new Close().init()
        }(jQuery)
    })
})