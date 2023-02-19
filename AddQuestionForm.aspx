<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="AddQuestionForm.aspx.cs" Inherits="AddQuestionForm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="auto-style17" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
         .auto-style13 {
            width: 44%;
            height: 403px;
            margin-left: 22px;
            margin-top: 0px;
        }
        .auto-style14 {
            width: 239px;
            height: 60px;
        }
        .auto-style15 {
            width: 180px;
            height: 60px;
        }
        .auto-style16 {
            height: 60px;
        }
        .auto-style17 {
            height: 919px;
            width: 1680px;
        }
        .auto-style18 {
            width: 239px;
            height: 49px;
        }
        .auto-style19 {
            width: 180px;
            height: 49px;
        }
        .auto-style20 {
            height: 49px;
        }
        .auto-style24 {
            width: 239px;
            height: 69px;
        }
        .auto-style25 {
            width: 180px;
            height: 69px;
        }
        .auto-style26 {
            height: 69px;
        }
        .auto-style27 {
            width: 239px;
            height: 65px;
        }
        .auto-style28 {
            width: 180px;
            height: 65px;
        }
        .auto-style29 {
            height: 65px;
        }
        .auto-style30 {
            width: 239px;
            height: 56px;
        }
        .auto-style31 {
            width: 180px;
            height: 56px;
        }
        .auto-style32 {
            height: 56px;
        }
        .auto-style33 {
            width: 239px;
            height: 54px;
        }
        .auto-style34 {
            width: 180px;
            height: 54px;
        }
        .auto-style35 {
            height: 54px;
        }
        .auto-style36 {
            width: 239px;
            height: 119px;
        }
        .auto-style37 {
            width: 180px;
            height: 119px;
        }
        .auto-style38 {
            height: 119px;
        }
        .auto-style39 {
            width: 82px;
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h4 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; color: #FF0000"> &nbsp;&nbsp;&nbsp;&nbsp; Add All The Questions and Go to "VIEW QUESTION PAPER" Section! </h4>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
    <table style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;" class="auto-style13">
        <tr>
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="year" runat="server" Text="Year:"></asp:Label>
            </td>
            <td class="auto-style15">
                &nbsp;&nbsp;
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Year" DataValueField="Year" Height="21px" Width="138px">
                </asp:DropDownList>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Enter The Year" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="SubjectId" runat="server" Text="Subject ID:"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;&nbsp;
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Sid" DataValueField="Sid" Height="19px" Width="140px">
                </asp:DropDownList>
            </td>
            <td class="auto-style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Enter The Subject ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;<asp:Label ID="Datelab" runat="server" Text="Exam Date(yyyy/mm/dd):"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="ExamDatetb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style32">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ExamDatetb" ErrorMessage="*Enter The Exam Date" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;
                <asp:Label ID="QuestionNumber" runat="server" Text="Question Number:"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="qnotb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="qnotb" ErrorMessage="*Enter The Question Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Question" runat="server" Text="Question:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="questb" runat="server" style="margin-left: 13px" Width="149px" Height="42px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="questb" ErrorMessage="*Enter The Question" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Marks" runat="server" Text="Marks:"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="markstb" runat="server" style="margin-left: 12px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="markstb" ErrorMessage="*Enter The Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="CourseID" runat="server" Text="Course ID:"></asp:Label>
            </td>
            <td class="auto-style34">
                &nbsp;
                &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Cid" DataValueField="Cid" Height="25px" Width="150px">
                </asp:DropDownList>
            </td>
            <td class="auto-style35">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*Enter The Course ID " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style37">
                <asp:Button ID="Add" runat="server" Text="Add" Width="81px" OnClick="Add_Click" />
&nbsp;<input id="Reset1" type="reset" value="Reset" class="auto-style39" /></td>
            <td class="auto-style38"></td>
        </tr>
    </table>


        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Year] FROM [DetailsQues]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Sid] FROM [DetailsQues]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Cid] FROM [DetailsQues]"></asp:SqlDataSource>
        <br />
        <br />
        <br />


</div>

</asp:Content>

