// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_call_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneCallData _$OneCallDataFromJson(Map<String, dynamic> json) => OneCallData(
      daily: (json['daily'] as List<dynamic>?)
              ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      hourly: (json['hourly'] as List<dynamic>?)
              ?.map((e) => HourlyItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
      timezone: json['timezone'] as String? ?? '',
      timezoneOffset: json['timezone_offset'] as int? ?? 0,
    );

Map<String, dynamic> _$OneCallDataToJson(OneCallData instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
