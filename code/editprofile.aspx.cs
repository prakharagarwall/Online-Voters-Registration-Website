using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class editprofile : System.Web.UI.Page
{
    internal string uname;
    string resume_name, resume_path, image_name, image_path;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["u_name"] != null)
            {
                uname = Session["u_name"].ToString();
                SqlDataAdapter da = new SqlDataAdapter("select * from voter where voterid='" + uname + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                LabelName.Text = dt.Rows[0]["name"].ToString();
                string imagename = dt.Rows[0]["image_name"].ToString();
                ImageProfilePic.ImageUrl = "ProfilePicFiles" + "/" + imagename;

                //To Edit Profile...
                TextName.Text = dt.Rows[0]["name"].ToString();
                Label1.Text = dt.Rows[0]["adhar_no"].ToString();
                DropDownListBranch.Text = dt.Rows[0]["state"].ToString();
                RadioButtonList1.Text = dt.Rows[0]["gender"].ToString();
                TextAddress.Text = dt.Rows[0]["addr"].ToString();
                TextMobileNo.Text = dt.Rows[0]["mobile_no"].ToString();
                TextEmail.Text = dt.Rows[0]["email"].ToString();
                DropDownsecques.Text = dt.Rows[0]["question"].ToString();
                TextSans.Text = dt.Rows[0]["answer"].ToString();
            }
             else
            {
                Response.Redirect("loginpage.aspx");
            }
        }
    }
    protected void ButtonLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("loginpage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update voter set name='" + TextName.Text + "' ,  adhar_no='" + Label1.Text + "', state='" + DropDownListBranch.Text + "', gender='" + RadioButtonList1.Text + "', addr='" + TextAddress.Text + "', mobile_no='" + TextMobileNo.Text + "', email='" + TextEmail.Text + "', question='" + DropDownsecques.Text + "', answer='" + TextSans.Text + "' where voterid='" + Session["u_name"].ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        LabelName.Text = TextName.Text;
        Response.Write("<script> alert('Profile Updated Successfully...!!!')</script>");
    }
}