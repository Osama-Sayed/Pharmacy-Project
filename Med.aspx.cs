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
    public partial class Med : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_WP.Text = "Welcome " + Session["Uname"].ToString();
            GridView1.Visible = true;
            GridView2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Med.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection();
            scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            scon.Open();
            SqlCommand Scmd1 = new SqlCommand();
            Scmd1.CommandText = "INSERT INTO [dbo].[Medical]([M_Name],[M_formula],[M_Expire_Date],[M_cost],[M_description],[M_image]) VALUES('" + txt_name.Text + "','" + txt_formula.Text + "','" + txt_ex_date.Text + "','" + txt_price.Text + "','" + txt_desc.Text + "','" + FileUpload1.FileName + "')";
            Scmd1.Connection = scon;
            Scmd1.ExecuteNonQuery();
            txt_name.Text = "";
            txt_formula.Text = "";
            txt_ex_date.Text = "";
            txt_price.Text = "";
            txt_desc.Text = "";
        }

        protected void txt_search_TextChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            if (txt_search.Text == "")
                GridView1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Patient.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff.aspx");
        }
    }
}