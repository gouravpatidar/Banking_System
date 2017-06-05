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
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select UserName,Password,CustomerID from BankCustomer where UserName='" + txtusername.Text + "' and  Password='" + txtpwd.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                Session["CustomerId"] = dr[2].ToString();
                Response.Redirect("CustomerMain.aspx");
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Please enter the valid details')</Script>");
            }
        }
    }
}