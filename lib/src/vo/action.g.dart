// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Action _$ActionFromJson(Map<String, dynamic> json) => Action(
      action: json['action'] as String,
      code: json['code'] as String,
      codeUrl: json['code_url'] as String,
      followId: json['follow_id'] as String,
    );

Map<String, dynamic> _$ActionToJson(Action instance) => <String, dynamic>{
      'action': instance.action,
      'code': instance.code,
      'code_url': instance.codeUrl,
      'follow_id': instance.followId,
    };
