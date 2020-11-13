import 'package:flutter_template/model/webservice/product/product.dart';

// ignore: one_member_abstracts
abstract class ProductService {
  Future<Product> getProduct();
}
