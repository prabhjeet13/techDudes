<%@ Page Title="" Language="C#" MasterPageFile="~/QPG.master" AutoEventWireup="true" CodeFile="AfterAdminLogin.aspx.cs" Inherits="AfterAdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style9" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; background-image: url('http://localhost:60902/Images/QuesAns.png');">
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
        width: 1680px;
        height: 890px;
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
    </div>
</asp:Content>

