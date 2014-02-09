<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="HappyHomeNew._Default" %>
<%@ Register TagPrefix="uc" TagName="ProperySummary" Src="~/UserControl/PropertySummary.ascx" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="divDisplayProperties" runat="server" style="padding:5px 0px 5px 0px">
        <%--<uc:ProperySummary runat="server" ID="propSum1" />--%>
    </div>
</asp:Content>
