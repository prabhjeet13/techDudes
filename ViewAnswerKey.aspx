<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="ViewAnswerKey.aspx.cs" Inherits="ViewAnswerKey" %>

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
         .auto-style11 {
            height: 3123px;
            width: 1680px;
        }
        .auto-style13 {
            height: 55px;
            width: 201px;
        }
        .auto-style14 {
            height: 54px;
            width: 201px;
        }
        .auto-style15 {
            margin-left: 73px;
        }
        .auto-style16 {
            margin-left: 72px;
        }
        .auto-style17 {
            width: 50%;
            height: 218px;
            margin-left: 17px;
        }
        .auto-style18 {
            margin-left: 74px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <table style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;" class="auto-style17">
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Year:"></asp:Label>
                    &nbsp;</td>
                <td style="width: 188px; height: 55px">
                    <asp:TextBox ID="Yeartb" runat="server" style="margin-left: 5px" Width="150px"></asp:TextBox>
                    &nbsp;</td>
                <td style="height: 55px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Yeartb" ErrorMessage="*Enter The Year" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Subject ID:"></asp:Label>
                    &nbsp;</td>
                <td style="width: 188px; height: 55px">
                    <asp:TextBox ID="Sidtb" runat="server" style="margin-left: 5px" Width="150px"></asp:TextBox>
                    &nbsp;</td>
                <td style="height: 55px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Sidtb" ErrorMessage="*Enter The Subject ID" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="edlab" runat="server" Text="Exam Date(yyyy/mm/dd): "></asp:Label>
                    </td>
                <td style="width: 188px; height: 55px">
                    <asp:TextBox ID="edtb" runat="server" style="margin-left: 5px" Width="150px"></asp:TextBox>
                    </td>
                <td style="height: 55px"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="edtb" ErrorMessage="*Enter The Exam Date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td style="width: 188px; height: 54px">&nbsp;<asp:Button ID="Download" runat="server" Height="48px" OnClick="Download_Click" Text="Download in PDF" Width="142px" />
                    &nbsp;</td>
                <td class="auto-style7" style="height: 54px">&nbsp;<asp:Button ID="exportToword" runat="server" Height="48px" OnClick="exportToword_Click" Text="Download in DOC(Word File)" Width="188px" />
                    &nbsp;</td>
            </tr>
        </table>


        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [UniversityName], [Year], [ExamDate], [NumberOfAnswers] FROM [DetailsAns] WHERE (([Sid] = @Sid) AND ([Year] = @Year) AND ([ExamDate] = @ExamDate))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Sidtb" Name="Sid" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Yeartb" Name="Year" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="edtb" DbType="Date" Name="ExamDate" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style15" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Visible="False" Width="709px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UniversityName" HeaderText="University Name" SortExpression="UniversityName" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="ExamDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Exam Date" SortExpression="ExamDate" />
                <asp:BoundField DataField="NumberOfAnswers" HeaderText="Number Of Answers" SortExpression="NumberOfAnswers" />
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
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Sid], [Sname], [Cname], [Cid] FROM [CourseAndSubject] WHERE ([Sid] = @Sid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Sidtb" Name="Sid" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style16" DataKeyNames="Sid" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Height="122px" Visible="False" Width="669px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Sid" HeaderText="Subject Id" ReadOnly="True" SortExpression="Sid" />
                <asp:BoundField DataField="Sname" HeaderText="Subject Name" SortExpression="Sname" />
                <asp:BoundField DataField="Cname" HeaderText="Course Name" SortExpression="Cname" />
                <asp:BoundField DataField="Cid" HeaderText="Course Id" SortExpression="Cid" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [AnsNo], [Answer] FROM [AddAns] WHERE (([Sid] = @Sid) AND ([Year] = @Year) AND ([ExamDate] = @ExamDate))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Sidtb" Name="Sid" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Yeartb" Name="Year" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="edtb" DbType="Date" Name="ExamDate" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style18" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="169px" Visible="False" Width="813px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="AnsNo" HeaderText="AnsNo" SortExpression="AnsNo" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

    </div>

</asp:Content>

