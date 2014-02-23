using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace HappyHomeNew
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                divregisterHere.Visible = false;
                lnkOut.Visible = true;
                loginLink.Visible = false;
                lblUsername.Text = HttpContext.Current.User.Identity.Name;
                lblUsername.Visible = true;

                NavigationMenuBuilder.Visible = true;
                if (IsPostBack)
                {

                    
                }


                //Redirect to Default page
                //Response.Redirect("default.aspx");

            }
            else
            {
                NavigationMenuUser.Visible = true;

                divregisterHere.Visible = true;

                loginLink.Visible = true;
            }
        }

        protected void lnkOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("Default.aspx");

        }
    }
}
