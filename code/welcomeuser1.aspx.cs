using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    internal string uname;
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
        }
        else
        {
            Response.Redirect("loginpage.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            uname = Session["u_name"].ToString();
            cmd = new SqlCommand("select * from voter where voterid='" + uname + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                 //if (dr["otp"].ToString() == TextBox1.Text)
                if ("1234" == TextBox1.Text)
                {
                    Session["u_name"] = uname;
                    Response.Redirect("welcomeuser.aspx");
                }
                else
                {
                    Label1.Text = "Incorrect One Time Password";
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
    }
}