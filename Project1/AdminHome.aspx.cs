using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["AdminName"] != null)
            {
                Label1.Text = Session["AdminName"].ToString();
                if ("admin"==Label1.Text)
                {
                    btnadminreg.Visible = true;
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void btnaddBranch_Click(object sender, EventArgs e)
        {
            Response.Redirect("BranchOfficeDetails.aspx");
        }

        protected void btnaddEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDetails.aspx");
        }

        protected void btnadminreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRegistration.aspx");
        }
    }
}