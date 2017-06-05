using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class CustomerMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncustomerinformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerInformation.aspx");
        }

        protected void btnApplyform_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanDepartment.aspx");
        }

        protected void btnCreditcardform_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreditCardDetails.aspx");
        }
    }
}
