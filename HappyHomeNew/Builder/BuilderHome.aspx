<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuilderHome.aspx.cs" Inherits="HappyHomeNew.Builder.BuilderHome" %>
<%@ Register TagPrefix="rp" TagName="RegProperty" 
    Src="~/UserControl/PropertyRegister.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<rp:RegProperty id="regpropertyform" runat="server">

</rp:RegProperty>
</asp:Content>
