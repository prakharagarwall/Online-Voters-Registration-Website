using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class adminsearchuser : System.Web.UI.Page
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
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            Label1.Text = "Please Fill Out any one field...!";
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        else
        {
            string name,uname;
            if (TextBox2.Text == "")
            {
                name = TextBox2.Text.ToString();
            }
            else 
            {
                name = TextBox2.Text.ToString() + "%";
            }
            if (TextBox1.Text == "")
            {
                uname = TextBox1.Text.ToString();
            }
            else
            {
                uname = TextBox1.Text.ToString() + "%";
            }
            //name = TextBox2.Text.ToString() + "%";
            //uname = TextBox1.Text.ToString() + "%";
            SqlDataAdapter da = new SqlDataAdapter("select voterid, password, name,adhar_no, state, gender, addr, mobile_no, email, question, answer from voter where name like '"+name+"' or voterid like '"+uname+"'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (dt.Rows.Count == 0)
            {
                Label1.Text = "User does not exist!!!!";
            }
            else
            {
                Label1.Text = "";
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}