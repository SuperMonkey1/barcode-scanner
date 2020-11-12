// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) {
  return Price(
    displayPriceType: json['displayPriceType'] as String,
    productPrice: (json['productPrice'] as num)?.toDouble(),
    displayPrice: (json['displayPrice'] as num)?.toDouble(),
    retailPrice: (json['retailPrice'] as num)?.toDouble(),
    formattedPrice: json['formattedPrice'] as String,
    formattedDisplayPrice: json['formattedDisplayPrice'] as String,
    formattedRetailPrice: json['formattedRetailPrice'] as String,
    currencyCode: json['currencyCode'] as String,
    isPreOrder: json['isPreOrder'] as bool,
    isBackOrder: json['isBackOrder'] as bool,
  );
}

Map<String, dynamic> _$PriceToJson(Price instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayPriceType', instance.displayPriceType);
  writeNotNull('productPrice', instance.productPrice);
  writeNotNull('displayPrice', instance.displayPrice);
  writeNotNull('retailPrice', instance.retailPrice);
  writeNotNull('formattedPrice', instance.formattedPrice);
  writeNotNull('formattedDisplayPrice', instance.formattedDisplayPrice);
  writeNotNull('formattedRetailPrice', instance.formattedRetailPrice);
  writeNotNull('currencyCode', instance.currencyCode);
  writeNotNull('isPreOrder', instance.isPreOrder);
  writeNotNull('isBackOrder', instance.isBackOrder);
  return val;
}
