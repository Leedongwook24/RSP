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
<title>RSP-Result3</title>
</head>
<body>
	<div class="totalbox"> 
		<header class="title"> 3人ジャンケン結果</header>
		<% 
			String result    = (String) request.getAttribute("result");
			String user      = request.getParameter("user");
			String computer  = (String) request.getAttribute("computer");
			String computer2 = (String) request.getAttribute("computer2");
			int result_int   = Integer.parseInt(result);
			int user_int     = Integer.parseInt(user);
			int computer_int = Integer.parseInt(computer);
			int computer2_int= Integer.parseInt(computer2);
		%>
			<div class="mainbox">
				<div class="resultbox">
				<table class="result_table">
					<tr>
						<td rowspan="3"> <img src="/RSP/images/RSP<%= user_int%>.png" alt=user_result_image class="user_image">	</td>
						<td rowspan="4"> <img src="/RSP/images/result<%=result_int%>.png" alt="Result_image" class="result_image"></td>
						<td><img src="/RSP/images/RSP<%= computer_int%>.png" alt=user_result_image class="user_image"></td>
					</tr>
					<tr>
						<td class="user_name_smaller">Cpu</td>
					</tr>
					<tr>
						<td><img src="/RSP/images/RSP<%= computer2_int%>.png" alt=user_result_image class="user_image"></td>					
					</tr>
					<tr>
						<td class="user_name_smaller">You</td>
						<td class="user_name_smaller">Cpu2</td>
					</tr>
					
				</table>
				</div>
				<div class="button-case">
				<form id="winlose" action="Three" metod=Post">
					<button type="submit" class="return_btn" > 戻る </button>
				</form>
				</div>
			</div>


	</div>


</body>
</html>