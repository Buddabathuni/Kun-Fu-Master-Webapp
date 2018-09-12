
using System.Data.SqlClient;
using System;



namespace WebApplication1
{
    public partial class Admin_Rank : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        
        private object MessageBox2;

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = @"Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True";
        }

       


        protected void Rank_submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
            /*  SqlTransaction transaction;*/
            con.Open();
            /* transaction = con.BeginTransaction();*/
            SqlCommand cmd = new SqlCommand("INSERT into Rank_Details" + "(Rank_Id,Belt_Name) VALUES (@Rank_Id,@Belt_Name)",con);


            cmd.Parameters.AddWithValue("@Rank_Id", Rank_Id.Text);
            cmd.Parameters.AddWithValue("@Belt_Name", Rank_Details.Text);

            cmd.ExecuteNonQuery();
            /* transaction.Commit();*/
            /* con.Close();*/

            Label1.Text = "Rank Details Inserted";
        }



    }
}