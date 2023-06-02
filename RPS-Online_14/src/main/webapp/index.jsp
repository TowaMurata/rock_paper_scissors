<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>じゃんけん</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
  <h1>RPSオンライン</h1>
  <br>
  <h1>最初はグー、じゃんけん・・・</h1>
  <br>
  <form action="rock_paper_scissorsServlet" method="get">
  <button type="submit" name="btn" value="0"><img src="image/RPS_Rock.png" alt="グー" /></button>
  <button type="submit" name="btn" value="1"><img src="image/RPS_Scissors.png" alt="チョキ" /></button>
  <button type="submit" name="btn" value="2"><img src="image/RPS_Paper.png" alt="パー" /></button>
  </form>
  <ul class ="select">
    <li class="li_rock"><h2 class="rock">グー</h2></li>
    <li class="li_scissors"><h2 class="scissors">チョキ</h2></li>
    <li class="li_paper"><h2 class="paper">パー</h2></li>
  </ul>
</body>
</html>