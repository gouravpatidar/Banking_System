using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        protected void BtnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
        protected void btnUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeLogin.aspx");
        }
    }
}