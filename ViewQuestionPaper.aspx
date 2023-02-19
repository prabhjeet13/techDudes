<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="ViewQuestionPaper.aspx.cs" Inherits="ViewQuestionPaper" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
            height: 70px;
            width: 207px;
        }
        .auto-style11 {
            height: 77px;
            width: 207px;
        }
        .auto-style14 {
            height: 3018px;
            width: 1680px;
        }
        .auto-style15 {
            height: 70px;
            width: 254px;
        }
        .auto-style16 {
            height: 77px;
            width: 254px;
        }
        .auto-style17 {
            height: 62px;
            width: 254px;
        }
        .auto-style18 {
            height: 62px;
            width: 207px;
        }
        .auto-style19 {
            width: 728px;
            height: 62px;
        }
        .auto-style20 {
            margin-left: 3px;
        }
        .auto-style21 {
            margin-left: 33px;
        }
        .auto-style22 {
            margin-left: 28px;
        }
        .auto-style23 {
            margin-left: 0px;
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

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table style="width: 34%; height: 141px; margin-left: 29px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;">
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="year" runat="server" Text="Year:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="yeartb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 728px; height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="yeartb" ErrorMessage="*Enter The Year" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;
                    <asp:Label ID="sid" runat="server" Text="Subject ID:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="sidtb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 728px; height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sidtb" ErrorMessage="*Enter The Subject ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;
                    <asp:Label ID="Examdate" runat="server" Text="Exam Date(yyyy/mm/dd): "></asp:Label>
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;
                    <br />
                    <asp:TextBox ID="examdatetb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="examdatetb" ErrorMessage="*Enter The ExamDate" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style11">&nbsp;&nbsp;
                    <asp:Button ID="Download" runat="server" Height="46px" OnClick="Download_Click" Text="Download in PDF" Width="138px" />
                    &nbsp;</td>
                <td style="width: 728px; height: 77px">&nbsp;&nbsp;<asp:Button ID="exportToword" runat="server" CssClass="auto-style23" Height="49px" OnClick="exportToword_Click" Text="Download in DOC(Word File)" Width="181px" />
                </td>
            </tr>
        </table>


        <br />
        <br />
        &nbsp;<br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [UniversityName], [Year], [ExamDate], [Time], [NumberofQuestions], [TotalMarks] FROM [DetailsQues] WHERE (([Sid] = @Sid) AND ([Year] = @Year) AND ([ExamDate] = @ExamDate))">
            <SelectParameters>
                <asp:ControlParameter ControlID="sidtb" Name="Sid" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="yeartb" Name="Year" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="examdatetb" DbType="Date" Name="ExamDate" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>


        <br />


        <asp:GridView ID="quesdetailsgridview" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style20" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Visible="False" Width="742px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UniversityName" HeaderText="University Name" SortExpression="UniversityName" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="ExamDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Exam Date" SortExpression="ExamDate" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="NumberofQuestions" HeaderText="Number of Questions" SortExpression="NumberofQuestions" />
                <asp:BoundField DataField="TotalMarks" HeaderText="Max. Marks" SortExpression="TotalMarks" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Sid], [Sname], [Cname], [Cid] FROM [CourseAndSubject] WHERE ([Sid] = @Sid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="sidtb" Name="Sid" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style21" DataKeyNames="Sid" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Visible="False" Width="612px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Sid" HeaderText="Subject Id" ReadOnly="True" SortExpression="Sid" />
                <asp:BoundField DataField="Sname" HeaderText="Subject Name" SortExpression="Sname" />
                <asp:BoundField DataField="Cname" HeaderText="Course Name" SortExpression="Cname" />
                <asp:BoundField DataField="Cid" HeaderText="Course ID" SortExpression="Cid" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Qno], [Question], [Marks] FROM [AddQues] WHERE (([Sid] = @Sid) AND ([Year] = @Year) AND ([ExamDate] = @ExamDate))">
            <SelectParameters>
                <asp:ControlParameter ControlID="sidtb" Name="Sid" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="yeartb" Name="Year" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="examdatetb" DbType="Date" Name="ExamDate" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style22" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="156px" Visible="False" Width="721px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Qno" HeaderText="Qno" SortExpression="Qno" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
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


    </div>
</asp:Content>

