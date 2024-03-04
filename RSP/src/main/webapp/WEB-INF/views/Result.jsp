<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" type="text/css" href="/RSP/styles/style.css">
   <link rel="icon" href="/RSP/images/RSP1.png" type="image/x-icon">

<title>RSP-Result </title>
</head>
<body>

	<div class="totalbox"> 
		<header class="title"> ジャンケン結果</header>
		<% 
			String result   = (String) request.getAttribute("result");
			String user     = request.getParameter("user");
			String computer = (String) request.getAttribute("computer");
			int result_int  = Integer.parseInt(result);
			int user_int    = Integer.parseInt(user);
			int computer_int= Integer.parseInt(computer);
		%>
			<div class="mainbox">
				<div class="resultbox">
				<table class="result_table">
					<tr>
						<td> <img src="/RSP/images/RSP<%= user_int%>.png" alt=user_result_image class="user_image">	</td>
						<td rowspan="2">				<img src="/RSP/images/result<%=result_int%>.png" alt="Result_image" class="result_image"></td>
						<td><img src="/RSP/images/RSP<%= computer_int%>.png" alt=user_result_image class="user_image"></td>
					</tr>
					<tr>
						<td class="user_name">You</td>
						<td class="user_name">Cpu</td>
					</tr>
				</table>
				</div>
				<div class="button-case">
				<form id="winlose" action="Home" metod=Post">
					<button type="submit" class="return_btn" >戻る</button>
				</form>
				</div>
			</div>


	</div>
		

</body>
</html>