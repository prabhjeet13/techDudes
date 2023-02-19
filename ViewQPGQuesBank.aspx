<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="ViewQPGQuesBank.aspx.cs" Inherits="ViewQPGQuesBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style9" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">
      <style>
       *
       {
           margin: 0px;
           padding: 0px;
       }
       #menu ul 
       {
           list-style:none;
       }
       #menu ul li
       {
           background-color:#006699;
           border: 1px #006699;
           width:  830px;
           height: 32px;
           line-height: 32px;
           text-align:center;
           float: left;
           position:relative;
       }
       #menu ul li a
       {
           text-decoration:none;
           color:white;
           display:block;
       }
       #menu ul li a:hover {
           background-color: #66FF66;
           color: red;
           width: 830px;
           height:32px;
       }
       /* Second ul*/
       #menu ul ul
       {   
           position:absolute;
           display:none;
       }
       #menu ul li:hover > ul
       {
           display:block;
       }
          .auto-style9 {
              height: 1170px;
              width: 1680px;
          }
    </style>
    
       <div id="menu">
           <ul>
               <li><a href="#">QUESTION BANK</a>
                   <ul>
                       <li><a href="UploadQPGQuestionBank.aspx">CREATE QPG QUESTION BANK</a></li>
                       <li><a href="ViewQPGQuesBank.aspx">VIEW QPG QUESTION BANK</a></li>
                   </ul>
               </li>
               <li><a href="Home.aspx">SIGN OUT</a></li>
           </ul>
           </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 38%; height: 125px; margin-left: 61px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
            <tr>
                <td style="height: 68px; width: 171px;">
                    <asp:Label ID="Sname" runat="server" Text="Subject Name:"></asp:Label>
                </td>
                <td style="height: 68px; width: 145px;">
                    <asp:TextBox ID="Snametb" runat="server" Width="122px"></asp:TextBox>
                </td>
                <td style="height: 68px; width: 400px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Snametb" ErrorMessage="*Enter The Subject Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 60px; width: 171px"></td>
                <td style="width: 145px; height: 60px">&nbsp;<asp:Button ID="Search" runat="server" Height="31px" Text="Search" Width="116px" OnClick="Search_Click" />
                    &nbsp;</td>
                <td style="height: 60px; width: 400px">&nbsp;&nbsp; </td>
            </tr>
        </table>


        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SubName" DataSourceID="SqlDataSource1" ForeColor="Red" GridLines="None" style="margin-left: 65px" Visible="False" Width="597px" Height="199px" EmptyDataText="Record Not Found, Please Upload First!">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="SubName" HeaderText="Subject Name" ReadOnly="True" SortExpression="SubName" />
                <asp:BoundField DataField="FName" HeaderText="File Name" SortExpression="FName" />
                <asp:BoundField DataField="FSize" HeaderText="File Size(KB)" SortExpression="FSize" />
                <asp:HyperLinkField DataNavigateUrlFields="FName" DataNavigateUrlFormatString="~/QPGQuestionBank/{0}" DataTextField="FName" HeaderText="Question Bank" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="30px" HorizontalAlign="Center" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="40px" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT * FROM [QPGQuesBank] WHERE ([SubName] = @SubName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Snametb" Name="SubName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>

