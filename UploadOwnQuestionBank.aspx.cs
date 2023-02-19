using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class UploadOwnQuestionBank : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security = True");
    SqlCommand com = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Upload_Click(object sender, EventArgs e)
    {

            if (OwnQuesBank.HasFile)
            {
                string fname = OwnQuesBank.PostedFile.FileName;
                string extension = Path.GetExtension(fname);
                int fsize = OwnQuesBank.PostedFile.ContentLength;
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

                    OwnQuesBank.SaveAs(Server.MapPath("~/UserQuestionBank/" + fname));
                    string ins = "insert into [OwnQuesBank](Email_id,FileName,FileSize,SubjectName) values('" + idtb.Text + "','" + fname + "','" + fsize + "','" + Snametb.Text + "')";
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