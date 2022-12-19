import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

// action: "3,656e7056-eb28-4bdd-8be1-454e60523e0d,3f91a201-533e-478b-b4b4-a2b136e91008,31d2ea9c-95eb-3355-b65b-ba096853bc18,pR7,43.70993437194"
// amount: "0.00182335"
// asset_id: "c6d0c728-2624-429b-8e0d-d9d19b6592fa"
// broker_id: ""

// https://mtgswap-api.fox.one/api/orders/06ddc36c-d95b-44ee-9a9d-a3795cec8b96

// amount: "43.75368927"
// created_at: "2022-08-12T09:34:18Z"
// fill_amount: "43.75368927"
// fill_asset_id: "31d2ea9c-95eb-3355-b65b-ba096853bc18"
// follow_id: "06ddc36c-d95b-44ee-9a9d-a3795cec8b96"
// funds: "0.00182335"
// id: "70b9de7e-adc4-3cce-8730-429596226785"
// min_amount: "43.70993437"
// pay_amount: "0.00182335"
// pay_asset_id: "c6d0c728-2624-429b-8e0d-d9d19b6592fa"
// route_assets: [
//   "c6d0c728-2624-429b-8e0d-d9d19b6592fa",
//   "31d2ea9c-95eb-3355-b65b-ba096853bc18"
// ]
// routes: "pR7"
// state: "Done"
// transactions: [
//   {
//     amount: "43.75368927"
//     base_amount: "-43.75368927"
//     base_asset_id: "31d2ea9c-95eb-3355-b65b-ba096853bc18"
//     created_at: "2022-08-12T09:34:20Z"
//     fee_amount: "0.00000547"
//     fee_asset_id: "c6d0c728-2624-429b-8e0d-d9d19b6592fa"
//     fee_value: "0.13"
//     filled_asset_id: "31d2ea9c-95eb-3355-b65b-ba096853bc18"
//     follow_id: "06ddc36c-d95b-44ee-9a9d-a3795cec8b96"
//     funds: "0.00182335"
//     id: "70b9de7e-adc4-3cce-8730-429596226785"
//     liquidity: "0"
//     pay_asset_id: "c6d0c728-2624-429b-8e0d-d9d19b6592fa"
//     quote_amount: "0.00182335"
//     quote_asset_id: "c6d0c728-2624-429b-8e0d-d9d19b6592fa"
//     type: "Swap"
//     user_id: "656e7056-eb28-4bdd-8be1-454e60523e0d"
//     value: "44.02"
//   }
// ]
// user_id: "656e7056-eb28-4bdd-8be1-454e60523e0d"

@JsonSerializable()
class Order with EquatableMixin {
  Order({
    required this.id,
    required this.amount,
    required this.state,
    required this.fillAmount,
    required this.fillAssetId,
    required this.payAmount,
    required this.payAssetId,
    required this.followId,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  String id;
  String amount;
  String state;

  @JsonKey(name: 'fill_amount')
  String fillAmount;

  @JsonKey(name: 'pay_amount')
  String payAmount;

  @JsonKey(name: 'fill_asset_id')
  String fillAssetId;

  @JsonKey(name: 'follow_id')
  String followId;

  @JsonKey(name: 'pay_asset_id')
  String payAssetId;

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  List<Object?> get props => [state];
}
