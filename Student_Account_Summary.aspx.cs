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
    public partial class Student_Account_Summary : System.Web.UI.Page
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
            SqlDataAdapter cmd = new SqlDataAdapter(" select a.Stdnt_Id ,a.Stdnt_First_Name,a.Stdnt_Last_Name,sum([Service_Fee]) AS Total from Service_Details b,Student_Account_Summary c,Student_Details a WHERE b.Service_Id=c.Service_Id and a.Stdnt_Id=c.Stdnt_Id and  a.Stdnt_Id = '" + Student.Text + "' and Date_Paid between  '" + From_Date.Text + "' and '" + To_Date.Text + "'  GROUP BY a.Stdnt_Id,a.Stdnt_First_Name,a.Stdnt_Last_Name  ; ", con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            Id.DataSource = dt;
            Id.DataBind();
        }
    }
}