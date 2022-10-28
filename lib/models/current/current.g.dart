// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      id: json['id'] as int? ?? 0,
      timezone: json['timezone'] as int? ?? 0,
      clouds:
          CurrentWeatherClouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as int? ?? 0,
      visibility: json['visibility'] as int? ?? 0,
      main: CurrentWeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      name: json['name'] as String? ?? '',
      base: json['base'] as String? ?? '',
      cod: json['cod'] as int? ?? 0,
      coord:
          CurrentWeatherCoords.fromJson(json['coord'] as Map<String, dynamic>),
      sys: CurrentWeatherSys.fromJson(json['sys'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      wind: CurrentWeatherWind.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
      'dt': instance.dt,
      'visibility': instance.visibility,
      'base': instance.base,
      'weather': instance.weather,
      'coord': instance.coord,
      'main': instance.main,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'sys': instance.sys,
    };
