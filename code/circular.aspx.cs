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

public partial class circular : System.Web.UI.Page
{
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from notice where visible_to='" + "visitors" + "' or visible_to='" + "User, Visitors" + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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
}