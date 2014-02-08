using System.Collections.Generic;
using System.Web;

public class Basket {
    
    public List<BasketItem> Items { get; private set; }
    

    public static readonly Basket Instance;
    static Basket() {
        if (HttpContext.Current.Session["ShoppingCart"] == null) {
            Instance = new Basket();
            Instance.Items = new List<BasketItem>();
            HttpContext.Current.Session["ShoppingCart"] = Instance;
        } else {
            Instance = (Basket)HttpContext.Current.Session["ShoppingCart"];
        }
    }
    protected Basket() { }


    public void AddItem(string productId) {
        BasketItem newItem = new BasketItem(productId);
        if (Items.Contains(newItem)) {
            foreach (BasketItem item in Items) {
                if (item.Equals(newItem)) {
                    item.Quantity++;
                    return;
                }
            }
        } else {
            newItem.Quantity = 1;
            Items.Add(newItem);
        }
    }

    public void SetItemQuantity(string productId, int quantity) {
        if (quantity == 0)
        {
            RemoveItem(productId);
            return;
        }

        BasketItem updatedItem = new BasketItem(productId);

        foreach (BasketItem item in Items)
        {
            if (item.Equals(updatedItem))
            {
                item.Quantity = quantity;
                return;
            }
        }  
    }

    public void RemoveItem(string productId) {
        BasketItem removedItem = new BasketItem(productId);
        Items.Remove(removedItem);
    }

    public decimal GetSubTotal() {
        decimal subTotal = 0;
        foreach (BasketItem item in Items)
            subTotal += item.TotalPrice;

        return subTotal;
    }
}

