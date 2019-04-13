<%@page import="java.io.InputStream"%>
<%@page import="DBcon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NEAREST OPENER SCHEDULE SCRUTINIZE IN MULTI-DIMENSIONAL DATASETS</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/carouselScript.js"></script>
<link href="css/carousel.css" rel="stylesheet" type="text/css">

</head>
    <style> 

            .inputs {
                background: #BCEBFD;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 200px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputs:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #72D0F4, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .inputss {
                background: #BCEBFD;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 200px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputss:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #72D0F4, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .button {
                background-color:   brown; /* Green */
                border: none;
                color: white;
                padding: 10px 27px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }
        </style> 
<body>
<div class="wrapper">
  <div class="top-strip">
    <div class="top-strip-cor1"></div>
    <div class="top-strip-cor2"></div>
    <div class="top-strip-cor3"></div>
    <div class="top-strip-cor4"></div>
    <div class="logo">
      <h2 style="font-size: 35px;font-family: Copperplate Gothic Bold;">NEAREST OPENER SCHEDULE SCRUTINIZE IN MULTI-DIMENSIONAL DATASETS</h2>
      
    </div>
    <div class="search-panel">
      <div class="search-panel-cor1"></div>
      <div class="search-panel-cor2"></div>

    </div>
    <div class="clearing"></div>
    
	
	<div class="banner-wrapper">
	
   <div id="carousel">
		<div id="slides">
				<ul>
						<li><img src="imagess/groupppp.png"  alt="Slide 1"/></li>
						<li><img src="imagess/groupppp.png"  alt="Slide 2"/></li>
						<li><img src="imagess/groupppp.png"  alt="Slide 3"/></li>
				</ul>
				<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<div id="buttons"> <a href="#" id="prev">prev</a> <a href="#" id="next">next</a>
				<div class="clear"></div>
		</div>
</div>
    </div>
    <div class="menu">
      <ul>
        <li><a class="active" href="index.jsp">HOME</a></li>
        <li><a href="userdetails.jsp">USER</a></li>
        <li><a href="viewallfile.jsp">FILE</a></li>
        <li><a href="splidocument.jsp">CATEGORIES</a></li>
       
      </ul>
        
    </div>
    <div class="clearing"></div>
  </div>
  <div class="clearing"></div>
  <!--- top strip div end -->
  
  <!--- panel wrapper div end -->
  <center><h2 style="font-size: 26px; color:  darkgoldenrod; font-family: Copperplate Gothic Bold">GROUPING  USER FILES BY OBJECT </h2></center>
  <div class="page-wrapper" style="border-style:   dotted; border-width: 5px;border-color: cadetblue;">
      
      <center>
          <table>
           <%
                    
                        InputStream n1 = null;
                        String logo = null;
                        String did = null;
                        int i = 1;
                         HttpSession ses = request.getSession();
            String object = ses.getAttribute("object").toString();
                        String cate =request.getParameter("cate");
                        String caption =request.getParameter("caption");
                       Connection con = DbConnection.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select * from documentup  where caption = '"+caption+"' and catego = '"+object+"'  ");
                      
                       
                            
                        while (rs.next()) {
                           String catee=rs.getString("catego").toUpperCase();
                           String captione=rs.getString("caption").toUpperCase();
                           String filename=rs.getString("filenmae").toUpperCase();
                           String username=rs.getString("username").toUpperCase();
                          
                                
                          

                    %>
                    <tr><td><center><a style="color:red;font-size: 30px"href="viewmap2.jsp?cate=<%=catee%>"><%=catee%></a></center></td><td><center><a href="#?caption=<%=captione%>"><%=captione%></a></center></td><td><center><a style="color:blueviolet;font-size: 20px"href="#?fname=<%=filename%>"><%=filename%></a></center></td>
                        <td><center><a style="color:blueviolet;font-size: 20px"href="viewfile.jsp?id=<%=rs.getInt("id")%>">view</a></center></td>
                        <td><center><a style="color:red;font-size: 20px"href="#?fname=<%=username%>"><%=username%></a></center></td>
                    </tr>
                    
                    
                   
                    
                    
                    <%
                            
                        }
                                              
                    %>
                    </table>
        
      </center>
  </div>
  <!--- page wrapper div end -->
 <div class="footer-wrapper">
 <div class="footer">
 <div class="panel marRight30">


 </div>
 
  
 
  
 
 </div>
 </div>
 
</div>
<!--- wrapper div end -->
</body>
</html>
