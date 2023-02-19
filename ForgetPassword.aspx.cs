using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ForgetPassword : System.Web.UI.Page
{
    SqlConnection con= new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QPG.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string newpassword = "Update [Userinfo] set Password = '" + npwordtb.Text + "' where Email_id = '" + emailtb.Text + "' ";
        SqlCommand com = new SqlCommand(newpassword, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
}