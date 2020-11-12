import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price {
  @JsonKey(name: 'displayPriceType', nullable: true, includeIfNull: false)
  final String displayPriceType;
  @JsonKey(name: 'productPrice', nullable: true, includeIfNull: false)
  final double productPrice;
  @JsonKey(name: 'displayPrice', nullable: true, includeIfNull: false)
  final double displayPrice;
  @JsonKey(name: 'retailPrice', nullable: true, includeIfNull: false)
  final double retailPrice;
  @JsonKey(name: 'formattedPrice', nullable: true, includeIfNull: false)
  final String formattedPrice;
  @JsonKey(name: 'formattedDisplayPrice', nullable: true, includeIfNull: false)
  final String formattedDisplayPrice;
  @JsonKey(name: 'formattedRetailPrice', nullable: true, includeIfNull: false)
  final String formattedRetailPrice;
  @JsonKey(name: 'currencyCode', nullable: true, includeIfNull: false)
  final String currencyCode;
  @JsonKey(name: 'isPreOrder', nullable: true, includeIfNull: false)
  final bool isPreOrder;
  @JsonKey(name: 'isBackOrder', nullable: true, includeIfNull: false)
  final bool isBackOrder;

  Price({
    this.displayPriceType,
    this.productPrice,
    this.displayPrice,
    this.retailPrice,
    this.formattedPrice,
    this.formattedDisplayPrice,
    this.formattedRetailPrice,
    this.currencyCode,
    this.isPreOrder,
    this.isBackOrder,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);

}
