// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherSys _$CurrentWeatherSysFromJson(Map<String, dynamic> json) =>
    CurrentWeatherSys(
      sunset: json['sunset'] as int? ?? 0,
      sunrise: json['sunrise'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      country: json['country'] as String? ?? '',
      type: json['type'] as int? ?? 0,
    );

Map<String, dynamic> _$CurrentWeatherSysToJson(CurrentWeatherSys instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'country': instance.country,
    };
