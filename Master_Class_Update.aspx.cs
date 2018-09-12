using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Master_Class_Update : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }
        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
           
            con.Open();
            /* transaction = con.BeginTransaction();*/
            SqlCommand cmd = new SqlCommand("INSERT into Class_Details " + "(Class_Id,Class_Level,Day,Class_Date) VALUES (@Class_Id,@Class_Level,@Day,@Class_Date)", con);
            /*"Stdnt_First_Name,Stdnt_Last_Name,Stdnt_Date_of_Birth ,Stdnt_Date_of_Joining,Stdnt_Mobile_No ,Stdnt_Email,Stdnt_Door_No,Stdnt_Street,Stdnt_City ,Stdnt_Province ,Stdnt_Zip_Code ,Stdnt_Primary_Contact,Stdnt_P_Contact_No,Stdnt_P_EmaiL ,Stdnt_Secondary_Contact,Stdnt_S_Contact_No,Stdnt_S_Email) " + 
            "VALUES (@Stdnt_Id", con);
                /*",@Stdnt_First_Name,@Stdnt_Last_Name,@Stdnt_Date_of_Birth ,@Stdnt_Date_of_Joining,@Stdnt_Mobile_No ,@Stdnt_Email,@Stdnt_Door_No,@Stdnt_Street,@Stdnt_City,@Stdnt_Province,@Stdnt_Zip_Code ,@Stdnt_Primary_Contact,@Stdnt_P_Contact_No,@Stdnt_P_EmaiL,@Stdnt_Secondary_Contact,@Stdnt_S_Contact_No,@Stdnt_S_Email)" , con); */



            cmd.Parameters.AddWithValue("@Class_Id", Class_Id_Text.Text);
            cmd.Parameters.AddWithValue("@Class_Level", Class_Dropdown.Text);
            cmd.Parameters.AddWithValue("@Day", Class_Day.Text );
            cmd.Parameters.AddWithValue("@Class_Date", Class_Date1.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Details Updated";



        }
    }
}