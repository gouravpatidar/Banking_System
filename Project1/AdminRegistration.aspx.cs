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
    public partial class AdminRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into AdminRegistration(Name,AdminDesignation,AdminAddress,State,City,Zip,AdminPhone,AdminEmail,AdminName,Password) values('" + txtAName.Text + "','" + txtADesign.Text + "','" + txtAAddress.Text + "','" + txtState.Text + "','" + txtcity.Text + "','" + txtZip.Text + "','" + txtPhone.Text + "','" + txtEmail.Text + "','" + txtUname.Text + "','" + txtpwd.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<Script>alert('Admin details are added')</Script>");
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Admin details are not added')</Script>");
            }

        }
    }
}