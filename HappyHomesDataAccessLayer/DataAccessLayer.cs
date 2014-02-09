using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.IO;

namespace DataAccessLayer
{
    public class DataAccessLayer
    {
        public int addPropertyDetails(XmlDocument xDoc)
        {
            int status = 0;
            
            
            //ToDo: Insert Stored Procedure

            xDoc.Save(@"D:\StartUp\Temp\Data.xml");

            return status;
        }

        public XmlDocument fetchProperties()
        {
            XmlDocument xDoc = new XmlDocument();

            //xDoc.LoadXml(@"H:\StartUp\Temp\Data.xml");
            string xmlText = File.ReadAllText(@"D:\StartUp\Temp\Data.xml");
            
            xDoc.LoadXml(xmlText);
            return xDoc;
        }

        public XmlDocument fetchPropertiesCopy()
        {
            XmlDocument xDoc = new XmlDocument();

            //xDoc.LoadXml(@"H:\StartUp\Temp\Data.xml");
            string xmlText = File.ReadAllText(@"D:\StartUp\Temp\Data.xml");

            xDoc.LoadXml(xmlText);
            return xDoc;
        }
    }
}
