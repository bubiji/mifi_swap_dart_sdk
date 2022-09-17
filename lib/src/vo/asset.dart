import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import './chain_asset.dart';

part 'asset.g.dart';

@JsonSerializable()
class Asset with EquatableMixin {
  Asset({
    required this.id,
    required this.logo,
    required this.name,
    required this.price,
    required this.symbol,
    required this.chainId,
    required this.chain,
    required this.extra,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'logo')
  String logo;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'price')
  String price;
  @JsonKey(name: 'symbol')
  String? symbol;
  @JsonKey(name: 'chain_id')
  String chainId;
  @JsonKey(name: 'chain')
  ChainAsset chain;
  @JsonKey(name: 'extra')
  String? extra;

  Map<String, dynamic> toJson() => _$AssetToJson(this);

  @override
  List<Object?> get props => [
        id,
        logo,
        name,
        price,
        symbol,
        chainId,
        chain,
        extra,
      ];
}

@JsonSerializable()
class AssetExtra with EquatableMixin {
  AssetExtra({
    required this.circulation,
    required this.explorer,
    required this.intro,
    required this.issue,
    required this.name,
    required this.total,
    required this.website,
  });

  factory AssetExtra.fromJson(Map<String, dynamic> json) =>
      _$AssetExtraFromJson(json);

  String circulation;
  String explorer;
  Map<String, List<String>> intro;
  String issue;
  String name;
  String total;
  String website;

  Map<String, dynamic> toJson() => _$AssetExtraToJson(this);

  @override
  List<Object?> get props => [
        circulation,
        explorer,
        intro,
        issue,
        name,
        total,
        website,
      ];
}

@JsonSerializable()
class AssetList with EquatableMixin {
  AssetList({
    required this.assets,
  });

  factory AssetList.fromJson(Map<String, dynamic> json) =>
      _$AssetListFromJson(json);

  @JsonKey(name: 'assets')
  List<Asset> assets;

  Map<String, dynamic> toJson() => _$AssetListToJson(this);

  @override
  List<Object?> get props => [
        assets,
      ];
}
