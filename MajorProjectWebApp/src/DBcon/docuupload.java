package DBcon;  
  
import java.io.IOException;  
import java.io.InputStream;  
import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;  
import java.sql.SQLException;  
import java.text.SimpleDateFormat;
import java.util.Calendar;
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.MultipartConfig;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;  
  
  
  
@WebServlet("/fileUpload")  
@MultipartConfig(maxFileSize = 16177215) // upload file up to 16MB  
public class docuupload extends HttpServlet {  
    private String dbURL = "jdbc:mysql://localhost:3306/nearist_keyword";
    private String dbUser = "root";
    private String dbPass = "";
    Connection conn = null;
  
    private static final long serialVersionUID = -1623656324694499109L;  
    
  
  protected void doPost(HttpServletRequest request,  
            HttpServletResponse response) throws ServletException, IOException {  
          String caption=null,filenmae=null,key1=null,key2=null,key3=null,descrip=null;
        // gets values of text fields  
        HttpSession ses = request.getSession();
    String fusername = ses.getAttribute("sssname").toString();
        HttpSession session = request.getSession();
        Calendar cal = Calendar.getInstance();
		SimpleDateFormat format = new SimpleDateFormat("HH:mm dd/MM/yyyy");
		String report= format.format(cal.getTime());

//    String username = (String)request.getAttribute("un");
//    session.setAttribute("UserName", username);
        
        String catee=request.getParameter("cate").toUpperCase();
        caption=request.getParameter("caption").toUpperCase();
        filenmae=request.getParameter("filenmae").toUpperCase();
        key1=request.getParameter("key1");
        key2=request.getParameter("key2");
        key3=request.getParameter("key3");
        descrip=request.getParameter("descrip");
        String ratings ="0";
        
       
        InputStream inputStream1 = null;
        InputStream inputStream2 = null;
       
  
        // obtains the upload file part in this multipart request  
        Part filePart1 = request.getPart("files");
        Part filePart2 = request.getPart("image");
       
        if (filePart1 != null) {  
            // debug messages  
            System.out.println(filePart1.getName());  
            System.out.println(filePart1.getSize());  
            System.out.println(filePart1.getContentType());  
  
            // obtains input stream of the upload file  
            inputStream1 = filePart1.getInputStream();
            }
        if (filePart2 != null) {  
            // debug messages  
            System.out.println(filePart2.getName());  
            System.out.println(filePart2.getSize());  
            System.out.println(filePart2.getContentType());  
  
            // obtains input stream of the upload file  
            inputStream2 = filePart2.getInputStream();
            } 
         
         
  
        String message = null; // message will be sent back to client  
        
        try {  
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);// connection to the database
       
            // constructs SQL statement  
            String sql = "INSERT INTO documentup (id,catego,caption,filenmae,key1,key2,key3,descrip,files,image,ratings,date,username) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";  
            PreparedStatement ps = conn.prepareStatement(sql);  
            
                           ps.setInt(1,0);
                            ps.setString(2,catee);
                            ps.setString(3,caption);
                            ps.setString(4,filenmae);
                            ps.setString(5,key1);
                            ps.setString(6,key2);
                            ps.setString(7,key3);
                            ps.setString(8,descrip);
                            
  
            if (inputStream1 != null) {  
                // fetches input stream of the upload file for the blob column  
                ps.setBlob(9, inputStream1); 
                 ps.setBlob(10, inputStream2);
                 ps.setString(11, ratings);
                 ps.setString(12, report);
                 ps.setString(13, fusername);
                 
                 
            }  
//             if (inputStream2 != null) {  
//                // fetches input stream of the upload file for the blob column  
//                statement.setBlob(4, inputStream2);  
//            }  
//             if (inputStream3 != null) {  
//                // fetches input stream of the upload file for the blob column  
//                statement.setBlob(5, inputStream3);  
//            }  
  
            // sends the statement to the database server  
            int row = ps.executeUpdate();  
            if (row > 0) {  
                message = "Image is uploaded successfully into the Database";  
            }  
        } catch (SQLException ex) {  
            message = "ERROR: " + ex.getMessage();  
            ex.printStackTrace();  
        }  
        // sets the message in request scope  
        request.setAttribute("Message", message);  
  
        // forwards to the message page  
        getServletContext().getRequestDispatcher("/documenntupload.jsp").forward(  
                request, response);  
    }  
}  