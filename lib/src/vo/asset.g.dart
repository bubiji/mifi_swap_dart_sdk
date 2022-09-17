// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      id: json['id'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      symbol: json['symbol'] as String?,
      chainId: json['chain_id'] as String,
      chain: ChainAsset.fromJson(json['chain'] as Map<String, dynamic>),
      extra: json['extra'] as String?,
    );

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'price': instance.price,
      'symbol': instance.symbol,
      'chain_id': instance.chainId,
      'chain': instance.chain,
      'extra': instance.extra,
    };

AssetExtra _$AssetExtraFromJson(Map<String, dynamic> json) => AssetExtra(
      circulation: json['circulation'] as String,
      explorer: json['explorer'] as String,
      intro: (json['intro'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      issue: json['issue'] as String,
      name: json['name'] as String,
      total: json['total'] as String,
      website: json['website'] as String,
    );

Map<String, dynamic> _$AssetExtraToJson(AssetExtra instance) =>
    <String, dynamic>{
      'circulation': instance.circulation,
      'explorer': instance.explorer,
      'intro': instance.intro,
      'issue': instance.issue,
      'name': instance.name,
      'total': instance.total,
      'website': instance.website,
    };

AssetList _$AssetListFromJson(Map<String, dynamic> json) => AssetList(
      assets: (json['assets'] as List<dynamic>)
          .map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssetListToJson(AssetList instance) => <String, dynamic>{
      'assets': instance.assets,
    };
