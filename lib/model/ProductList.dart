class ProductList {
  ProductList({
    required this.id,
    this.type,
    this.parentCode,
    required this.name,
    required this.code,
    required this.price,
    required this.costPrice,
    required this.unitName,
    required this.categoryName,
    required this.brandName,
    required this.modelName,
    required this.variantName,
    required this.sizeName,
    required this.colorName,
    required this.oldPrice,
    this.imagePath,
    required this.productBarcode,
    required this.description,
    required this.childList,
    required this.warehouseList,
    required this.currentStock,
    required this.createDate,
    required this.updateDate,});

  ProductList.fromJson(dynamic json) {
    id = json['Id'];
    type = json['Type'];
    parentCode = json['ParentCode'];
    name = json['Name'];
    code = json['Code'];
    price = json['Price'];
    costPrice = json['CostPrice'];
    unitName = json['UnitName'];
    categoryName = json['CategoryName'];
    brandName = json['BrandName'];
    modelName = json['ModelName'];
    variantName = json['VariantName'];
    sizeName = json['SizeName'];
    colorName = json['ColorName'];
    oldPrice = json['OldPrice'];
    imagePath = json['ImagePath'];
    productBarcode = json['ProductBarcode'];
    description = json['Description'];
    if (json['ChildList'] != null) {
      childList = [];
      json['ChildList'].forEach((v) {
        childList.add(ProductList.fromJson(v));
      });
    }
    if (json['WarehouseList'] != null) {
      warehouseList = [];
      json['WarehouseList'].forEach((v) {
        warehouseList.add(ProductList.fromJson(v));
      });
    }
    currentStock = json['CurrentStock'];
    createDate = json['CreateDate'];
    updateDate = json['UpdateDate'];
  }
  late int id;
  late dynamic type;
  late dynamic parentCode;
  late String name;
  late String code;
  late double price;
  late double costPrice;
  late String unitName;
  late String categoryName;
  late String brandName;
  late String modelName;
  late String variantName;
  late String sizeName;
  late String colorName;
  late double oldPrice;
  late dynamic imagePath;
  late String productBarcode;
  late String description;
  late List<ProductList> childList;
  late List<ProductList> warehouseList;
  late double currentStock;
  late String createDate;
  late String updateDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Type'] = type;
    map['ParentCode'] = parentCode;
    map['Name'] = name;
    map['Code'] = code;
    map['Price'] = price;
    map['CostPrice'] = costPrice;
    map['UnitName'] = unitName;
    map['CategoryName'] = categoryName;
    map['BrandName'] = brandName;
    map['ModelName'] = modelName;
    map['VariantName'] = variantName;
    map['SizeName'] = sizeName;
    map['ColorName'] = colorName;
    map['OldPrice'] = oldPrice;
    map['ImagePath'] = imagePath;
    map['ProductBarcode'] = productBarcode;
    map['Description'] = description;
    if (childList != null) {
      map['ChildList'] = childList.map((v) => v.toJson()).toList();
    }
    if (warehouseList != null) {
      map['WarehouseList'] = warehouseList.map((v) => v.toJson()).toList();
    }
    map['CurrentStock'] = currentStock;
    map['CreateDate'] = createDate;
    map['UpdateDate'] = updateDate;
    return map;
  }

}


/*        ProductList post = ProductList(
            id: i['id'],
            name: i['name'],
            code: i['code'],
            price: i['price'],
            costPrice: i['costPrice'],
            unitName: i['unitName'],
            categoryName: i['categoryName'],
            brandName: i['brandName'],
            modelName: i['modelName'],
            variantName: i['variantName'],
            sizeName: i['sizeName'],
            colorName: i['colorName'],
            oldPrice: i['oldPrice'],
            productBarcode: i['productBarcode'],
            description: i['description'],
            childList: i['childList'],
            warehouseList: i['warehouseList'],
            currentStock: i['currentStock'],
            createDate: i['createDate'],
            updateDate: i['updateDate']);
        postList.add(post);*/