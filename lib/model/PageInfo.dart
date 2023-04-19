class PageInfo {
  PageInfo({
      required this.pageNo,
      required this.pageSize,
      required this.pageCount,
      required this.totalRecordCount,});

  PageInfo.fromJson(dynamic json) {
    pageNo = json['PageNo'];
    pageSize = json['PageSize'];
    pageCount = json['PageCount'];
    totalRecordCount = json['TotalRecordCount'];
  }
 late int pageNo;
 late int pageSize;
 late int pageCount;
 late int totalRecordCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PageNo'] = pageNo;
    map['PageSize'] = pageSize;
    map['PageCount'] = pageCount;
    map['TotalRecordCount'] = totalRecordCount;
    return map;
  }

}