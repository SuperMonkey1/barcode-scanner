import 'package:dio/dio.dart';
import 'package:flutter_template/model/webservice/product/product.dart';
import 'package:flutter_template/webservice/product/product_service.dart';
import 'package:retrofit/retrofit.dart';

part 'product_webservice.g.dart';

@RestApi()
abstract class ProductWebService extends ProductService {
  factory ProductWebService(Dio dio) = _ProductWebService;

  @override
  @GET('//prx/product/B2C/nl_NL/CONSUMER/products/6912660PH.summary')
  Future<List<Product>> getProducts();
}
