using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration2 : System.Web.UI.Page
{
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        String uname=(String)Session["uname"];
        String str = "activate";
        cmd = new SqlCommand("select * from voter where voterid='" + uname + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (TextBox1.Text == "1234")
            {
                con.Close();
                cmd = new SqlCommand("update voter set activate='" + str + "' where voterid='" + uname + "' ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Session["u_name"] = uname;
                Response.Redirect("welcomeuser.aspx");
            }
            else
            {
                Label3.Text = "Incorrect OTP";
            }
        }
    }
}