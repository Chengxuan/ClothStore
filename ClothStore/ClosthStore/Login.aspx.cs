using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.SetFocus(txtEmail);
        Page.Form.DefaultButton = btnLogin.UniqueID;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            if (chkRemember.Checked)
            {
                Application["AccountEmail"] = txtEmail.Text;
            }
            Session["AccountEmail"] = txtEmail.Text;
            if (Request.QueryString["Back"] != null)
            {
                Response.Redirect("CheckOutPage.aspx");
            }
            else
            {
                Response.Redirect("AccountPage.aspx");
            }
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
       
        List<Customers> customerList = CustomersDB.GetCustomers();
        foreach (Customers customer in customerList)
        {
            if (customer.Email == txtEmail.Text && customer.PassWord == txtPassWord.Text)
            {
                args.IsValid = true;
                break;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["Back"] != null)
        {
            Response.Redirect(Request.QueryString["Back"].ToString());
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}