using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Master_Rank_Update : System.Web.UI.Page
        
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
             


        }

       
       

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");
            /*  SqlTransaction transaction;*/
            con.Open();
            /* transaction = con.BeginTransaction();*/
            SqlCommand cmd = new SqlCommand("INSERT into Student_Progress_Details " + "(Stdnt_Id,Rank_Id,Belt_Awarded_Date) VALUES (@Stdnt_Id,@Rank_Id,@Belt_Awarded_Date)", con);
            /*"Stdnt_First_Name,Stdnt_Last_Name,Stdnt_Date_of_Birth ,Stdnt_Date_of_Joining,Stdnt_Mobile_No ,Stdnt_Email,Stdnt_Door_No,Stdnt_Street,Stdnt_City ,Stdnt_Province ,Stdnt_Zip_Code ,Stdnt_Primary_Contact,Stdnt_P_Contact_No,Stdnt_P_EmaiL ,Stdnt_Secondary_Contact,Stdnt_S_Contact_No,Stdnt_S_Email) " + 
            "VALUES (@Stdnt_Id", con);
                /*",@Stdnt_First_Name,@Stdnt_Last_Name,@Stdnt_Date_of_Birth ,@Stdnt_Date_of_Joining,@Stdnt_Mobile_No ,@Stdnt_Email,@Stdnt_Door_No,@Stdnt_Street,@Stdnt_City,@Stdnt_Province,@Stdnt_Zip_Code ,@Stdnt_Primary_Contact,@Stdnt_P_Contact_No,@Stdnt_P_EmaiL,@Stdnt_Secondary_Contact,@Stdnt_S_Contact_No,@Stdnt_S_Email)" , con); */



            cmd.Parameters.AddWithValue("@Stdnt_Id", Student.Text);
            cmd.Parameters.AddWithValue("@Rank_Id", Rank_Dropdown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Belt_Awarded_Date", Date_Awarded.Text);
            cmd.ExecuteNonQuery();


            Label1.Text = "Details Updated";

        }

        protected void Student_Id_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}