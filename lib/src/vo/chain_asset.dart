import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chain_asset.g.dart';

@JsonSerializable()
class ChainAsset with EquatableMixin {
  ChainAsset({
    required this.id,
    required this.logo,
    required this.name,
    required this.price,
    required this.symbol,
    required this.extra,
  });
  factory ChainAsset.fromJson(Map<String, dynamic> json) =>
      _$ChainAssetFromJson(json);

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
  @JsonKey(name: 'extra')
  String? extra;

  Map<String, dynamic> toJson() => _$ChainAssetToJson(this);

  @override
  List<Object?> get props => [
        id,
        logo,
        name,
        price,
        symbol,
        extra,
      ];
}
