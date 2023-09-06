<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP+MySQL 입문</title>
    <link rel="stylesheet" href="style.css">
    <script>
    function check_input(){
        if(!document.board.name.value){
            alert("이름을 입력하세요!");
            document.board.name.focus();
            return;
        }
        if(!document.board.pass.value){
            alert("비밀번호를 입력하세요!");
            document.board.pass.focus();
            return;
        }
        if(!document.board.subject.value){
            alert("제목을 입력하세요!");
            document.board.subject.focus();
            return;
        }
        if(!document.board.content.value){
            alert("내용을 입력하세요!");
            document.board.content.focus();
            return;
        }

        document.board.submit();
    }
    </script>
</head>
<body>
    <h2>자유게시판 > 글쓰기</h2>
    <form name="board" method="post" action="insert.php">
    <ul class="board_form">
    <li>
    <span class="col1">이름 : </span>
    <span class="col2"><input name="name" type="text">
    </span>
    </li>
    <li>
    <span class="col1">비밀번호 : </span>
    <span class="col2">
                    <input name="pass" type="password">
    </span>
    </li>
    <li>
    <span class="col1">제목 : </span>
    <span class="col2"><input name="subject"
       type="text"></span>
    </li>
    <li class="area">
    <span class="col1">내용 : </span>
    <span class="col2">
        <textarea name="content"></textarea>
    </span>
    </li>
    </ul>
    <ul class="bottons">
            <li><button type="botton" onclick="check_input()">
                    저장하기</button></li>
            <li><button type="botton" onclick=
            "location.href=list.php">목록보기</button></li>
    </ul>
    </form>
</body>
</html>