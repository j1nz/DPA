package internship.fpt.dpa.controller.management.pet;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import internship.fpt.dpa.model.bean.Donate;
import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.bo.DonateBO;
import internship.fpt.dpa.model.bo.PetBO;



/**
 * Servlet implementation class AddPet
 */
@WebServlet("/AddPets")
public class AddPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "images/pet";
 
    // upload settings
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
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
			
			
			 // checks if the request actually contains upload file
	        if (!ServletFileUpload.isMultipartContent(request)) {
	            // if not, we stop here
	            PrintWriter writer = response.getWriter();
	            writer.println("Error: Form must has enctype=multipart/form-data.");
	            writer.flush();
	            
	            return;
	        }
			// configures upload settings
	        DiskFileItemFactory factory = new DiskFileItemFactory();
	        // sets memory threshold - beyond which files are stored in disk 
	        factory.setSizeThreshold(MEMORY_THRESHOLD);
	        // sets temporary location to store files
	        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	 
	        ServletFileUpload upload = new ServletFileUpload(factory);
	 
	        // sets maximum size of upload file
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	 
	        // sets maximum size of request (include file + form data)
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	 
	        // constructs the directory path to store upload file
	        // this path is relative to application's directory
	        String uploadPath = getServletContext().getRealPath("")
	                + File.separator + UPLOAD_DIRECTORY;
	 
	        // creates the directory if it does not exist
	        File uploadDir = new File(uploadPath);
	        if (!uploadDir.exists()) {
	            uploadDir.mkdir();
	        }
	 
	        try {
	            // parses the request's content to extract file data
	            @SuppressWarnings("unchecked")
	            List<FileItem> formItems = upload.parseRequest(request);
	 
	            if (formItems != null && formItems.size() > 0) {
	                // iterates over form's fields
	                for (FileItem item : formItems) {
	                    // processes only fields that are not form fields
	                    if (!item.isFormField()) {
	                        String fileName = new File(item.getName()).getName();
	                        String filePath = uploadPath + File.separator + fileName;
	                        File storeFile = new File(filePath);
	 
	                        // saves the file on disk
	                        item.write(storeFile);
	                        
	                       String avatar =  UPLOAD_DIRECTORY + "/" +fileName;
	                       //System.out.println(avatar);
	                      
	                    }
	                }
	            }
	        } catch (Exception ex) {
	            request.setAttribute("message",
	                    "There was an error: " + ex.getMessage());
	        }
			
			
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
			Date dateDonate = new Date(Calendar.getInstance().getTime().getTime());
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			String note = request.getParameter("note");
			
			//chuyển đổi kiểu chọn của người dùng
			int status = 0;
			if("live".equals(rad_Status))
				status = 1;
			
//			System.out.println(petName);
//			System.out.println(age);
//			System.out.println(petTypeID);
//			System.out.println(nickname);
//			System.out.println(healthTypeID);
//			System.out.println(rad_Status);
//			System.out.println(username);
//			System.out.println("images/pet/"+avatar);
			
			DonateBO dnbo = DonateBO.getInstance();
			Donate dn = new Donate();

			Pet p = new Pet();
			
			dn.setUsername(username);
			dn.setQuantity(quantity);
			dn.setNote(note);
			dn.setDateDonate(dateDonate);
			
			p.setPetName(petName);
			p.setAge(Integer.parseInt(age));
			p.setPetTypeID(Integer.parseInt(petTypeID));
			p.setNickname(nickname);
			p.setHealthID(Integer.parseInt(healthTypeID));
			p.setStatus(status);
			p.setAvatar(avatar);

			dnbo.addDonate(dn, p);

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
