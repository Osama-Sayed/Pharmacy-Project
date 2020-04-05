using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
namespace Pharmacy_Proj
{
    public partial class Bill : System.Web.UI.Page
    {
        int x; string Y = "";
        double B_total = 0;
    protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            GridView3.Visible = true;
            GridView2.Visible = false;
            if (!IsPostBack)
            {
                
                try
                {
                    SqlConnection Scon = new SqlConnection();
                    Scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
                    Scon.Open();
                    SqlCommand Scmd = new SqlCommand();
                    Scmd.Connection = Scon;
                    Scmd.CommandText = "SELECT MAX([b_ID]) FROM [dbo].[Bill]";
                    Y = Scmd.ExecuteScalar().ToString();
                    if (Y == "")
                        x = 1;
                    else
                        x = Int32.Parse(Y) + 1;
                  lbl_B_N.Text = (x).ToString();

                }
                catch (Exception ex)
                {

                    Response.Write(ex.ToString());
                }
            }
            if (GridView1.Rows.Count == 0)
            {
                bot_conf.Visible = false;
                lbl_cost.Visible = false;
                lbl_total_bill.Visible = false;
            }
            else
            {

                DataTable dt = new DataTable();
                for (int i = 0; i < GridView3.Columns.Count; i++)
                {
                    dt.Columns.Add("column" + i.ToString());
                }
                foreach (GridViewRow row in GridView3.Rows)
                {
                    DataRow dr = dt.NewRow();
                    for (int j = 0; j < GridView3.Columns.Count; j++)
                    {
                        dr["column" + j.ToString()] = row.Cells[j].Text;
                    }
                    dt.Rows.Add(dr);
                }
                bot_conf.Visible = true;
                lbl_cost.Visible = true;
                lbl_total_bill.Visible = true;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                { B_total += float.Parse(dt.Rows[i][5].ToString()); }
            }
        }

        protected void txt_s_TextChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridView3.Visible = false;
            GridView2.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Session["Med_ID"] = GridView1.Rows[0].Cells[0].ToString();
            //Session["Med_cost"] = GridView1.Rows[0].Cells[4].ToString();
            //Session["M_Quantity"] = GridView1.Rows[0].Cells[7].ToString();
            DataTable dt = new DataTable();
            for (int i = 0; i < GridView3.Columns.Count; i++)
            {
                dt.Columns.Add("column" + i.ToString());
            }
            foreach (GridViewRow row in GridView3.Rows)
            {
                DataRow dr = dt.NewRow();
                for(int j=0;j<GridView3.Columns.Count;j++)  
                {
                    dr["column" + j.ToString()] = row.Cells[j].Text;
                }
                dt.Rows.Add(dr);
            }
            float total;
            //total = float.Parse(dt.Rows[0][4].ToString()) * float.Parse(dt.Rows[0][7].ToString());
            txt_s.Text = dt.Rows[0][5].ToString() + dt.Rows[0][8].ToString();
            SqlConnection Scon = new SqlConnection();
           /* Scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            Scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.Connection = Scon;
            Scmd.CommandText = "INSERT INTO [dbo].[Order_details]([M_id],[Qantity],[p_id],[Total],[bill_id])VALUES   ( '" + int.Parse( dt.Rows[0][0].ToString()) + "', '" + int.Parse(dt.Rows[0][7].ToString()) + "', '" + 1 + "', '" + total + "', '" + int.Parse(Y) + "')";
            Scmd.ExecuteNonQuery();*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            for (int i = 0; i < GridView3.Columns.Count; i++)
            {
                dt.Columns.Add("column" + i.ToString());
            }
            foreach (GridViewRow row in GridView3.Rows)
            {
                DataRow dr = dt.NewRow();
                for (int j = 0; j < GridView3.Columns.Count; j++)
                {
                    dr["column" + j.ToString()] = row.Cells[j].Text;
                }
                dt.Rows.Add(dr);
            }
            double total;
            total = float.Parse(dt.Rows[0][4].ToString()) * float.Parse(dt.Rows[0][7].ToString());
            SqlConnection Scon = new SqlConnection();
            Scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            Scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.Connection = Scon;
            Scmd.CommandText = "INSERT INTO [dbo].[Order_details]([M_id],[Qantity],[p_id],[Total],[bill_id])VALUES   ( '" + int.Parse(dt.Rows[0][0].ToString()) + "', '" + int.Parse(dt.Rows[0][7].ToString()) + "', '" + 1 + "', '" + total + "', '" + int.Parse(Y) + "')";
            Scmd.ExecuteNonQuery();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void bot_conf_Click(object sender, EventArgs e)
        {
           
            SqlConnection Scon = new SqlConnection();
            Scon.ConnectionString = "Server = .; Database = Pharmacy;Integrated Security = true";
            Scon.Open();
            SqlCommand Scmd = new SqlCommand();
            Scmd.Connection = Scon;
            Scmd.CommandText = "INSERT INTO [dbo].[Bill]([b_Date],[b_total])VALUES(GETDATE(),'"+B_total+"')";
            Scmd.ExecuteNonQuery();
            lbl_total_bill.Text = B_total.ToString();
            Response.Redirect("thankyou.html");
        }
    }
}