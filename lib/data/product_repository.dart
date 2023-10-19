import 'package:flutter_app/models/product_model.dart';

class ProductRepository {
  List<ProductModel> getProducts() {
    return productData;
  }

  List<ProductModel> getProductsByPriceRange(int minPrice, int maxPrice) {
    return productData.where((product) {
      return product.price >= minPrice && product.price <= maxPrice;
    }).toList();
  }

  List<ProductModel> getDiscountedProducts(int percentage) {
    return productData.map((product) {
      double discountedPrice =
          product.price - (product.price * percentage / 100);
      return ProductModel(product.name, discountedPrice);
    }).toList();
  }
}
