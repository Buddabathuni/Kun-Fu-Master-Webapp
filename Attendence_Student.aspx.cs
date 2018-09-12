using System;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Attendence_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btn_Check_Click(object sender, EventArgs e)
        {
             SqlDataAdapter sda = new SqlDataAdapter();
            System.Data.DataSet ds = new System.Data.DataSet();

            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
            /*  SqlTransaction transaction;*/
            con.Open();
            /* transaction = con.BeginTransaction();*/
            SqlDataAdapter cmd = new SqlDataAdapter("Select b.Stdnt_Id,Stdnt_First_Name,Stdnt_Last_Name,Class_Level,Class_Attended_Date from Student_Attendence_Details a ,Student_Details b ,Class_Details  c where b.Stdnt_Id = a.Stdnt_Id and c.Class_Id = a.Class_Id and  b.Stdnt_Id = '" +Student.Text + "' and Class_Attended_Date between  '" + From_Date.Text + "' and '" + To_Date.Text + "' ", con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            Id.DataSource = dt;
            Id.DataBind();
        }
    }
}