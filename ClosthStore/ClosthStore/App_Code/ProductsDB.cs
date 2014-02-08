using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

/// <summary>
/// Summary description for ProductsDB
/// </summary>
public class ProductsDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static Products GetProducts(string productID)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT ProductID,Name,ImageFile,UnitPrice,Instock " +
            "FROM Products WHERE ProductID=@ProductID ORDER BY ProductID";
        SqlCommand cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("ProductID", productID);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Products product= new Products();
        while (dr.Read())
        {
            product = new Products();
            product.ProductID = dr["ProductID"].ToString();
            product.Name = dr["Name"].ToString();
            product.ImageFile = dr["ImageFile"].ToString();
            product.UnitPrice = dr["UnitPrice"].ToString();
            product.Instock = dr["Instock"].ToString();
        }

        dr.Close();
        return product;
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["WhiskeyConnectionString"].ConnectionString;
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int UpdateProducts(string productID,string instock)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string upd = "UPDATE Products " +
            " SET Instock = @Instock " +
            " WHERE ProductID = @ProductID";
        SqlCommand cmd = new SqlCommand(upd, con);
        cmd.Parameters.AddWithValue("ProductID", productID);
        cmd.Parameters.AddWithValue("Instock",instock);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }

}