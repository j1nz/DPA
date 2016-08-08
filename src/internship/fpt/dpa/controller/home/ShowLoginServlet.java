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

/**
 * Servlet implementation class ShowLoginServlet
 */
@WebServlet("/ShowLoginServlet")
public class ShowLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		// Get session creation time.
	    Date createTime = new Date(session.getCreationTime());
	    // Get last access time of this web page.
	    Date lastAccessTime = new Date(session.getLastAccessedTime());
		if(session.isNew()) {
			RequestDispatcher view = request.getRequestDispatcher("pages/home/login.jsp");
			view.forward(request, response);
		} else if("admin".equals(session.getAttribute("role"))){
			RequestDispatcher view = request.getRequestDispatcher("ShowManagement");
			view.forward(request, response);
		} else {
			RequestDispatcher view = request.getRequestDispatcher("pages/home/login.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
