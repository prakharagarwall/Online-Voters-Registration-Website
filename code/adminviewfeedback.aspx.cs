using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class adminviewfeedback : System.Web.UI.Page
{
    internal string uname;
    string resume_name, resume_path, image_name, image_path;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            uname = Session["uname"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from admin where user_name='" + uname + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            LabelUname.Text = dt.Rows[0]["user_name"].ToString();
            if (!IsPostBack)
            {
                getdata();
            }
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
    protected void getdata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from feedback", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label LabelName = GridView1.Rows[e.RowIndex].FindControl("LabelName") as Label;
        Label Labelemail = GridView1.Rows[e.RowIndex].FindControl("Labelemail") as Label;
        cmd = new SqlCommand("delete from feedback where name='" + LabelName.Text + "' and email='" + Labelemail.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getdata();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        getdata();
    
    }
}