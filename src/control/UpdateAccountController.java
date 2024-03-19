package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;

/**
 * Servlet implementation class UpdateConfirmController
 */
@WebServlet("/UpdateAccountController")
public class UpdateAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String userID = request.getParameter("userID");
		String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        UserDAO userDAO = new UserDAO();
        userDAO.UpdateUserAccountUserName(userID, userName);
        userDAO.UpdateUserAccountPassword(userID, password);
        userDAO.UpdateUserAccountEmail(userID, email);
        response.sendRedirect("ManageAccountController");
	}
}
