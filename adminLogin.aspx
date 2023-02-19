<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Login" 
    style="height: 710px; width: 1680px; background-color: #EBEBEB; font-size: medium; font-family: Arial, Helvetica, sans-serif; background-image: url('http://localhost:60902/Images/questionanswer.png');">
         <span style="text-decoration: underline"><strong style="text-align: left"> </strong></span>

        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="ABOUT US" Value="ABOUT US"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="CONTACT US" Value="CONTACT US"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#66FF66" ForeColor="Red" />
            <StaticMenuItemStyle BackColor="#006699" ForeColor="White" HorizontalPadding="240px" VerticalPadding="8px" />
        </asp:Menu>
        
         <br />
         <br /> 
    <table class="style1" align="left" style="width: 32%; height: 204px; margin-left: 31px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
        <tr>
            <td style="width: 102px; height: 66px;">
                <asp:Label ID="UserName" runat="server" Text="UserName:"></asp:Label>
            </td>
            <td style="width: 199px; height: 66px;">
                <asp:TextBox ID="Uname" runat="server" Width="198px"></asp:TextBox>
            </td>
            <td style="height: 66px; width: 222px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Uname" ErrorMessage="*Enter your UserName" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 67px;">
                <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label>
            </td>
            <td style="width: 199px; height: 67px;">
                <asp:TextBox ID="LPassword" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
            </td>
            <td style="height: 67px; width: 222px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LPassword" ErrorMessage="*Enter Your Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 65px;">
                </td>
            <td style="width: 199px; height: 65px;">
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" Width="76px" />
                <input id="Reset" style="width: 91px; margin-left: 6px;" type="reset" value="reset" /></td>
            <td style="height: 65px; width: 222px;">
                </td>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    </div>

</asp:Content>

