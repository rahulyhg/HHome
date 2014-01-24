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
        width: 500px;
        min-height: 100% !important;
        /*margin: 50px auto;*/
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
        <table width="100%" border="0" cellspacing="5px" cellpadding="5px" class="registrationTable">
            <tr>
                <td>
                    <label>
                        Transaction Type</label>
                </td>
                <td>
                    <label>
                        <input type="radio" checked="checked" name="Transaction Type" value="sell" id="TransactionType_0" />
                        Sell</label>
                    <label>
                        <input type="radio" name="Transaction Type" value="rent/Lease" id="TransactionType_1" />
                        Rent/Lease</label>
                    <label>
                        <input type="radio" name="Transaction Type" value="PG" id="TransactionType_2" />
                        PG</label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Property Type</label>
                </td>
                <td>
                    <select>
                        <option value="RowHouse" selected>RowHouse</option>
                        <option value="Flat">Flat</option>
                        <option value="1 BHK">1 BHK</option>
                        <option value="Studio Apartment">Studio Apartment</option>
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
                        City</label>
                </td>
                <td>
                    <input type="text" id="txtCity" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Locality</label>
                </td>
                <td>
                    <input type="text" id="txtLocality" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Project</label>
                </td>
                <td>
                    <input type="text" id="txtProject" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Address</label>
                </td>
                <td>
                    <textarea rows="2" id="txtAddress"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Area</label>
                </td>
                <td>
                    <input type="text" id="txtarea" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Total price</label>
                </td>
                <td>
                    <input type="text" id="txtprice" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Price Negotiable ?
                    </label>
                </td>
                <td>
                    <input type="radio" checked="checked" name="PriceNegotiable" value="Y" id="PriceNegotiable_Y" />
                    Yes</label>
                    <label>
                        <input type="radio" name="PriceNegotiable" value="N" id="PriceNegotiable_N" />
                        No</label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Bedroom</label>
                </td>
                <td>
                    <input type="text" id="txtBedroom" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Floor No.</label>
                </td>
                <td>
                    <input type="text" id="txtFloorNo" />
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
        <table width="100%" border="0" cellspacing="5px" cellpadding="5px" class="registrationTable">
            <tr>
                <td>
                    No. of Bathroom
                </td>
                <td>
                    <label>
                        <input type="radio" checked="checked" name="Transaction Type" value="sell" id="Radio1" />
                        Sell</label>
                    <label>
                        <input type="radio" name="Transaction Type" value="rent/Lease" id="Radio2" />
                        Rent/Lease</label>
                    <label>
                        <input type="radio" name="Transaction Type" value="PG" id="Radio3" />
                        PG</label>
                </td>
            </tr>
            <tr>
                <td>
                    Total Floor
                </td>
                <td>
                    <select>
                        <option value="RowHouse" selected>RowHouse</option>
                        <option value="Flat">Flat</option>
                        <option value="1 BHK">1 BHK</option>
                        <option value="Studio Apartment">Studio Apartment</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Age of Construction</label>
                </td>
                <td>
                    <label>
                        <input type="radio" checked="checked" name="PropertyState" value="New" id="Radio4" />
                        New</label>
                    <label>
                        <input type="radio" name="PropertyState" value="Resale" id="Radio5" />
                        Resale</label>
                    <label>
                        <input type="radio" name="PropertyState" value="Both" id="Radio6" />
                        Both</label>
                </td>
            </tr>
            <tr>
                <td>
                    Furnished?
                </td>
                <td>
                    <input type="text" id="Text1" />
                </td>
            </tr>
            <tr>
                <td>
                    Property Facing
                </td>
                <td>
                    <input type="text" id="Text2" />
                </td>
            </tr>
            <tr>
                <td>
                    Ownership Type
                </td>
                <td>
                    <input type="text" id="Text3" />
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
        <table width="100%" border="0" cellspacing="5px" cellpadding="5px" class="registrationTable">
            <tr>
                <td colspan="4">
                    Distance form important place :
                </td>
            </tr>
            <tr>
                <td>
                    Railway Station
                </td>
                <td>
                    <select>
                        <option value="1" selected>1</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="15">15</option>
                    </select>
                </td>
                <td>
                    School
                </td>
                <td>
                    <select>
                        <option value="1" selected>1</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="15">15</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Shopping Mall
                </td>
                <td>
                    <select>
                        <option value="1" selected>1</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="15">15</option>
                    </select>
                </td>
                <td>
                    Hospital
                </td>
                <td>
                    <select>
                        <option value="1" selected>1</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="15">15</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <label>
                        Upload Property Image:</label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:FileUpload ID="FileUploadControl" runat="server" />
                </td>
                <td colspan="2">
                    <asp:Button runat="server" ID="UploadButton" Text="Upload" OnClick="UploadButton_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
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
        <table width="100%" border="0" cellspacing="5px" cellpadding="5px" class="registrationTable">
            <tr>
                <td>
                    <label>
                        Name</label>
                </td>
                <td>
                    <input type="text" id="txtName" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Mobile No</label>
                </td>
                <td>
                    <input type="text" id="txtMobileNo" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Landline No
                    </label>
                </td>
                <td>
                    <input type="text" id="txtLandlineNo" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        Email
                    </label>
                </td>
                <td>
                    <input type="text" id="txtEmail" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit" />
                </td>
            </tr>
        </table>
    </div>
</div>
