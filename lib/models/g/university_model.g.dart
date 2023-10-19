// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityModel _$$_UniversityModelFromJson(Map<String, dynamic> json) =>
    _$_UniversityModel(
      province: json['state-province'] as String? ?? '',
      name: json['name'] as String? ?? '',
      domains: (json['domains'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UniversityModelToJson(_$_UniversityModel instance) =>
    <String, dynamic>{
      'state-province': instance.province,
      'name': instance.name,
      'domains': instance.domains,
    };
