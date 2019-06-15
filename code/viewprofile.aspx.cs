using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class viewprofile : System.Web.UI.Page
{
    internal string uname;
    string resume_name, resume_path, image_name, image_path;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["u_name"] != null)
        {
            uname = Session["u_name"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from voter where voterid='" + uname + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            LabelName.Text = dt.Rows[0]["name"].ToString();
            string ImageName = dt.Rows[0]["image"].ToString();
            string imagename = dt.Rows[0]["image"].ToString();
            ImageProfilePic.ImageUrl = "ProfilePicFiles" + "/" + imagename;

            //To view Profile...
            LabelName1.Text = dt.Rows[0]["name"].ToString();
            LabelUname.Text = dt.Rows[0]["voterid"].ToString();
            LabelPassword.Text = dt.Rows[0]["password"].ToString();
            LabelRollNo.Text = dt.Rows[0]["adhar_no"].ToString();
            LabelBranch.Text = dt.Rows[0]["state"].ToString();
            LabelGender.Text = dt.Rows[0]["gender"].ToString();
            LabelAddress.Text = dt.Rows[0]["addr"].ToString();
            LabelMobileNo.Text = dt.Rows[0]["mobile_no"].ToString();
            LabelEmail.Text = dt.Rows[0]["email"].ToString();
            LabelSquest.Text = dt.Rows[0]["question"].ToString();
            LabelSans.Text = dt.Rows[0]["answer"].ToString();
        }
        else
        {
            Response.Redirect("loginpage.aspx");
        }
    }
    protected void ButtonLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("loginpage.aspx");
    }
}