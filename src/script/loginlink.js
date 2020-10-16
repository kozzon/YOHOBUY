require(['config'], function() {
    require(['jquery', 'sha1', 'jq_cookie'], function() {
        return {
            login: ! function() {
                var login = $('.login');
                var username = $('.username');
                var password = $('.password');
                login.on('click', function() {
                    $.ajax({
                        type: 'post',
                        url: 'http://10.31.163.210/YOHOBUY/php/login.php',
                        data: {
                            user: username.val(),
                            pass: hex_sha1(password.val())
                        }
                    }).done(function(data) {
                        if (!data) {
                            alert('用户名或者密码错误！');
                            username.val('');
                            password.val('');
                        } else {
                            if (!$.cookie('cookieuser')) {
                                $.cookie('cookieuser', username.val(), { expires: 10, path: '/' });
                            }
                            location.href = 'http://10.31.163.210/YOHOBUY/src/index1.html';
                        }
                    })
                })
            }()
        }
    })
})