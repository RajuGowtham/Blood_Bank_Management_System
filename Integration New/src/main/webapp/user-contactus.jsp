
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Contact us page</title>
    <link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <style>
        .work{
            width: 100%;
            height: 80vh;
            background-color: white;
        }
        a{
          color:white;
         }
        .leftarrow {
        width: 50px;
        height: 50px;
        background-color: black;
        text-align: center;
        line-height: 50px;
        cursor: pointer;
        font-size: 20px;
        user-select: none;
        float:left;
        margin:337px 0px 0px 10px;
        position:fixed;
        color:white;
        border-radius:50%;
    }
        .rightarrow {
         width: 50px;
        height: 50px;
        background-color: black;
        text-align: center;
        line-height: 50px;
        cursor: pointer;
        font-size: 20px;
        user-select: none;
        float:right;
        margin:337px 10px 0px 1290px;
        position:fixed;
        color:white;
        border-radius:50%;
    }

    .leftarrow:hover {
        background-color: red;
        color:white;
    }
    .rightarrow:hover {
       background-color: red;
        color:white;
    }
    </style>
</head>

<body>
          <div class="leftarrow" onclick="goBack()" disabled>&lt;</div>
    <div class="rightarrow" onclick="goForward()" disabled>&gt;</div> 
        
        <header class="continer-fluid ">
            <div class="header-top" style="font-style:sans-serif;font-size:20px;">
                <div class="container">
                    <div class="row col-det">
                        <div class="col-lg-6 d-none d-lg-block">
                            <ul class="ulleft">
                                <li>
                                    <i class="far fa-envelope"></i>
                                    gouthamrmc@gmail.com
                                    <span>|</span></li>
                                <li>
                                    <i class="far fa-clock"></i>
                                    Service Time : 24 X 7</li>
                            </ul>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <ul class="ulright">
                                
                                <a href="usersignupform.html" onclick="openLoginPopup()">
                                    <li>
                                    
                                    <i class="fas fa-user"></i>
                                <a href="user-profile-page.jsp">Profile</a>
                                <i class="fas fa-user" style="padding-left:30px;"></i>
                                <a href="index.html">Sign out</a>
                                    
                                    </li></a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu-jk" class="header-bottom">
                <div class="container">
                    <div class="row nav-row">
                        <div class="col-md-3 logo">
                            <img src="assets/images/logo.jpg" alt="">
                        </div>
                        <div class="col-md-9 nav-col">
                            <nav class="navbar navbar-expand-lg navbar-light">

                                <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item">
                                            <a class="nav-link" href="user-addblood.jsp">Add Blood
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="user-viewstock.jsp">View Stock</a>
                                        </li>
                                       
                                        <li class="nav-item">
                                            <a class="nav-link" href="user-viewrequest.jsp">View Request</a>
                                        </li>
                                         <li class="nav-item ">
                                            <a class="nav-link" href="user-makerequest.jsp">Make Request</a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="contactus.jsp">Contact Us</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        <div class="work">

                  <jsp:include page="user-addcontactform.jsp"></jsp:include> 
        </div>
    <!-- ################# Slider Starts Here#######################--->

   

   
      <!--*************** Footer  Starts Here *************** -->
     <footer id="contact" class="container-fluid" style="margin-top:200px;width:200%;margin-left:-320px">
        <div class="container" >
            
            <div class="row content-ro">
                <div class="col-lg-4 col-md-12 footer-contact">
                    <h2>Contact Informatins</h2>
                    <div class="address-row">
                        <div class="icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="detail">
                            <p>46-29 Indra Street, Southernbank, Tigaione, Toranto, 3006 Canada</p>
                        </div>
                    </div>
                    <div class="address-row">
                        <div class="icon">
                            <i class="far fa-envelope"></i>
                        </div>
                        <div class="detail">
                            <p>sales@smarteyeapps.com <br> support@smarteyeapps.com</p>
                        </div>
                    </div>
                    <div class="address-row">
                        <div class="icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="detail">
                            <p>+91 9751791203 <br> +91 9159669599</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 footer-links">
                   <div class="row no-margin mt-2">
                    <h2>Quick Links</h2>
                    <ul>
                        <li>Home</li>
                        <li>About Us</li>
                        <li>Contacts</li>
                        <li>Pricing</li>
                        <li>Gallery</li>
                        <li>eatures</li>

                    </ul>
                    </div>
                   <div class="row no-margin mt-1">
                       <h2 class="m-t-2">More Products</h2>
                     <ul>
                        <li>Forum PHP Script</li>
                        <li>Edu Smart</li>
                        <li>Smart Event</li>
                        <li>Smart School</li>


                    </ul>
                   </div>

                </div>
                
            </div>
            <div class="footer-copy">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <p>Copyright © <a href="https://www.smarteyeapps.com">Smarteyeapps.com</a> | All right reserved.</p>
                    </div>
                    <div class="col-lg-4 col-md-6 socila-link">
                        <ul>
                            <li><a><i class="fab fa-github"></i></a></li>
                            <li><a><i class="fab fa-google-plus-g"></i></a></li>
                            <li><a><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a><i class="fab fa-twitter"></i></a></li>
                            <li><a><i class="fab fa-facebook-f"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    
</body>

    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
    <script>
        function openLoginPopup() {
          document.getElementById('loginPopup').style.display = 'flex';
        }
        function goBack() {
            window.history.back();
        }
        function goForward() {
            window.history.forward();
        }
      </script>
</html>
