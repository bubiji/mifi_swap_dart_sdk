// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      amount: json['amount'] as String,
      baseAmount: json['base_amount'] as String,
      baseAssetId: json['base_asset_id'] as String,
      createdAt: json['created_at'] as String,
      feeAmount: json['fee_amount'] as String,
      feeAssetId: json['fee_asset_id'] as String,
      feeValue: json['fee_value'] as String,
      filledAssetId: json['filled_asset_id'] as String,
      followId: json['follow_id'] as String,
      funds: json['funds'] as String,
      id: json['id'] as String,
      liquidity: json['liquidity'] as String,
      payAssetId: json['pay_asset_id'] as String,
      quoteAmount: json['quote_amount'] as String,
      quoteAssetId: json['quote_asset_id'] as String,
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'base_amount': instance.baseAmount,
      'base_asset_id': instance.baseAssetId,
      'created_at': instance.createdAt,
      'fee_amount': instance.feeAmount,
      'fee_asset_id': instance.feeAssetId,
      'fee_value': instance.feeValue,
      'filled_asset_id': instance.filledAssetId,
      'follow_id': instance.followId,
      'funds': instance.funds,
      'id': instance.id,
      'liquidity': instance.liquidity,
      'pay_asset_id': instance.payAssetId,
      'quote_amount': instance.quoteAmount,
      'quote_asset_id': instance.quoteAssetId,
      'type': instance.type,
      'value': instance.value,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      hasNext: json['has_next'] as bool,
      nextCursor: json['next_cursor'] as String,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'has_next': instance.hasNext,
      'next_cursor': instance.nextCursor,
    };

TransactionList _$TransactionListFromJson(Map<String, dynamic> json) =>
    TransactionList(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionListToJson(TransactionList instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'transactions': instance.transactions,
    };
