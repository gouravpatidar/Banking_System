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
    public partial class AccountTypeDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        protected void Page_Load(object sender, EventArgs e)
        {
            lnkCreateaccount.Visible = false;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BankAccountType values('" + drpAccounttype.Text + "','" + txtAccounttDescrption.Text + "','" + 1 + "')", con);
            cmd.ExecuteNonQuery();

            cmd1 = new SqlCommand("select AccountTypeID from BankAccountType order by AccountTypeID Desc ", con);
            dr1 = cmd1.ExecuteReader();

            if (dr1.Read() == true)
            {
                lblAccounttypeId.Text = dr1[0].ToString();
                lblAccounttypeId.Visible = true;
                Session["AccounttypeId"] = lblAccounttypeId.Text;
                Response.Write("<Script>alert('Customer account type details are added')</Script>");
                lnkCreateaccount.Visible = true;
            }
            else
            {
                con.Close();
                Response.Write("<Script>alert('Customer account type details are not added')</Script>");
            }

        }
    }
}