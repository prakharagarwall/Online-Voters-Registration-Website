using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class adminpostnewjob : System.Web.UI.Page
{
    internal string uname;
    string resume_name, resume_path, image_name, image_path;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    private string text;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            LabelPostingDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            uname = Session["uname"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from admin where user_name='" + uname + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            LabelUname.Text = dt.Rows[0]["user_name"].ToString();
        }
        else
        {
            Response.Redirect("loginpage.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("loginpage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into jobs values('" + LabelPostingDate.Text + "','" + TextJobTitle.Text + "','" + TextJobDescription.Text + "','" + TextJobLocation.Text + "','" + TextCompanyName.Text + "','" + TextTechnology.Text + "','" + TextCriteria.Text + "','" + TextExperience.Text + "','" + DropDownListQual.Text + "','" +TextPackage.Text + "','" + TextLastDate.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Job Posted Successfully...!!!')</script>");
    }
}