import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'action.g.dart';

class ActionProtoAddLiquidity {
  ActionProtoAddLiquidity({
    required this.receiverId,
    required this.followId,
    required this.assetId,
    required this.slippage,
    required this.timeout,
  });
  String receiverId;
  String followId;
  String assetId;
  String slippage;
  String timeout;
  @override
  String toString() => '1,$receiverId,$followId,$assetId,$slippage,$timeout';
}

class ActionProtoRemoveLiquidity {
  ActionProtoRemoveLiquidity({
    required this.receiverId,
    required this.followId,
  });
  String receiverId;
  String followId;
  @override
  String toString() => '2,{receiverId},{followId}';
}

class ActionProtoSwapCrypto {
  ActionProtoSwapCrypto({
    required this.receiverId,
    required this.followId,
    required this.fillAssetId,
    required this.routes,
    required this.minimum,
  });
  String receiverId;
  String followId;
  String fillAssetId;
  String routes;
  String minimum;
  @override
  String toString() => '3,$receiverId,$followId,$fillAssetId,$routes,$minimum';
}

@JsonSerializable()
class Action with EquatableMixin {
  Action({
    required this.action,
    required this.code,
    required this.codeUrl,
    required this.followId,
  });

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);

  @JsonKey(name: 'action')
  String action;
  @JsonKey(name: 'code')
  String code;
  @JsonKey(name: 'code_url')
  String codeUrl;
  @JsonKey(name: 'follow_id')
  String followId;

  Map<String, dynamic> toJson() => _$ActionToJson(this);

  @override
  List<Object?> get props => [action, code, codeUrl, followId];
}
