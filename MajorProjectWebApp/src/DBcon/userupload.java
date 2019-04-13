/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBcon;

import DBcon.DbConnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@MultipartConfig(maxFileSize = 16177215)
public class userupload extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession ses =request.getSession();
//            String uname = ses.getAttribute("UID").toString();
            String uname = "pavi";
            
            
                    String userids = null;
                    String username=null;
                    String password = null;
                    String gender =null;
                    String phone = null;
                    String email =null;
                    String dates =null;
                    String State = null;
                    String locations = null;
                    
                   
                    
                    
            boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
            if (!isMultipartContent) {
                return;
            }
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            try {
                List<FileItem> fields = upload.parseRequest(request);
                Iterator<FileItem> it = fields.iterator();
//                if (! .hasNext()) {
//                    return;
//                }
                while (it.hasNext()) {
                    FileItem fileItem = it.next();
                      if (fileItem.getFieldName().equals("name")) {
                        username = fileItem.getString();
                    } else if (fileItem.getFieldName().equals("pass")) {
                        password = fileItem.getString();
                    } else if (fileItem.getFieldName().equals("gen")) {
                        gender = fileItem.getString();
                    } else if (fileItem.getFieldName().equals("phone")) {
                        phone = fileItem.getString();
                    } else if (fileItem.getFieldName().equals("email")) {
                        email = fileItem.getString();
                    }else if (fileItem.getFieldName().equals("dob")) {
                        dates = fileItem.getString();
                    }
                    else if (fileItem.getFieldName().equals("state")) {
                        State = fileItem.getString();
                    }
                    else if (fileItem.getFieldName().equals("country")) {
                        locations = fileItem.getString();
                    }
                    else {
                    }
                    boolean isFormField = fileItem.isFormField();
                    if (isFormField) {
                    } else {
                        String s = fileItem.getName().substring(fileItem.getName().lastIndexOf("\\") + 1);
                        fileItem.write(new File("E:\\tbs\\" + s));//create folder and set path for store
                        out.println(s);
                        fileItem.getOutputStream().close();
                        try {
                            Connection cn = DbConnection.getConnection();
                                PreparedStatement ps = cn.prepareStatement("insert into userprofile(username, password, gender, phone, email, pimage, dates, locations,state)values(?,?,?,?,?,?,?,?,?)");
                            FileInputStream fin = new FileInputStream("E:\\tbs\\" + s); //set path for access
                           
                            ps.setString(1, username);
                            ps.setString(2, password);
                            ps.setString(3, gender);
                            ps.setString(4, phone);
                            ps.setString(5, email);
                            ps.setBinaryStream(6, fin, fin.available());
                            ps.setString(7, dates);
                            ps.setString(8, locations);
                             ps.setString(9, State);
                            int i = ps.executeUpdate();
                            if (i == 1) {
                                response.sendRedirect("ulogin.jsp?msg=Registred");
                            } else {
                                response.sendRedirect("ureg.jsp?msg=Try_Again");
                            }
                            cn.close();

                        } catch (Exception e) {
                            out.println(e.toString());
                        }
                    }
                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

