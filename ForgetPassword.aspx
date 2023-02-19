<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="FP" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; width: 1680px; height: 710px; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
&nbsp;<table style="width: 37%; height: 212px; margin-left: 11px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
         <tr>
             <td style="width: 146px; height: 67px">
                 <asp:Label ID="email" runat="server" Text="Email Id:"></asp:Label>
             </td>
             <td style="width: 187px; height: 67px">
                 <asp:TextBox ID="emailtb" runat="server" style="margin-left: 13px"></asp:TextBox>
             </td>
             <td style="height: 67px">&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailtb" ErrorMessage="*Enter The Email id" ForeColor="Red"></asp:RequiredFieldValidator>
                 &nbsp;
                 <br />
&nbsp;
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailtb" ErrorMessage="*Enter The Correct Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
         </tr>
         <tr>
             <td style="width: 146px; height: 57px">
                 <asp:Label ID="NPword" runat="server" Text="New Password:"></asp:Label>
             </td>
             <td style="width: 187px; height: 57px">
                 <asp:TextBox ID="npwordtb" runat="server" style="margin-left: 13px" TextMode="Password"></asp:TextBox>
             </td>
             <td style="height: 57px">&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="npwordtb" ErrorMessage="*Enter The Password" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td style="width: 146px; height: 82px">
                 <asp:Label ID="CPword" runat="server" Text="Confirm Password:"></asp:Label>
             </td>
             <td style="width: 187px; height: 82px">
                 <asp:TextBox ID="cpwordtb" runat="server" style="margin-left: 13px" TextMode="Password"></asp:TextBox>
             </td>
             <td style="height: 82px">&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpwordtb" ErrorMessage="*Enter The Password Again" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
&nbsp;
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="npwordtb" ControlToValidate="cpwordtb" ErrorMessage="*Both Password Must be Same" ForeColor="Red"></asp:CompareValidator>
             </td>
         </tr>
         <tr>
             <td style="width: 146px; height: 82px">&nbsp;</td>
             <td style="width: 187px; height: 82px">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 13px" Text="Submit" Width="87px" />
&nbsp;<input id="Reset1" style="width: 65px" type="reset" value="Reset" /></td>
             <td style="height: 82px">&nbsp;</td>
         </tr>
     </table>


</div>
</asp:Content>

