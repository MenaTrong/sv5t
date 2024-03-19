package control;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ForgetDAO;


@WebServlet("/ForgetController")
public class ForgetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SUCCESS = "forgetsuccessful.jsp";
	private static final String ERROR = "invalid.jsp";
	
	public ForgetController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		final String emailfrom = "vuduyminh132@gmail.com";
		final String passString = "cruesvbznxtkqbyy";
		String url = ERROR;
		
		final String emailto = request.getParameter("email");
		
		ForgetDAO dao = new ForgetDAO();
		if (dao.getEmailUser(emailto) != null) {
			url = SUCCESS;
			String passwordString = dao.editPasswordByEmail(emailto);

			Properties propsProperties = new Properties();
			propsProperties.put("mail.smtp.host", "smtp.gmail.com");
			propsProperties.put("mail.smtp.port", "587");
			propsProperties.put("mail.smtp.auth", true);
			propsProperties.put("mail.smtp.starttls.enable", "true");

			javax.mail.Authenticator authenticator = new javax.mail.Authenticator() {

				@Override
				protected javax.mail.PasswordAuthentication getPasswordAuthentication() {

					return new javax.mail.PasswordAuthentication(emailfrom, passString);
				}
			};

			Session session = Session.getInstance(propsProperties, authenticator);

			MimeMessage msgMessage = new MimeMessage(session);
			try {
				msgMessage.addHeader("Content-type", "text/html; charset=UTF-8");
				msgMessage.setFrom(emailfrom);
				msgMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailto, false));
				msgMessage.setSubject("Thu email!");
				msgMessage.setSentDate(new Date());
				msgMessage.setText(passwordString, "UTF-8");

				Transport.send(msgMessage);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			url = ERROR;
		}
		response.sendRedirect(url);
	}
}
