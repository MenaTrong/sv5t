package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import context.UserDTO;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String SUCCESS = "ListSignUpController";
	public static final String ERROR = "invalid.jsp";
	public static final String LOCKED = "locked.jsp";
	private static final int MAX_LOGIN_ATTEMPTS = 5;

	public LoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		UserDAO dao = new UserDAO();
		String url = ERROR;
		UserDAO userDAO = new UserDAO();
		try {
			
			String StudentID = request.getParameter("studentid");
			String Password = request.getParameter("password");
			
			Integer loginAttempts = (Integer) session.getAttribute("loginAttempts");
            if (loginAttempts == null) {
                loginAttempts = 0;
            }
            
			UserDTO user = dao.checkLogin(StudentID, Password);
			if ("Khoá".equals(userDAO.getBlocked(StudentID))) {
				url = LOCKED;
			} else if (user != null) {
				session.setAttribute("loginAttempts", 0);
                session.setAttribute("USER", user);
                url = SUCCESS;
            } else {
                loginAttempts++;

                if (loginAttempts >= MAX_LOGIN_ATTEMPTS) {
                    session.invalidate(); // Xóa phiên làm việc
                    
                    userDAO.UpdateBlocked(StudentID);
                    url = LOCKED;
                } else {
                    // Lưu số lần đăng nhập sai vào session
                    session.setAttribute("loginAttempts", loginAttempts);
                    url = ERROR;
                }
            }
		} catch (Exception e) {
			log("error at login servlet: " + e.toString());
		} finally {
			response.sendRedirect(url);
		}
	}
}
