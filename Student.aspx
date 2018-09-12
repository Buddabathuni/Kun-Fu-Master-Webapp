<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="WebApplication1.Student" %>
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

  <!-- start section navbar -->
  <nav id="main-nav-subpage" class="subpage-nav">
    <div class="row">
      <div class="container">

        <div class="logo">
          <a href="index.aspx"><img src="images/logo.png" alt="logo"></a>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>

        <ul class="nav-menu list-unstyled">
          <li><a href="index.aspx" class="smoothScroll">Home</a></li>
          <li><a href="Student_Login.aspx" class="smoothScroll">Login</a></li>
          <li><a href="Student.aspx" class="smoothScroll">Attendence</a></li>
          <li><a href="Student.aspx" class="smoothScroll">Rank</a></li>
          <li><a href="Student.aspx" class="smoothScroll">Purchase</a></li>
            <li><a href="Student.aspx" class="smoothScroll">Account Summary</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End section navbar -->
  <!-- start section main content -->
  <div class="main-content paddsection">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8 col-md-offset-2">
          <div class="row">
            <div class="container-main single-main">
              <div class="col-md-12">
                <div class="block-main mb-30">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <img src="images/kunfu2.jpg" class="img-responsive" alt="reviews2" >
                 
                </div>
              </div>
             
              <div class="col-lg-12">
                <div class="cmt padDiv">
                  <form id="Faculty_Login" method="post"  role="form" runat="server">
                    <div class="column">
                       <div >
                          <div class="form-group">
                             
                              <asp:TextBox id="Student_Number" type="text" name="name" class="form-control" placeholder="Student Id *" required="required" runat="server"></asp:TextBox>
                            
                          </div>
                        </div>
                       <div >
                          <div class="form-group">
                            
                              <asp:TextBox id="Student_Fname" type="text" name="name" class="form-control" placeholder="First Name *" required="required" runat="server"></asp:TextBox>
                            
                          </div>
                        </div>
                        <div >
                          <div class="form-group">
                             
                              <asp:TextBox id="Student_Lname" type="text" name="name" class="form-control" placeholder="Last Name *" required="required" runat="server"></asp:TextBox>
                            
                          </div>
                            </div>
                            <div >
                          <div class="form-group">
                             <asp:Label ID="Date_of_Birth" runat="server" Text="Date of Birth"></asp:Label>
                              <asp:TextBox id="Student_DOB" type="date" name="name" class="form-control" placeholder="Date of Birth *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
                             <div class="form-group">
                                 <asp:Label ID="Date_of_Joining" runat="server" Text="Date of Joining"></asp:Label>
                              <asp:TextBox id="Student_DOJ" type="date" name="name" class="form-control" placeholder="Date of Joining *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
                           <div class="form-group">
                             
                              <asp:TextBox id="Student_Contact_No" type="text" name="name" class="form-control" placeholder="Contact No *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>

                        
                        <div >
                          <div class="form-group">
                              <asp:TextBox id="Student_email" type="email" name="email" class="form-control" placeholder="Email Id *" required="required" runat="server"></asp:TextBox>
                            
                          </div>
                        </div>
                        <div >
                                 <div class="form-group">
                             
                              <asp:TextBox id="Student_Door_NO" type="text" name="name" class="form-control" placeholder="Door No *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                  <div>
                       <div class="form-group">
                             
                              <asp:TextBox id="Student_Street" type="text" name="name" class="form-control" placeholder="Street *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
                       <div class="form-group">
                             
                              <asp:TextBox id="Student_City" type="text" name="name" class="form-control" placeholder="City *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
                     <div class="form-group">
                             
                              <asp:TextBox id="Student_Provinence" type="text" name="name" class="form-control" placeholder="Provinence *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                       <div>
                   <div class="form-group">
                             
                              <asp:TextBox id="Student_Zipcode" type="text" name="name" class="form-control" placeholder="Zipcode *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
                 <div class="form-group">
                     
                              <asp:TextBox id="Student_PName" type="text" name="name" class="form-control" placeholder="Primary Contact Name *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
               <div class="form-group">
                             
                              <asp:TextBox id="Student_PContact" type="text" name="name" class="form-control" placeholder="Primary Contact Number *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                      <div>
             <div class="form-group">
                             
                              <asp:TextBox id="Student_PEmail" type="email" name="name" class="form-control" placeholder="Primary Contact Email *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                         <div>
             <div class="form-group">
                             
                              <asp:TextBox id="Student_SName" type="text" name="name" class="form-control" placeholder="Secondary Contact Name *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
             <div class="form-group">
                             
                              <asp:TextBox id="Student_SNumber" type="text" name="name" class="form-control" placeholder="Secondary Contact Number *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                        <div>
             <div class="form-group">
                             
                              <asp:TextBox id="Student_Semail" type="email" name="name" class="form-control" placeholder="Sencondary contact Email *" required="required" runat="server"></asp:TextBox>
                            
                          </div>

                        </div>
                          <div >
                              <asp:TextBox id="Student_Password" type="password" name="Password" class="form-control" placeholder="Password *" required="required" runat="server"></asp:TextBox>
                 
                          </div>
                        
                          <div >
                              <asp:TextBox id="Password1" type="password" name="Password" class="form-control" placeholder="Re enter Password *" required="required" runat="server"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="Student_Password" ControlToValidate="Password1" 
            ErrorMessage="Password does not match."></asp:CompareValidator>
                          </div>
                       
              
                        <div >
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                           <asp:Button ID="Btn_register"   runat="server" class="btn btn-defeault btn-send" Text="Register" OnClick="Btn_register_Click" />
                           
                        </div>
                    </div>
                       </form>
                 </div>
              </div>
                      </div>
            
                </div>
              </div>
            </div>
          </div>
        </div>
      
  <!--  </div> -->
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

