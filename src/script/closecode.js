require(['config'], function() {
    require(['jquery'], function() {
        return {
            close: ! function() {
                class Close {
                    constructor() {
                        this.codefixed = $('.codefixed');
                        this.closebutton = $('.codefixed .iconfont');
                    }
                    init() {
                        var _this = this;
                        this.closebutton.on('click', function() {
                            _this.codefixed.hide();
                        })
                    }
                }
                new Close().init()
            }()
        }
    })
})