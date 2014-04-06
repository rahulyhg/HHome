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
using HappyHomesBusinessObjects;

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
            UserBO _user = new UserBO();
            _user.Username = Server.HtmlDecode(UserName.Text);
            _user.Email = Server.HtmlDecode(Email.Text); 
            _user.pwd = Password.Text; 
            _user.Role = rbtnUserType.Text; 
            _register = new RegisterBLL();
            if (_register.RegisterUser(_user))
            {
                string code = Convert.ToBase64String(Encoding.Unicode.GetBytes(String.Format("user={0}&email={1}", _user.Username,_user.Email)));
                try
                {
                    MailMessage mm = new MailMessage();
                    mm.To.Add(new MailAddress(_user.Email, "Request for Verification"));
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
                    //Response.Write("Thanks for the registration. Please check your email id for activation link . ");
                    Response.Redirect("~/mda.aspx?st=1");
                }
                catch (Exception ex)
                {

                    Response.Redirect("~/mda.aspx?st=0");
                }



            }
            else
            {
                Response.Redirect("~/mda.aspx?st=0");
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
