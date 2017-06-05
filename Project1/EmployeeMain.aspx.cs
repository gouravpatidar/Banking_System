using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class EmployeeMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx");
        }

        protected void btndeposit_Click(object sender, EventArgs e)
        {
            Response.Redirect("BankDepositDetails.aspx");
        }

        protected void btnloanstatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanApplyStatus.aspx");
        }

        protected void btncreditcard_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreditCardStatus.aspx");
        }
    }
}