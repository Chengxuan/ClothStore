using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Form.DefaultButton = btnConfirm.UniqueID;
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        if (!chkUser.Checked) 
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('You should accpet our license to register in our website!')</script>");
        }
        else
        {

            if (this.IsValid && this.IsPostBack)
            {
                Customers customer = new Customers();
                customer.Email = txtEmail.Text;
                customer.Name = txtName.Text;
                customer.PassWord = txtPassWord2.Text;
                customer.Address = txtAddress.Text;
                customer.CardNo = txtCardNo.Text;
                customer.CardName = txtCardName.Text;
                customer.PhoneNumber = txtPhoneNumber.Text;
                customer.ExpireDate = txtExpireDate.Text;
                customer.Spent = "0";
                CustomersDB.InsertCustomer(customer);
                Application["AccountEmail"] = txtEmail.Text;
                Session["AccountEmail"] = txtEmail.Text;
                Response.Redirect("AccountPage.aspx");
            }
        }
    }
    protected void cuvEmail_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = true;
        List<Customers> customerList = CustomersDB.GetCustomers();
        Customers customer = new Customers();
        foreach (Customers cus in customerList)
        {
            if (txtEmail.Text == cus.Email)
            {
                args.IsValid = false;
            }
        }
    }
}