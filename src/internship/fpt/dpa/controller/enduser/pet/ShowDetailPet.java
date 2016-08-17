package internship.fpt.dpa.controller.enduser.pet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import internship.fpt.dpa.model.bean.Health;
import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.bean.PetType;
import internship.fpt.dpa.model.bo.PetBO;
import internship.fpt.dpa.model.dao.HealthDAO;
import internship.fpt.dpa.model.dao.PetTypeDAO;

/**
 * Servlet implementation class ShowDetailPet
 */
@WebServlet("/ShowDetailPet")
public class ShowDetailPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowDetailPet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		Pet p = new Pet();
		PetType pt = new PetType();
		Health h = new Health();
		
		PetBO pbo = PetBO.getInstance();
		PetTypeDAO ptdao = PetTypeDAO.getInstance();
		HealthDAO hdao = HealthDAO.getInstance();
		
		p = pbo.getPetById(Integer.parseInt(id));
		pt = ptdao.getPetTypeById(p.getPetTypeID());
		h = hdao.getHealthById(p.getHealthID());
		
		request.setAttribute("Pet", p);
		request.setAttribute("Health", h);
		request.setAttribute("PetType", pt);
		
		RequestDispatcher view = request.getRequestDispatcher("pages/pet/detail.jsp");
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
