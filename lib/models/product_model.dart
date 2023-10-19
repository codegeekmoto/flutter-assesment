class ProductModel {
  final String name;
  final double price;

  ProductModel(this.name, this.price);
}

final List<ProductModel> productData = [
  ProductModel('Smartphone', 12000),
  ProductModel('Laptop', 60000),
  ProductModel('Headphones', 3000),
  ProductModel('Tablet', 7000),
  ProductModel('Smartwatch', 1500),
];
