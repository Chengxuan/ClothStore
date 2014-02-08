using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["category"] == null)
        {
            Session["category"] = "hd";
        }
        if (Application["AccountEmail"] != null)
        {
            Session["AccountEmail"] = Application["AccountEmail"];
        }
        
        
    }
    protected void btnStore_Command(object sender, CommandEventArgs e)
    {
        switch (e.CommandName.ToString())
        {
            case "hd":
                Session["category"] = "hd";
                break;
            case "ts":
                Session["category"] = "ts";
                break;
            case "tr":
                Session["category"] = "tr";
                break;
            case "sh":
                Session["category"] = "sh";
                break;
            case "uw":
                Session["category"] = "uw";
                break;

        }
    }
    protected void AddButton_Command(object sender, CommandEventArgs e)
    {
        
            foreach (BasketItem item in Basket.Instance.Items)
            {
                if (item.ProductId == e.CommandName)
                {
                    if (item.Quantity < Convert.ToInt16(e.CommandArgument))
                    {
                        Basket.Instance.AddItem(e.CommandName);
                        return;
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('No more In stock!')</script>");
                        return;
                    }
                }
                
            }
            Basket.Instance.AddItem(e.CommandName);
         
        
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        if (Session["AccountEmail"] != null)
        {
            Response.Redirect("CheckOutPage.aspx?Back=Default.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx?Back=Default.aspx");
        }
    }
}