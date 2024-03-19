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
@WebServlet("/SaveContentController")
public class SaveContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveContentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String content0101 = request.getParameter("content0101");
		String studentID = request.getParameter("studentID");
		
		SaveContentDAO saveContentDAO = new SaveContentDAO();
		if (content0101 != null) {
			saveContentDAO.insertContentTittle0101(studentID, content0101);
		}
	}
}
