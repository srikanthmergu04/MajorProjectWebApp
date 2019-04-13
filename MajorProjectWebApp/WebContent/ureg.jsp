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
	
   <div id="carousel" >
		<div id="slides">
				<ul>
						<li><img src="images/reg1.jpg"  alt="Slide 1"/></li>
						<li><img src="images/reg1.jpg"  alt="Slide 2"/></li>
						<li><img src="images/reg1.jpg"  alt="Slide 3"/></li>
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
         <li><a class="active" href="index.jsp">home</a></li>
        <li><a href="ureg.jsp">REGISTRATION</a></li>
        <li><a href="ulogin.jsp">LOGIN</a></li>
        
      </ul>
        
    </div>
    <div class="clearing"></div>
  </div>
  <div class="clearing"></div>
  <!--- top strip div end -->
  
  <!--- panel wrapper div end -->
  <div class="page-wrapper" style="border-style:   dotted; border-width: 5px;border-color: cadetblue;">
      <div>
  	<div style="float: left; margin-left: 10px;background:   burlywood">
                        <br><br><br><center><h2 style="font-size: 26px; color: brown; font-family: Copperplate Gothic Bold">USER REGISTRATION</h2>
                    <br><form action="userupload" method="post" enctype="multipart/form-data"> 
                        <input type="text" class="inputs" name="name" required="" placeholder="Your Name" />
                        <input type="password" class="inputs" name="pass" required="" placeholder="Password" /><br> 
                        <input type="email" class="inputs" name="email"  placeholder="e-mail" pattern="[^ @]*@[^ @]*" />
                        <input type="date" class="inputs" name="dob" required="" placeholder="Date Of Birth" /><br> 
                        <select class="inputss" required="" name="gen" >
                            <option value="select">Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                        <input type="text" class="inputs" name="phone" pattern="[789][0-9]{9}" placeholder="Phone Number" /><br> 
                        <input type="text"class="inputs" name="state" required="" placeholder="State" />
                        <input type="text"class="inputs" name="country" pattern="^[a-zA-Z]+$" placeholder="Country" /><br>
                        <input type="file"class="inputs" name="files" pattern="^[a-zA-Z]+$" placeholder="Country" />
                        <br><input type="hidden" value="2" name="status" />
                        <input type="Submit" value="Register" class="button" >
                        <input type="reset" value="Reset" class="button" >
                    </form></center>
                    </div>
          <div style="float: right; margin-left: 50px;background: blanchedalmond">
              <img style="width:420px;height: 465px"src="images\regg.jpg"></img>
          </div>
      </div>
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
