<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% int selectBottom = (int)request.getAttribute("selectBottom");  %>
    <% int random = (int)request.getAttribute("random"); %>
    <% int result = (int)request.getAttribute("result"); %>
    
    <%
    String myImage = null;
    String mySelect = null;
    if(selectBottom == 0){
    	myImage = "image/RPS_Rock.png";
    	mySelect = "グー";
    }else if(selectBottom == 1){
    	myImage = "image/RPS_Scissors.png";
    	mySelect = "チョキ";
    }else if(selectBottom == 2){
    	myImage = "image/RPS_Paper.png";
    	mySelect ="パー";
    }
    
    String conImage = null;
    String conSelct = "null";
    if(random == 0){
    	conImage = "image/RPS_Rock.png";
    	conSelct = "グー";
    }else if(random == 1){
    	conImage = "image/RPS_Scissors.png";
    	conSelct = "チョキ";
    }else if(random == 2){
    	conImage = "image/RPS_Paper.png";
    	conSelct = "パー";
    }
    
    String messege = null;
    if(result == 0){
    	messege = "残念！あいこです。";
    }else if(result == 1){
    	messege = "おめでとうございます！あなたの勝ちです。";
    }else if(result == 2){
    	messege = "残念！あなたの負けです。";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>じゃんけん結果</title>
<link rel="stylesheet" href="css/style2.css">
</head>
<body>
	  <h1>RPSオンライン</h1>
	  <br>
	  <h1>最初はグー、じゃんけん・・・ぽん</h1>
	  <br>
	  <ul class="result">
	  <li class="yours_hand">あなたの手</li>
	  <li class="conputers_hand">コンピュータの手</li>
	  </ul>
	  
	  <img src="<%= myImage %>" >
	  <img src="<%= conImage %>">
	  <ul clas ="select">
        <li class="li_myselect"><h2 class="rock"><%= mySelect %></h2></li>
        <li class="li_conselect"><h2 class="scissors"><%= conSelct %></h2></li>
      </ul>
	  <br>
	  <h1><%= messege %><h1>
  
</body>
</html>