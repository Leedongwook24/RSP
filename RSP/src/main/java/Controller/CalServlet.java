package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalServlet
 */
@WebServlet("/CalServlet")
public class CalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String url;
		int user = Integer.parseInt(request.getParameter("user"));
		// 早い段階で、間違ったもの入力時戻させる。
		if(user==0){
			String errorMsg="「グー」、「チョキ―」、「パー」のどれかを選んでください。";
			request.setAttribute("errorMsg", errorMsg);
			url="/Home";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			}
		Random random   = new Random();
		int computer = random.nextInt(3)+1; //random.nextInt(3)+1; //1 :rock 2: scissors 3:paper		
		int result;

		if(computer==user) 
						{result= 1;}
		else if( (user==1 && computer==2) || 
				 (user==2 && computer==3) || 
				 (user==3 && computer==1) ) 
						{result= 2;}
		else 			{result= 3;}
		
		
			request.setAttribute("user"    , user+    "");
			request.setAttribute("computer", computer+"");
			request.setAttribute("result"  , result+""  );
			
			url="WEB-INF/views/Result.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);	
	}

}
