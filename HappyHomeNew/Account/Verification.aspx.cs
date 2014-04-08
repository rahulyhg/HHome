using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using HappyHomesBussinessLogic;
using System.Configuration;

namespace HappyHomeNew.Account
{
    public partial class Verification : System.Web.UI.Page
    {
        RegisterBLL _register;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            _register = new RegisterBLL();

            string custid=Convert.ToString( Request.QueryString["custid"]);

            if (string.IsNullOrEmpty(custid))
            {
                Response.Write("Not Verified");
            }
            else {

                String[] st = Encoding.Unicode.GetString(Convert.FromBase64String(custid)).Split(new Char[] { '&' });
                string username = st[0].Split(new Char[] { '='})[1];
                string useremail = st[1].Split(new Char[] { '=' })[1];

                if (_register.VerifyUser(username, useremail))
                {
                    Response.Write("Thanks for registration please <a href=\"" + HttpContext.Current.Request.Url.Host + ConfigurationManager.AppSettings["Login"] + "\">click here </a>to log in");

                }
                else {
                    Response.Write("Not Verified");
                }
            }
        }
    }
}