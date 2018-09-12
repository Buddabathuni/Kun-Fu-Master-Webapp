
using System.Data.SqlClient;
using System;



namespace WebApplication1
{
    public partial class Admin_Membership : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        private object MessageBox;
      

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = @"Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True";
        }

       
        protected void Membership_submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
            /*  SqlTransaction transaction;*/
            con.Open();
            /* transaction = con.BeginTransaction();*/
            SqlCommand cmd = new SqlCommand("INSERT into Service_Details" + "(Service_Id,Service_Category,Service_Fee) VALUES (@Service_Id,@Service_Category,@Service_Fee)", con);


            cmd.Parameters.AddWithValue("@Service_Id", Membership_Id.Text);
            cmd.Parameters.AddWithValue("@Service_Category", Membership_Category.Text);
            
            cmd.Parameters.AddWithValue("@Service_Fee", Membership_fee.Text);
            cmd.ExecuteNonQuery();
            /* transaction.Commit();*/
            /* con.Close();*/

            Label1.Text = "Details Inserted";

        }


    



    }
}