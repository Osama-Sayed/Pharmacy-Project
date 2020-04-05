using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Pharmacy_Proj
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
      
            string Role = "", Name = "";
            try
            {
                SqlConnection scon = new SqlConnection();
                scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
                scon.Open();
                SqlCommand Scmd = new SqlCommand();
                Scmd.CommandText = "SELECT Role ,Uname  From Login WHERE Uname = '" + txt_UN.Text + "' AND Password = '" + txt_PW.Text + "' ";
                Scmd.Connection = scon;
                SqlDataReader R = Scmd.ExecuteReader();

                while (R.Read())
                {
                    Role = R[0].ToString();
                    Name = R[1].ToString();
                }
                Session["Uname"] = Name;

                if (Role == "Admin")
                {
                    Response.Redirect("Med.aspx");
                }

                else if (Role == "Staff")
                {
                    Response.Redirect("Staff_med.aspx");
                }
                else if (Role == "Patient")
                {
                    Response.Redirect("Bill.aspx");
                }
                else
                {   
                    Response.Write(@"<script language='javascript'>alert('Please Enter Correct Username or Password')</script>");
                }
           
            }
            catch (Exception ex)
            {
                txt_UN.Text = ex.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = "INSERT INTO [dbo].[Patient]([P_Name],[P_age],[P_Address],[P_Phone])  VALUES( '" + txt_name.Text + "' , '" + txt_age.Text + "' , '" + txt_adress.Text + "' , '" + txt_phone.Text + "' ) ";
            Scmd.Connection = scon;
            Scmd.ExecuteNonQuery();
            scon.Close();
            SqlCommand S = new SqlCommand();
            S.CommandText = "INSERT INTO[dbo].[Login]([Uname],[Password])VALUES('"+ txt_UN0.Text + "','"+int.Parse(txt_PW0.Text) +"'  )";
            scon.Open();
            S.Connection = scon;
         
            S.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
        }
    }
}