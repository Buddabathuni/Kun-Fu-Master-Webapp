
using System.Data.SqlClient;
using System;



namespace WebApplication1
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        private object MessageBox;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = @"Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True";
        }
       
        protected void btn_submit_Click(object sender, EventArgs e)
        {

            string Contact_No = Admin_Number.Text;
            string Email = Admin_email.Text;
            string Password = Admin_Password.Text;


            if ((this.Admin_Number.Text == "789654123") && (this.Admin_email.Text == "admin@kungfu.com") && (this.Admin_Password.Text == "987456"))
            {


                
                Response.Redirect("Admin_Membership.aspx");


            }
           /* Response.Redirect("Admin_Membership.aspx");*/

        }
       


       


    }
}