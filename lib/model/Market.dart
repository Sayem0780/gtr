import 'package:gtr/model/ProductList.dart';

import 'PageInfo.dart';

class Market {
  Market({
    required this.success,
    required this.error,
    required this.pageInfo,
  }) : productList = [];

  late int success;
  late bool error;
  late List<ProductList> productList;
  late PageInfo pageInfo;

  Market.fromJson(dynamic json) {
    success = json['Success'];
    error = json['error']!;
    if (json['ProductList'] != null) {
      productList = [];
      json['ProductList'].forEach((v) {
        productList.add(ProductList.fromJson(v));
      });
    }
    pageInfo = (json['PageInfo'] != null ? PageInfo.fromJson(json['PageInfo']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Success'] = success;
    map['error'] = error;
    if (productList != null) {
      map['ProductList'] = productList.map((v) => v.toJson()).toList();
    }
    if (pageInfo != null) {
      map['PageInfo'] = pageInfo.toJson();
    }
    return map;
  }

}