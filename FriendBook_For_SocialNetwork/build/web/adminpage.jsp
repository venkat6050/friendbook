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
<script>
    function check(){
        var a = document.ff.des.value;
        var b = document.ff.rec.value;
         if(a==0){
            alert('Please Enter Description..!');
           document.getElementById("des").focus();          
           return false;
       } if(b==0){
            alert('Please Enter Recommened site..!');
           document.getElementById("rec").focus();            
            return false;
       }
    }
            </script>

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
<!--              <li><a class="active" href="userpage.jsp">Home Page</a></li>-->
<li><a class="active" href="adminpage.jsp">Home</a></li>
<li><a href="userD.jsp">View UserList</a></li>
<li><a href="index.jsp">Logout</a></li>
            
            
          </ul>
        </nav>
      </div>
       


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
                <div style="color: red; font-size: 20px; position: absolute; top: 50px;">Wellcome Admin..!</div>
<!--              <h2>User Login</h2>-->
 
              <p class="color-4 p1" style="text-align: justify; width: 900px; "> 
                  <form action="infosave.jsp" name="ff"  method="get" onsubmit="return check()">
Services @:<br><select name="ser" id="loc" style="background:  #aaa; height: 28px;  width:250px;">
    <option>Music</option>
    <option>Education</option>
    <option>Sports</option>
    <option>Entertainment</option>
</select><br><br>

Description:<br>
<input type="text" name="des" id="des" style="background:  #aaa; height: 88px;  width:250px;"><br><br>
Recommend Site:<br>
<input type="text" name="rec" id="rec" style="background:  #aaa; height: 28px;  width:250px;"><br><br>

  <div style="margin-left: 3px;">  
                        <input type="submit" value="Save!!" style="background-color: green; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                    </form>
                    <input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;"></div>
             

<%
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       

%></p>
              <div class="wrapper">
                  <figure class="img-indent3"><img src="images/aboutme.png" width="100"/></figure>
                <div class="extra-wrap">
                  
                </div>
              </div>
              <a class="button-2" href="">Admin</a> </div>
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
