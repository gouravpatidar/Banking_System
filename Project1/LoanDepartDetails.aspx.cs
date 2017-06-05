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
    public partial class LoanDepartDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
                ddlBranchId.Items.Add("---Select---");
                con.Open();
                cmd = new SqlCommand("select BranchID from BranchOffice", con);
                dr = cmd.ExecuteReader();
                while (dr.Read() == true)
                {
                    ddlBranchId.Items.Add(dr[0].ToString());
                }
                con.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string status = "pending";
            con.Open();
            cmd = new SqlCommand("insert into LoanApplicantDetail(CustomerID,LoanID,LoanStartDate,LoanDurationMonths,BranchID,Status) values('" + txtCId.Text + "','" + txtLoanId.Text + "','" + txtLoanStartdate.Text + "','" + txtLoanDuration.Text + "','" + ddlBranchId.Text + "','"+status+"')", con);
            int I = cmd.ExecuteNonQuery();
            if (I == 1)
            {
                cmd1 = new SqlCommand("select ApplicationNumber from LoanApplicantDetail order by ApplicationNumber Desc", con);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read() == true)
                {
                    lblappnum.Text = dr1[0].ToString();
                    lblappnum.Visible = true;
                    Session["ApplicationNumber"] = lblappnum.Text;
                    Response.Write("<Script>alert('Loan Application details are added successfully')</Script>");

                }
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Loan Application details are not added')</Script>");
            }
        }
    }
}