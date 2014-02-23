using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HappyHomeNew
{
    public partial class mda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string st=Request.QueryString["st"];
            if (st == "1")
            {

                lblmsgg.Text = "Thanks for the registration. Please check your email id for activation link . ";
            }
            else if (st == "0")
            {
                lblmsgg.Text = "User Cannot be registered .Please try after some time";
            }
        }
    }
}