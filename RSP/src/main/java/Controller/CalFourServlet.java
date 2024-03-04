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
 * Servlet implementation class FourServlet
 */
@WebServlet("/CalFour")
public class CalFourServlet extends HttpServlet {
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
			url="/Three";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			}
		Random random   = new Random();
		int computer  = random.nextInt(3)+1; //random.nextInt(3)+1; //1 :rock 2: scissors 3:paper		
		int computer2 = random.nextInt(3)+1;
		int computer3 = random.nextInt(3)+1;
		int result;
		int[] wld = {0,0,0};
		int win=0;
		int lose=0;
		
		if(user==computer) {wld[0] = 0;}
		else if( (user==1 && computer==2) || 
				(user==2 && computer==3)  || 
				(user==3 && computer==1) ) 	{wld[0]=  1;}
		else 								{wld[0]= -1;}					
		if(user==computer2) 
		{wld[1] = 0;}
		else if((user==1 && computer2==2)  || 
				(user==2 && computer2==3)  || 
				(user==3 && computer2==1) ) {wld[1]=  1;}
		else 								{wld[1]= -1;}			
		if(user==computer3) 
		{wld[2] = 0;}
		else if( (user==1 && computer3==2)  || 
			     (user==2 && computer3==3)  || 
			 	 (user==3 && computer3==1) ) {wld[2]=  1;}
		else 								 {wld[2]= -1;}			

			for(int i=0; i<3; i++) 
			{
				if(wld[i]==1) { 
					win++;
					break;    }
			}
			for(int i=0; i<3; i++) 
			{
				if(wld[i]==-1) { 
					lose++;
					break; }
			}
			if( win!=0 ) 
			{
				if(lose!=0) {result = 1;}else {result = 2;}
			} else 
			{
				if(lose!=0) {result = 3;}else {result = 1;}
			}
			
			request.setAttribute("user"     , user+    "" );
			request.setAttribute("computer" , computer+"" );
			request.setAttribute("computer2", computer2+"");
			request.setAttribute("computer3", computer3+"");
			request.setAttribute("result"   , result+""   );

		
		String view="WEB-INF/views/Result4.jsp";
        RequestDispatcher dispatcher= request .getRequestDispatcher(view);
        dispatcher.forward(request, response);
	}

}
