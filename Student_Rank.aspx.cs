using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Student_Rank : System.Web.UI.Page
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
            SqlDataAdapter cmd = new SqlDataAdapter("Select b.Stdnt_Id,Stdnt_First_Name,Stdnt_Last_Name,Belt_Name,Belt_Awarded_Date from Student_Progress_Details a ,Student_Details b ,Rank_Details d where b.Stdnt_Id = '" + Student.Text + "' and  b.Stdnt_Id=a.Stdnt_Id and a.Rank_Id= d.Rank_Id; ", con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            Id.DataSource = dt;
            Id.DataBind();
            
        }
    }
}