import 'package:equatable/equatable.dart';

class Kline with EquatableMixin {
  Kline({
    required this.ts,
    required this.baseQuotePrice,
    required this.quoteBasePrice,
  });

  factory Kline.fromJson(List<dynamic> json) => Kline(
        ts: json[0] as int,
        baseQuotePrice: json[1] as String,
        quoteBasePrice: json[2] as String,
      );

  int ts;
  String baseQuotePrice;
  String quoteBasePrice;

  List<dynamic> toJson() => [ts, baseQuotePrice, quoteBasePrice];

  @override
  List<Object?> get props => [ts, baseQuotePrice, quoteBasePrice];
}
