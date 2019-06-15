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
using System.Text;
using System.Net;
using ASPSnippets.SmsAPI;
using System.Drawing;

public partial class registrationpage : System.Web.UI.Page
{
    public string image_name,image_path,ctf_path,ctf_name,value;
    byte[] bytes;
    Byte[] bytes1 = null;
    public static string str = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    SqlConnection con = new SqlConnection(str);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
      
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from voter where voterid='" + Textvid.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
            {
            dr.Close();
            LabelUname.Text="User Name already exist....!!";
            }
            else
            {
            dr.Close();
            if (FileUploadImage.HasFile)
            {
                using (BinaryReader reader1 = new BinaryReader(FileUploadImage.PostedFile.InputStream))
                {
                        bytes = reader1.ReadBytes(FileUploadImage.PostedFile.ContentLength);
                        image_name = FileUploadImage.FileName;
                        string path2 = Server.MapPath("ProfilePicFiles");
                        image_path = path2 + "/" + image_name;
                        string i = Path.GetExtension(image_name);
                        if (i == ".jpg" || i == ".jpeg")
                        {
                            FileUploadImage.PostedFile.SaveAs(image_path);
                            Panel1.Visible = false;
                            Panel2.Visible = true;
                        }
                        else
                        {
                            LabelImage.Text = "Only .jpg and .jpeg files allow!!!!";
                        }
                        
                }
            }
            //if (FileUpload1.HasFile)
            //{
            //    string filename = FileUpload1.PostedFile.FileName;
            //    string filePath = Path.GetFileName(filename);
            //    Stream fs = FileUpload1.PostedFile.InputStream;
            //    BinaryReader br = new BinaryReader(fs);
            //    bytes1 = br.ReadBytes((Int32)fs.Length);
            //    ctf_name = FileUpload1.FileName;
            //    string path3 = Server.MapPath("ResumeFiles");
            //    ctf_path = path3 + "/" + ctf_name;
            //    string j = Path.GetExtension(ctf_name);
            //        if (j == ".doc" || j == ".docx" || j == ".pdf")
            //        {
            //            FileUpload1.PostedFile.SaveAs(ctf_path);
            //            Panel1.Visible = false;
            //            Panel2.Visible = true;
            //        }
            //        else
            //        {
            //            Label2.Text = "Only .doc and .pdf files allow!!!!";
            //        }            
            //} 
           
                       
            Label7.Text = image_name;
            //Label8.Text = ctf_name;
            Label9.Text = image_path;
            //Label10.Text = ctf_path;
            Label11.Text = TextPass.Text;
            cmd = new SqlCommand("insert into voter(password, gender, addr, mobile_no, email, question, answer, block, name, voterid, adhar_no, state, otp, activate, image, image_name) values (@password, @gender, @addr, @mobile_no, @email, @question, @answer, @block, @name, @voterid, @adhar_no, @state, @otp, @activate, @image, @image_name)", con);
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = Label11.Text;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar, 50).Value = RadioButtonListgender.Text;
            cmd.Parameters.Add("@addr", SqlDbType.VarChar, 50).Value = TextAddress.Text;
            cmd.Parameters.Add("@mobile_no", SqlDbType.VarChar, 50).Value = TextMobileNo.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = TextEmail.Text;
            cmd.Parameters.Add("@question", SqlDbType.VarChar, 50).Value = DropDownListQuest.Text;
            cmd.Parameters.Add("@answer", SqlDbType.VarChar, 50).Value = TextAns.Text;
            cmd.Parameters.Add("@block", SqlDbType.VarChar, 50).Value = "UnBlock";
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = TextName.Text;
            cmd.Parameters.Add("@voterid", SqlDbType.VarChar, 50).Value = Textvid.Text;
            cmd.Parameters.Add("@adhar_no", SqlDbType.VarChar, 50).Value = Textadhar.Text;
            cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = DropDownListstate.Text;
            cmd.Parameters.Add("@otp", SqlDbType.VarChar, 50).Value = "1234";
            cmd.Parameters.Add("@activate", SqlDbType.VarChar, 50).Value = "deactivate";
            cmd.Parameters.Add("@image", SqlDbType.Binary).Value = bytes;
            cmd.Parameters.Add("@image_name", SqlDbType.VarChar, 50).Value = Label7.Text;
            cmd.ExecuteNonQuery();
            Session["username"] = Textvid.Text;
            Response.Redirect("registersuccessfully.aspx");
               
         
               // if (TextPass.Text == TextPass1.Text)
               // {
            
                    }
          
                }
            //}
   
    protected void TextUname_TextChanged(object sender, EventArgs e)
{
        cmd = new SqlCommand("select * from voter where voterid='" + Textvid.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            LabelUname.Text = "User Name already exist...!!";
        }
        con.Close();
}
    }
   