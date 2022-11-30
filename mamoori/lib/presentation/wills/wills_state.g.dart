// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wills_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WillsState _$$_WillsStateFromJson(Map<String, dynamic> json) =>
    _$_WillsState(
      will: (json['will'] as List<dynamic>)
          .map((e) => Will.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WillsStateToJson(_$_WillsState instance) =>
    <String, dynamic>{
      'will': instance.will,
    };
