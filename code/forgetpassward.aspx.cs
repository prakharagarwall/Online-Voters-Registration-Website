using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net;
using System.IO;
using ASPSnippets.SmsAPI;


public partial class forgetpassward : System.Web.UI.Page
{
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    internal string pass, ans, mob, pass1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from voter where voterid='" + TextUname.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
           Panel1.Visible = false;
            Panel2.Visible = true;
            Lbsquest.Text = dt.Rows[0]["question"].ToString();
            ans = dt.Rows[0]["answer"].ToString();
            pass = dt.Rows[0]["password"].ToString();

        }
        else
        {
            LbUnameMsg.Text = "Invalid User Name";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from voter where voterid='" + TextUname.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ans = dt.Rows[0]["answer"].ToString();
        pass = dt.Rows[0]["password"].ToString();
        mob = dt.Rows[0]["mobile_no"].ToString();
        pass1 = "Your Password is : " + pass + ".  Now you can login";
        if (ans == TextSans.Text)
        {
            SMS.APIType = SMSGateway.Site2SMS;
            SMS.MashapeKey = "8MRVctdXPumshbpOk2bcBWF3rjzGp1X0JOnjsnBGchnqQzLWTY";
            SMS.Username = "8858013216";
            SMS.Password = "12345678";

            SMS.SendSms(mob, pass1);
            LbPass.Text = mob;
            Panel2.Visible = false;
            Panel3.Visible = true;
           
        }
        else 
        { 
        LbPassmsg.Text="incorrect answer";
        }
    }
}