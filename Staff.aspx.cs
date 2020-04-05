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
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_WP.Text = "Welcome " + Session["Uname"].ToString();

            GridView_allData.Visible = true;
            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Med.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int id = 0;
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd1 = new SqlCommand();
            Scmd1.CommandText = "INSERT INTO [dbo].[Staff]([S_Name] ,[S_salary] ,[S_shift]) VALUES('" + txt_name.Text + "' , '" + txt_salary.Text + "' , '" + txt_shift.Text + "') ";
            Scmd1.Connection = scon;
            Scmd1.ExecuteNonQuery();

            SqlCommand Scmd2 = new SqlCommand();
            Scmd2.CommandText = "SELECT S_ID FROM Staff";
            Scmd2.Connection = scon;
            SqlDataReader R = Scmd2.ExecuteReader();
            while (R.Read())
            {
                id = int.Parse((R[0]).ToString());
            }
            scon.Close();

            SqlCommand Scmd3 = new SqlCommand();
            Scmd3.CommandText = "INSERT INTO [dbo].[Login]([Uname],[Password],[Role],[S_id]) VALUES('" + txt_UN.Text + "' , '" + txt_PW.Text + "' , '" + txt_role.Text + "' , '" + id + "') ";
            scon.Open();

            Scmd3.Connection = scon;
            Scmd3.ExecuteNonQuery();

            txt_name.Text = "";
            txt_role.Text = "";
            txt_salary.Text = "";
            txt_shift.Text = "";
            txt_UN.Text = "";
            txt_PW.Text = "";
        }

        protected void txt_search_staff_TextChanged(object sender, EventArgs e)
        {
            GridView_allData.Visible = false;
            GridView1.Visible = true;
            if (txt_search_staff.Text == "")
                GridView_allData.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Patient.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff.aspx");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = "DELETE FROM [dbo].[Staff] WHERE S_ID = '" + DropDownList1.SelectedValue + "' ";
            Scmd.Connection = scon;
            Scmd.ExecuteNonQuery();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            SqlConnection scon = new SqlConnection();

            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = "UPDATE [dbo].[Staff] SET [S_Name] = '" + txt_U_name.Text + "' , [S_salary]= '" + txt_u_salary.Text + "' , [S_shift] = '" + txt_u_shift.Text + "' WHERE S_ID = '" + int.Parse(DropDownList2.SelectedValue) + "'  ";
            Scmd.Connection = scon;
            Scmd.ExecuteNonQuery();
            scon.Close();


            SqlCommand Scmd2 = new SqlCommand();
            Scmd2.CommandText = "UPDATE [dbo].[Login] SET [Uname] = '" + txt_u_UN.Text + "' , [Password] = '" + txt_u_PW.Text + "' , [Role] = '" + txt_u_role + "' WHERE S_id = '" + int.Parse(DropDownList2.SelectedValue) + "' ";
            scon.Open();
            Scmd2.Connection = scon;
            Scmd2.ExecuteNonQuery();

            txt_U_name.Text = "";
            txt_u_salary.Text = "";
            txt_u_shift.Text = "";
            txt_u_UN.Text = "";
            txt_u_PW.Text = "";
            txt_u_role.Text = "";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = "SELECT *FROM [dbo].[Staff] WHERE S_ID = '" + int.Parse(DropDownList2.SelectedValue) + "' ";
            Scmd.Connection = scon;
            SqlDataReader R = Scmd.ExecuteReader();
            while (R.Read())
            {
                txt_U_name.Text = R[1].ToString();
                txt_u_salary.Text = R[2].ToString();
                txt_u_shift.Text = R[3].ToString();
            }
            scon.Close();

            SqlCommand Scmd2 = new SqlCommand();

            Scmd2.CommandText = "SELECT *FROM [dbo].[Login] WHERE S_id = '" + int.Parse(DropDownList2.SelectedValue) + "' ";
            scon.Open();
            Scmd2.Connection = scon;
            SqlDataReader R2 = Scmd2.ExecuteReader();
            while (R2.Read())
            {
                txt_u_UN.Text = R2[0].ToString();
                txt_u_PW.Text = R2[1].ToString();
                txt_u_role.Text = R2[2].ToString();
            }
        }
    }
}