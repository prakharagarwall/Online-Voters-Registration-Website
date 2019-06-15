using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class homepage1 : System.Web.UI.Page
{
    internal string t1,t2,t3;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewfullrecentjobs.aspx?job_title=" +t1);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewfullrecentjobs.aspx?job_title=" + t2);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewfullrecentjobs.aspx?job_title=" + t3);
    }
}