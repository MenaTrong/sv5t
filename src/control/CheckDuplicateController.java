package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CheckDuplicateDAO;

/**
 * Servlet implementation class CheckDuplicate
 */
@WebServlet("/CheckDuplicate")
public class CheckDuplicateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDuplicateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String studentID = request.getParameter("studentid");
        CheckDuplicateDAO checkDuplicateDAO = new CheckDuplicateDAO();	
        int countDuplicate = checkDuplicateDAO.checkDuplicateStudentID(studentID);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        
        if (countDuplicate == 0) {
            response.getWriter().write("truestudentid");
        } else {
            response.getWriter().write("falsestudentid");
        }
    }
}
