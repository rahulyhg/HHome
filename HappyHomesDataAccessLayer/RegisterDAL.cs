using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyHomesBusinessObjects;
using System.Xml;
using System.IO;
using System.Security.Permissions;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;

namespace HappyHomesDataAccessLayer
{
    public class RegisterDAL
    {
         String connection_String = " ";
         string filePath = @"\User.xml";
         public bool PutUser(UserBO _user)
         {
             bool registrationStatus = false;
             try
             {
                 _user.date = DateTime.Now;
                 _user.status = "InActive";
                 _user.Role = "Individual";
                 SqlConnection con = new SqlConnection(@"Data Source=ABHISHEK-PC\SQLEXPRESS;Initial Catalog=HappyHomesforAll;Integrated Security=True");
                 string sql = "INSERT INTO tbl_HaUser (UserName@emailid,Password,Role,Date,Status) VALUES (@UserName@emailid,@Password,@Role,@Date,@Status)";
                
                    con.Open();
                    SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@UserName@emailid",_user.Username);
                    cmd.Parameters.AddWithValue("@Password", _user.pwd);
                    cmd.Parameters.AddWithValue("@Role", _user.Role);
                    cmd.Parameters.AddWithValue("@Date", _user.date);
                    cmd.Parameters.AddWithValue("@Status", "InActive");
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
               
                
                // //if (File.Exists(filePath))
                // //{
                // //    File.SetAttributes(filePath, FileAttributes.Normal);
                // //    FileIOPermission filePermission =
                // //             new FileIOPermission(FileIOPermissionAccess.AllAccess, filePath);

                // //    using (FileStream fs = new FileStream(filePath, FileMode.Create))
                // //    {
                // //        using (XmlWriter w = XmlWriter.Create(fs))
                // //        {
                // //            w.WriteStartElement("Users");
                 
                // //            w.WriteEndElement();
                // //            w.Flush();
                // //        }
                // //    }
                // //}




                // XDocument _xdoc =  XDocument.Load(@"C:\Users\sagar\proj\HHome\HappyHomesDataAccessLayer\User.xml");
                 
                ////_xdoc.Load(@"C:\Users\sagar\proj\HHome\HappyHomesDataAccessLayer\User.xml");
                // if (addUserNode(_xdoc, _user.Username,_user.Email,_user.pwd))
                // {
                //     _xdoc.Save(@"C:\Users\sagar\proj\HHome\HappyHomesDataAccessLayer\User.xml");
                //     registrationStatus = true;
                // }
                

             }
             catch (Exception ex)
             {
                 
                 throw;
             }
             return registrationStatus;
         }
         public bool ActivateUser(string uname, string uemail)
         {
             bool verificationStatus = false;
             try
             {
                    XmlDocument _xdoc = new XmlDocument();
                    _xdoc.Load(@"C:\Users\sagar\proj\HHome\HappyHomesDataAccessLayer\User.xml");

                    XmlNodeList nodelist = _xdoc.SelectNodes("Users/User/Name");

                    foreach (XmlNode nd in nodelist)
                    {
                        if (nd.InnerText == uname)
                        {
                            activateStatus(uname);
                            verificationStatus = true;
                            break;
                        }
                    }

                 

             }
             catch (Exception ex)
             {
                 
                 throw;
             }
             return verificationStatus;
         }
         public bool VerifyLogin(string uname, string pwd)
         {
             bool loginStatus = false;
             try
             {
                 XmlDocument _xdoc = new XmlDocument();
                 _xdoc.Load(@"C:\Users\sagar\proj\HHome\HappyHomesDataAccessLayer\User.xml");

                 XmlNodeList nodelist = _xdoc.SelectNodes("//User");

                 foreach (XmlNode nd in nodelist)
                 {
                     if (nd["Name"].InnerText == uname && nd["Pwd"].InnerText == pwd)
                     {
                         loginStatus = true;
                         break;
                     }
                 }



             }
             catch (Exception ex)
             {

                 throw;
             }
             return loginStatus;
         
         }
        
        private bool addUserNode(XDocument _xdoc, string uname, string uemail, string pwd)
         {
             try
             {
                 XElement root = new XElement("User");
                 root.Add(new XElement("Name", uname));
                 root.Add(new XElement("Email", uemail));
                 root.Add(new XElement("Pwd", pwd));
                 root.Add(new XElement("Active", "N"));
                 _xdoc.Element("Users").Add(root);



                 //XmlNode userNode = _xdoc.CreateNode(XmlNodeType.Element, "User", null);
                 //XmlNode userName = _xdoc.CreateNode(XmlNodeType.Element, "Name", null);
                 //userName.InnerText = uname;

                 //XmlNode userEmail = _xdoc.CreateNode(XmlNodeType.Element, "Email", null);
                 //userEmail.InnerText = uemail;
                 //XmlNode userPwd = _xdoc.CreateNode(XmlNodeType.Element, "Pwd", null);
                 //userPwd.InnerText = pwd;

                 //userNode.AppendChild(userName);
                 //userNode.AppendChild(userEmail);
                 //userNode.AppendChild(userPwd);
             
             }
             catch (Exception)
             {
                 
                 throw;
             }

             return true;
       }
        private void activateStatus(string uname)
        {

            XDocument _xdoc = XDocument.Load(@"C:\Users\sagar\proj\HHome\HappyHomesDataAccessLayer\User.xml");
            _xdoc.Descendants("Users").Where(x => x.Attribute("Name").Value == uname).Single().SetAttributeValue("Active", "Y");     

        }

    }
}
