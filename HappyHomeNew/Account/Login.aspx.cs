using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyHomesBussinessLogic;
using System.Web.Security;

namespace HappyHomeNew.Account
{
    public partial class Login : System.Web.UI.Page
    {
        RegisterBLL _register;

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            _register = new RegisterBLL();
            string username = UserName.Text;
            string userpwd = Password.Text;

            if (_register.CheckLogin(username, userpwd))
            {
                //FormsAuthentication.RedirectFromLoginPage(username, true);
                FormsAuthentication.SetAuthCookie(username, false);

                string returnUrl = Request.QueryString["ReturnUrl"] as string;

                if (returnUrl != null)
                {
                    Response.Redirect(returnUrl);
                }
                else
                {
                    //no return URL specified so lets kick him to home page
                    Response.Redirect("~/Default.aspx");
                }
            }
            
        }
    }
}
