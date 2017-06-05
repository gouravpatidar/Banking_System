using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project1
{
    public partial class CustomerInformation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerId"] == null)
            {
                Response.Redirect("CustomerMain.aspx");
            }
        }

        protected void btnLoandetails_Click(object sender, EventArgs e)
        {
            grdview.Visible = false;
            cmd1 = new SqlCommand("select l.*,c.CustomerName from LoanApplicantDetail l join  BankCustomer c on l. CustomerID=c.CustomerID where l. CustomerID='" + Session["CustomerId"].ToString() + "'", con);
            con.Open();
            dr1 = cmd1.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr1);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnCreditcarddetails_Click(object sender, EventArgs e)
        {
            grdview.Visible = false;
            cmd1 = new SqlCommand("select l.*,c.CustomerName from CreditCardDepartment l join BankCustomer c on l.CustomerID = c.CustomerID where l. CustomerID='" + Session["CustomerId"].ToString() + "'", con);
            con.Open();
            dr1 = cmd1.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr1);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            grdview.Visible = true;
            customerprofile();
        }

        protected void btncustprofile_Click(object sender, EventArgs e)
        {
            customerprofile();


        }

        protected void lnkView1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            grdview.Visible = true;
            customerprofile();
        }

        public void customerprofile()
        {
            cmd1 = new SqlCommand("select * from  BankCustomer where CustomerID='" + Session["CustomerId"].ToString() + "'", con);
            con.Open();
            dr1 = cmd1.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr1);
            grdview.DataSource = dt;
            grdview.DataBind();
            con.Close();
        }

    }
}