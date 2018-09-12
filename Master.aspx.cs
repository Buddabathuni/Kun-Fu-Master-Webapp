
using System.Data.SqlClient;
using System;



namespace WebApplication1
{
    public partial class Master: System.Web.UI.Page
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

            string Contact_No = Faculty_Number.Text;
            string Email = Faculty_email.Text;
            string Password = Faculty_Password.Text;
            

            if ((this.Faculty_Number.Text == "8978935389") && (this.Faculty_email.Text == "chicha@kungfu.com") && (this.Faculty_Password.Text == "123456"))
            {


               
                Response.Redirect("Master_Class_Update.aspx");


            }

          

        }
    }
}