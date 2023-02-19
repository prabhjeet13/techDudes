using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class UploadQPGQuestionBank : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security = True");
    SqlCommand com = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Upload_Click(object sender, EventArgs e)
    { 
        if (QPGQuesBank.HasFile)
        {
            string fname = QPGQuesBank.PostedFile.FileName;
            string extension = Path.GetExtension(fname);
            int fsize = QPGQuesBank.PostedFile.ContentLength;
            int flag = 0;
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                case ".pdf":
                case ".jpg":
                case ".jpeg":
                    flag = 1;
                    break;
                default:
                    flag = 0;
                    break;
            }
            if (flag == 1)
            {
                QPGQuesBank.SaveAs(Server.MapPath("~/QPGQuestionBank/" + fname));
                string ins = "insert into [QPGQuesBank](SubName,FName,FSize) values('" + Snametb.Text + "','" + fname + "','" + fsize / 1024 + "')";
                com = new SqlCommand(ins, con);
                con.Open();
                if (com.ExecuteNonQuery() != 0)
                {
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "File Uploaded Successfully";
                    con.Close();

                }
                else
                {
                    Label1.Text = "File Failed to upload";
                }
            }

            else
            {
                Label1.Text = "Only .doc, .docx, .pdf, .jpg, and .jpeg file is allowed";
            }
        }
        else
        {
            Label1.Text = "Select The File";
        }
    }
}
