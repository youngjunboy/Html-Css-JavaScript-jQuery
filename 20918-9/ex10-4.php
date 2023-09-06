<?php
    if(isset($_GET["num"]))
            $num = $_GET["num"];
            else
                    $num="";

            $con = mysqli_connect("localhost","user","12345","sample");
            $sql = "select*from freeboard where num=$num";
            $result = mysqli_query($con,$sql);

            $row = mysqli_fetch_assoc($result);
            $name = $row["name"];
            $subject = $row["subject"];
            $regist_day = $row["regist_day"];
            $content = $row["content"];
            $content = str_replace(" ","&nbsp;",$content);
            $content = str_replace("\n","<br>",$content);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP+MySQL 입문</title>
    <link rel="stylesheet" href="style.css">
    <script>
    function check_password(mode, num){
        // mode : modify(수정) delete(삭제), num : 레코드 번호
    window.open("password_form.php?mode="+mode+"&num="+num,
        "pass_check",
        "left=700, top=300, width=550, height=150, scrollbars=no,
            resizable=yes");
    }
    </script>
</head>
<body>
    <h2>자유게시판 > 내용보기</h2>
    <ul class = "board_view">
    <li class="row1">
    <span class="col1"><b>제목 : </b> <?=$subject?></span>
    </li>
    </ul>
</body>
</html>