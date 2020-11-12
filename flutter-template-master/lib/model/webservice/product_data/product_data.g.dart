// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData(
    locale: json['locale'] as String,
    ctn: json['ctn'] as String,
    code12NC: json['code12NC'] as String,
    dtn: json['dtn'] as String,
    leafletUrl: json['leafletUrl'] as String,
    productTitle: json['productTitle'] as String,
    alphanumeric: json['alphanumeric'] as String,
    brandName: json['brandName'] as String,
    productURL: json['productURL'] as String,
    productPagePath: json['productPagePath'] as String,
    categoryPath: json['categoryPath'] as String,
    descriptor: json['descriptor'] as String,
    domain: json['domain'] as String,
    productStatus: json['productStatus'] as String,
    imageURL: json['imageURL'] as String,
    sop: json['sop'] as String,
    somp: json['somp'] as String,
    eop: json['eop'] as String,
    isDeleted: json['isDeleted'] as bool,
    priority: json['priority'] as int,
    price: json['price'] == null
        ? null
        : Price.fromJson(json['price'] as Map<String, dynamic>),
    wow: json['wow'] as String,
    marketingStatus: json['marketingStatus'] as String,
    marketingTextHeader: json['marketingTextHeader'] as String,
    subcategory: json['subcategory'] as String,
    versions: (json['versions'] as List)?.map((e) => e as String)?.toList(),
    filterKeys: (json['filterKeys'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ProductDataToJson(ProductData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('ctn', instance.ctn);
  writeNotNull('code12NC', instance.code12NC);
  writeNotNull('dtn', instance.dtn);
  writeNotNull('leafletUrl', instance.leafletUrl);
  writeNotNull('productTitle', instance.productTitle);
  writeNotNull('alphanumeric', instance.alphanumeric);
  writeNotNull('brandName', instance.brandName);
  writeNotNull('productURL', instance.productURL);
  writeNotNull('productPagePath', instance.productPagePath);
  writeNotNull('categoryPath', instance.categoryPath);
  writeNotNull('descriptor', instance.descriptor);
  writeNotNull('domain', instance.domain);
  writeNotNull('productStatus', instance.productStatus);
  writeNotNull('imageURL', instance.imageURL);
  writeNotNull('sop', instance.sop);
  writeNotNull('somp', instance.somp);
  writeNotNull('eop', instance.eop);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('priority', instance.priority);
  writeNotNull('price', instance.price);
  writeNotNull('wow', instance.wow);
  writeNotNull('marketingStatus', instance.marketingStatus);
  writeNotNull('marketingTextHeader', instance.marketingTextHeader);
  writeNotNull('subcategory', instance.subcategory);
  writeNotNull('versions', instance.versions);
  writeNotNull('filterKeys', instance.filterKeys);
  return val;
}
