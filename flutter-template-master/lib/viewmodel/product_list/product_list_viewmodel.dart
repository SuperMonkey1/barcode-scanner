import 'package:flutter/material.dart';
import 'package:flutter_template/model/exceptions/flutter_template_error.dart';
import 'package:flutter_template/model/webservice/product/product.dart';
import 'package:flutter_template/util/locale/localization_keys.dart';
import 'package:flutter_template/util/logger/flutter_template_logger.dart';
import 'package:flutter_template/webservice/product/product_service.dart';

class ProductListViewModel with ChangeNotifier {
  ProductListNavigator _navigator;
  final ProductService _productService;

  var _isLoading = false;
  String _errorKey;
  Product _product;

  bool get isLoading => _isLoading;
  String get errorKey => _errorKey;
  Product get product => _product;

  ProductListViewModel(
    this._productService,
  );

  Future<void> init(ProductListNavigator navigator) async {
    _navigator = navigator;
    _product = await _productService.getProduct();
    notifyListeners();
  }

  Future<void> onDownloadProductClicked() async {
    try {
      _isLoading = true;
      _errorKey = null;
      notifyListeners();

      _product = await _productService.getProduct();
    } catch (e) {
      FlutterTemplateLogger.logError(message: 'failed to get products', error: e);
      if (e is FlutterTemplateError) {
        _errorKey = e.getLocalizedKey();
      } else {
        _errorKey = LocalizationKeys.errorGeneral;
      }
    } finally {
      _isLoading = false;
      print('$_product');
      notifyListeners();
    }
  }
}

abstract class ProductListNavigator {}
