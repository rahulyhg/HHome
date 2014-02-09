using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using BusinessObjects;

namespace HappyHomeNew.UserControl
{
    public partial class PropertyRegister : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            //if (FileUploadControl.HasFile)
            //{
            //    try
            //    {
            //        string filename = Path.GetFileName(FileUploadControl.FileName);
            //        FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
            //        StatusLabel.Text = "Upload status: File uploaded!";
            //    }
            //    catch (Exception ex)
            //    {
            //        StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            //    }
            //}
        }
        private PropertyDetails buildPropDetailObject()
        {
            PropertyDetails propDetails = new PropertyDetails();
            ListingDetails listingDetails = new ListingDetails();
            PropertyObject propObj = new PropertyObject();
            ContactDetails contDetails = new ContactDetails();

            listingDetails.TransactionType = Request.Form["Transaction_Type"];
            listingDetails.PropertyType = selPropertyType.Value;
            listingDetails.PropertyComposition = selPropertyComposition.Value;
            listingDetails.PropertyCondition = Request.Form["PropertyState"];
            listingDetails.State = Request.Form["txtState"];
            listingDetails.City = Request.Form["txtCity"];
            listingDetails.Locality = Request.Form["txtLocality"];
            listingDetails.Project = Request.Form["txtProject"];
            listingDetails.Address = Request.Form["txtAddress"];
            listingDetails.Area = Request.Form["txtArea"];
            listingDetails.Price = Request.Form["txtPrice"];
            listingDetails.Negotiable = Request.Form["PriceNegotiable"];
            listingDetails.TotalNoOfFloor = Request.Form["txtNoOfFloors"];
            listingDetails.DateOfPost = DateTime.Now.ToShortDateString();

            propObj.NoOfBathroom = Request.Form["txtNoOfBathroom"];
            propObj.NoOfBedrooms = Request.Form["txtNoOfBedroom"];
            propObj.AgeOfConst = Request.Form["PropertyAge"];
            propObj.FloorNo = Request.Form["txtFloorNo"];
            propObj.FurnishedDetails = selFurnished.Value;
            propObj.OwnershipType = Request.Form["txtOwnershipType"];
            propObj.PropertyFacing = selPropertyFacing.Value;
            propObj.Amenities = Request.Form["txtAmenities"];
            propObj.HospDist = Convert.ToInt32(Request.Form["txtDistHosp"]);
            propObj.RailDist = Convert.ToInt32(Request.Form["txtDistRail"]);
            propObj.SchoolDist = Convert.ToInt32(Request.Form["txtDistSchool"]);
            propObj.ShopMallDist = Convert.ToInt32(Request.Form["txtDistShpMall"]);

            contDetails.Name = Request.Form["txtName"];
            contDetails.MobileNo = Request.Form["txtMobileNo"];
            contDetails.LandLineNo = Request.Form["txtLandlineNo"];
            contDetails.EmailID = Request.Form["txtEmail"];

            propDetails.ListingDetails = listingDetails;
            propDetails.PropertyObject = propObj;
            propDetails.ContactDetails = contDetails;

            return propDetails;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BusinessLayer.BusinessLayer BLL = new BusinessLayer.BusinessLayer();

            PropertyDetails propDetails = buildPropDetailObject();
            BLL.postPropertyDetails(propDetails);
        }
    }
}