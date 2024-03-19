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
@WebServlet("/CheckDuplicateEmail")
public class CheckDuplicateEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDuplicateEmailController() {
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
        String email = request.getParameter("email");
        CheckDuplicateDAO checkDuplicateDAO = new CheckDuplicateDAO();	
        int countDuplicate = checkDuplicateDAO.checkDuplicateEmail(email);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        
        if (countDuplicate == 0) {
            response.getWriter().write("trueemail");
        } else {
            response.getWriter().write("falseemail");
        }
    }
}
