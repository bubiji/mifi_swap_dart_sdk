import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction with EquatableMixin {
  Transaction({
    required this.amount,
    required this.baseAmount,
    required this.baseAssetId,
    required this.createdAt,
    required this.feeAmount,
    required this.feeAssetId,
    required this.feeValue,
    required this.filledAssetId,
    required this.followId,
    required this.funds,
    required this.id,
    required this.liquidity,
    required this.payAssetId,
    required this.quoteAmount,
    required this.quoteAssetId,
    required this.type,
    required this.value,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  String amount;

  @JsonKey(name: 'base_amount')
  String baseAmount;

  @JsonKey(name: 'base_asset_id')
  String baseAssetId;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'fee_amount')
  String feeAmount;

  @JsonKey(name: 'fee_asset_id')
  String feeAssetId;

  @JsonKey(name: 'fee_value')
  String feeValue;

  @JsonKey(name: 'filled_asset_id')
  String filledAssetId;

  @JsonKey(name: 'follow_id')
  String followId;

  String funds;
  String id;
  String liquidity;

  @JsonKey(name: 'pay_asset_id')
  String payAssetId;

  @JsonKey(name: 'quote_amount')
  String quoteAmount;

  @JsonKey(name: 'quote_asset_id')
  String quoteAssetId;

  String type;
  String value;

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  List<Object?> get props => [
        amount,
        baseAmount,
        baseAssetId,
        createdAt,
        feeAmount,
        feeAssetId,
        feeValue,
        filledAssetId,
        followId,
        funds,
        id,
        liquidity,
        payAssetId,
        quoteAmount,
        quoteAssetId,
        type,
        value,
      ];
}

@JsonSerializable()
class Pagination with EquatableMixin {
  Pagination({
    required this.hasNext,
    required this.nextCursor,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  @JsonKey(name: 'has_next')
  bool hasNext;
  @JsonKey(name: 'next_cursor')
  String nextCursor;

  Map<String, dynamic> toJson() => _$PaginationToJson(this);

  @override
  List<Object?> get props => [hasNext, nextCursor];
}

@JsonSerializable()
class TransactionList with EquatableMixin {
  TransactionList({
    required this.transactions,
    required this.pagination,
  });

  factory TransactionList.fromJson(Map<String, dynamic> json) =>
      _$TransactionListFromJson(json);

  Pagination pagination;
  List<Transaction> transactions;

  Map<String, dynamic> toJson() => _$TransactionListToJson(this);

  @override
  List<Object?> get props => [pagination, transactions];
}
