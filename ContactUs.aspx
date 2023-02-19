<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ContactUs" style="height: 860px; width:1680px; font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">

        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="ABOUT  US" Value="ABOUT US"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="CONTACT US" Value="CONTACT US"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#66FF66" ForeColor="Red" />
            <StaticMenuItemStyle BackColor="#006699" ForeColor="White" HorizontalPadding="241px" VerticalPadding="8px" />
        </asp:Menu>
        
        <br />
        <br />
&nbsp;&nbsp;
        <table style="width: 32%; height: 448px; margin-left: 26px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
            <tr>
                <td style="width: 199px; height: 82px">
                    <asp:Label ID="namelab" runat="server" Text="Name:"></asp:Label>
                </td>
                <td style="width: 250px; height: 82px">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 13px"></asp:TextBox>
                    &nbsp;</td>
                <td style="width: 1066px; height: 82px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 199px; height: 145px">
                    <asp:Label ID="id" runat="server" Text="Email ID:"></asp:Label>
                </td>
                <td style="width: 250px; height: 145px">
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 14px"></asp:TextBox>
                </td>
                <td style="width: 1066px; height: 145px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter Your Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 138px">
                    <asp:Label ID="message" runat="server" Text="Message:"></asp:Label>
                </td>
                <td style="width: 250px; height: 138px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="65px" style="margin-left: 13px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="width: 1066px; height: 138px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter Your Message" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px">&nbsp;</td>
                <td style="width: 250px">&nbsp;&nbsp;
                    <asp:Button ID="Submit" runat="server" Height="26px" Text="Submit" Width="115px" />
                    &nbsp;</td>
                <td style="width: 1066px">&nbsp;</td>
            </tr>
        </table>
        
       </div>
</asp:Content>

