package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.rock_paper_scissorsLogic;

@WebServlet("/rock_paper_scissorsServlet")
public class rock_paper_scissorsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String select = request.getParameter("btn");
		int selectBottom = Integer.parseInt(select);
		int random = new java.util.Random().nextInt(3); 
		int result = 
		  rock_paper_scissorsLogic.decide_victory_or_defeat(selectBottom,random);
		
		request.setAttribute("selectBottom", selectBottom);
		request.setAttribute("random", random);
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("WEB-INF/jsp/rock_paper_scissors.jsp");
		dispatcher.forward(request, response);
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
