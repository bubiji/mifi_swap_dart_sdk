// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtg_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MTGInfo _$MTGInfoFromJson(Map<String, dynamic> json) => MTGInfo(
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      publicKey: json['public_key'] as String,
      threshold: json['threshold'] as int,
    );

Map<String, dynamic> _$MTGInfoToJson(MTGInfo instance) => <String, dynamic>{
      'members': instance.members,
      'public_key': instance.publicKey,
      'threshold': instance.threshold,
    };
