using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasketPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindData();
        Page.Form.DefaultButton = btnCheckout.UniqueID;
    }

    protected void BindData()
    {
        gvShoppingCart.DataSource = Basket.Instance.Items;
        gvShoppingCart.DataBind();
    }

    protected void btnUpdateCart_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow row in gvShoppingCart.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                try
                {
                    string productId = gvShoppingCart.DataKeys[row.RowIndex].Value.ToString();
                    int quantity = int.Parse(((TextBox)row.Cells[1].FindControl("txtQuantity")).Text);
                    Basket.Instance.SetItemQuantity(productId, quantity);
                }
                catch (FormatException)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Quantity Can Only Be Number!')</script>");
                }
            }

        }
        BindData();
    }

    protected void gvShoppingCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            Basket.Instance.RemoveItem(e.CommandArgument.ToString());
        }
        BindData();
    }

    protected void gvShoppingCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total: " + Basket.Instance.GetSubTotal().ToString("C");
        }
    }
    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        if (Session["AccountEmail"] != null)
        {
            Response.Redirect("CheckOutPage.aspx?Back=BasketPage.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx?Back=BasketPage.aspx");
        }
       
    }
}