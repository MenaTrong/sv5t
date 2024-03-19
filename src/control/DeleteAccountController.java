package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DeleteDAO;
import dao.UserDAO;

/**
 * Servlet implementation class DeleteAccountControl
 */
@WebServlet("/DeleteAccount")
public class DeleteAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String studentID = request.getParameter("studentID");
		UserDAO userDAO = new UserDAO();
		DeleteDAO deleteDAO = new DeleteDAO();
		deleteDAO.deleteAssess(studentID);
		deleteDAO.deleteAttachment(studentID);
		deleteDAO.deleteComment(studentID);
		deleteDAO.deleteContent(studentID);
		deleteDAO.deleteListSignUp(studentID);
		deleteDAO.deleteProfile(studentID);
		userDAO.deleteAccount(studentID);
		response.sendRedirect("ManageAccountController");
	}
}
