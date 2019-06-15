using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class adminblockuser : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from voter", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lbluname1 = GridView1.Rows[e.RowIndex].FindControl("lbluname") as Label;
        LinkButton LinkButton3 = GridView1.Rows[e.RowIndex].FindControl("LinkButton3") as LinkButton;
        if (LinkButton3.Text == "Block")
        {
            string block = "Block";
            cmd = new SqlCommand("update voter set block='" + block + "' where voterid='" + lbluname1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            getdata();
           
            Response.Write("<script> alert('User Blocked Successfully...!!!')</script>");
            // Label1.Text = "Block";
        }
        else
        {            
            string unblock = "UnBlock";
            cmd = new SqlCommand("update voter set block='" + unblock + "' where voterid='" + lbluname1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            getdata();
          
            Response.Write("<script> alert('User UnBlocked Successfully...!!!')</script>"); 
            // Label1.Text = "UnBlock";

        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        getdata();
    }
}