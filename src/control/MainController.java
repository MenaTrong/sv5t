package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String LOGIN = "LoginController";
	private static final String ERROR = "invalid.jsp";
	
	public MainController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = ERROR;
		try {
			String action = request.getParameter("btnAction");
			if (action.equals("Login")) {
				url = LOGIN;
			}
		} catch (Exception e) {
		} finally {
			request.getRequestDispatcher(url).forward(request, response);
		}
	}
}
