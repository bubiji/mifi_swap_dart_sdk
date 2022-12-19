// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String,
      amount: json['amount'] as String,
      state: json['state'] as String,
      fillAmount: json['fill_amount'] as String,
      fillAssetId: json['fill_asset_id'] as String,
      payAmount: json['pay_amount'] as String,
      payAssetId: json['pay_asset_id'] as String,
      followId: json['follow_id'] as String,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'state': instance.state,
      'fill_amount': instance.fillAmount,
      'pay_amount': instance.payAmount,
      'fill_asset_id': instance.fillAssetId,
      'follow_id': instance.followId,
      'pay_asset_id': instance.payAssetId,
    };
