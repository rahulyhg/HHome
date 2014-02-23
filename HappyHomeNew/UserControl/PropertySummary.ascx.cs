using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using BusinessObjects;

namespace PropertyPortal.UserControls
{
    public partial class PropertySummary : System.Web.UI.UserControl
    {
        BusinessLayer.BusinessLayer BLL = new BusinessLayer.BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            //PropertyDetails propDetails = BLL.fetchProperties();

            ////Request.Form["lblPropertyComposition"] = propDetails.ListingDetails.PropertyComposition;
            ////Request.Form["lblPropertyType"] = propDetails.ListingDetails.PropertyType;
            ////Request.Form["lblLocality"] = propDetails.ListingDetails.Locality;
            ////Request.Form["lblPropertyID"] = "ToDo";
            ////Request.Form["lblProjectName"] = propDetails.ListingDetails.Project;
            ////Request.Form["lblArea"] = propDetails.ListingDetails.Area;
            ////Request.Form["lblPrice"] = propDetails.ListingDetails.Price;
            ////Request.Form["lblBuilderName"] = "ToDo";
            ////Request.Form["lblDateOfPost"] = propDetails.ListingDetails.DateOfPost;

            //lblPropertyComposition.InnerText = propDetails.ListingDetails.PropertyComposition;
            //lblPropertyType.InnerText = propDetails.ListingDetails.PropertyType;
            //lblLocality.InnerText = propDetails.ListingDetails.Locality;
            //lblPropertyID.InnerText = "ToDo";
            //lblProjectName.InnerText = propDetails.ListingDetails.Project;
            //lblArea.InnerText = propDetails.ListingDetails.Area;
            //lblPrice.InnerText = propDetails.ListingDetails.Price;
            //lblBuilderName.InnerText = "ToDo";
            //lblDateOfPost.InnerText = propDetails.ListingDetails.DateOfPost;

        }

        public void LoadControl(PropertyDetails propDetails)
        {
            lblPropertyComposition.InnerText = propDetails.ListingDetails.PropertyComposition;
            lblPropertyType.InnerText = propDetails.ListingDetails.PropertyType;
            lblLocality.InnerText = propDetails.ListingDetails.Locality;
            lblPropertyID.InnerText = "ToDo";
            lblProjectName.InnerText = propDetails.ListingDetails.Project;
            lblArea.InnerText = propDetails.ListingDetails.Area;
            lblPrice.InnerText = propDetails.ListingDetails.Price;
            lblBuilderName.InnerText = "ToDo";
            lblDateOfPost.InnerText = propDetails.ListingDetails.DateOfPost;
            //imgPropertyImg.ImageUrl = "/Images/icon-home.png";


        }
    }
}