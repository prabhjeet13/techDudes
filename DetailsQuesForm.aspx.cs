using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class DetailsQuesForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Submit_Click1(object sender, EventArgs e)
    {
        try
        {
            string ins = " insert into [DetailsQues](Year,Sid,ExamDate,Time,NumberofQuestions,TotalMarks,UniversityName,Cid) values('" + yearTextBox.Text + "','" + DropDownList1.Text + "','" + ExamDateTb.Text + "','" + TimeTextBox.Text + "','" + NumberofQuestions.Text + "','" + TotalMarksTextBox.Text + "','" + Nametb.Text + "','" + DropDownList2.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AddQuestionForm.aspx");
        }
        catch (Exception)
        {
            Label1.Text = "Enter The Correct Details!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }

    }
}