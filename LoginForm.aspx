<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Login" 
    style="height: 1035px; width: 1680px; background-color: #EBEBEB; font-size: medium; font-family: Arial, Helvetica, sans-serif; background-image: url('http://localhost:60902/Images/questionanswer.png');">
         <strong style="text-align: left">
         <span style="text-decoration: underline">
     
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="ABOUT US" Value="ABOUT US"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="CONTACT US" Value="CONTACT US"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#66FF66" ForeColor="Red" />
            <StaticMenuItemStyle BackColor="#006699" ForeColor="White" HorizontalPadding="240px" VerticalPadding="8px" />
        </asp:Menu>
        
         </span>
         </strong>
         <br />
         <br />
    <table class="style1" align="left" style="width: 41%; height: 237px; margin-left: 26px; font-size: medium; font-family: Arial, Helvetica, sans-serif; font-weight: bold;">
        <tr>
            <td style="width: 163px; height: 66px;">
                &nbsp;<asp:Label ID="UserName" runat="server" Text="UserName(Email Id):"></asp:Label>
            </td>
            <td style="width: 201px; height: 66px;">
                <asp:TextBox ID="Uname" runat="server" Width="198px"></asp:TextBox>
            &nbsp;
            </td>
            <td style="height: 66px; width: 268px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Uname" ErrorMessage="*Enter your UserName" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px; height: 67px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Password" runat="server" Text="Password:"></asp:Label>
            </td>
            <td style="width: 201px; height: 67px;">
                <asp:TextBox ID="LPassword" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
            </td>
            <td style="height: 67px; width: 268px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LPassword" ErrorMessage="*Enter Your Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 163px; height: 65px;">
                &nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgetPassword.aspx">Forget Password?</asp:HyperLink>
                </td>
            <td style="width: 201px; height: 65px;">
                <asp:Button ID="Login" runat="server" Text="Login" Width="90px" OnClick="Login_Click" />
&nbsp;
                <input id="Reset" style="width: 91px" type="reset" value="Reset" /></td>
            <td style="height: 65px; width: 268px;">
                &nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationForm.aspx">New User?</asp:HyperLink>
                &nbsp;</td>
        </tr>
        </table>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label1" runat="server"></asp:Label>
         <br />
         <br />
    &nbsp;<br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </div>
</asp:Content>

