using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

/// <summary>
/// Summary description for CustomersDB
/// </summary>
public static class CustomersDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Customers> GetCustomers()
    {
        List<Customers> cumstomerList = new System.Collections.Generic.List<Customers>();
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT Email,Name,PassWord,Address,CardNo,CardName,Spent,PhoneNumber,ExpireDate " +
            "FROM Customers ORDER BY Email";
        SqlCommand cmd = new SqlCommand(sel, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Customers customer;
        while (dr.Read())
        {
            customer = new Customers();
            customer.Email = dr["Email"].ToString();
            customer.Name = dr["Name"].ToString();
            customer.PassWord = dr["PassWord"].ToString();
            customer.Address = dr["Address"].ToString();
            customer.CardNo = dr["CardNo"].ToString();
            customer.CardName = dr["CardName"].ToString();
            customer.Spent = dr["Spent"].ToString();
            customer.PhoneNumber = dr["PhoneNumber"].ToString();
            customer.ExpireDate = dr["ExpireDate"].ToString();
            cumstomerList.Add(customer);
        }
        dr.Close();
        return cumstomerList;
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["WhiskeyConnectionString"].ConnectionString;
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static int InsertCustomer(Customers customer)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string ins = "INSERT INTO Customers" +
            " (Email,Name,PassWord,Address,CardNo,CardName,Spent,PhoneNumber,ExpireDate) " +
            " VALUES(@Email,@Name,@PassWord,@Address,@CardNo,@CardName,@Spent,@PhoneNumber,@ExpireDate)";
        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.Parameters.AddWithValue("Email", customer.Email);
        cmd.Parameters.AddWithValue("Name", customer.Name);
        cmd.Parameters.AddWithValue("PassWord", customer.PassWord);
        cmd.Parameters.AddWithValue("Address", customer.Address);
        cmd.Parameters.AddWithValue("CardNo", customer.CardNo);
        cmd.Parameters.AddWithValue("CardName", customer.CardName);
        cmd.Parameters.AddWithValue("Spent", customer.Spent);
        cmd.Parameters.AddWithValue("PhoneNumber", customer.PhoneNumber);
        cmd.Parameters.AddWithValue("ExpireDate", customer.ExpireDate);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int UpdateSpent(string spent,string email)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string upd = "UPDATE Customers " +
            " SET Spent = @Spent " +
            " WHERE Email = @Email";
        SqlCommand cmd = new SqlCommand(upd, con);
        cmd.Parameters.AddWithValue("Spent", spent);
        cmd.Parameters.AddWithValue("Email", email);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }


}