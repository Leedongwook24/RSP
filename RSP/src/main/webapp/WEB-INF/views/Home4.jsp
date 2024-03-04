<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="/RSP/styles/style.css">
<title>RSP for 4</title>
</head>
<body>

	<div class="totalbox"> 
		<header class="title"> ジャンケンサイト(4人)</header>

		<div class="mainbox">
		<p class="desc">「グー」、「チョキ―」、「パー」の中で1つを選んで、選択を押してください。 </p>
		<img src="/RSP/images/RSP_main.jpg" alt="RSP image" class="main_image">
		<form action="CalFour" class="form1" method="post">
			<select name="user" id="user" class="RSP-select">
				<option value="0" class="RSP-select"> 選択してください</option>
				<option value="1" class="RSP-select"> グー	</option>
				<option value="2" class="RSP-select"> チョキ―	</option>
				<option value="3" class="RSP-select"> パー	</option>		
			</select>

			<input type="submit" value="選択" class="select_btn"/> 
		</form>

	<div class="errorbox">
		<% 
		String errorMsg = (String)request.getAttribute("errorMsg");
		if (errorMsg != null) {
		%>
			<p class="error-msg"><%= errorMsg %></p>
		<%
		} 
		%>
	</div>

		<div class="extrabox">
			<div class="btn_box">
				<form action="Home" method="post"> 
					<button type="submit" class="gotobtn">2人ジャンケン</button> 
				</form>
			</div>
			<div class="btn_box"> 
				<form action="Three" method="post"> 
					<button type="submit" class="gotobtn">3人ジャンケン</button> 
				</form>
			</div>		
		</div>

	</div>

</body>
</html>