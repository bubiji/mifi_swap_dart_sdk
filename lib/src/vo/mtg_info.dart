import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mtg_info.g.dart';

@JsonSerializable()
class MTGInfo with EquatableMixin {
  MTGInfo({
    required this.members,
    required this.publicKey,
    required this.threshold,
  });

  factory MTGInfo.fromJson(Map<String, dynamic> json) =>
      _$MTGInfoFromJson(json);

  @JsonKey(name: 'members')
  List<String> members;
  @JsonKey(name: 'public_key')
  String publicKey;
  @JsonKey(name: 'threshold')
  int threshold;

  Map<String, dynamic> toJson() => _$MTGInfoToJson(this);

  @override
  List<Object?> get props => [
        members,
        publicKey,
        threshold,
      ];
}
