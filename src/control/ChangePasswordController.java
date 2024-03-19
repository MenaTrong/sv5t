package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import context.UserDTO;
import dao.ChangePassDAO;

/**
 * Servlet implementation class ChangePasswordController
 */
@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SUCCESS = "successful.jsp";
	private static final String ERROR = "invalid.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("USER");
		String studentID = user.getStudentID();
		String password = request.getParameter("newpassword");
		ChangePassDAO dao = new ChangePassDAO();
		String url = ERROR;
		if (dao.getUser(studentID) != null) {
			url = SUCCESS;
			dao.editPasswordByStudentID(studentID, password);
		} else {
			url = ERROR;
		}
		response.sendRedirect(url);
	}

}
