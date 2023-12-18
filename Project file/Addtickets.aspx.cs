using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Reflection;
using System.Xml.Linq;
using System.Reflection.Emit;
using System.Text.RegularExpressions;
namespace UshaOnlineServiceCenter
{
    public partial class Addtickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            string StrconnectionString = "Server = DESKTOP-776UDFU; database = master; integrated security = true;";
            SqlConnection con = new SqlConnection(StrconnectionString);
            con.Open();
            string strsqlquery = "Insert Into  Addticketstbl (Salutation,Name,Email,MobileNo,Address1,Address2,PrefferedLanguague,States,City,Locality,Pincode,ProductCategory,Product,Model,PurchaseSource,YourSupportRequest) values ('" + drpname.Text + "','" + txtname.Text + "','" + txtmail.Text + "','" + txtmobile.Text + "','" + txtaddress1.Text + "','" + txtaddress2.Text + "','" + drppreffered.Text + "','" + drpstate.Text + "','" + drpcity.Text + "','" + txtlocality.Text + "','" + txtpincode.Text + "','" + drpproduct.Text + "','" + drpproduct.Text + "','" + drpmodel.Text + "','" + drppurchase.Text + "','" + txtsupport.Text + "')";
            SqlCommand cmd = new SqlCommand(strsqlquery, con);


            int RecordsEffected = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (RecordsEffected > 0)
            {
                lblalert.Text = ("Record Inserted successfully!!");

                MailMessage mail = new MailMessage();
                mail.To.Add("Dotnetmasteronline@gmail.com".Trim());
                mail.From = new MailAddress("Salianooriaishwarya21@gmail.com");
                mail.Subject = "Ticket Raised Details";
                mail.Body = "Dear Customer ,<br>thank you for contacting Us<br>";
                mail.Body += "Customer Name='" + txtname.Text + "'<br>";
                mail.Body += "Customer Email='" + txtmail.Text + "'<br>";
                mail.Body += " Customer Mobile ='" + txtmobile.Text + "'<br>";
                mail.Body += "Customer Address1='" + txtaddress1.Text + "'<br>";
                mail.Body += "Customer Address2='" + txtaddress2.Text + "'<br>";
                mail.Body += " PreferedLanguague='" + drppreffered.Text + "'<br>";
                mail.Body += " States='" + drpstate.Text + "'<br>";
                mail.Body += " City='" + drpcity.Text + "'<br>";
                mail.Body += " Locality='" + txtlocality.Text + "'<br>";
                mail.Body += " Pincode='" + txtpincode.Text + "'<br>";
                mail.Body += " ProductCategory='" + drpproductcategory.Text + "'<br>";
                mail.Body += " Product='" + drpproduct.Text + "'<br>";
                mail.Body += " Model='" + drpmodel.Text + "'<br>";
                mail.Body += " PurchaseSource='" + drppurchase.Text + "'<br>";
                mail.Body += " YourSupportRequest='" + txtsupport.Text + "'<br><br>";
                mail.Body += "Your Regrads,<br> Usha Online Services";

                if (fileupload.HasFile)
                {
                    mail.Attachments.Add(new Attachment(fileupload.PostedFile.InputStream, fileupload.FileName));
                }

                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("Salianooriaishwarya21@gmail.com", "uwsueyaogiyalwfn");
                smtp.Send(mail);


            }
            else
            {
                lblalert.Text = ("No Records inserted ");
            }

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            drpname.Text = string.Empty;
            txtname.Text = string.Empty;
            txtmail.Text = string.Empty;
            txtaddress1.Text = string.Empty;
            txtaddress2.Text = string.Empty;
            txtlocality.Text = string.Empty;
            drpcity.Text = string.Empty;
            drpstate.Text = string.Empty;
            drppreffered.Text = string.Empty;
            txtpincode.Text = string.Empty;
            drpproductcategory.Text = string.Empty;
            drpproduct.Text = string.Empty;
            drpmodel.Text = string.Empty;
            drppurchase.Text = string.Empty;
            txtsupport.Text = string.Empty;
            txtmobile.Text = string.Empty;
            drpproductcategory.Text = string.Empty;
            drpproductcategory.Text = string.Empty;
            fileupload.Attributes.Clear();

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if (fileupload.HasFile)
            {
                string FileExtension = System.IO.Path.GetExtension(fileupload.FileName);
                fileupload.SaveAs(Server.MapPath("~/Upload/" + fileupload.FileName));
                lblmsg.Text = "File Uploaded";
            }
            else
            {
                lblmsg.Text = "please select a file to upload";
            }
        }
    }
}