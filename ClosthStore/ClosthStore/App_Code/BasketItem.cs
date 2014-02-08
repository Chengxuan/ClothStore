using System;

public class BasketItem : IEquatable<BasketItem>{
    public int Quantity { get; set; }
    private string _productId;
    public string ProductId {
        get { return _productId; }
        set {_product = null;_productId = value;}
    }

    private Product _product = null;
    public Product Prod {
        get {if (_product == null) {_product = new Product(ProductId);}
            return _product;
        }
    }


    public string ImageFile
    {
        get { return Prod.ImageFile; }
    }
    public string Name {
        get { return Prod.Name; }
    }

    public decimal UnitPrice {
        get { return Prod.Price; }
    }

    public decimal TotalPrice {
        get { return UnitPrice * Quantity; }
    }

    public BasketItem(string productId) {
        this.ProductId = productId;
    }
    public bool Equals(BasketItem item) {
        return item.ProductId == this.ProductId;
    }
}
