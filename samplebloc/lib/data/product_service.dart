import 'package:samplebloc/models/product.dart';

class ProductService {
  static List<Product> products = new List<Product>();

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Asus Laptop", 6000.0));
    products.add(new Product(2, "Vestel TV", 2000.0));
    products.add(new Product(3, "Xiaomi Phone", 3500.0));

    return products;
  }
}
