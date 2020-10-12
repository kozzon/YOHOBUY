require(['config'], function() {
    require(['jquery'], function() {
        return {
            scale: ! function() {
                $(document).ready(function() {
                    class Scale {
                        constructor() {
                            this.scale = $('.scale');
                            this.spic = $('.goodsbigimg');
                            this.spicimg = $('.goodsbigimg img')
                            this.sf = $('.sf');
                            this.bf = $('.bf');
                            this.bpic = $('.bpic');
                            this.smallimg = $('.hover')
                        }
                        init() {
                            let _this = this;
                            this.scale.on('mouseover', function() {
                                _this.sf.css({
                                    'visibility': 'visible'
                                })
                                _this.bf.css({
                                    'visibility': 'visible'
                                })
                                _this.spic.on('mousemove', function(ev) {
                                    let left = ev.pageX - _this.scale.offset().left - _this.sf.width() / 2;
                                    let top = ev.pageY - _this.scale.offset().top - _this.sf.height() / 2;
                                    if (left < 0) {
                                        left = 0
                                    } else if (left >= _this.spic.width() - _this.sf.width()) {
                                        left = _this.spic.width() - _this.sf.width()
                                    };
                                    if (top < 0) {
                                        top = 0
                                    } else if (top >= _this.spic.height() - _this.sf.height()) {
                                        top = _this.spic.height() - _this.sf.height()
                                    };
                                    _this.sf.css({
                                        'left': `${left}px`
                                    })
                                    _this.sf.css({
                                        'top': `${top}px`
                                    })
                                    _this.bpic.css({
                                        'left': `-${(_this.bpic.width() / _this.spic.width()) * left}px`
                                    })
                                    _this.bpic.css({
                                        'top': `-${(_this.bpic.width() / _this.spic.width()) * top}px`
                                    })
                                })
                            })
                            this.scale.on('mouseout', function() {
                                _this.sf.css({
                                    'visibility': 'hidden'
                                })
                                _this.bf.css({
                                    'visibility': 'hidden'
                                })
                            })
                            this.sf.css({
                                'width': `${this.spic.width()*this.bf.width()/this.bpic.width()}px`,
                                'height': `${this.spic.height()*this.bf.height()/this.bpic.height()}px`
                            });
                        }
                    }
                    new Scale().init();
                })
            }()
        }
    })
})