package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import context.UserDTO;
import dao.DAO;

/**
 * Servlet implementation class ListSignUpController
 */
@WebServlet("/ListSignUpController")
public class ListSignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListSignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		
		if (session.getAttribute("USER") == null) {
			session.setAttribute("previousUrl", request.getRequestURI()); // Lưu trữ đường dẫn trước đó vào session
	        response.sendRedirect("login.jsp"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
	    } else {
			UserDTO user = (UserDTO) session.getAttribute("USER");
			String StudentID = user.getStudentID();
			DAO dao = new DAO();
			String username = dao.getUserNameByStudentID(StudentID);
			request.setAttribute("UNQTV", username);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listsignup.jsp");
			dispatcher.forward(request, response);
	    }
	}

}
