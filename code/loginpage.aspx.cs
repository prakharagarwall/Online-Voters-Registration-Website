using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Net;
using System.IO;
using ASPSnippets.SmsAPI;
using System.Drawing;

public partial class loginpage : System.Web.UI.Page
{
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    byte[] bytes1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["uname"] = TextUname.Text;
        if (DropDownListSelectUser.Text == "User")
        {
            cmd = new SqlCommand("select * from voter where voterid='" + TextUname.Text + "' and password='" + TextPass.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            
                if (dr.Read())
                {
                    if (dr["block"].ToString() == "Block")
                    {
                        Label1.Text = "Your Account is blocked...!";
                    }
                    else
                    {
                        if (dr["activate"].ToString() == "deactivate")
                        {
                            try
                            {
                                byte[] img = (byte[])dr["image"];
                                ImageConverter ic = new ImageConverter();
                                System.Drawing.Image img1 = (System.Drawing.Image)ic.ConvertFrom(img);
                                Bitmap bmp1 = new Bitmap(img1);

                                if (FileUpload1.HasFile)
                                {
                                    using (BinaryReader reader1 = new BinaryReader(FileUpload1.PostedFile.InputStream))
                                    {
                                        bytes1 = reader1.ReadBytes(FileUpload1.PostedFile.ContentLength);
                                    }
                                }
                                else
                                {
                                    Label1.Text = "Plz Upload File";
                                }
                                System.Drawing.Image img2 = (System.Drawing.Image)ic.ConvertFrom(bytes1);
                                Bitmap bmp2 = new Bitmap(img2);
                                //Calling Compare Function
                                if (Class1.Compare(bmp1, bmp2) == Class1.CompareResult.ciCompareOk)
                                {
                                    Session["u_name"] = TextUname.Text;
                                    Response.Redirect("Registration2.aspx");
                                }
                                else if (Class1.Compare(bmp1, bmp2) == Class1.CompareResult.ciPixelMismatch)
                                {
                                    Label1.Visible = true;
                                    Label1.Text = "Incorrect Image";
                                }
                                else if (Class1.Compare(bmp1, bmp2) == Class1.CompareResult.ciSizeMismatch)
                                {
                                    Label1.Visible = true;
                                    Label1.Text = "Incorrect Image";
                                }
                            }
                            catch (Exception ex)
                            {
                                Label1.Visible = true;
                                Label1.Text = ex.Message.ToString();
                            }
                        }
                        else
                        {
                            try
                            {
                                byte[] img = (byte[])dr["image"];
                                ImageConverter ic = new ImageConverter();
                                System.Drawing.Image img1 = (System.Drawing.Image)ic.ConvertFrom(img);
                                Bitmap bmp1 = new Bitmap(img1);

                                if (FileUpload1.HasFile)
                                {
                                    using (BinaryReader reader1 = new BinaryReader(FileUpload1.PostedFile.InputStream))
                                    {
                                        bytes1 = reader1.ReadBytes(FileUpload1.PostedFile.ContentLength);
                                    }
                                }
                                else
                                {
                                    Label1.Text = "Plz Upload File";
                                }
                                System.Drawing.Image img2 = (System.Drawing.Image)ic.ConvertFrom(bytes1);
                                Bitmap bmp2 = new Bitmap(img2);
                                //Calling Compare Function
                                if (Class1.Compare(bmp1,bmp2)==Class1.CompareResult.ciCompareOk)
                                {
                                    Session["u_name"] = TextUname.Text;
                                    Response.Redirect("welcomeuser.aspx");
                                }
                                else if (Class1.Compare(bmp1,bmp2)==Class1.CompareResult.ciPixelMismatch)
                                {
                                    Label1.Visible = true;
                                    Label1.Text = "Incorrect Image";
                                }
                                else if (Class1.Compare(bmp1,bmp2)==Class1.CompareResult.ciSizeMismatch)
                                {
                                    Label1.Visible = true;
                                    Label1.Text = "Incorrect Image";
                                }
                            }
                            catch (Exception ex)
                            {
                                Label1.Visible = true;
                                Label1.Text = ex.Message.ToString();
                            }
                                                
                        }
                    }
                    
                }
                else
                {
                    Label1.Text = "Invalid User Name or Password";
                    // Response.Write("<script> alert('Invalid User Name or Password') ;</script> ");
                }
            }
        else
        {
            if (DropDownListSelectUser.Text == "Admin")
            {
                cmd = new SqlCommand("select * from admin where user_name='" + TextUname.Text + "' and password='" + TextPass.Text + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["uname"] = TextUname.Text;
                    Response.Redirect("welcomeadmin.aspx");
                }
                else
                {
                    Label1.Text = "Invalid User Name or Password";
                }
            }
            
       }
    }
    
}