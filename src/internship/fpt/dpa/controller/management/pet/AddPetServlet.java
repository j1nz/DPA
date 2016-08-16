package internship.fpt.dpa.controller.management.pet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.bo.PetBO;

/**
 * Servlet implementation class AddPetServlet
 */
@WebServlet("/AddPetServlet")
public class AddPetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String avatar = "";
    
	// location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "images\\pet";
    // upload settings
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		check(request, response);
		String avatar= getImage(request, response);
		String petName = request.getParameter("petName");
		int age = Integer.parseInt(request.getParameter("age"));
	    String status = request.getParameter("rad_Status");
	    String username = (String) session.getAttribute("username");
	    String nickname = request.getParameter("nickname");
		
		
		
        
        System.out.println("------------------------");
        System.out.println(petName);
        System.out.println(age);
        System.out.println(status);
        System.out.println(username);
        System.out.println(nickname);
        System.out.println(avatar);
        
        Pet p = new Pet();
        
        
        PetBO pBo = PetBO.getInstance();
        
        
        // redirects client to message page
        RequestDispatcher view = request.getRequestDispatcher("ShowListPet");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void check(HttpServletRequest request, HttpServletResponse response) {
		// checks if the request actually contains upload file
	    if (!ServletFileUpload.isMultipartContent(request)) {
	    	// if not, we stop here
	        PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("Error: Form must has enctype=multipart/form-data.");
			    writer.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       
	        return;
	    } else{
	    	getImage(request, response);
	    }
	}
	
	public String getImage(HttpServletRequest request, HttpServletResponse response) {

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
	             + UPLOAD_DIRECTORY;

	    System.out.println(uploadPath);
	    
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
	                    
	                    avatar = "images/pet/" + fileName;
	                    
	                    // saves the file on disk
	                    item.write(storeFile);
	                    
	                }
	            }
	        }
	    } catch (Exception ex) {
	        request.setAttribute("message",
	                "There was an error: " + ex.getMessage());
	    }
		
		return avatar;
	}

}
