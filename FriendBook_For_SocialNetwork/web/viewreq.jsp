<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<!DOCTYPE html>

<!--//@authoor parthy-->
<html lang="en">
<head>
<title>Friendbook</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

</head>
<body id="page1">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
          <h1 style="color:red; font-size: 28px;">Friendbook:<br><br> A Semantic-based Friend
Recommendation System for Social Networks </h1>      
      </div>   
         <div class="row-2">
        <nav>
          <ul class="menu">
              <li><a class="active" href="userpage.jsp">Home Page</a></li>
              <li><a  href="findfrnd.jsp">Add Friend</a></li>              
              <li><a href="frndlist.jsp">My Friend</a></li>
              <li><a href="index.jsp">Logout</a></li>            
          </ul>
        </nav>
      </div>
        <%
String me = session.getAttribute("me").toString();        
%>
      <div class="row-3">
        <div class="slider-wrapper">
          <div class="slider">
            <ul class="items">
              <li><img src="images/slider-img1.jpg" alt=""> <strong class="banner"> <strong class="b1"></strong> <strong class="b2"></strong> <strong class="b3"><br>
               </strong> </strong> </li>
              <li><img src="images/slider-img2.jpg" alt=""> <strong class="banner"> <strong class="b1"></strong> <strong class="b2"></strong> <strong class="b3"><br>
               </strong> </strong> </li>
              <li><img src="images/slider-img3.jpg" alt=""> <strong class="banner"> <strong class="b1"></strong> <strong class="b2"></strong> <strong class="b3"><br>
               </strong> </strong> </li>
            </ul>
            <a class="prev" href="#">prev</a> <a class="next" href="#">prev</a> </div>
        </div>
      </div>
    </header>
    <!-- content -->
    <section id="content">
      <div class="padding">
        <div class="box-bg margin-bot">
          <div class="wrapper">
            <div class="col-1">
            </div>
          </div>
        </div>
        <div class="wrapper">
          <div class="col-3">
            <div class="indent">
                <div style="color: red; font-size: 20px; position: absolute; top: 50px;">Wellcome <%=me%>..!</div>
            <fieldset>
                 <div style="position: absolute; left: 220px; top: 80px;">
          <font size="+1" color="green"><b>Friend Request:</b>  </font><br><br><br>
<!--          <form action="update.jsp" method="get">-->
         <table width="600" border="2" style="text-align: center">
                        <tr align="center" style="font-weight: bold; color: red; background:darkgoldenrod "><td>USERID</td>
                       <td>INTEREST</td>                        
                     <td>ACTION</td>
                     <td>ACTION</td>
                        <tr align="center" style="font-weight: bold; font-family: cursive; color: purple; background: #000" >  
           
          <%
          String stA = "NO";
          String frnd = null;
          String intr = null;
          String id = null;
          Connection con =DbConnector.getConnection(); 
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery("select * from frnd where frnd ='"+(String) session.getAttribute("me") + "' and status_='"+stA+"' ");
          while(rs.next()){
frnd = rs.getString("user");
intr = rs.getString("userintr");
id = rs.getString("id");
session.setAttribute("di", id);
%>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000"><%=frnd%></td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000"><%=intr%></td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000">
    <a href="update.jsp?<%=id%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Accept</button>
</a>
</td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000">
    <a href="reqdel.jsp?<%=id%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Ignore</button>
</a>
</td>

 </tr>
<%    }
          %>
         </table></div>
<!--<B>Request From:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" readonly value="<%=frnd%>"></B><br><br><br>
<input type="submit" value="Accept" style="background-color: #0099ff"/></form> 
<form action="reqdel.jsp" method="get">
<input type="submit" value="Ignore" style="background-color: red"/></form>

   
<h2><font color="yellow">NO Friend Request Found..!</font></h2>-->

    
          </fieldset>   
        		
              <div class="wrapper">
                  <figure class="img-indent3"><img src="images/aboutme.png" width="100"/></figure>
                <div class="extra-wrap">
                  
                </div>
              </div>
              <a class="button-2" href="aboutme.jsp"><%=me%></a> </div>
          </div>
          <div class="col-2">
           
          </div>
        </div>
      </div>
    </section>
    <!-- footer -->
    <footer>
      <div class="row-top">
        <div class="row-padding">
          <div class="wrapper">
         
            <div class="col-2">
              <h4>Follow Us:</h4>
              <ul class="list-services">
                <li class="item-1"><a href="#">Facebook</a></li>
                <li class="item-2"><a href="#">Twitter</a></li>
                <li class="item-3"><a href="#">LinkedIn</a></li>
              </ul>
            </div> 
          </div>
        </div>
      </div>
      <div class="row-bot">
        
      </div>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(function () {
    $('.slider')._TMS({
        prevBu: '.prev',
        nextBu: '.next',
        playBu: '.play',
        duration: 800,
        easing: 'easeOutQuad',
        preset: 'simpleFade',
        pagination: false,
        slideshow: 3000,
        numStatus: false,
        pauseOnHover: true,
        banners: true,
        waitBannerAnimation: false,
        bannerShow: function (banner) {
            banner.hide().fadeIn(500)
        },
        bannerHide: function (banner) {
            banner.show().fadeOut(500)
        }
    });
})
</script>
</body>
</html>

