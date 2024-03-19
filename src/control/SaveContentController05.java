package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SaveContentDAO;

/**
 * Servlet implementation class SaveContentController
 */
@WebServlet("/SaveContentController05")
public class SaveContentController05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveContentController05() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String content05 = request.getParameter("content05");
		String studentID = request.getParameter("studentID");
		
		SaveContentDAO saveContentDAO = new SaveContentDAO();
		if (content05 != null) {
			saveContentDAO.insertContentTittle05(studentID, content05);
		}
	}
}
