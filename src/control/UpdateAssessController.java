package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListSignUpDAO;

/**
 * Servlet implementation class UpdateConfirmController
 */
@WebServlet("/UpdateAssessController")
public class UpdateAssessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAssessController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String studentID = request.getParameter("studentID");
		ListSignUpDAO listSignUpDAO = new ListSignUpDAO();
        
        String assess1 = request.getParameter("comboboxValuetittle01");
        String assess2 = request.getParameter("comboboxValuetittle02");
        String assess3 = request.getParameter("comboboxValuetittle03");
        String assess4 = request.getParameter("comboboxValuetittle04");
        String assess5 = request.getParameter("comboboxValuetittle05");
        String profileType = request.getParameter("data");
        
        if (assess1 != null) {
			listSignUpDAO.UpdateAssessTittle01(studentID, assess1);
		}
        if (assess2 != null) {
        	listSignUpDAO.UpdateAssessTittle02(studentID, assess2);
		}
        if (assess3 != null) {
        	listSignUpDAO.UpdateAssessTittle03(studentID, assess3);
		}
        if (assess4 != null) {
        	listSignUpDAO.UpdateAssessTittle04(studentID, assess4);
		}
        if (assess5 != null) {
        	listSignUpDAO.UpdateAssessTittle05(studentID, assess5);
		}
        if ("Đạt".equals(profileType) || "Chưa đạt".equals(profileType)) {
        	listSignUpDAO.UpdateProfileType(studentID, profileType);
        }
	}

}
