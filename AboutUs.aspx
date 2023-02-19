<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="aboutus" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; width: 1680px; height: 916px; background-color: #FFFFFF;">


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
        <br />
        <img alt="" src="Images/about.png" style="width: 1246px; height: 746px; margin-left: 212px" />

</div>
</asp:Content>

