using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddAnswerForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Click(object sender, EventArgs e)
    {
      try
      { 
        string ins = "insert into [AddAns](Year,Sid,ExamDate,AnsNo,Answer,Cid) values('" + DropDownList1.Text + "','" + DropDownList2.Text + "','"+ExamdateTb.Text+"','" + AnsNotb.Text + "','" + Anstb.Text + "','" + DropDownList3.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("AddAnswerForm.aspx");
      }
      catch (Exception)
      {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Duplicate entry of 'Answer Number' not allowed!";
      }
    }
}