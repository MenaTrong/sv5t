package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.SaveCommentDAO;

/**
 * Servlet implementation class SaveContentController
 */
@WebServlet("/SaveCommentController0202")
public class SaveCommentController0202 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveCommentController0202() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String comment0202 = request.getParameter("comment0202");
		String studentID = request.getParameter("studentID");
		
		SaveCommentDAO saveCommentDAO = new SaveCommentDAO();
		if (comment0202 != null) {
			saveCommentDAO.insertCommentTittle0202(studentID, comment0202);
		}
	}
}
