using System;
public class Product
{

    public string Id { get; set; }
    public decimal Price { get; set; }
    public string Name { get; set; }
    public string ImageFile { get; set; }

    public Product(string id)
    {
        this.Id = id;
        Products product = new Products();
        product = ProductsDB.GetProducts(id);
        this.Name = product.Name;
        this.ImageFile = product.ImageFile;
        this.Price = Convert.ToDecimal(product.UnitPrice);
    }

}
