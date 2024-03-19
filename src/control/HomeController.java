package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import context.AdminUserDTO;
import context.AssessDTO;
import context.AttachmentDTO;
import context.CommentDTO;
import context.ContentDTO;
import context.ProfileUserDTO;
import context.UserDTO;
import dao.ShowContentAndCommentDAO;
import dao.ListSignUpDAO;
import dao.ProfileUserDAO;
import dao.ShowAttachmentDAO;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeController() {
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
			response.sendRedirect("login.jsp"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
		} else {
			UserDTO user = (UserDTO) session.getAttribute("USER");
			String usernamesinhvien = request.getParameter("usernamesinhvien");
			String studentID = user.getStudentID();
			String level = user.getLevel();
			String userName = user.getUserName();
			ProfileUserDAO profileUserDAO = new ProfileUserDAO();
			ListSignUpDAO listSignUpDAO = new ListSignUpDAO();
			ShowContentAndCommentDAO showContentAndCommentDAO = new ShowContentAndCommentDAO();
			ShowAttachmentDAO showAttachmentDAO = new ShowAttachmentDAO();
			
			if (usernamesinhvien != null) {
				ProfileUserDTO profileUser = profileUserDAO.getProfileUserByStudentID(usernamesinhvien);
				AssessDTO assess = profileUserDAO.getAssessByStudentID(usernamesinhvien);
				ContentDTO content = showContentAndCommentDAO.getListContent(usernamesinhvien);
				CommentDTO comment = showContentAndCommentDAO.getListComment(usernamesinhvien);
				AttachmentDTO attachment = showAttachmentDAO.getListAttachment(usernamesinhvien);
				request.setAttribute("Content", content);
				request.setAttribute("Comment", comment);
				request.setAttribute("Attachment", attachment);
				request.setAttribute("Profile", profileUser);
				request.setAttribute("Assess", assess);	
			} else {
				if ("0".equals(level) || "1".equals(level)) {
					AdminUserDTO profileUser = profileUserDAO.getProfileAdminUserByStudentID(studentID);
					int countListSignUp = listSignUpDAO.countListSignUp();
					int countListSignUpConfirmed = listSignUpDAO.countListSignUpConfirmed();
					int countTheEditing = profileUserDAO.countTheEditing();
					String valueTheEditing;
					if (countTheEditing == 0) {
						valueTheEditing = "0";
					} else {
						valueTheEditing = "1";
					}
					request.setAttribute("ValueTheEditing", valueTheEditing);
					request.setAttribute("CountListSignUp", countListSignUp);
					request.setAttribute("CountListSignUpConfirmed", countListSignUpConfirmed);
					request.setAttribute("Profile", profileUser);
				} else {
					ProfileUserDTO profileUser = profileUserDAO.getProfileUserByStudentID(studentID);
					AssessDTO assess = profileUserDAO.getAssessByStudentID(studentID);
					ContentDTO content = showContentAndCommentDAO.getListContent(studentID);
					CommentDTO comment = showContentAndCommentDAO.getListComment(studentID);
					AttachmentDTO attachment = showAttachmentDAO.getListAttachment(studentID);
					request.setAttribute("Content", content);
					request.setAttribute("Comment", comment);
					request.setAttribute("Attachment", attachment);
					request.setAttribute("Assess", assess);
					request.setAttribute("Profile", profileUser);
				}
				
			}
			
			request.setAttribute("UNQTV", userName);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);
			
		}
	}
}
