import 'package:samplebloc/models/product.dart';

class Cart {
  int id;
  Product product;
  int quantity;

  Cart(this.product, this.quantity);
}
