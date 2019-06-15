using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class adminviewfullfeedback : System.Web.UI.Page
{
    string uname;
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
            string name = Request.QueryString["name"].ToString();
            string email = Request.QueryString["email"].ToString();
            


            // Response.Write(user_name);
            SqlDataAdapter daa = new SqlDataAdapter("select * from feedback where name='" + name + "' and email='" + email + "'", con);
            DataTable dtt = new DataTable();
            daa.Fill(dtt);

            //To view Profile...
            LabelName1.Text = dtt.Rows[0]["name"].ToString();
            Labelemail.Text = dtt.Rows[0]["email"].ToString();
            Labelfeedback.Text = dtt.Rows[0]["feedback"].ToString();
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
}