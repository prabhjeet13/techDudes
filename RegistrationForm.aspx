<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Registration" style="background-color: #EBEBEB; height: 896px; width: 1680px; font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">
        
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="ABOUT US" Value="ABOUT US"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="CONTACT US" Value="CONTACT US"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#66FF66" ForeColor="Red" />
            <StaticMenuItemStyle BackColor="#006699" ForeColor="White" HorizontalPadding="241px" VerticalPadding="8px" />
        </asp:Menu>
        
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        
        &nbsp;<br />
        
        <table class="style1" style="width: 48%; height: 339px; margin-left: 14px; font-family: Arial; font-size: large; font-weight: bold;">
            <tr>
                <td style="width: 180px; height: 65px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Name" runat="server" Text="Name:"></asp:Label>
                </td>
                <td style="width: 192px; height: 65px;">
                    <asp:TextBox ID="Nametb" runat="server" Width="190px" style="margin-left: 13px"></asp:TextBox>
                </td>
                <td style="height: 65px; width: 317px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Nametb" ErrorMessage="*Enter your Name." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 180px; height: 65px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Email" runat="server" Text="Email Id:"></asp:Label>
                </td>
                <td style="width: 192px; height: 65px;">
                    <asp:TextBox ID="mail" runat="server" Width="190px" style="margin-left: 13px"></asp:TextBox>
                </td>
                <td style="height: 65px; width: 317px;">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="mail" ErrorMessage="*Enter your Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;<br />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="mail" ErrorMessage="*Enter Correct Email Address" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 180px; height: 65px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label>
                </td>
                <td style="width: 192px; height: 65px;">
                    <asp:TextBox ID="Pword" runat="server" TextMode="Password" Width="190px" style="margin-left: 13px"></asp:TextBox>
                </td>
                <td style="height: 65px; width: 317px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="Pword" ErrorMessage="*Enter Your Password." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 180px; height: 65px;">
                    &nbsp;<asp:Label ID="ConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td style="width: 192px; height: 65px;">
                    <asp:TextBox ID="CPword" runat="server" TextMode="Password" Width="190px" style="margin-left: 13px"></asp:TextBox>
                </td>
                <td style="height: 65px; width: 317px;">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="CPword" ErrorMessage="*Enter The Password Again." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pword" 
                        ControlToValidate="CPword" ErrorMessage="*Both Passwords should same" 
                        ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 180px; height: 50px;">
                    </td>
                <td style="width: 192px; height: 50px;">
                    <asp:Button ID="Submit" runat="server" Text="Submit" Width="77px" style="margin-left: 13px" OnClick="Submit_Click" />
&nbsp;
                    <input id="Reset1" style="width: 81px" type="reset" value="Reset" />&nbsp; </td>
                <td style="height: 50px; width: 317px;">
                    </td>
            </tr>
        </table>



        &nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;



        <br />

    </div>
</asp:Content>

