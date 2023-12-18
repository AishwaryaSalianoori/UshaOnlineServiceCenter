using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace UshaOnlineServiceCenter
{
    public partial class Loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-776UDFU;Initial Catalog=master;Persist Security Info=True;User ID=Aishu; password=1234");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from logintable where Username='" + txtusername.Text + "' and Passwords ='" + txtpassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "Login Failed";
            }
            else
            {
                lblmsg.Text = "Login Successfully";
                Response.Redirect("Addtickets.aspx");
            }

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            txtusername.Text = string.Empty;
            txtpassword.Text = string.Empty;
        }
    }
}