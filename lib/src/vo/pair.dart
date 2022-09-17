import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pair.g.dart';

@JsonSerializable()
class Pair with EquatableMixin {
  Pair({
    required this.baseAmount,
    required this.baseAssetId,
    required this.baseValue,
    required this.baseVolume24h,
    required this.fee24h,
    required this.feePercent,
    required this.liquidity,
    required this.liquidityAssetId,
    required this.maxLiquidity,
    required this.quoteAmount,
    required this.quoteAssetId,
    required this.quoteValue,
    required this.quoteVolume24h,
    required this.routeId,
    required this.swapMethod,
    required this.transactionCount24h,
    required this.version,
    required this.volume24h,
  });

  factory Pair.fromJson(Map<String, dynamic> json) => _$PairFromJson(json);

  @JsonKey(name: 'base_amount')
  String baseAmount;
  @JsonKey(name: 'base_asset_id')
  String baseAssetId;
  @JsonKey(name: 'base_value')
  String baseValue;
  @JsonKey(name: 'base_volume_24h')
  String baseVolume24h;
  @JsonKey(name: 'fee_24h')
  String fee24h;
  @JsonKey(name: 'fee_percent')
  String feePercent;
  @JsonKey(name: 'liquidity')
  String liquidity;
  @JsonKey(name: 'liquidity_asset_id')
  String liquidityAssetId;
  @JsonKey(name: 'max_liquidity')
  String maxLiquidity;
  @JsonKey(name: 'quote_amount')
  String quoteAmount;
  @JsonKey(name: 'quote_asset_id')
  String quoteAssetId;
  @JsonKey(name: 'quote_value')
  String quoteValue;
  @JsonKey(name: 'quote_volume_24h')
  String quoteVolume24h;
  @JsonKey(name: 'route_id')
  int? routeId;
  @JsonKey(name: 'swap_method')
  String? swapMethod;
  @JsonKey(name: 'transaction_count_24h')
  int? transactionCount24h;
  @JsonKey(name: 'version')
  int? version;
  @JsonKey(name: 'volume_24h')
  String volume24h;

  Map<String, dynamic> toJson() => _$PairToJson(this);

  @override
  List<Object?> get props => [
        baseAmount,
        baseAssetId,
        baseValue,
        baseVolume24h,
        fee24h,
        feePercent,
        liquidity,
        liquidityAssetId,
        maxLiquidity,
        quoteAmount,
        quoteAssetId,
        quoteValue,
        quoteVolume24h,
        routeId,
        swapMethod,
        transactionCount24h,
        version,
        volume24h,
      ];
}

@JsonSerializable()
class PairList with EquatableMixin {
  PairList({
    required this.pairs,
    required this.pairCount,
    required this.transactionCount24h,
    required this.volume24h,
    required this.fee24h,
    required this.ts,
  });

  factory PairList.fromJson(Map<String, dynamic> json) =>
      _$PairListFromJson(json);

  List<Pair> pairs;

  @JsonKey(name: 'pair_count')
  int? pairCount;

  @JsonKey(name: 'transaction_count_24h')
  int? transactionCount24h;

  @JsonKey(name: 'volume_24h')
  String? volume24h;
  @JsonKey(name: 'fee_24h')
  String? fee24h;
  int ts;

  Map<String, dynamic> toJson() => _$PairListToJson(this);

  @override
  List<Object?> get props => [
        pairs,
        pairCount,
        transactionCount24h,
        volume24h,
        fee24h,
        ts,
      ];
}
