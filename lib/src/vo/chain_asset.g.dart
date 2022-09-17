// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChainAsset _$ChainAssetFromJson(Map<String, dynamic> json) => ChainAsset(
      id: json['id'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      symbol: json['symbol'] as String?,
      extra: json['extra'] as String?,
    );

Map<String, dynamic> _$ChainAssetToJson(ChainAsset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'price': instance.price,
      'symbol': instance.symbol,
      'extra': instance.extra,
    };
