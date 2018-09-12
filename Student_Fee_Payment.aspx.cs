using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Student_Fee_Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           



        }

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=CHARAN-PC;Initial Catalog=Db_KunfuMaster;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand("INSERT into Student_Account_Summary " + "(Stdnt_Id,Service_Id,Date_Paid) VALUES (@Stdnt_Id,@Service_Id,CURRENT_TIMESTAMP)", con);




            cmd.Parameters.AddWithValue("@Stdnt_Id", Student.Text);
            cmd.Parameters.AddWithValue("@Service_Id", Category_Dropdown.Text);
            
            cmd.ExecuteNonQuery();

            Label1.Text = "Product Bought";
        }

        protected void Student_Id_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
       
    }
    }

