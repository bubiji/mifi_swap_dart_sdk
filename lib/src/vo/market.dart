import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'market.g.dart';

@JsonSerializable()
class Market with EquatableMixin {
  Market({
    required this.date,
    required this.ts,
    required this.value,
    required this.volume,
  });

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  String date;
  int ts;
  String value;
  String volume;

  Map<String, dynamic> toJson() => _$MarketToJson(this);

  @override
  List<Object?> get props => [date, ts, value, volume];
}
