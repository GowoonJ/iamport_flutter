import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:iamport_flutter/model/pg/naver/naver_products.dart';

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoProducts implements NaverProducts {
  String? id;
  String? merchantProductId;
  String? ecMallProductId;
  String? name;
  int? basePrice;
  String? taxType;
  int? quantity;
  String? infoUrl;
  String? imageUrl;
  String? giftName;
  List<NaverCoOption>? options;
  NaverCoShipping? shipping;
  List<NaverCoSupplement>? supplements;

  NaverCoProducts({
    this.id,
    this.merchantProductId,
    this.ecMallProductId,
    this.name,
    this.basePrice,
    this.taxType,
    this.quantity,
    this.infoUrl,
    this.imageUrl,
    this.giftName,
    this.options,
    this.shipping,
    this.supplements,
  });
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoOption {
  int? optionQuantity;
  int? optionPrice;
  String? selectionCode;
  List<NaverCoOptionItem>? selections;
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoOptionItem {
  String? code;
  String? label;
  String? value;

  NaverCoOptionItem({
    this.code,
    this.label,
    this.value,
  });
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoSupplement {
  String? id;
  String? name;
  int? price;
  int? quantity;

  NaverCoSupplement({
    this.id,
    this.name,
    this.price,
    this.quantity,
  });
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoShipping {
  String? groupId;
  String? method;
  int? baseFee;
  String? feePayType;
  NaverCoFeeRule? feeRule;

  NaverCoShipping({
    this.groupId,
    this.method,
    this.baseFee,
    this.feePayType,
    this.feeRule,
  });
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoFeeRule {
  int? freeByThreshold;
  int? repeatByQty;
  List<NaverCoFeeRangeByQty>? rangesByQty;
  List<NaverCoFeeAreaByQty>? surchargesByArea;

  NaverCoFeeRule({
    this.freeByThreshold,
    this.repeatByQty,
    this.rangesByQty,
    this.surchargesByArea,
  });
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoFeeRangeByQty {
  int? from;
  int? surcharge;

  NaverCoFeeRangeByQty({
    this.from,
    this.surcharge,
  });
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class NaverCoFeeAreaByQty {
  List<String>? from;
  int? surcharge;

  NaverCoFeeAreaByQty({
    this.from,
    this.surcharge,
  });
}
