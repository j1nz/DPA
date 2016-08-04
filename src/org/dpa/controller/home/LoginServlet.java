package org.dpa.controller.home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dpa.model.bean.Account;
import org.dpa.model.bo.AccountBO;

/**
 * Servlet implementation class LoginServlet
 */


@WebServlet("/pages/login/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Account acc  = new Account();
		acc.setUsername(username);
		acc.setPassword(password);
		
		AccountBO accBO = AccountBO.getInstance();

		if (accBO.checkLogin(acc)){
			request.setAttribute("message", accBO.getNotification());
			RequestDispatcher view = request.getRequestDispatcher("pages/management/ShowManagement");
			view.forward(request, response);
		} else {
			
			request.setAttribute("message", accBO.getNotification());
			RequestDispatcher view = request.getRequestDispatcher("/pages/login/index.jsp");
			view.forward(request, response);
		}
	}

}
