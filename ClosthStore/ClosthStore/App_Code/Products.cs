using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Products
/// </summary>
public class Products
{
    /*
    [ProductID] [char](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](2000) NOT NULL,
	[Colour] [varchar](200) NOT NULL,
	[CategoryID] [varchar](10) NOT NULL,
	[ImageFile] [varchar](30) NULL,
	[UnitPrice] [varchar](30)  NOT NULL,
	[Instock] [int] NOT NULL,
     * */

    private string productID;
    private string name;
    private string imagefile;
    private string unitprice;
    private string instock;
	public Products()
	{
	}

    public string ProductID
    {
        get { return productID; }
        set { productID = value; }

    }
    public string Name
    {
        get { return name; }
        set { name = value; }

    }
    public string ImageFile
    {
        get { return imagefile; }
        set { imagefile = value; }
    }

         public string UnitPrice
    {
        get { return unitprice; }
        set { unitprice = value; }

    }
     public string Instock
    {
        get { return instock; }
        set { instock = value; }

    }

   
}