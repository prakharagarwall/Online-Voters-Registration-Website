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

public partial class adminupdatenotice : System.Web.UI.Page
{
    internal string uname;
    string notice_name, notice_path;
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
            Label1.Text = DateTime.Now.ToString("dd/MM/yyyy");
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
   
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string visibility = null;
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                if (visibility == null)
                {
                    visibility = CheckBoxList1.Items[i].Text;
                }
                else
                {
                    visibility = visibility + ", " + CheckBoxList1.Items[i].Text;
                }
            }
        }


        notice_name = FileUpload1.FileName;
        string path2 = Server.MapPath("notice");
        notice_path = path2 + "/" + notice_name;
        //Response.Write(visibility);
        if (visibility ==null)
        {
           // Response.Write("<script> alert('Notice Uploaded failed...!!!')</script>");
            Label2.Text = "Please Select Atleast One...!!";
        }
        else
        {
            FileUpload1.PostedFile.SaveAs(notice_path);
            cmd = new SqlCommand("insert into notice values('" + Label1.Text + "','" + TextBox1.Text + "','" + notice_name + "','" + notice_path + "','" + visibility + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Notice Uploaded Successfully...!!!')</script>");
        }
    }
}