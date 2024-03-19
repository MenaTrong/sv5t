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

import context.ListSignUpDTO;
import context.UserDTO;
import dao.ListSignUpDAO;


/**
 * Servlet implementation class HomeController
 */
@WebServlet("/ShowListSignUp")
public class ShowListSignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowListSignUpController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		if (session.getAttribute("USER") == null) {
			session.setAttribute("previousUrl", request.getRequestURI()); // Lưu trữ đường dẫn trước đó vào session
			response.sendRedirect("login.jsp"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
		} else {
			UserDTO user = (UserDTO) session.getAttribute("USER");
			String userName = user.getUserName();
			String level = user.getLevel();
			String year = request.getParameter("selectedNam");
			String department = request.getParameter("selectedKhoa");
			
			String typefile = request.getParameter("selectedLoaiHoSo");
			String title = request.getParameter("selectedDanhHieu");
			
			ListSignUpDAO dao = new ListSignUpDAO();
			if ("Khoa Kinh tế vận tải".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Khoa Kinh tế vận tải", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Khoa Công nghệ thông tin".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Khoa Công nghệ thông tin", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Khoa Điện - Điện tử viễn thông".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Khoa Điện - Điện tử viễn thông", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Viện Hàng hải".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Viện Hàng hải", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Viện Xây dựng".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Viện Xây dựng", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Viện Cơ khí".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Viện Cơ khí", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Viện Ngôn ngữ và Khoa học xã hội".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Viện Ngôn ngữ và Khoa học xã hội", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Viện Đào tạo chất lượng cao".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Viện Đào tạo chất lượng cao", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("Viện Đào tạo và hợp tác quốc tế".equals(userName)) {
				List<ListSignUpDTO> list = dao.getListSignUp(year, "Viện Đào tạo và hợp tác quốc tế", typefile, title);
				request.setAttribute("listsignup", list);
			}
			if ("0".equals(level)) {
				List<ListSignUpDTO> list = dao.getListSignUpLevelUniversity(year, department, typefile, title);
				request.setAttribute("listsignup", list);
			}
			
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ListSignUpController");
			dispatcher.forward(request, response);
			
		}
	}
}
