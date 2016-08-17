package internship.fpt.dpa.controller.management.pet;


import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import internship.fpt.dpa.model.bean.Donate;
import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.bo.DonateBO;
import internship.fpt.dpa.model.bo.PetBO;



/**
 * Servlet implementation class AddPet
 */
@WebServlet("/AddPets")
@MultipartConfig()
public class AddPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if("add".equals(request.getParameter("add"))) {
			HttpSession session = request.getSession();
			
			//Insert Pet
			String petName = request.getParameter("petName");
			String age = request.getParameter("age");
			String petTypeID = request.getParameter("petTypeID");
			String nickname = request.getParameter("nickname");
			String healthTypeID = request.getParameter("healthTypeID");
			String rad_Status = request.getParameter("rad_Status");
			String avatar = request.getParameter("avatar");
			
			//Insert Donate table
			String username = (String) session.getAttribute("username");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			String note = request.getParameter("note");
			
			//chuyển đổi kiểu chọn của người dùng
			int status = 0;
			if("live".equals(rad_Status))
				status = 1;
			
			System.out.println(petName);
			System.out.println(age);
			System.out.println(petTypeID);
			System.out.println(nickname);
			System.out.println(healthTypeID);
			System.out.println(rad_Status);
			System.out.println(username);
			System.out.println("images/pet/"+avatar);
			
			DonateBO dnbo = DonateBO.getInstance();
			Donate dn = new Donate();
			
			PetBO pbo = PetBO.getInstance();
			Pet p = new Pet();
			
			dn.setUsername(username);
			dn.setQuantity(quantity);
			dn.setNote(note);
			dn.setDateDonate(new Date(Calendar.getInstance().getTime().getTime()));
			
			try{
				dnbo.addDonate(dn);
				
				dn = dnbo.getDonateID(username, new Date(Calendar.getInstance().getTime().getTime()));
				int idDonate = dn.getDonateID();
				
				System.out.println(idDonate);
				
				p.setPetName(petName);
				p.setAge(Integer.parseInt(age));
				p.setPetTypeID(Integer.parseInt(petTypeID));
				p.setNickname(nickname);
				p.setHealthID(Integer.parseInt(healthTypeID));
				p.setStatus(status);
				p.setDonateID(idDonate);
				p.setAvatar(avatar);
				
				pbo.addPet(p);
			} catch(Exception sqle){
				sqle.printStackTrace();
			}
			
	        RequestDispatcher view = request.getRequestDispatcher("ShowListPet");
			view.forward(request, response);
		} else {
			 RequestDispatcher view = request.getRequestDispatcher("ShowListPet");
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
