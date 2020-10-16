require(['config'], function() {
    require(['jquery', 'sha1'], function() {
        return {
            formcheck: ! function() {
                var form = $('#registry');
                var username = $('.username');
                var phone = $('.telephone');
                var email = $('.email');
                var password = $('.password');
                var repassword = $('.repassword');
                // var submit = $('.submit');
                var ruo = $('#ruo');
                var zhong = $('#zhong');
                var qiang = $('#qiang');

                var usernameflag = true;
                var phoneflag = true;
                var emailflag = true;
                var passwordflag = true;
                var repasswordflag = true;

                //函数
                // function span(ele, content, flag, what) {
                //     var color = '';
                //     flag = what;
                //     if (what === false) {
                //         color = 'red';
                //     } else if (what === true) {
                //         color = 'green';
                //     } else {
                //         color = 'black'
                //     }
                //     ele.next().show();
                //     ele.next().text(content);
                //     ele.next().css('color', color);
                // }
                //用户名判断
                username.on('focus', function() {
                    username.next().show();
                    username.next().text('请输入用户名');
                    username.next().css('color', 'black');
                })
                username.on('blur', function() {
                    $.ajax({
                        url: 'http://10.31.163.210/YOHOBUY/php/registry.php',
                        type: 'post',
                        data: {
                            username: username.val()
                        },
                    }).done(function(data) {
                        if (data) {
                            // span(username, '该用户名已存在', usernameflag, false)
                            username.next().show();
                            username.next().text('该用户名已存在');
                            username.next().css('color', 'red');
                            usernameflag = false;
                            // console.log(usernameflag);
                        } else {
                            if (username.val() !== '') {
                                var user = username.val();
                                var reg = /^\w+$/g;
                                if (reg.test(username.val())) {
                                    if ((user + '').length >= 6) {
                                        // span(username, '√', usernameflag, true)
                                        username.next().show();
                                        username.next().text('√');
                                        username.next().css('color', 'green');
                                        usernameflag = true;
                                    } else {
                                        // span(username, '用户名长度有误', usernameflag, false)
                                        username.next().show();
                                        username.next().text('用户名长度有误');
                                        username.next().css('color', 'red');
                                        usernameflag = false;
                                    }
                                } else {
                                    // span(username, '用户名格式有误', usernameflag, false)
                                    username.next().show();
                                    username.next().text('用户名格式有误');
                                    username.next().css('color', 'red');
                                    usernameflag = false;
                                }
                            } else {
                                // span(username, '用户名不能为空', usernameflag, false)
                                username.next().show();
                                username.next().text('用户名不能为空');
                                username.next().css('color', 'red');
                                usernameflag = false;
                            }
                        }
                    })
                })

                //手机
                phone.on('focus', function() {
                    // span(phone, '请输入手机号')
                    phone.next().show();
                    phone.next().text('请输入手机');
                    phone.next().css('color', 'black');
                })
                phone.on('blur', function() {
                    if (phone.val() !== '') {
                        var reg = /^1[3578]\d{9}$/;
                        if (reg.test(phone.val())) {
                            // span(phone, '√', phoneflag, true)
                            phone.next().show();
                            phone.next().text('√');
                            phone.next().css('color', 'green');
                            phoneflag = true;
                        } else {
                            // span(phone, '手机号码格式有误', phoneflag, false)
                            phone.next().show();
                            phone.next().text('手机号码格式有误');
                            phone.next().css('color', 'red');
                            phoneflag = false;
                        }
                    } else {
                        // span(phone, '手机号码不能为空', phoneflag, false)
                        phone.next().show();
                        phone.next().text('手机号码不能为空');
                        phone.next().css('color', 'red');
                        phoneflag = false;
                    }
                })

                //邮箱
                email.on('focus', function() {
                    // span(email, '请输入邮箱')
                    email.next().show();
                    email.next().text('请输入邮箱');
                    email.next().css('color', 'black');
                })
                email.on('blur', function() {
                    if (email.val() !== '') {
                        var reg = /^\w+([+-.]\w+)*@(\w+([-.]\w+)*)\.(\w+([-.]\w+)*)$/;
                        if (reg.test(email.val())) {
                            // span(email, '√', emailflag, true)
                            email.next().show();
                            email.next().text('√');
                            email.next().css('color', 'green');
                            emailflag = true;
                        } else {
                            // span(email, '邮箱格式有误', emailflag, false)
                            email.next().show();
                            email.next().text('邮箱格式有误');
                            email.next().css('color', 'red');
                            emailflag = false;
                        }
                    } else {
                        // span(email, '邮箱不能为空', emailflag, false)
                        email.next().show();
                        email.next().text('邮箱不能为空');
                        email.next().css('color', 'red');
                        emailflag = false;
                    }
                })

                //密码
                password.on('focus', function() {
                    // span(password, '请输入密码')
                    password.next().show();
                    password.next().text('请输入密码');
                    password.next().css('color', 'black');
                })
                password.on('input', function() {
                    $('.safety').show();
                    var pass = password.val();
                    if ((pass + '').length >= 6 && (pass + '').length <= 20) {
                        password.next().hide();
                        var regnum = /\d+/g;
                        var reglower = /[a-z]+/g;
                        var regupper = /[A-Z]+/g;
                        var other = /[\W\_]+/g;
                        var one = /\d+|[a-z]+|[A-Z]+|[\W\_]+/g;
                        var two = /\d+[a-z]+|\d+[A-Z]+|\d+[\W\_]+|[a-z]+[A-Z]+|[a-z]+[\W\_]+|[A-Z]+[\W\_]+/g;
                        var three = /\d+[a-z]+[A-Z]+|\d+[a-z]+[\W\_]+|\d+[A-Z]+[\W\_]+|[a-z]+[A-Z]+[\W\_]+/g;
                        var count = 0;
                        if (one.test(password.val())) {
                            count = 1;
                        }
                        if (two.test(password.val())) {
                            count = 2;
                        }
                        if (three.test(password.val())) {
                            count = 3;
                        }
                        if (regnum.test(password.val()) && reglower.test(password.val()) && regupper.test(password.val()) && other.test(password.val())) {
                            count = 4;
                        }
                        switch (count) {
                            case 1:
                                ruo.css({
                                    "background": "red",
                                    "display": "inline-block"
                                });
                                zhong.css({
                                    "background": "white",
                                    "display": "inline-block"
                                });
                                qiang.css({
                                    "background": "white",
                                    "display": "inline-block"
                                });
                                passwordflag = false;
                                break;
                            case 2:
                            case 3:
                                ruo.css({
                                    "background": "white",
                                    "display": "inline-block"
                                });
                                zhong.css({
                                    "background": "orange",
                                    "display": "inline-block"
                                });
                                qiang.css({
                                    "background": "white",
                                    "display": "inline-block"
                                });
                                passwordflag = true;
                                break;
                            case 4:
                                ruo.css({
                                    "background": "white",
                                    "display": "inline-block"
                                });
                                zhong.css({
                                    "background": "white",
                                    "display": "inline-block"
                                });
                                qiang.css({
                                    "background": "green",
                                    "display": "inline-block"
                                });
                                passwordflag = true;
                                break;
                        }
                    } else {
                        // span(password, '密码长度有误', passwordflag, false)
                        password.next().show();
                        password.next().text('密码长度有误');
                        password.next().css('color', 'red');
                        passwordflag = false;
                    }
                })
                password.on('blur', function() {
                    if (password.val() !== '') {
                        passwordflag = true;
                    } else {
                        if (password.val() === '' && repassword.val() === '') {
                            ruo.css({
                                "display": "none"
                            });
                            zhong.css({
                                "display": "none"
                            });
                            qiang.css({
                                "display": "none"
                            });
                        }
                        // span(password, '密码不能为空', passwordflag, false)
                        password.next().show();
                        password.next().text('密码不能为空');
                        password.next().css('color', 'red');
                        passwordflag = false;
                    }
                })

                //重复密码
                repassword.on('focus', function() {
                    // span(repassword, '请重复密码')
                    repassword.next().show();
                    repassword.next().text('请重复密码');
                    repassword.next().css('color', 'black');
                })
                repassword.on('input', function() {
                    if (repassword.val() === password.val()) {
                        // span(repassword, '√', repasswordflag, true)
                        repassword.next().show();
                        repassword.next().text('√');
                        repassword.next().css('color', 'green');
                        repasswordflag = true;
                    } else {
                        // span(repassword, '两次密码不一致', repasswordflag, false)
                        repassword.next().show();
                        repassword.next().text('两次密码不一致');
                        repassword.next().css('color', 'red');
                        repasswordflag = false;
                    }
                })
                repassword.on('blur', function() {
                    if (repassword.val() !== '') {
                        if (repassword.val() === password.val()) {
                            // span(repassword, '√', repasswordflag, true)
                            repassword.next().show();
                            repassword.next().text('√');
                            repassword.next().css('color', 'green');
                            repasswordflag = true;
                        } else {
                            // span(repassword, '两次密码不一致', repasswordflag, false)
                            repassword.next().show();
                            repassword.next().text('两次密码不一致');
                            repassword.next().css('color', 'red');
                            repasswordflag = false;
                        }
                    } else {
                        // span(repassword, '重复密码不能为空', repasswordflag, false)
                        repassword.next().show();
                        repassword.next().text('重复密码不能为空');
                        repassword.next().css('color', 'red');
                        repasswordflag = false;
                    }
                })

                //提交事件
                form.on('submit', function() {
                    if (username.val() === '') {
                        // span(username, '用户名不能为空', usernameflag, false);
                        username.next().show();
                        username.next().text('用户名不能为空');
                        username.next().css('color', 'red');
                        usernameflag = false;
                    }
                    if (phone.val() === '') {
                        // span(phone, '手机号码不能为空', phoneflag, false)
                        phone.next().show();
                        phone.next().text('手机号码不能为空');
                        phone.next().css('color', 'red');
                        phoneflag = false;
                    }
                    if (email.val() === '') {
                        // span(email, '邮箱不能为空', emailflag, false)
                        email.next().show();
                        email.next().text('邮箱不能为空');
                        email.next().css('color', 'red');
                        emailflag = false;
                    }
                    if (password.val() === '') {
                        // span(password, '密码不能为空', passwordflag, false)
                        password.next().show();
                        password.next().text('密码不能为空');
                        password.next().css('color', 'red');
                        passwordflag = false;
                    }
                    if (repassword.val() === '') {
                        // span(repassword, '请重复密码', repasswordflag, false)
                        repassword.next().show();
                        repassword.next().text('重复密码不能为空');
                        repassword.next().css('color', 'red');
                        repasswordflag = false;
                    }
                    console.log(usernameflag, phoneflag, emailflag, passwordflag, repasswordflag);
                    if (!usernameflag || !phoneflag || !emailflag || !passwordflag || !repasswordflag) {
                        return false; //阻止跳转
                    }
                })
            }()
        }
    })
})