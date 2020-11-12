import 'package:dio/dio.dart';
import 'package:flutter_template/model/webservice/product/product.dart';
import 'package:flutter_template/webservice/product/product_service.dart';
import 'package:retrofit/retrofit.dart';

part 'product_webservice.g.dart';

@RestApi()
abstract class ProductWebService extends ProductService {
  factory ProductWebService(Dio dio) = _ProductWebService;

  @override
  @GET('/todos')
  Future<List<Product>> getProducts();
}
