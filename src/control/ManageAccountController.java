package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import context.UserDTO;
import dao.UserDAO;

/**
 * Servlet implementation class ManageAccountController
 */
@WebServlet("/ManageAccountController")
public class ManageAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageAccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		if (session.getAttribute("USER") == null) {
			response.sendRedirect("login.jsp"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
		} else {
			UserDTO user = (UserDTO) session.getAttribute("USER");
			String userName = user.getUserName();
			request.setAttribute("UNQTV", userName);
			String txtsearch = request.getParameter("txtsearch");
			UserDAO userDAO = new UserDAO();
			if(txtsearch != null) {
				List<UserDTO> list = userDAO.getSearchUser(txtsearch);
				request.setAttribute("alluser", list);
			}
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/manageaccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
