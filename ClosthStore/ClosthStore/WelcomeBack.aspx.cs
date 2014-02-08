using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WelcomeBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         //System.Threading.Thread.Sleep(5000);
        Page.Header.Controls.Add(new LiteralControl("<meta http-equiv='refresh' content='3; url=Default.aspx'/>"));  
    }
}