// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Market _$MarketFromJson(Map<String, dynamic> json) => Market(
      date: json['date'] as String,
      ts: json['ts'] as int,
      value: json['value'] as String,
      volume: json['volume'] as String,
    );

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
      'date': instance.date,
      'ts': instance.ts,
      'value': instance.value,
      'volume': instance.volume,
    };
