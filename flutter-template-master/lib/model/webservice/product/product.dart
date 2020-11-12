import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_template/model/webservice/product_data/product_data.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'succes', nullable: true, includeIfNull: false)
  final bool succes;
  @JsonKey(name: 'data', nullable: true, includeIfNull: false)
  final ProductData data;

  Product({
    this.succes,
    this.data,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

}
