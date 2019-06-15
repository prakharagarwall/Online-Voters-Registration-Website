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

public partial class adminactivateuser : System.Web.UI.Page
{
    internal string uname, user_name, resumepath, resumename;
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
            user_name = Request.QueryString["voterid"].ToString();


            // Response.Write(user_name);
            SqlDataAdapter daa = new SqlDataAdapter("select * from voter where voterid='" + user_name + "'", con);
            DataTable dtt = new DataTable();
            daa.Fill(dtt);
            string imagename = dtt.Rows[0]["image_name"].ToString();
            Image1.ImageUrl = "ProfilePicFiles" + "/" + imagename;


            //To view Profile...
            LabelName1.Text = dtt.Rows[0]["name"].ToString();
            LabelUname1.Text = dtt.Rows[0]["voterid"].ToString();
            LabelPassword.Text = dtt.Rows[0]["password"].ToString();
            LabelRollNo.Text = dtt.Rows[0]["adhar_no"].ToString();
            LabelBranch.Text = dtt.Rows[0]["state"].ToString();
            LabelGender.Text = dtt.Rows[0]["gender"].ToString();
            LabelAddress.Text = dtt.Rows[0]["addr"].ToString();
            LabelMobileNo.Text = dtt.Rows[0]["mobile_no"].ToString();
            LabelEmail.Text = dtt.Rows[0]["email"].ToString();
            LabelSquest.Text = dtt.Rows[0]["question"].ToString();
            LabelSans.Text = dtt.Rows[0]["answer"].ToString();

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
        cmd = new SqlCommand("update voter set status='" + "deactivate" + "' where voterid='" + user_name + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Profile Updated Successfully...!!!')</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update voter set activate='" + "deactivate" + "' where voterid='" + user_name + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Profile Updated Successfully...!!!')</script>");
        Response.Redirect("adminactivate.aspx");
    }
}
