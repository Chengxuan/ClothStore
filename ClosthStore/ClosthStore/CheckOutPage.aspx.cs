using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckOutPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int price = 0;
        foreach (BasketItem item in Basket.Instance.Items)
        {
            price += item.Quantity * (int)item.UnitPrice;
        }
        lbTotaltext.Text = "€"+price.ToString();
        Page.Form.DefaultButton = btnConfirm.UniqueID;
    }
    protected void btnGoBack_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["Back"] != null)
        {
            Response.Redirect(Request.QueryString["Back"].ToString());
        }
        else
        {
            Response.Redirect("BasketPage.aspx");
        }
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        int price = 0;
        foreach (BasketItem item in Basket.Instance.Items)
        {
            price += item.Quantity * (int)item.UnitPrice;
            if ((Convert.ToInt16(ProductsDB.GetProducts(item.ProductId).Instock) - item.Quantity) >= 0)
            {
                ProductsDB.UpdateProducts(item.ProductId, (Convert.ToInt16(ProductsDB.GetProducts(item.ProductId).Instock) - item.Quantity).ToString());
            }
            else
            {
                item.Quantity = Convert.ToInt16(ProductsDB.GetProducts(item.ProductId).Instock);
                Response.Write("<script LANGUAGE='JavaScript' >alert('" + ProductsDB.GetProducts(item.ProductId).Name + " has only " + item.Quantity.ToString()+ " left')</script>");
                price = 0;
                foreach (BasketItem items in Basket.Instance.Items)
                {
                    price += items.Quantity * (int)items.UnitPrice;
                }
                lbTotaltext.Text = "€" + price.ToString();
                return;
            }
        }
        if (price == 0)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('You have nothing need a payment!')</script>");
            return;
        }
        List<Customers> customerList =  CustomersDB.GetCustomers();
        Customers customer = new Customers();
        foreach (Customers cus in customerList)
        {
            if (cus.Email == Session["AccountEmail"].ToString())
            {
                customer = cus;
            }
        }
        price += Convert.ToInt16(customer.Spent);
        CustomersDB.UpdateSpent(price.ToString(), Session["AccountEmail"].ToString());
        Basket.Instance.Items.Clear();
        Response.Redirect("WelcomeBack.aspx");
    }
}