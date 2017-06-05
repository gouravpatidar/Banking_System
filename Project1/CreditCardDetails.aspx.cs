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
    public partial class CreditcardDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerId"] != null)
            {
                txtCId.Text = Session["CustomerId"].ToString();
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string status = "pending";
            con.Open();
            cmd = new SqlCommand("insert into CreditCardDepartment(CustomerID,CreditCardType,CreditCardLimit,Status) values('" + txtCId.Text + "','" + txtCCardType.Text + "','" + txtCcardLimit.Text + "','" + status + "')", con);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                con.Open();
                cmd1 = new SqlCommand("select CreditCardApplicantID from CreditCardDepartment order by CreditCardApplicantID Desc", con);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read() == true)
                {
                    lblcreditcardappid.Text = dr1[0].ToString();
                }
                con.Close();
                Response.Write("<Script>alert('Credit Card details are added successfully')</Script>");
                lblcreditcardappid.Visible = true;
                con.Close();
            }
            else
            {
                Response.Write("<Script>alert('Credit Card details are not added')</Script>");

            }
        }
    }
}