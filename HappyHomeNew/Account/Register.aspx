<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="HappyHomeNew.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <%--    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>

                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>--%>
    <div id="userRegistration">
                        <h2>
                      Registeration Page
                    </h2>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                        ValidationGroup="RegisterUserValidationGroup" />
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>User Type</legend>
                            <table>
                                <tr>
                                    <td>
                                        <label id="lblUserType" runat="server">
                                            User Type :
                                        </label>
                                    </td>
                                    <td class="radiostyle">
                                        <asp:RadioButtonList ClientIDMode="Static" ID="rbtnUserType" runat="server" RepeatDirection="Horizontal" 
                                            CellPadding="1" CellSpacing="5">
                                            <asp:ListItem Text="Individual" Value="individualinfo" Selected="True" />
                                            <asp:ListItem Text="Agent" Value="Agentinfo" />
                                            <asp:ListItem Text="Builder"  Value="Buiderinfo"/>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <fieldset>
                            <legend class="register">Personal Information </legend>
                            <table id="individualinfo" style="display:none">
                                <tr>
                                    <td class="style3">
                                        Name
                                    </td>
                                    <td>
                                        <input type="text" name="country" pattern="[A-z]{}" id="txtName" runat="server" />
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Country
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlCountry" runat="server">
                                            <asp:ListItem Text="India" Value="01"></asp:ListItem>
                                            <asp:ListItem Text="US" Value="01"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        City
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlCity" runat="server">
                                            <asp:ListItem Text="Nagpur" Value="01"></asp:ListItem>
                                            <asp:ListItem Text="Pune" Value="02"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Locality
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Mobile No
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table id="Agentinfo" style="display:none">
                                 <tr>
                                    <td class="style3">
                                        Name
                                    </td>
                                    <td>
                                        <input type="text" name="country" pattern="[A-z]{}" id="Text1" runat="server" />
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                       Company Name
                                    </td>
                                    <td>
                                     <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Company Address
                                    </td>
                                    <td>
                                      <textarea rows="2" ></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                       Country
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                       Contact No
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table id="Buiderinfo">
                                <tr>
                                    <td>
                                    this is builder info 
                                    </td>
                                </tr>
                            </table>
                            
                        </fieldset>
                        <fieldset>
                            <legend class="register">Login Infromation </legend>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                            CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                            CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                            Display="Dynamic" ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired"
                                            runat="server" ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                            ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                            ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Register"
                                ValidationGroup="RegisterUserValidationGroup" 
                                onclick="CreateUserButton_Click" />
                        </p>
                    </div>
                    <div class="registerbenefit" >
                 

                    </div>
                    </div>
</asp:Content>
