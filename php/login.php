<?php
header('Access-Control-Allow-Origin:*');   //任意地址都可以访问
header('Access-Control-Allow-Method:POST,GET');  //跨越请求的方式
include "conn.php";

//获取前端的用户名和秘密
if(isset($_POST['user']) && isset($_POST['pass'])){
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    //将用户名和密码放入数据库进行查询，查询到了可以登录，否则登录失败。
    $result=$conn->query("select * from registry where name='$user' and pass='$pass'");
    if($result->fetch_assoc()){//登录成功
        echo true;
    }else{
        echo false;
    }
}