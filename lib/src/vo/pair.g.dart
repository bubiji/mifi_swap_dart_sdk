// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pair _$PairFromJson(Map<String, dynamic> json) => Pair(
      baseAmount: json['base_amount'] as String,
      baseAssetId: json['base_asset_id'] as String,
      baseValue: json['base_value'] as String,
      baseVolume24h: json['base_volume_24h'] as String,
      fee24h: json['fee_24h'] as String,
      feePercent: json['fee_percent'] as String,
      liquidity: json['liquidity'] as String,
      liquidityAssetId: json['liquidity_asset_id'] as String,
      maxLiquidity: json['max_liquidity'] as String,
      quoteAmount: json['quote_amount'] as String,
      quoteAssetId: json['quote_asset_id'] as String,
      quoteValue: json['quote_value'] as String,
      quoteVolume24h: json['quote_volume_24h'] as String,
      routeId: json['route_id'] as int?,
      swapMethod: json['swap_method'] as String?,
      transactionCount24h: json['transaction_count_24h'] as int?,
      version: json['version'] as int?,
      volume24h: json['volume_24h'] as String,
    );

Map<String, dynamic> _$PairToJson(Pair instance) => <String, dynamic>{
      'base_amount': instance.baseAmount,
      'base_asset_id': instance.baseAssetId,
      'base_value': instance.baseValue,
      'base_volume_24h': instance.baseVolume24h,
      'fee_24h': instance.fee24h,
      'fee_percent': instance.feePercent,
      'liquidity': instance.liquidity,
      'liquidity_asset_id': instance.liquidityAssetId,
      'max_liquidity': instance.maxLiquidity,
      'quote_amount': instance.quoteAmount,
      'quote_asset_id': instance.quoteAssetId,
      'quote_value': instance.quoteValue,
      'quote_volume_24h': instance.quoteVolume24h,
      'route_id': instance.routeId,
      'swap_method': instance.swapMethod,
      'transaction_count_24h': instance.transactionCount24h,
      'version': instance.version,
      'volume_24h': instance.volume24h,
    };

PairList _$PairListFromJson(Map<String, dynamic> json) => PairList(
      pairs: (json['pairs'] as List<dynamic>)
          .map((e) => Pair.fromJson(e as Map<String, dynamic>))
          .toList(),
      pairCount: json['pair_count'] as int?,
      transactionCount24h: json['transaction_count_24h'] as int?,
      volume24h: json['volume_24h'] as String?,
      fee24h: json['fee_24h'] as String?,
      ts: json['ts'] as int,
    );

Map<String, dynamic> _$PairListToJson(PairList instance) => <String, dynamic>{
      'pairs': instance.pairs,
      'pair_count': instance.pairCount,
      'transaction_count_24h': instance.transactionCount24h,
      'volume_24h': instance.volume24h,
      'fee_24h': instance.fee24h,
      'ts': instance.ts,
    };
