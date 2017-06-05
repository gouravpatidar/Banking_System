using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class CreditCardStatus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Panel1.Visible = false;
            binddata();
        }
        public void binddata()
        {
            con.Open();

            string sql = "select * from CreditCardDepartment";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, GridViewSelectEventArgs e)
        {

            string id = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
            string CustomerID = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
            string CreditCardType = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
            string CreditCardLimit = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
            string statu = GridView1.Rows[e.NewSelectedIndex].Cells[5].Text;
            string status = "Success";
            if (status == statu)
            {
                Label1.Visible = true;
                Label1.Text = "Credit Card Approved";
                con.Open();
                string sql = null;
                sql = "select * from CreditCardDepartment";
                SqlCommand cmd1 = new SqlCommand(sql, con);
                SqlDataReader dr = cmd1.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                Panel1.Visible = true;
                txtcardappid.Text = id.ToString();
                txtCcardLimit.Text = CreditCardLimit.ToString();
                txtCCardType.Text = CreditCardType.ToString();
                txtCId.Text = CustomerID.ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string qury = "update CreditCardDepartment ";
            string subqry = "";
            string subqry1 = "";
            if (txtcardappid.Text != "")
            {
                subqry1 = "where CreditCardApplicantID='" + txtcardappid.Text + "'";

            }
            if (txtCcardLimit.Text != "")
            {
                subqry += "CreditCardLimit='" + txtCcardLimit.Text + "',";
            }
            if (txtCCardType.Text != "")
            {
                subqry += "CreditCardType='" + txtCCardType.Text + "',";
            }
            if (ddlstatus.SelectedIndex > 0)
            {
                subqry += "Status='" + ddlstatus.Text + "',";
            }
            if (txtCId.Text != "")
            {
                subqry += "CustomerID='" + txtCId.Text + "'";
            }


            con.Open();
            
            SqlCommand cmd12 = new SqlCommand(qury + "set" + " " + subqry + subqry1, con);
            cmd12.ExecuteNonQuery();
            con.Close();
            binddata();
        }
    }
}