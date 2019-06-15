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

public partial class adminactivate : System.Web.UI.Page
{
    internal string uname;
    internal string ctfname, ctfpath;
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
        SqlDataAdapter da = new SqlDataAdapter("select * from voter where activate='"+"activate"+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        getdata();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update voter set activate='"+"deactivate"+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        
        Response.Write("<script> alert('Profile Activated Successfully...!!!')</script>");
    }
    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        ImageButton imgbtn = sender as ImageButton;
        GridViewRow grow = imgbtn.NamingContainer as GridViewRow;
        string filePath = GridView1.DataKeys[grow.RowIndex].Value.ToString();
        if (filePath != "")
        {


            FileInfo f1 = new FileInfo(filePath);
            //  Response.Write(f1.Name);
            Response.ContentType = "document/doc/docx/txt/pdf/HTML/HTM";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + f1.Name);


            Response.AddHeader("Content-Length", filePath.Length.ToString());
            Response.End();
        }
        else
        {
            Response.Write("<script>alert('No Notice Present')</script>");
        }
    }
    
   /* protected void LinkButton4_Click(object sender, EventArgs e)
    {
        SqlDataAdapter daa = new SqlDataAdapter("select * from voter where voterid='" + uname + "'", con);
        DataTable dtt = new DataTable();
        daa.Fill(dtt);
        ctfname = dtt.Rows[0]["ctf_name"].ToString();
        ctfpath = "ResumeFiles" + "/" + ctfname;
        if (ctfname == "")
        {
            Response.Write("<script> alert('Resume Not Found..!!!')</script>");
        }
        else
        {
            String filename = Server.MapPath(ctfpath);
            FileInfo f1 = new FileInfo(filename);
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachement;filename=" + f1.Name);
            Response.AddHeader("Content-Length", f1.Length.ToString());
            Response.End();
        }
    } */
}