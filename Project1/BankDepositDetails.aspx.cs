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
    public partial class BankDepositDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into BankDepositDetails values('" + txtCustomerid.Text + "','" + txtaNumber.Text + "','" + txtphone.Text + "','" + txtDepAccount.Text + "')", con);
            int i= cmd.ExecuteNonQuery();
            if (i==1)
            {
                Response.Write("<script>alert('Amount '"+txtDepAccount.Text+"'  added in your account')</script>");
            }
            else
            {
                Response.Write("<Script>alert('Amount not added in your account')</Script>");
            }
        }
    }
}