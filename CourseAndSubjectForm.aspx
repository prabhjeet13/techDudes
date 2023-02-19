<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="CourseAndSubjectForm.aspx.cs" Inherits="CourseAndSubjectForm" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style16" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');"> 
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
         .auto-style12 {
             margin-left: 28px;
         }
         .auto-style16 {
             height: 1795px;
             width: 1680px;
             margin-left: 1px;
         }
         .auto-style17 {
        height: 50px;
    }
         .auto-style18 {
             margin-left: 35px;
         }
         .auto-style19 {
             margin-left: 59px;
         }
         .auto-style20 {
             height: 321px;
             margin-left: 31px;
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
        
   <br />     
   <br />     
  &nbsp;&nbsp;&nbsp; <h3 class="auto-style12"><u>Check If your course and subject is already added ? </u>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CheckCourseAndSubject.aspx">Press Me To Check!</asp:HyperLink>
        &nbsp;if added press &quot;Next&quot;</h3>
        <br />
        &nbsp;<h3 class="auto-style18">If it is not added, so to add your course and subject details fill this form and press &quot;Next&quot;</h3>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<table border="0" style="margin-bottom: 0px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;" class="auto-style20">
    <tr>
        <td style="width: 158px; height: 68px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CID" runat="server" Text="Course ID:"></asp:Label>
        </td>
        <td style="width: 154px; height: 68px">
            <asp:TextBox ID="enterCID" runat="server" Height="16px" style="margin-right: 0px" Width="145px"></asp:TextBox>
        </td>
        <td class="auto-style18">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="enterCID" ErrorMessage="* Enter your Course ID" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td style="width: 158px; height: 68px">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Cname" runat="server" Text="Course Name:"></asp:Label>
        </td>
        <td style="width: 154px; height: 68px">
            <asp:TextBox ID="enterCname" runat="server" Width="145px"></asp:TextBox>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="enterCname" ErrorMessage="* Enter your Course Name" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 158px; height: 68px">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Subject" runat="server" Text="Subject Name:"></asp:Label>
        </td>
        <td style="width: 154px; height: 68px">
            <asp:TextBox ID="enterSubject" runat="server" Width="145px"></asp:TextBox>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="enterSubject" ErrorMessage="* Enter Your Subject Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="SID" runat="server" Text="Subject ID:"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="enterSID" runat="server" Width="145px"></asp:TextBox>
        </td>
        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="enterSID" ErrorMessage="* Enter your Subject ID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 158px; height: 42px"></td>
        <td style="width: 154px; height: 42px">
            <asp:Button ID="Add" runat="server" Text="Add" Width="72px" OnClick="Add_Click" />
&nbsp;<input id="Reset1" style="width: 66px" type="reset" value="Reset" /></td>
        <td class="auto-style19">&nbsp; &nbsp;<asp:HyperLink ID="next" runat="server" NavigateUrl="~/DetailsQuesForm.aspx">Next-&gt;</asp:HyperLink>
        &nbsp;</td>
    </tr>
</table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Sid" DataSourceID="SqlDataSource1" Height="113px" Width="558px" ForeColor="Black" style="margin-left: 61px" Visible="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="S No." InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Sid" HeaderText="Subject Id" ReadOnly="True" SortExpression="Sid" />
                <asp:BoundField DataField="Sname" HeaderText="Subject Name" SortExpression="Sname" />
                <asp:BoundField DataField="Cname" HeaderText="Course Name" SortExpression="Cname" />
                <asp:BoundField DataField="Cid" HeaderText="Course Id" SortExpression="Cid" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT * FROM [CourseAndSubject]"> </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>

