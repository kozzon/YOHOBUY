require(['config'], function() {
    require(['jquery', 'sha1'], function() {
        return {
            login: ! function() {
                var login = $('.login');
                var username = $('.username');
                var password = $('.password');
                login.on('click', function() {
                    $.ajax({
                        type: 'post',
                        url: 'http://192.168.11.9/YOHO!BUY/php/login.php',
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
                            localStorage.setItem('user', username.val());
                            location.href = 'http://192.168.11.9/YOHO!BUY/src/index1.html';
                        }
                    })
                })
            }()
        }
    })
})