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
@WebServlet("/SaveContentController0103")
public class SaveContentController0103 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveContentController0103() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String content0103 = request.getParameter("content0103");
		String studentID = request.getParameter("studentID");
		
		SaveContentDAO saveContentDAO = new SaveContentDAO();
		if (content0103 != null) {
			saveContentDAO.insertContentTittle0103(studentID, content0103);
		}
	}
}
