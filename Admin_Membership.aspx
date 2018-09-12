<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Membership.aspx.cs" Inherits="WebApplication1.Admin_Membership" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>KungFu Master</title>
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/hover/hover.min.css" rel="stylesheet">

  <!-- Blog Stylesheet File -->
  <link href="css/blog.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <link href="css/responsive.css" rel="stylesheet">

  <!-- Favicon -->
  <link rel="shortcut icon" href="images/favicon.png">


</head>

<body>

  <form id="Admin_Login" method="post"  role="form" runat="server">
  <nav id="main-nav-subpage" class="subpage-nav">
    <div class="row">
      <div class="container">

        <div class="logo">
          <a href="index.aspx"><img src="images/logo.png" alt="logo"></a>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>

        <ul class="nav-menu list-unstyled">
          <li><a href="index.aspx" class="smoothScroll">Home</a></li>
          <li><a href="Admin_Membership.aspx" class="smoothScroll">Update Membership</a></li>
          <li><a href="Admin_Rank.aspx" class="smoothScroll">Update Ranks</a></li>
          
        </ul>
           </div>
    </div>
     
  </nav>
            
  <!-- End section navbar -->
 

        

      <div id="Membership">
         <div class="main-content paddsection">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8 col-md-offset-2">
          <div class="row">
            <div class="container-main single-main">
              <div class="col-md-12">
                <p><a > Membership Details</a></p>
              </div>
             
              <div class="col-lg-12">
                <div class="cmt padDiv">
                  
                    <div class="column">
                        <div >
                          <div class="form-group">
                             
                              <asp:TextBox id="Membership_Id" type="text" name="name" class="form-control" placeholder="Service Id *" required="required" runat="server"></asp:TextBox>
                            
                          </div>
                        </div>
                        <div >
                          <div class="form-group">
                              <asp:TextBox id="Membership_Category" type="text" name="text" class="form-control" placeholder="Service Category *" required="required" runat="server"></asp:TextBox>
                            
                          </div>
                        </div>

                        
                        <div >
                          <div >
                              <asp:TextBox id="Membership_fee" type="text" name="text" class="form-control" placeholder="Servie Fee *" required="required" runat="server"></asp:TextBox>
                 
                          </div>
                        </div>
                       
                        <div >
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="Membership_Submit"  align="center" runat="server" class="btn btn-defeault btn-send" Text="Update" OnClick="Membership_submit_Click" />
                        </div>
                    </div>
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
          </div>
    
    </form>
  <!-- start section main content -->

  <!-- start section footer -->
  <div id="footer" class="text-center">
    <div class="container">
      <div class="socials-media text-center">

        <ul class="list-unstyled">
          <li><a href="#"><i class="ion-social-facebook"></i></a></li>
          <li><a href="#"><i class="ion-social-twitter"></i></a></li>
          <li><a href="#"><i class="ion-social-instagram"></i></a></li>
          <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
          <li><a href="#"><i class="ion-social-tumblr"></i></a></li>
          <li><a href="#"><i class="ion-social-dribbble"></i></a></li>
        </ul>

      </div>

      <p>&copy; Copyrights Kung Fu Master. All rights reserved.</p>

      <div class="credits">
      
       
      </div>

    </div>
  </div>
            </div>
        </div>
  <!-- End section footer -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/typed/typed.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>

</html>


