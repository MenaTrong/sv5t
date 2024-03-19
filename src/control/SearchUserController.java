package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import context.UserDTO;
import dao.UserDAO;

/**
 * Servlet implementation class SearchControl
 */
@WebServlet("/SearchUserController")
public class SearchUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchUserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String txtsearch = request.getParameter("txtsearch");
		UserDAO userDAO = new UserDAO();
		
		List<UserDTO> list = userDAO.getSearchUser(txtsearch);
		
		request.setAttribute("listuser", list);
		
		response.sendRedirect("ManageAccountController");
	}

}
