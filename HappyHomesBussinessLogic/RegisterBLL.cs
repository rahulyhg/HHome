
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyHomesBusinessObjects;
using HappyHomesDataAccessLayer;

namespace HappyHomesBussinessLogic
{
    public class RegisterBLL
    {
        private RegisterDAL _register;
        public bool RegisterUser(string uname ,string uemail , string pwd)
        {
            bool registrationStatus = false;
            _register= new RegisterDAL();
            try
            {

                if(_register.PutUser(uname,uemail,pwd))
                {
                    registrationStatus=true;
                }
            }
            catch (Exception ex)
            {
               throw ex;                
            }
            
            return registrationStatus;
        
        }
        public bool VerifyUser(string uname,string uemail)
        {
            bool verificationStatus = false;
            _register = new RegisterDAL();
            try
            {

                if (_register.ActivateUser(uname, uemail))
                {
                    verificationStatus = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return verificationStatus;
        
        
        }
        public bool CheckLogin(string uname, string pwd)
        {
            bool loginStatus = false;
            _register = new RegisterDAL();
            try
            {

                if (_register.VerifyLogin(uname, pwd))
                {
                    loginStatus = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return loginStatus;
        }
    }
}
