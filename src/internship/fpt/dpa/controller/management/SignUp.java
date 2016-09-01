package internship.fpt.dpa.controller.management;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import internship.fpt.dpa.model.bean.Account;
import internship.fpt.dpa.model.dao.AccountDAO;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		
		Account acc = new Account();
		
		acc.setUsername(username);
		acc.setPassword(password);
		acc.setEmail(mail);
		acc.setDateCreate(new Date(Calendar.getInstance().getTime().getTime()));
		acc.setMemberID(1);
		acc.setRoleID(2);
		
		AccountDAO accdao = AccountDAO.getInstance();
		accdao.addAccount(acc);
		RequestDispatcher view = request.getRequestDispatcher("LoginServlet");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
