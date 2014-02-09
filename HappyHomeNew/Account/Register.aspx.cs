using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyHomesBussinessLogic;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace HappyHomeNew.Account
{
    public partial class Register : System.Web.UI.Page
    {

        RegisterBLL _register;

        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["ReturnURL"] = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {


            //FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

            //string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            //if (String.IsNullOrEmpty(continueUrl))
            //{
            //    continueUrl = "~/";
            //}
            //Response.Redirect(continueUrl);
        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            string username = Server.HtmlDecode(UserName.Text);
            string useremail = Server.HtmlDecode(Email.Text);
            string pwd = Password.Text;

            _register = new RegisterBLL();
            if (_register.RegisterUser(username, useremail, pwd))
            {

                string code = Convert.ToBase64String(Encoding.Unicode.GetBytes(String.Format("user={0}&email={1}", username, useremail)));

                MailMessage mm = new MailMessage();
                mm.To.Add(new MailAddress(useremail, "Request for Verification"));
                mm.From = new MailAddress("sagvip@gmail.com");
                mm.Body = "Please <a href=\"http://localhost:3513/Account/Verification.aspx?custid=" + code + "\">click here </a>to verify";
                mm.IsBodyHtml = true;
                mm.Subject = "Verification";
                SmtpClient smcl = new SmtpClient();
                smcl.Host = "smtp.gmail.com";
                smcl.Port = 587;
                smcl.Credentials = new NetworkCredential("sagvip@gmail.com", "Sagar12345");
                smcl.EnableSsl = true;
                smcl.Send(mm);
                Response.Write("Thanks for the registration. Please check your email id for activation link . ");
            }


            //  FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

            //string continueUrl = Convert.ToString(ViewState["ReturnURL"]);
            //if (String.IsNullOrEmpty(continueUrl))
            //{
            //    continueUrl = "~/";
            //}
            //Response.Redirect(continueUrl);
        }

    }
}
