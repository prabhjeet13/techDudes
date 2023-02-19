using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DetailsAnsForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            string ins = "insert into [DetailsAns](Year, Sid, ExamDate, NumberOfAnswers,UniversityName, Cid) values('" + Yeartb.Text + "', '" + DropDownList1.Text + "','" + Edtb.Text + "', '" + NumberOfAnsTB.Text + "','" + Nametb.Text + "','" + DropDownList2.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AddAnswerForm.aspx");
        }
        catch (Exception)
        {
            Label1.Text = "Enter The Correct Details!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}