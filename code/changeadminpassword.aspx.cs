using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class changeadminpassword : System.Web.UI.Page
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
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("loginpage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from admin where user_name='" + uname + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string oldpas = dt.Rows[0]["password"].ToString();
        if (Textoldpass.Text != "" && Textnewpass.Text != "" && Textconpass.Text != "")
        {
            if (oldpas == Textoldpass.Text)
            {
               // if (Textnewpass.Text == Textconpass.Text)
              //  {
                    cmd = new SqlCommand("update admin set password='" + Textnewpass.Text + "' where user_name='" + uname + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script> alert('Password Changed Successfully...!!!')</script>");                    
                //  }
            }
            else
            {
                Label1.Text = "You entered Incorrect Password";
            }
        }
    }
}