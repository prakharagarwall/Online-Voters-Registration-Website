using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class registersuccessfully : System.Web.UI.Page
{
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;

    string uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            uname = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("registrationpage.aspx");
        }
        SqlDataAdapter da = new SqlDataAdapter("select * from voter where voterid='" + uname + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        // TextBox1.Text = dt.Rows[0][0].ToString();
        LabelName.Text = dt.Rows[0]["name"].ToString();
        LabelUname.Text = dt.Rows[0]["voterid"].ToString();
        LabelPass.Text = dt.Rows[0]["password"].ToString();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("loginpage.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("registrationpage.aspx");
    }
}