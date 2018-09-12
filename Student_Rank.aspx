<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Rank.aspx.cs" Inherits="WebApplication1.Student_Rank" %>

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
          <li><a href="Student_Rank.aspx" class="smoothScroll">Rank</a></li>
          <li><a href="Attendence_Student.aspx" class="smoothScroll">Attendence</a></li>
            <li><a href="Student_Fee_Payment.aspx" class="smoothScroll">Purchase Product</a></li>
             <li><a href="Student_Account_Summary.aspx" class="smoothScroll">Account Summary</a></li>
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
                  <form id="Student_Login" method="post"  role="form" runat="server">
                    <div class="column">
             
                          <div class="form-group">
                              
                           
                            <asp:TextBox ID="Student"   name="Student Id" runat="server" placeholder="Student Id *" required="required"   Height="50px" Width="316px" ></asp:TextBox>
                            
                          </div>
                        </div>
                        
                        <div >
                          <div class="form-group">
                         
                            
                          </div>
                        </div>
                        
                       
                        <div >
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="btn_Check"  align="center" runat="server" class="btn btn-defeault btn-send" Text="Check" OnClick="btn_Check_Click" />
                        </div>
                    
                      <br />
                      <br />
                      <br />
                      
                      <div>
        <asp:GridView ID="Id" runat="server" AutoGenerateColumns="false" CellPadding="3" CellSpacing="8" Height="10px" HorizontalAlign="Center">
            <Columns>
<asp:BoundField DataField="Stdnt_Id" HeaderText ="Student Id" />              
                <asp:BoundField DataField="Stdnt_First_Name" HeaderText ="First Name" />
                <asp:BoundField DataField="Stdnt_Last_Name" HeaderText ="Last Name" />
                 <asp:BoundField DataField="Belt_Name" HeaderText ="Belt" />
                 <asp:BoundField DataField="Belt_Awarded_Date" HeaderText ="Belt Attended Date" />
                

      
                
            </Columns>
        </asp:GridView>
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


