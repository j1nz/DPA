package internship.fpt.dpa.controller.home;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import internship.fpt.dpa.common.PasswordEncryption;
import internship.fpt.dpa.model.bean.Account;
import internship.fpt.dpa.model.bo.AccountBO;

/**
 * Servlet implementation class LoginServlet
 */


@WebServlet("/LoginServlet")
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
		PasswordEncryption pe = PasswordEncryption.getInstance();
		
		acc.setUsername(username);
		acc.setPassword(pe.MD5(password));
		
		AccountBO accBO = AccountBO.getInstance();

		HttpSession session = request.getSession();
		
		if (accBO.checkLogin(acc)){
			String message = accBO.getNotification();
			String role = accBO.getRoleName();
			
			session.setAttribute("message", message);
			session.setAttribute("username", username);
			session.setAttribute("role", role);
			RequestDispatcher view = request.getRequestDispatcher("ShowManagement");
			view.forward(request, response);
		} else {
			session.setAttribute("message", accBO.getNotification());
			RequestDispatcher view = request.getRequestDispatcher("ShowLoginServlet");
			view.forward(request, response);
		}
	}

}
