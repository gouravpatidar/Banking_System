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
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEmpId.Visible = false;
            lbleid.Visible = false;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into BankEmployee(EmployeeName,EmployeeDesignation,EmployeeAddress,City,Zip,State,EmployeePhone,EmployeeEmail,UserName,Password) values('" + txtEName.Text + "','" + txtEDesign.Text + "','" + txteAddress.Text + "','" + txtcity.Text + "','" + txtZip.Text + "','" + txtState.Text + "','" + txtEPhone.Text + "','" + txtEEmail.Text + "','"+txtUname.Text+"','"+txtpwd.Text+"')", con);
            cmd.ExecuteNonQuery();
            cmd1 = new SqlCommand("select EmployeeID from BankEmployee order by EmployeeID Desc", con);
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read() == true)
            {
                lblEmpId.Text = dr1[0].ToString();
                lblEmpId.Visible = true;
                lbleid.Visible = true;
                Response.Write("<Script>alert('Employee details are added')</Script>");
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Employee details are not added')</Script>");
            }

        }
    }
}
