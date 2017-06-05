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
    public partial class CustomerDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCustomerId.Visible = false;
            btnCreateAcctype.Visible = false;
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into BankCustomer(CustomerName,CustomerAddress,City,Zip,State,CustomerPhone,CustomerEmail,BranchID,UserName,Password,Income,Asset,CreditScore,EmployementDetails) values('" + txtCName.Text + "','" + txtCAddress.Text + "','" + txtcity.Text + "','" + txtZip.Text + "','" + txtState.Text + "','" + txtCPhone.Text + "','" + txtCEmail.Text + "','" + Convert.ToInt32(ddlBranchId.Text) + "','" + txtUname.Text + "','" + txtpwd.Text + "','"+txtincome.Text+"','"+txtAsset.Text+"','"+txtcreditscore.Text+"','"+txtemployment.Text+"')", con);
            int I = cmd.ExecuteNonQuery();
            if (I == 1)
            {
                cmd1 = new SqlCommand("select CustomerID from BankCustomer order by CustomerID Desc", con);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read() == true)
                {
                    lblCustomerId.Text = dr1[0].ToString();
                    lblCustomerId.Visible = true;
                    Session["CustomerId"] = lblCustomerId.Text;
                    Response.Write("<Script>alert('Customer details are added')</Script>");
                    btnCreateAcctype.Visible = true;
                }
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Customer details are not added')</Script>");
            }

        }

        protected void btnCreateAcctype_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountTypeDetails.aspx");
        }
    }
}