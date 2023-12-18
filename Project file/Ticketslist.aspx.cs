using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UshaOnlineServiceCenter
{
    public partial class Ticketslist : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-776UDFU; database = master; integrated security = true;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            SqlCommand cmd = new SqlCommand("select * from Addticketstbl", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            grdview.DataSource = ds;
            grdview.DataBind();
        }


        protected void grdview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grdview.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtstatution = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtstatution");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Addticketstbl where id=" + id, con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                BindGrid();
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = id + " details deleted successfully";
            }
        }

        protected void grdview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdview.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void grdview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(grdview.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtstatution = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtstatution");

            TextBox txtname = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtname") as TextBox;
            TextBox txtmail = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtmail") as TextBox;
            TextBox txtmobileno = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtmobileno") as TextBox;
            TextBox txtaddress1 = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtaddress1") as TextBox;
            TextBox txtaddress2 = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtaddress2") as TextBox;
            TextBox txtprefferedlang = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtprefferedlang") as TextBox;
            TextBox txtstate = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtstate") as TextBox;
            TextBox txtcity = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtcity") as TextBox;
            TextBox txtlocality = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtlocality") as TextBox;
            TextBox txtpincode = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtpincode") as TextBox;
            TextBox txtproductcategory = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtproductcategory") as TextBox;
            TextBox txtproduct = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtproduct") as TextBox;
            TextBox txtmodel = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtmodel") as TextBox;
            TextBox txtpurchasesource = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtpurchasesource") as TextBox;
            TextBox txtsupport = (TextBox)grdview.Rows[e.RowIndex].FindControl("txtsupport") as TextBox;

            con.Open();
            SqlCommand cmd = new SqlCommand("update Addticketstbl set Salutation='" + txtstatution.Text + "', Name='" + txtname.Text + "',Email='" + txtmail.Text + "',MobileNo='" + txtmobileno.Text + "',Address1='" + txtaddress1.Text + "',Address2='" + txtaddress2 + "',PrefferedLanguague='" + txtprefferedlang.Text + "',States='" + txtstate.Text + "',City='" + txtcity.Text + "',Locality='" + txtlocality.Text + "',Pincode='" + txtpincode.Text + "',ProductCategory='" + txtproductcategory.Text + "',Product='" + txtproduct.Text + "',Model='" + txtmodel.Text + "',PurchaseSource='" + txtpurchasesource.Text + "',YourSupportRequest='" + txtsupport + "' where id=" + id, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.ForeColor = Color.Green;
            lblmsg.Text = id + " Details Updated successfully";
            grdview.EditIndex = -1;
            BindGrid();


        }
    }
}