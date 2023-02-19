<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="DetailsQuesForm.aspx.cs" Inherits="DetailsQuesForm" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="auto-style21" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-style: inherit; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
         .auto-style21 {
             height: 876px;
             width: 1680px;
         }
         .auto-style22 {
             height: 40px;
             width: 263px;
         }
         .auto-style23 {
             width: 187px;
             height: 40px;
         }
         .auto-style24 {
             height: 40px;
         }
         .auto-style25 {
             height: 41px;
             width: 263px;
         }
         .auto-style26 {
             width: 187px;
             height: 41px;
         }
         .auto-style27 {
             height: 41px;
         }
         .auto-style28 {
             width: 43%;
             height: 455px;
             margin-left: 22px;
         }
         .auto-style29 {
             height: 43px;
             width: 263px;
         }
         .auto-style30 {
             width: 187px;
             height: 43px;
         }
         .auto-style31 {
             height: 43px;
         }
         .auto-style38 {
             margin-left: 13px;
         }
         .auto-style39 {
             height: 50px;
             width: 263px;
         }
         .auto-style40 {
             width: 187px;
             height: 50px;
         }
         .auto-style41 {
             height: 50px;
         }
         .auto-style42 {
             height: 39px;
             width: 263px;
         }
         .auto-style43 {
             width: 187px;
             height: 39px;
         }
         .auto-style44 {
             height: 39px;
         }
         .auto-style48 {
             margin-left: 9px;
         }
         .auto-style49 {
             height: 48px;
             width: 263px;
         }
         .auto-style50 {
             width: 187px;
             height: 48px;
         }
         .auto-style51 {
             height: 48px;
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
        
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <table style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;" class="auto-style28">
            <tr>
                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Year" runat="server" Text="Year:"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="yearTextBox" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="yearTextBox" ErrorMessage="*Enter The Year" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="SubjectID" runat="server" Text="Subject ID:"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sid" DataValueField="Sid" Height="24px" Width="148px" CssClass="auto-style38">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage=" *Enter The Subject ID " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;<asp:Label ID="ExamDate" runat="server" Text="Exam Date(yyyy/mm/dd):"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style50">
                    <asp:TextBox ID="ExamDateTb" runat="server" Width="150px" CssClass="auto-style48"></asp:TextBox>
                    &nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style51">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ExamDateTb" ErrorMessage="*Enter The Date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Time" runat="server" Text="Time:"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="TimeTextBox" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TimeTextBox" ErrorMessage="*Enter The Time" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    &nbsp;
                    <asp:Label ID="NoOfQuestions" runat="server" Text="Number of Questions:"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="NumberofQuestions" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                &nbsp;</td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NumberofQuestions" ErrorMessage="*Enter Number of Questions" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="TotalMarks" runat="server" Text="Total Marks:"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TotalMarksTextBox" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TotalMarksTextBox" ErrorMessage="*Enter Total Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="UniversityName" runat="server" Text="University Name:"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;&nbsp; <asp:TextBox ID="Nametb" runat="server"  Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Nametb" ErrorMessage="*Enter The University Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="CourseId" runat="server" Text="Course ID:"></asp:Label>
                </td>
                <td class="auto-style40">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Cid" DataValueField="Cid" Height="20px" Width="148px">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Enter The Course ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:Button ID="Submit" runat="server" Text="Submit" Width="91px" style="margin-left: 13px" OnClick="Submit_Click1" />
                &nbsp;<input id="Reset1" style="width: 64px" type="reset" value="Reset" /></td>
                <td class="auto-style24">
                    &nbsp;
                    &nbsp;</td>
            </tr>
        </table>
        
        <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Sid] FROM [CourseAndSubject]"></asp:SqlDataSource>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Cid] FROM [CourseAndSubject]"></asp:SqlDataSource>
        
</div>
</asp:Content>

