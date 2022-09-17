import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable()
class Auth with EquatableMixin {
  Auth({
    required this.scope,
    required this.token,
  });

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  @JsonKey(name: 'scope')
  String scope;
  @JsonKey(name: 'token')
  String token;

  Map<String, dynamic> toJson() => _$AuthToJson(this);

  @override
  List<Object?> get props => [scope, token];
}
