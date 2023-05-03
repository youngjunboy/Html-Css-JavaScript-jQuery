<?php
    // 쿠키삭제
    setcookie("userid","",time() -3600);

    echo "<script>
        location.href = 'cookie_page.php';
        </script>";
?>