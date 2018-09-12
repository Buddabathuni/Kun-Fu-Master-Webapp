using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;

namespace WebApplication1
{
    public partial class Student_Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        System.Web.UI.WebControls.Label lb = new System.Web.UI.WebControls.Label();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
            /*  SqlTransaction transaction;*/
            con.Open();
            /* transaction = con.BeginTransaction();*/
            SqlCommand cmd = new SqlCommand("Select * from Student_Login_Details Where Stdnt_Id= '" + Student_Number.Text+ "' and Student_Password ='"+ Password.Text+ "'", con);
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Student_Login_Details");
                if ( ds.Tables[0].Rows.Count > 0 )
            {
                lb.Text = "Login Successful";
            }


           


            cmd.ExecuteNonQuery();
            /* transaction.Commit();*/
            /* con.Close();*/

            Response.Redirect("Attendence_Student.aspx");
        }
    }
}