using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Master_Attendenct_Update : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    


        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
            
           con.Open();
            
            SqlCommand cmd = new SqlCommand("INSERT into Student_Attendence_Details " + "(Stdnt_Id,Class_Id,Class_Attended_Date) VALUES (@Stdnt_Id,@Class_Id,@Class_Attended_Date)", con);
           



            cmd.Parameters.AddWithValue("@Stdnt_Id", Student.Text);
            cmd.Parameters.AddWithValue("@Class_Id", Class_Dropdown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Class_Attended_Date", Date_Awarded.Text);
            cmd.ExecuteNonQuery();

            Label1.Text = "Details Updated";


        }

        protected void Student_Id_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}