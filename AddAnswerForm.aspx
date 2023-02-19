<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="AddAnswerForm.aspx.cs" Inherits="AddAnswerForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="addAnswers" style="height: 710px; width: 1680px; font-size: medium; font-family: Arial, Helvetica, sans-serif; background-image: url('http://localhost:60902/Images/questionanswer.png');"> 
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
              width: 42%;
              height: 333px;
              margin-left: 15px;
          }
          .auto-style14 {
              margin-left: 13px;
          }
          .auto-style15 {
              width: 280px;
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
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h4 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; color: #FF0000;"> &nbsp;&nbsp;&nbsp;&nbsp; Add All The Answers and Go to "VIEW ANSWER KEY" Section! </h4>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <table style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;" class="auto-style13">
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="YearLabel" runat="server" Text="Year:"></asp:Label>
                </td>
                <td style="width: 179px">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style14" DataSourceID="SqlDataSource1" DataTextField="Year" DataValueField="Year" Height="16px" Width="150px">
                    </asp:DropDownList>
                </td>
                <td style="width: 273px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Enter The Year" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Sidlabel" runat="server" Text="Subject ID:"></asp:Label>
                </td>
                <td style="width: 179px">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style14" DataSourceID="SqlDataSource2" DataTextField="Sid" DataValueField="Sid" Height="16px" Width="149px">
                    </asp:DropDownList>
                </td>
                <td style="width: 273px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Enter the Subject ID" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ed" runat="server" Text="Exam Date(yyyy/mm/dd):"></asp:Label>
                </td>
                <td style="width: 179px">
                    <asp:TextBox ID="ExamdateTb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 273px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Enter the Exam Date" ControlToValidate="ExamdateTb" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Anslabel" runat="server" Text="Answer Number:"></asp:Label>
                </td>
                <td style="width: 179px">
                    <asp:TextBox ID="AnsNotb" runat="server" style="margin-left: 13px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 273px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="AnsNotb" ErrorMessage="*Enter the Anwser Number " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Ansla" runat="server" Text="Answer:"></asp:Label>
                </td>
                <td style="width: 179px">
                    <asp:TextBox ID="Anstb" runat="server" style="margin-left: 13px" Width="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="width: 273px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Enter the Answer" ControlToValidate="Anstb" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Cidla" runat="server" Text="Course ID:"></asp:Label>
                </td>
                <td style="width: 179px">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style14" DataSourceID="SqlDataSource3" DataTextField="Cid" DataValueField="Cid" Height="16px" Width="150px">
                    </asp:DropDownList>
                </td>
                <td style="width: 273px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Enter the Course ID" ControlToValidate="DropDownList3" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td style="width: 179px">
                    <asp:Button ID="Add" runat="server" style="margin-left: 8px" Text="Add" Width="77px" OnClick="Add_Click" />
                &nbsp;
                    <input id="Reset1" style="width: 68px" type="reset" value="Reset" /></td>
                <td style="width: 273px">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Year] FROM [DetailsAns]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Sid] FROM [DetailsAns]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT [Cid] FROM [DetailsAns]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>

