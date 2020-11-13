import 'package:flutter_template/model/webservice/product/product.dart';
import 'package:flutter_template/styles/theme_durations.dart';
import 'package:flutter_template/util/api/dummy_api_util.dart';
import 'package:flutter_template/webservice/product/product_service.dart';

class ProductDummyService extends ProductService {
  Product product;

  @override
  Future<Product> getProduct() async {
    await Future<void>.delayed(ThemeDurations.demoNetworkCallDuration());
    if (product != null) {
      final result = await DummyApiUtil.getResponse<List<Map<String, dynamic>>>('products');
      product = result.map((item) => Product.fromJson(item)).first;
    }
    return product;
  }
}
