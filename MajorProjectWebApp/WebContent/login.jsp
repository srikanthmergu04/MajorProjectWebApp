<%-- 
    Document   : loginaction
    Created on : Feb 23, 2016, 3:43:53 PM
    Author     : java4
--%>

<%@page import="DBcon.DbConnection"%>
<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;


    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    
    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from userprofile where username='" + name + "' AND password='" + pass + "'");
                    if (rs.next()) {
                        session.setAttribute("userid", rs.getString("id"));
                        session.setAttribute("sssname", rs.getString("username"));
                        session.setAttribute("sssemail", rs.getString("email"));
                        
                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("ulogin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            

            case 2:
                try {
                    if (name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin")) {
                        response.sendRedirect("userdetails.jsp?msg=success");
                    } else {
                        response.sendRedirect("adminlogin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                
            
            
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>