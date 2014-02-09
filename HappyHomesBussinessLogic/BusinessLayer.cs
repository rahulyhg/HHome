using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BusinessObjects;
using System.Xml;
using XmlSerializer;

namespace BusinessLayer
{
    public class BusinessLayer
    {
        DataAccessLayer.DataAccessLayer DLL = new DataAccessLayer.DataAccessLayer();

        private XmlDocument ConvertObjectToXML(object obj)
        {
            string xml = new XmlObjectSerializer().Serialize(obj).OuterXml;

            XmlDocument xDoc = new XmlDocument();
            xDoc.LoadXml(xml);
            return xDoc;
        }        

        public void postPropertyDetails(PropertyDetails propDetails)
        {
            XmlDocument xDoc = ConvertObjectToXML(propDetails);
            int status = DLL.addPropertyDetails(xDoc);
        }

        private Object ConvertXmlToObject(XmlDocument xDoc)
        {
            Object obj = new Object();
            obj = (Object)new XmlObjectSerializer().Deserialize(xDoc.InnerXml);
            return obj;
        }

        public PropertyDetails fetchProperties()
        {
            XmlDocument xDoc = DLL.fetchProperties();
            PropertyDetails propDetails = (PropertyDetails)ConvertXmlToObject(xDoc);
            return propDetails;
        }

        public PropertyDetails fetchPropertiesCopy()
        {
            XmlDocument xDoc = DLL.fetchPropertiesCopy();
            PropertyDetails propDetails = (PropertyDetails)ConvertXmlToObject(xDoc);
            return propDetails;
        }
    }
}
