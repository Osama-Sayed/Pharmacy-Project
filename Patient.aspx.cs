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
    public partial class Patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_WP.Text = "Welcome " + Session["Uname"].ToString();

            //GridView_show_patients_data.Visible = false;
            //GridView1_all_Patients_Data.Visible = true;
        }

        protected void txt_search_patient_TextChanged(object sender, EventArgs e)
        {
            //GridView_show_patients_data.Visible = true;
            //GridView1_all_Patients_Data.Visible = false;
            //if (txt_search_patient.Text == "")
            //    GridView1_all_Patients_Data.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Med.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Patient.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = "DELETE FROM [dbo].[Patient] WHERE P_ID = '" + DropDownList1.SelectedValue + "' ";
            Scmd.Connection = scon;
            Scmd.ExecuteNonQuery();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection();

            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = " UPDATE [dbo].[Patient]SET [P_Name] = '" + txt_u_Pname.Text + "' , [P_age]= '" + txt_u_PAge.Text + "' , [P_Address] = '" + txt_u_PAdd.Text + "',[P_Phone] = '" + txt_u_Pphone.Text + "' WHERE P_ID = '" + int.Parse(DropDownList2.SelectedValue) + "'  ";
            Scmd.Connection = scon;
            Scmd.ExecuteNonQuery();
            scon.Close();


            SqlCommand Scmd2 = new SqlCommand();
            Scmd2.CommandText = "UPDATE [dbo].[Login] SET [Uname] = '" + txt_u_PUN.Text + "' , [Password] = '" + txt_u_PPW.Text + "'  WHERE P_id = '" + int.Parse(DropDownList2.SelectedValue) + "' ";
            scon.Open();
            Scmd2.Connection = scon;
            Scmd2.ExecuteNonQuery();

            txt_u_PAdd.Text = "";
            txt_u_PAge.Text = "";
            txt_u_Pname.Text = "";
            txt_u_Pphone.Text = "";
            txt_u_PPW.Text = "";
            txt_u_PUN.Text = "";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.CommandText = "SELECT * FROM [dbo].[Patient] WHERE P_ID = '" + DropDownList2.SelectedValue + "' ";
            Scmd.Connection = scon;
            SqlDataReader R = Scmd.ExecuteReader();
            while (R.Read())
            {
                txt_u_Pname.Text = R[1].ToString();
                txt_u_PAge.Text = R[2].ToString();
                txt_u_PAdd.Text = R[3].ToString();
                txt_u_Pphone.Text = R[4].ToString();
            }
            scon.Close();

            SqlCommand Scmd2 = new SqlCommand();

            Scmd2.CommandText = "SELECT *FROM [dbo].[Login] WHERE P_id = '" + DropDownList2.SelectedValue + "' ";
            scon.Open();
            Scmd2.Connection = scon;
            SqlDataReader R2 = Scmd2.ExecuteReader();
            while (R2.Read())
            {
                txt_u_PUN.Text = R2[0].ToString();
                txt_u_PPW.Text = R2[1].ToString();

            }
        }
    }
}