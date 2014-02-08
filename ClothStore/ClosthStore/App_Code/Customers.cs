using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customers
/// </summary>
public class Customers
{
    public string email;
    public string name;
    public string password;
    public string address;
    public string cardno;
    public string cardname;
    public string spent;
    public string phonenumber;
    public string expiredate;

	public Customers()
	{
	}
    public string Email
    {
        get { return email; }
        set { email = value; }

    }
    public string Name
    {
        get { return name; }
        set { name = value; }

    }
    public string PassWord
    {
        get { return password; }
        set { password = value; }

    }
    public string Address
    {
        get { return address; }
        set { address = value; }

    }
    public string CardNo
    {
        get { return cardno; }
        set { cardno = value; }

    }
    public string CardName
    {
        get { return cardname; }
        set { cardname = value; }

    }
    public string Spent
    {
        get { return spent; }
        set { spent = value; }

    }
    public string PhoneNumber
    {
        get { return phonenumber; }
        set { phonenumber = value; }

    }
    public string ExpireDate
    {
        get { return expiredate; }
        set { expiredate = value; }

    }
}