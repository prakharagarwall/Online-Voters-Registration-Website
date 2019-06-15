using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class feedback : System.Web.UI.Page
{
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into Feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Your Feedback Submitted Successfully...!!!')</script>");
        TextBox1.Text = null;
        TextBox3.Text = null;
        TextBox2.Text = null;
    }
}