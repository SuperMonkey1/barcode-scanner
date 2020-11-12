import 'package:flutter_template/model/webservice/product/product.dart';
import 'package:flutter_template/styles/theme_durations.dart';
import 'package:flutter_template/util/api/dummy_api_util.dart';
import 'package:flutter_template/webservice/product/product_service.dart';

class ProductDummyService extends ProductService {
  final products = <Product>[];

  @override
  Future<List<Product>> getProducts() async {
    await Future<void>.delayed(ThemeDurations.demoNetworkCallDuration());
    if (products.isEmpty) {
      final result = await DummyApiUtil.getResponse<List<Map<String, dynamic>>>('products');
      final newProducts = result.map((item) => Product.fromJson(item)).toList();
      products.addAll(newProducts);
    }
    return products;
  }
}
