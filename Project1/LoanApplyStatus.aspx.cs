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
    public partial class LoanApplyStatus : System.Web.UI.Page
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
            string sql = null;
            sql = "select * from LoanApplicantDetail";
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
            string custid = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
            string loanid = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
            string loanstartdate = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
            string durationmonth = GridView1.Rows[e.NewSelectedIndex].Cells[5].Text;
            string branchidid = GridView1.Rows[e.NewSelectedIndex].Cells[6].Text;
            string statu = GridView1.Rows[e.NewSelectedIndex].Cells[7].Text;
            string status = "Success";
            if (status == statu)
            {

                Label1.Visible = true;
                Label1.Text = "Loan Approved";
                con.Open();
                string sql = null;
                sql = "select * from LoanApplicantDetail";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                Panel1.Visible = true;
                txtappnum.Text = id.ToString();
                txtcustid.Text = custid.ToString();
                txtloanid.Text = loanid.ToString();
                txtloandate.Text = loanstartdate.ToString();
                txtDurmonth.Text = durationmonth.ToString();
                txtbrncid.Text = branchidid.ToString();
            }
        }

        protected void btnsave_Click1(object sender, EventArgs e)
        {

            string qury = "update LoanApplicantDetail ";
            string subqry = "";
            string subqry1 = "";
            if (txtloanid.Text != "")
            {
                subqry1 = "where LoanID='" + txtloanid.Text + "'";
            }
            if (ddlstatus.SelectedIndex > 0)
            {
                subqry += "Status='" + ddlstatus.Text + "',";
            }
            if (txtcustid.Text != "")
            {
                subqry += "CustomerID='" + txtcustid.Text + "'";
            }
            con.Open();
            SqlCommand cmd1 = new SqlCommand(qury + "set" + " " + subqry + subqry1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            binddata();
        }
    }
}
