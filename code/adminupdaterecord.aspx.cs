using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class adminupdaterecord : System.Web.UI.Page
{
    internal string uname;
    string resume_name, resume_path, image_name, image_path;
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
    protected void Textsecques_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void getdata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from voter", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        getdata();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        getdata();
    
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lbluname1 = GridView1.Rows[e.RowIndex].FindControl("lbluname1") as Label;
        TextBox Textpass = GridView1.Rows[e.RowIndex].FindControl("Textpass") as TextBox;
        TextBox Textstname = GridView1.Rows[e.RowIndex].FindControl("Textstname") as TextBox;
        TextBox Textfname = GridView1.Rows[e.RowIndex].FindControl("Textfname") as TextBox;
        TextBox Textrollno = GridView1.Rows[e.RowIndex].FindControl("Textrollno") as TextBox;
        TextBox Textbranch = GridView1.Rows[e.RowIndex].FindControl("Textbranch") as TextBox;
        TextBox Textgender = GridView1.Rows[e.RowIndex].FindControl("Textgender") as TextBox;
        TextBox Textaddr = GridView1.Rows[e.RowIndex].FindControl("Textaddr") as TextBox;
        TextBox Textmobileno = GridView1.Rows[e.RowIndex].FindControl("Textmobileno") as TextBox;
        TextBox Textemail = GridView1.Rows[e.RowIndex].FindControl("Textemail") as TextBox;
        cmd = new SqlCommand("update voter set password='" + Textpass.Text + "', name='" + Textstname.Text + "',father_name='" + Textfname.Text + "', adhar_no='" + Textrollno.Text + "', state='" + Textbranch.Text + "', gender='" + Textgender.Text + "', addr='" + Textaddr.Text + "', mobile_no='" + Textmobileno.Text + "', email='" + Textemail.Text + "' where voterid='"+lbluname1.Text+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        getdata();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lbluname = GridView1.Rows[e.RowIndex].FindControl("lbluname") as Label;
        cmd = new SqlCommand("delete from voter where voterid='" + lbluname.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getdata();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        TextBox TextUname = GridView1.FooterRow.FindControl("TextUname") as TextBox;
        TextBox TextPass = GridView1.FooterRow.FindControl("TextPass") as TextBox;
        TextBox TextStuName = GridView1.FooterRow.FindControl("TextStuName") as TextBox;
        TextBox TextFname = GridView1.FooterRow.FindControl("TextFname") as TextBox;
        TextBox TextRollNo = GridView1.FooterRow.FindControl("TextRollNo") as TextBox;
        TextBox TextBranch= GridView1.FooterRow.FindControl("TextBranch") as TextBox;
        TextBox TextGender = GridView1.FooterRow.FindControl("TextGender") as TextBox;
        TextBox TextAddr = GridView1.FooterRow.FindControl("TextGender") as TextBox;
        TextBox TextMobileNo = GridView1.FooterRow.FindControl("TextMobileNo") as TextBox;
        TextBox TextEmail = GridView1.FooterRow.FindControl("TextEmail") as TextBox;
        if (TextUname.Text == "" || TextPass.Text == "" || TextStuName.Text == "")
        {
            Label1.Text="First Three Fields are Mendatory....!!";
        }
        else
        {
            cmd = new SqlCommand("select * from voter where voterid='" + TextUname.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                con.Close();
                Label1.Text="User Name already exist in Database..!!!";
            }
            else
            {
                dr.Close();
                con.Close();
                cmd = new SqlCommand("insert into voter(voterid,password,name,father_name,adhar_no,state,gender,addr,mobile_no,email,block)values('" + TextUname.Text + "','" + TextPass.Text + "','" + TextStuName.Text + "','" + TextFname.Text + "','" + TextRollNo.Text + "','" + TextBranch.Text + "','" + TextGender.Text + "','" + TextAddr.Text + "','" + TextMobileNo.Text + "','" + TextEmail.Text + "','" + "Block" + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                getdata();
                Response.Write("<script> alert('New User Created Successfully...!!!')</script>");
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        getdata();
    }
}