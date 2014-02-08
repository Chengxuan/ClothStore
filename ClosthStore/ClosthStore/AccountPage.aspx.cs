using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccountPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["AccountEmail"] != null)
        {
            Session["AccountEmail"] = Application["AccountEmail"];
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["AccountEmail"] = null;
        Application["AccountEmail"] = null;
        Response.Redirect("Default.aspx");
    }
}