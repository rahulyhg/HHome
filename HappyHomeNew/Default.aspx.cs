using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using BusinessObjects;
using PropertyPortal.UserControls;

namespace HappyHomeNew
{
    public partial class _Default : System.Web.UI.Page
    {
        BusinessLayer.BusinessLayer BLL = new BusinessLayer.BusinessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            FetchPropertySummary();
        }

        private void FetchPropertySummary()
        {
            PropertyDetails propDetails = BLL.fetchProperties();
            bindPropertiesToDisplayPage(propDetails);

            propDetails = BLL.fetchPropertiesCopy();
            bindPropertiesToDisplayPage(propDetails);

        }

        private void bindPropertiesToDisplayPage(PropertyDetails propDetails)
        {
            PropertySummary propSum = (PropertySummary)Page.LoadControl("~/UserControl/PropertySummary.ascx");

            //PropertySummary propSum = new PropertySummary();
            propSum.LoadControl(propDetails);

            divDisplayProperties.Controls.Add(propSum);

        }
    }
}
