<?php
    session_start();

    if(isset($_SESSION["username"])){
        unset($_SESSION["username"]);
    }

    echo "세션 접속 해제!";
?>