using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class viewfullrecentjobs : System.Web.UI.Page
{
    internal string job_title,company_name;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        job_title = Request.QueryString["job_title"].ToString();
        //company_name = Request.QueryString["company"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("Select * from jobs where job_title='" + job_title + "' ", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        lblpostdate.Text=dt.Rows[0]["posting_date"].ToString();
        lbljobtitle.Text = dt.Rows[0]["job_title"].ToString();
        lbljobdescription.Text = dt.Rows[0]["job_description"].ToString();
        lbllocation.Text = dt.Rows[0]["job_location"].ToString();
        lblcompany.Text = dt.Rows[0]["company"].ToString();
        lbltechnology.Text = dt.Rows[0]["technology"].ToString();
        lblcriteria.Text = dt.Rows[0]["criteria"].ToString();
        lblexp.Text = dt.Rows[0]["experience"].ToString();
        lblqual.Text = dt.Rows[0]["Qualification"].ToString();
        lblpackage.Text = dt.Rows[0]["Package"].ToString();
        lbllastdate.Text = dt.Rows[0]["last_date"].ToString();
    }
}