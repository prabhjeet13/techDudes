using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddQuestionForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Click(object sender, EventArgs e)
    {   try
        {
            string ins = "insert into [AddQues](Year,Sid,ExamDate,Qno,Question,Marks,Cid) values('" + DropDownList1.Text + "','" + DropDownList2.Text + "','"+ExamDatetb.Text+"','" + qnotb.Text + "','" + questb.Text + "','" + markstb.Text + "','" + DropDownList3.Text + "') ";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AddQuestionForm.aspx");
        }
        catch(Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Duplicate entry of 'Question Number' not allowed!";
        }

    }
}