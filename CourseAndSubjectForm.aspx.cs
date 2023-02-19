using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class CourseAndSubjectForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString);
            string ins = "insert into [CourseAndSubject](Sid, Sname, Cname, Cid) values('" + enterSID.Text + "', '" + enterSubject.Text + "', '" + enterCname.Text + "','" + enterCID.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();

            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            Response.Redirect("CourseAndSubjectForm.aspx");
        }
        catch(Exception)
        {
            Label1.Text = "Your Subject ID is already added!";
            Label1.ForeColor = System.Drawing.Color.Red;
        } 
    }
}