<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="DetailsAnsForm.aspx.cs" Inherits="DetailsAnsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="auto-style28" style="font-size: medium; font-family: Arial, Helvetica, sans-serif; background-image: url('http://localhost:60902/Images/questionanswer.png');">
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
               width: 51%;
               height: 392px;
               margin-left: 25px;
           }
           .auto-style14 {
               width: 225px;
               height: 31px;
           }
           .auto-style15 {
               width: 182px;
               height: 31px;
           }
           .auto-style16 {
               width: 1015px;
               height: 31px;
           }
           .auto-style17 {
               width: 225px;
               height: 30px;
           }
           .auto-style18 {
               width: 182px;
               height: 30px;
           }
           .auto-style19 {
               width: 1015px;
               height: 30px;
           }
           .auto-style20 {
               width: 225px;
               height: 37px;
           }
           .auto-style21 {
               width: 182px;
               height: 37px;
           }
           .auto-style22 {
               width: 1015px;
               height: 37px;
           }
           .auto-style23 {
               margin-left: 13px;
           }
           .auto-style24 {
               margin-left: 12px;
           }
           .auto-style25 {
               margin-left: 16px;
           }
           .auto-style26 {
               height: 36px;
               width: 225px;
           }
           .auto-style27 {
               height: 34px;
               width: 225px;
           }
           .auto-style28 {
               height: 913px;
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
        &nbsp;&nbsp;&nbsp;
        <br />
        <h3 class="auto-style25" style="color: #FF0000">It is important that you have added your Course and Subject details at the time of creating question paper in &quot;CREATE QUESTION PAPER&quot; Section!</h3>
        &nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <table style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;" class="auto-style13">
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Year" runat="server" Text="Year:"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="Yeartb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Yeartb" ErrorMessage="*Enter The Year" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Sid" runat="server" Text="Subject ID:"></asp:Label>
                </td>
                <td style="width: 182px; height: 36px">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style23" DataSourceID="SqlDataSource1" DataTextField="Sid" DataValueField="Sid" Height="16px" Width="150px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7" style="height: 36px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Enter the Subject ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"> <asp:Label ID="ed" runat="server" Text="Exam Date(yyyy/mm/dd):"></asp:Label>
                </td>
                <td style="width: 182px; height: 36px">
                    <asp:TextBox ID="Edtb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style7" style="height: 36px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Edtb" ErrorMessage="*Enter the Exam Date" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    &nbsp;<asp:Label ID="NoOfAns" runat="server" Text="Number of Answers:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="NumberOfAnsTB" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NumberOfAnsTB" ErrorMessage="*Enter the Number of Answers" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Namelabel" runat="server" Text="University Name:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="Nametb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Nametb" ErrorMessage="*Enter the University Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Cid" runat="server" Text="Course ID:"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style24" DataSourceID="SqlDataSource2" DataTextField="Cid" DataValueField="Cid" Height="16px" Width="150px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Enter the Course ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td style="width: 182px; height: 34px;">
                    <asp:Button ID="Submit" runat="server" Text="Submit" Width="81px" style="margin-left: 13px" OnClick="Submit_Click" />
                &nbsp;<input id="Reset1" style="width: 67px" type="reset" value="Reset" /></td>
                <td class="auto-style7" style="height: 34px">&nbsp;&nbsp;</td>
            </tr>
        </table>

        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Sid] FROM [CourseAndSubject]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Cid] FROM [CourseAndSubject]"></asp:SqlDataSource>

    </div>
    </asp:Content>

