<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="UploadQPGQuestionBank.aspx.cs" Inherits="UploadQPGQuestionBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style10" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
            margin-left: 29px;
        }
        .auto-style10 {
            height: 860px;
            width: 1680px;
        }
        .auto-style11 {
            width: 184px;
            height: 48px;
        }
        .auto-style12 {
            width: 219px;
            height: 48px;
        }
        .auto-style13 {
            width: 434px;
            height: 48px;
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
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <table style="height: 166px; width: 670px; margin-left: 28px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
            <tr>
                <td style="height: 52px; width: 184px">
                    <asp:Label ID="Sname" runat="server" Text="Subject Name:"></asp:Label>
                </td>
                <td style="height: 52px; width: 219px">&nbsp;<asp:TextBox ID="Snametb" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td style="width: 434px; height: 52px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Snametb" ErrorMessage="*Enter The Subject Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 48px; width: 184px">
                    <asp:Label ID="QuesBank" runat="server" Text="Question Bank:"></asp:Label>
                </td>
                <td style="height: 48px; width: 219px">
                    <asp:FileUpload ID="QPGQuesBank" runat="server" />
                </td>
                <td style="height: 48px; width: 434px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="QPGQuesBank" ErrorMessage="*Upload The Question Bank " ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">&nbsp;
                    <asp:Button ID="Upload" runat="server" Height="32px" Text="Upload" Width="104px" OnClick="Upload_Click" />
                    &nbsp;</td>
                <td class="auto-style13"></td>
            </tr>
        </table>


    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style9" DataKeyNames="SubName" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Visible="False" Width="446px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="SubName" HeaderText="Subject Name" ReadOnly="True" SortExpression="SubName" />
            <asp:BoundField DataField="FName" HeaderText="File Name" SortExpression="FName" />
            <asp:BoundField DataField="FSize" HeaderText="File Size" SortExpression="FSize" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="25px" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="40px" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT * FROM [QPGQuesBank]"></asp:SqlDataSource>


    </div>

 
</asp:Content>

