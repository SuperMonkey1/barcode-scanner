import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_template/model/webservice/price/price.dart';

part 'product_data.g.dart';

@JsonSerializable()
class ProductData {
  @JsonKey(name: 'locale', nullable: true, includeIfNull: false)
  final String locale;
  @JsonKey(name: 'ctn', nullable: true, includeIfNull: false)
  final String ctn;
  @JsonKey(name: 'code12NC', nullable: true, includeIfNull: false)
  final String code12NC;
  @JsonKey(name: 'dtn', nullable: true, includeIfNull: false)
  final String dtn;
  @JsonKey(name: 'leafletUrl', nullable: true, includeIfNull: false)
  final String leafletUrl;
  @JsonKey(name: 'productTitle', nullable: true, includeIfNull: false)
  final String productTitle;
  @JsonKey(name: 'alphanumeric', nullable: true, includeIfNull: false)
  final String alphanumeric;
  @JsonKey(name: 'brandName', nullable: true, includeIfNull: false)
  final String brandName;
  @JsonKey(name: 'productURL', nullable: true, includeIfNull: false)
  final String productURL;
  @JsonKey(name: 'productPagePath', nullable: true, includeIfNull: false)
  final String productPagePath;
  @JsonKey(name: 'categoryPath', nullable: true, includeIfNull: false)
  final String categoryPath;
  @JsonKey(name: 'descriptor', nullable: true, includeIfNull: false)
  final String descriptor;
  @JsonKey(name: 'domain', nullable: true, includeIfNull: false)
  final String domain;
  @JsonKey(name: 'productStatus', nullable: true, includeIfNull: false)
  final String productStatus;
  @JsonKey(name: 'imageURL', nullable: true, includeIfNull: false)
  final String imageURL;
  @JsonKey(name: 'sop', nullable: true, includeIfNull: false)
  final String sop;
  @JsonKey(name: 'somp', nullable: true, includeIfNull: false)
  final String somp;
  @JsonKey(name: 'eop', nullable: true, includeIfNull: false)
  final String eop;
  @JsonKey(name: 'isDeleted', nullable: true, includeIfNull: false)
  final bool isDeleted;
  @JsonKey(name: 'priority', nullable: true, includeIfNull: false)
  final int priority;
  @JsonKey(name: 'price', nullable: true, includeIfNull: false)
  final Price price;
  @JsonKey(name: 'wow', nullable: true, includeIfNull: false)
  final String wow;
  @JsonKey(name: 'marketingStatus', nullable: true, includeIfNull: false)
  final String marketingStatus;
  @JsonKey(name: 'marketingTextHeader', nullable: true, includeIfNull: false)
  final String marketingTextHeader;
  @JsonKey(name: 'subcategory', nullable: true, includeIfNull: false)
  final String subcategory;
  @JsonKey(name: 'versions', nullable: true, includeIfNull: false)
  final List<String> versions;
  @JsonKey(name: 'filterKeys', nullable: true, includeIfNull: false)
  final List<String> filterKeys;

  ProductData({
    this.locale,
    this.ctn,
    this.code12NC,
    this.dtn,
    this.leafletUrl,
    this.productTitle,
    this.alphanumeric,
    this.brandName,
    this.productURL,
    this.productPagePath,
    this.categoryPath,
    this.descriptor,
    this.domain,
    this.productStatus,
    this.imageURL,
    this.sop,
    this.somp,
    this.eop,
    this.isDeleted,
    this.priority,
    this.price,
    this.wow,
    this.marketingStatus,
    this.marketingTextHeader,
    this.subcategory,
    this.versions,
    this.filterKeys,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataToJson(this);

}
