<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertySummary.ascx.cs"
    Inherits="PropertyPortal.UserControls.PropertySummary" %>
<div style="width: 600px;border:1px solid;padding:5px 0px 5px 0px;margin:5px;">
    <table>
        <tr>
            <td style="width: 100px">
                <asp:Image ID="imgPropertyImg" runat="server" />
            </td>
            <td style="width: 500px">
                <table width="100%">
                    <tr>
                        <td style="font-weight: bold;">
                            <label id="lblPropertyComposition" runat ="server">
                            </label>
                            <label>
                                ,
                            </label>
                            <label id="lblPropertyType" runat ="server">
                            </label>
                            <label>
                                in
                            </label>
                            <label id="lblLocality" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <label>
                                Id:</label>
                            <label id="lblPropertyID" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Project :</label>
                            <label id="lblProjectName" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Built Up Area :</label>
                            <label id="lblArea" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Price :</label>
                            <label id="lblPrice" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Builder Name :</label>
                            <label id="lblBuilderName" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <label id="lblDateOfPost" runat ="server">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Contact Builder" />
                            <input type="submit" value="View Phone Number" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
