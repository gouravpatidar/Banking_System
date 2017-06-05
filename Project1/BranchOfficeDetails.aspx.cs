using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace Project1
{
    public partial class BranchOfficeDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblbranchId.Visible = false;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into BranchOffice(BranchName,BranchAddress,City,Zip,State,BranchOfficePhone,BranchOfficeEmail) values('" + txtBranchName.Text + "','" + txtBranchAddress.Text + "','" + txtBranchcity.Text + "','" + txtBranchZip.Text + "','" + txtBranchState.Text + "','" + txtBranchPhone.Text + "','" + txtBranchEmail.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                con.Open();
                cmd1 = new SqlCommand("select BranchID from BranchOffice order by BranchID Desc", con);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read() == true)
                {

                    lblbranchId.Text = dr1[0].ToString();
                }
                con.Close();
                Response.Write("<Script>alert('Branch details are added successfully')</Script>");
                lblbranchId.Visible = true;
                con.Close();
            }
            else
            {
                Response.Write("<Script>alert('Branch details are not added')</Script>");

            }

        }
    }
}