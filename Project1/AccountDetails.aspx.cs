using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class AccountDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AccounttypeId"] != null)
            {
                txtcustomerId.Text= Session["CustomerId"].ToString();
                lblacctypeid.Text = Session["AccounttypeId"].ToString();
            }
            else
            {
                Response.Redirect("EmployeeMain.aspx");
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BankAccountDetails values('" + txtcustomerId.Text + "','" + lblacctypeid.Text + "','" + txtAccountBal.Text + "')", con);
            cmd.ExecuteNonQuery();

            cmd1 = new SqlCommand("select AccountNumber from BankAccountDetails order by AccountNumber Desc ", con);
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read() == true)
            {
                lblAccountNumber.Text = dr1[0].ToString();
                lblAccountNumber.Visible = true;
                Session["AccountNumber"] = lblAccountNumber.Text;
                Response.Write("<Script>alert('Account Details are added')</Script>");
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Account Details are not added')</Script>");
            }
        }
    }
}