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
    public partial class LoadDepartment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnloanApp.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("insert into LoanDepartment(LoanDescription,LoanType,LoanInterestRate) values('" + txtloanDes.Text + "','" + txtLoanType.Text + "','" + txtLoanIntRate.Text + "')", con);
            int I = cmd.ExecuteNonQuery();
            if (I == 1)
            {
                cmd1 = new SqlCommand("select LoanID from LoanDepartment order by LoanID Desc", con);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read() == true)
                {
                    lblLoanId.Text = dr1[0].ToString();
                    lblLoanId.Visible = true;
                    btnloanApp.Visible = true;
                    Session["LoanID"] = lblLoanId.Text;
                    Response.Write("<Script>alert('Loan ID is created, now proceed with Loan Application')</Script>");

                }
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Loan ID is not created')</Script>");
            }
        }

        protected void btnloanApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanDepartDetails.aspx");
        }
    }
}