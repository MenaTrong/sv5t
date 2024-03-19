package control;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.SaveAttachmentDAO;

@WebServlet("/UploadFileAttachmentController03")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 50, // 50MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadFileAttachmentController03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        String studentID = request.getParameter("studentID");
        SaveAttachmentDAO saveAttachmentDAO = new SaveAttachmentDAO();
        try {
            for (Part part : request.getParts()) {
                String fileName = extractFileName(part);
                fileName = new File(fileName).getName();
                saveAttachmentDAO.insertAttachmentTittle03(studentID, fileName);
                part.write(getFolderUpload().getAbsolutePath() + File.separator + fileName);
            }
            response.getWriter().write("Success");
        } catch (Exception e) {
            response.getWriter().write("Failed: " + e.getMessage());
        }
    }

    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    public File getFolderUpload() {
        String userHome = System.getProperty("user.home");
        File folderUpload = new File(userHome + "/Downloads/Downloaded");
        if (!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        return folderUpload;
    }
}
