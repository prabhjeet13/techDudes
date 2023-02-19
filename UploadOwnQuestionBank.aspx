<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="UploadOwnQuestionBank.aspx.cs" Inherits="UploadOwnQuestionBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
           width:  420px;
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
           width: 420px;
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
            height: 31px;
        }
         .auto-style10 {
            margin-left: 27px;
        }
        .auto-style11 {
            height: 1941px;
            width: 1680px;
        }
        </style>
    
       <div id="menu" class="auto-style9">
           <ul class="auto-style9">
               <li><a href="#">QUESTION PAPER</a>
                   <ul>
                       <li><a href="CourseAndSubjectForm.aspx"> CREATE QUESTION PAPER</a></li>
                       <li><a href="ViewQuestionPaper.aspx"> VIEW QUESTION PAPER</a></li>
                   </ul>
               </li>
               <li><a href="#">QUESTION BANK</a>
                  <ul>
                       <li><a href="UploadOwnQuestionBank.aspx">CREATE YOUR QUESTION BANK</a></li>
                       <li><a href="ViewOwnQuesBank.aspx">VIEW YOUR QUESTION BANK</a></li>
                       <li><a href="ViewQPGQuestionBankU.aspx">VIEW QPG QUESTION BANK</a></li>
                  </ul>
               </li>
               <li><a href="#">ANSWER KEY</a>
                   <ul>
                       <li><a href="DetailsAnsForm.aspx"> CREATE ANSWER KEY</a></li>
                       <li><a href="ViewAnswerKey.aspx"> VIEW ANSWER KEY</a></li>
                   </ul>
                </li>    
               <li><a href="Home.aspx">SIGN OUT</a></li>
           </ul>
       </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table style="height: 166px; width: 670px; margin-left: 28px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
            <tr>
                <td style="height: 52px; width: 184px">
                    <asp:Label ID="Id" runat="server" Text="Email Id:"></asp:Label>
                </td>
                <td style="height: 52px; width: 219px">&nbsp;<asp:TextBox ID="idtb" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td style="width: 434px; height: 52px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="idtb" ErrorMessage="*Enter The Id" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
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
                    <asp:FileUpload ID="OwnQuesBank" runat="server" />
                </td>
                <td style="height: 48px; width: 434px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OwnQuesBank" ErrorMessage="*Upload The Question Bank " ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 48px; width: 184px">&nbsp;</td>
                <td style="height: 48px; width: 219px">&nbsp;
                    <asp:Button ID="Upload" runat="server" Height="32px" Text="Upload" Width="104px" OnClick="Upload_Click" />
                    &nbsp;</td>
                <td style="height: 48px; width: 434px">&nbsp;</td>
            </tr>
        </table>


     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
&nbsp;<br />
&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style10" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="215px" Visible="False" Width="616px">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
             <asp:BoundField DataField="FileSize" HeaderText="FileSize" SortExpression="FileSize" />
             <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
     <br />
&nbsp;
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [FileName], [FileSize], [SubjectName] FROM [OwnQuesBank] WHERE ([Email_id] = @Email_id)">
         <SelectParameters>
             <asp:ControlParameter ControlID="idtb" Name="Email_id" PropertyName="Text" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>


    </div>
</asp:Content>

