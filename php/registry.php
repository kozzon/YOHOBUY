<?php
header('Access-Control-Allow-Origin:*');   //任意地址都可以访问
header('Access-Control-Allow-Method:POST,GET');  //跨越请求的方式
include "conn.php";//相对路径，引入数据库连接文件。

//1.唯一值的检测(用户名)
if(isset($_POST['username'])){
    $user = $_POST['username'];//获取前端传来的用户名。
    $result= $conn->query("select * from registry where name='$user'");//通过数据库进行查询。 where后面的就是查询的条件

    // $result->num_rows   记录的条数
    // $result->fetch_assoc() 获取查询到的数据，逐条获取。返回值是数组
    if($result->fetch_assoc()){//满足条件，存在重名
        echo true;//1
    }else{
        echo false;//空隙
    }
}

//2.前端必须点击提交注册的按钮，后端开始获取数据。
//php里面提供了两个加密的函数md5/sha1
if(isset($_POST['submit'])){//是否点击了提交按钮
        $user = $_POST['username'];
        $pass = sha1($_POST['password']);
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $conn->query("insert registry values(default,'$user','$pass','$email',NOW(),'$phone')");
        //跳转到前端的登录页面
        header('location:http://192.168.11.9/YOHO!BUY/src/login.html');
}