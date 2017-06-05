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
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "admin" && txtpwd.Text == "123")
            {
                Session["AdminName"] = txtusername.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select AdminName,Password from AdminRegistration where AdminName='" + txtusername.Text + "' and  Password='" + txtpwd.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Session["AdminName"] = txtusername.Text;
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    con.Close();
                    Response.Write("<Script>alert('Please enter the valid details')</Script>");
                }
            }
        }
    }
}