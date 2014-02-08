using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    public HyperLink hyperlink1
    {
        get { return hylAccount; }
        set { hylAccount = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["AccountEmail"] != null || Session["AccountEmail"] != null)
        {
            //hyperlink to Account Page
            hylAccount.NavigateUrl = "~/AccountPage.aspx";
        }
        else
        {
            //hyperlink to LoginPage
            hylAccount.NavigateUrl = "~/Login.aspx";
        }
    }
}
