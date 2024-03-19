package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

/**
 * Servlet implementation class UpdateConfirmController
 */
@WebServlet("/UpdateConfirmController")
public class UpdateConfirmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateConfirmController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentID = request.getParameter("studentID");
        String confirm = request.getParameter("checkboxValue");
        DAO dao = new DAO();
        dao.ConfirmListSignUp(studentID, confirm);
        String previousURI = request.getHeader("referer");
        response.sendRedirect(previousURI);
	}

}
