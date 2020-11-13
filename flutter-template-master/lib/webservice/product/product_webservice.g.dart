// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_webservice.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ProductWebService implements ProductWebService {
  _ProductWebService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Product> getProduct() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/prx/product/B2C/nl_NL/CONSUMER/products/6912660PH.summary',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = Product.fromJson(_result.data);
    return value;
  }
}
