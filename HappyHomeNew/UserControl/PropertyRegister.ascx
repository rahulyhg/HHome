<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyRegister.ascx.cs"
    Inherits="HappyHomeNew.UserControl.PropertyRegister" %>
<%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"
    type="text/css">--%>
<style type="text/css">
    .registrationTable tr > td
    {
        width: 150px;
        min-height:100%;
    }
   #accordion
    {
        width: 600px;
        min-height: 100% !important;
        display:inline-block;
        /*margin: 50px auto;*/
    }
    #accordionleft
    {width:auto;
     float:right;
     color:Black;
      min-height: 100% !important;
    }
    #accordion .ui-accordion-content
    {
        width: 100%;
        height:auto;
        background-color: #f3f3f3;
        color: #000;
        font-size: 11pt;
        line-height: 16pt;
    }
   #accordion .ui-accordion-content > *
    {
        margin: 0;
        padding: 20px;
    }
     #accordion .ui-accordion-content a
    {
        color: #777;
    }
    /*header style*/
    #accordion .ui-accordion-header
    {
        background-color: #fff;
        font-size: 2em;
        margin: 0px;
        width: 100%;
        text-indent: 10px;
        line-height: 42px;
        display: block;
         color: #FFF;
         font-weight:800;
         text-shadow: 1px 1px 0px rgba(0,0,0,0.2);
        text-shadow: 1px 1px 0px rgba(0,0,0,0.2);
        border-right: 1px solid rgba(0, 0, 0, .2);
        border-left: 1px solid rgba(0, 0, 0, .2);
        border-bottom: 1px solid rgba(0, 0, 0, .2);
        border-top: 1px solid rgba(250, 250, 250, .2);

 background-color: #fa9300;  
    background-image: -moz-linear-gradient(top,  #fa9300 0%, #dc621e 100%); /* FF3.6+ */  
    background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#fa9300), color-stop(100%,#dc621e)); /* Chrome,Safari4+ */  
    background-image: -webkit-linear-gradient(top,  #fa9300 0%,#dc621e 100%); /* Chrome10+,Safari5.1+ */  
    background-image: -o-linear-gradient(top,  #fa9300 0%,#dc621e 100%); /* Opera 11.10+ */  
    background-image: -ms-linear-gradient(top,  #fa9300 0%,#dc621e 100%); /* IE10+ */  
    background-image: linear-gradient(to bottombottom,  #fa9300 0%,#dc621e 100%); /* W3C */  
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fa9300', endColorstr='#dc621e',GradientType=0 ); /* IE6-9 */  


    }
 /*   #accordion .ui-accordion-header a
    {
        color: #fff;
        line-height: 42px;
        display: block;
      
        
    }
    #accordion .ui-accordion-header:first-of-type {  
    background-color: #fa9300;  
    background-image: -moz-linear-gradient(top,  #fa9300 0%, #dc621e 100%); 
    background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#fa9300), color-stop(100%,#dc621e)); 
    background-image: -webkit-linear-gradient(top,  #fa9300 0%,#dc621e 100%);  
    background-image: -o-linear-gradient(top,  #fa9300 0%,#dc621e 100%); 
    background-image: -ms-linear-gradient(top,  #fa9300 0%,#dc621e 100%); 
    background-image: linear-gradient(to bottombottom,  #fa9300 0%,#dc621e 100%);  
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fa9300', endColorstr='#dc621e',GradientType=0 ); 
}  
    #accordion .ui-accordion-header:nth-of-type(2)
    {
        background-color: #389abe;
        background-image: -moz-linear-gradient(top,  #389abe 0%, #2a7b99 100%); 
        background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#389abe), color-stop(100%,#2a7b99)); 
        background-image: -webkit-linear-gradient(top,  #389abe 0%,#2a7b99 100%); 
        background-image: -o-linear-gradient(top,  #389abe 0%,#2a7b99 100%);
        background-image: -ms-linear-gradient(top,  #389abe 0%,#2a7b99 100%);
        background-image: linear-gradient(to bottombottom,  #389abe 0%,#2a7b99 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#389abe', endColorstr='#2a7b99',GradientType=0 );
    }
    #accordion .ui-accordion-header:nth-of-type(3)
    {
        background-color: #f87aa0; 
        background-image: -moz-linear-gradient(top, #f87aa0 0%, #c86585 100%);
        background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#f87aa0), color-stop(100%,#c86585)); 
        background-image: -webkit-linear-gradient(top, #f87aa0 0%,#c86585 100%); 
        background-image: -o-linear-gradient(top, #f87aa0 0%,#c86585 100%); 
        background-image: -ms-linear-gradient(top,  #f87aa0 0%,#c86585 100%); 
        background-image: linear-gradient(to bottombottom,  #f87aa0 0%,#c86585 100%); 
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f87aa0', endColorstr='#c86585',GradientType=0 ); 
    }
    #accordion .ui-accordion-header:nth-of-type(4)
    {
        background-color: #a8b700;
        background-image: -moz-linear-gradient(top,  #a8b700 0%, #82922a 100%);
        background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#a8b700), color-stop(100%,#82922a));
        background-image: -webkit-linear-gradient(top,  #a8b700 0%,#82922a 100%);
        background-image: -o-linear-gradient(top,  #a8b700 0%,#82922a 100%);
        background-image: -ms-linear-gradient(top,  #a8b700 0%,#82922a 100%);
        background-image: linear-gradient(to bottombottom,  #a8b700 0%,#82922a 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a8b700', endColorstr='#82922a',GradientType=0 );
    }
    #accordion .ui-accordion-header 
    {
        text-shadow: 1px 1px 0px rgba(0,0,0,0.2);
        text-shadow: 1px 1px 0px rgba(0,0,0,0.2);
        border-right: 1px solid rgba(0, 0, 0, .2);
        border-left: 1px solid rgba(0, 0, 0, .2);
        border-bottom: 1px solid rgba(0, 0, 0, .2);
        border-top: 1px solid rgba(250, 250, 250, .2);
    }*/
   #accordion .ui-accordion-content
    {
       
        box-shadow: inset 0px -1px 0px 0px rgba(0, 0, 0, .4), inset 0px 1px 1px 0px rgba(0, 0, 0, .2);
    }
   /* #accordion .ui-accordion-content:last-of-type
    {
        box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, .2), inset 0px 0 0px 0px rgba(0, 0, 0, .5);
    }*/
</style>
<%--<link href="../Scripts/jquery-ui-1.10.3/jquery-ui-1.10.3/themes/base/jquery-ui.css"
    rel="stylesheet" type="text/css" />--%>
<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#accordion").accordion({ autoHeight: false, heightStyle: "content" });
    });
</script>
<div id="accordion">
    <h3>
        Listing Type</h3>
    <div>
            <table>
                <tr>
                    <td>
                        <label>
                            Transaction Type</label>
                    </td>
                    <td>
                        <label>
                            <input type="radio" checked="checked" name="Transaction_Type" value="sell" id="rbTransactionType_0" />
                            Sell</label>
                        <label>
                            <input type="radio" name="Transaction_Type" value="rent" id="rbTransactionType_1" />
                            Rent/Lease</label>
                        <label>
                            <input type="radio" name="Transaction_Type" value="PG" id="rbTransactionType_2" />
                            PG</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Property Type</label>
                    </td>
                    <td>
                        <select runat="server" id="selPropertyType">
                            <option value="RowHouse" selected="selected">RowHouse</option>
                            <option value="Apartment">Apartment</option>
                        </select>
                        <select runat="server" id="selPropertyComposition">
                            <option value="1HK">1 HK</option>
                            <option value="1BHK">1 BHK</option>
                            <option value="2BHK">2 BHK</option>
                            <option value="3BHK">3 BHK</option>
                            <option value="4BHK">4 BHK</option>
                            <option value="5BHK">5 BHK</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Property Condition</label>
                    </td>
                    <td>
                        <label>
                            <input type="radio" checked="checked" name="PropertyState" value="New" id="PropertyState_New" />
                            New</label>
                        <label>
                            <input type="radio" name="PropertyState" value="Resale" id="PropertyState_Resale" />
                            Resale</label>
                        <label>
                            <input type="radio" name="PropertyState" value="Both" id="PropertyState_Both" />
                            Both</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            State</label>
                    </td>
                    <td>
                        <input type="text" id="txtState" name="txtState" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            City</label>
                    </td>
                    <td>
                        <input type="text" id="txtCity" name="txtCity" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Locality</label>
                    </td>
                    <td>
                        <input type="text" id="txtLocality" name="txtLocality" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Project</label>
                    </td>
                    <td>
                        <input type="text" id="txtProject" name="txtProject" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Address</label>
                    </td>
                    <td>
                        <textarea rows="4" cols="50" name="txtAddress" id="txtAddress"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Built-Up Area (Sq.Ft.)</label>
                    </td>
                    <td>
                        <input type="text" id="txtArea" name="txtArea" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Total price</label>
                    </td>
                    <td>
                        <input type="text" id="txtPrice" name="txtPrice" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Price Negotiable ?
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="radio" checked="checked" name="PriceNegotiable" value="Y" id="PriceNegotiable_Y" />
                            Yes</label>
                        <label>
                            <input type="radio" name="PriceNegotiable" value="N" id="PriceNegotiable_N" />
                            No</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Total no. of Floors
                    </td>
                    <td>
                        <input type="text" id="txtNoOfFloors" name="txtNoOfFloors" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Proceed" />
                    </td>
                </tr>
            </table>
        </div>
    <h3>
        Property Detail</h3>
     <div>
            <table>
                <tr>
                    <td>
                        No. of Bathroom
                    </td>
                    <td>
                        <input type="text" id="txtNoOfBathroom" name="txtNoOfBathroom" />
                    </td>
                </tr>
                <tr>
                    <td>
                        No. of Bedroom
                    </td>
                    <td>
                        <input type="text" id="txtNoOfBedroom" name="txtNoOfBedroom" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Floor No.</label>
                    </td>
                    <td>
                        <input type="text" id="txtFloorNo" name="txtFloorNo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Age of Construction</label>
                    </td>
                    <td>
                        <label>
                            <input type="radio" checked="checked" name="PropertyAge" value="Under_Construction"
                                id="rbPropertyAge_1" />
                            Under Construction</label><br />
                        <label>
                            <input type="radio" name="PropertyAge" value="Ready_Possesion" id="rbPropertyAge_2" />
                            Ready Possesion</label><br />
                        <label>
                            <input type="radio" name="PropertyAge" value="1_to_5_years" id="rbPropertyAge_3" />
                            1 to 5 years</label><br />
                        <label>
                            <input type="radio" name="PropertyAge" value="5_to_10_years" id="rbPropertyAge_4" />
                            5 to 10 years</label><br />
                        <label>
                            <input type="radio" name="PropertyAge" value="10_to_15_years" id="rbPropertyAge_5" />
                            10 to 15 years</label><br />
                        <label>
                            <input type="radio" name="PropertyAge" value="15_years_above" id="rbPropertyAge_6" />
                            15 years and above</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Furnished?
                    </td>
                    <td>
                        <select  runat="server" id="selFurnished">
                            <option value="Full_Furnished">Full Furnished</option>
                            <option value="Semi_Furnished">Semi Furnished</option>
                            <option value="UnFurnished">Unfurnished</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Property Facing
                    </td>
                    <td>
                        <select runat="server" id="selPropertyFacing">
                            <option value="North">North</option>
                            <option value="South">South</option>
                            <option value="East">East</option>
                            <option value="West">West</option>
                            <option value="North-West">North-West</option>
                            <option value="North-East">North-East</option>
                            <option value="South-East">South-East</option>
                            <option value="South-West">South-West</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Ownership Type
                    </td>
                    <td>
                        <input type="text" id="txtOwnershipType" name="txtOwnershipType" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Proceed" />
                    </td>
                </tr>
            </table>
        </div>
    <h3>
        Additional Feature</h3>
    <div>
            <table>
                <tr>
                    <td colspan="4">
                        Prominent Amenities near by (in kms) :
                    </td>
                </tr>
                <tr>
                    <td>
                        Railway Station
                    </td>
                    <td>
                        <input type="text" id="txtDistRail" name="txtDistRail" />
                    </td>
                    <td>
                        School
                    </td>
                    <td>
                        <input type="text" id="txtDistSchool" name="txtDistSchool" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Shopping Mall
                    </td>
                    <td>
                        <input type="text" id="txtDistShpMall" name="txtDistShpMall" />
                    </td>
                    <td>
                        Hospital
                    </td>
                    <td>
                        <input type="text" id="txtDistHosp" name="txtDistHosp" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Amenities</label>
                    </td>
                    <td colspan="3">
                        <textarea rows="4" cols="50" name="txtAmenities" id="txtAmenities"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label>
                            Upload Property Image:</label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:FileUpload ID="FileUploadControl" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:Button runat="server" ID="UploadButton" Text="Upload" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" ID="StatusLabel" Text="Upload status: " />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <input type="submit" value="Proceed" />
                    </td>
                </tr>
            </table>
        </div>
    <h3>
        Contact Details</h3>
    <div>
            <table>
                <tr>
                    <td>
                        <label>
                            Name</label>
                    </td>
                    <td>
                        <input type="text" id="txtName" name="txtName" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Mobile No</label>
                    </td>
                    <td>
                        <input type="text" id="txtMobileNo" name="txtMobileNo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Landline No
                        </label>
                    </td>
                    <td>
                        <input type="text" id="txtLandlineNo" name="txtLandlineNo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Email ID
                        </label>
                    </td>
                    <td>
                        <input type="text" id="txtEmail" name="txtEmail" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Submit" />
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
</div>
<div id="accordionleft">
this is left accordian 
</div>
