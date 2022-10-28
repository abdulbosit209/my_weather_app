// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_coords.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherCoords _$CurrentWeatherCoordsFromJson(
        Map<String, dynamic> json) =>
    CurrentWeatherCoords(
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CurrentWeatherCoordsToJson(
        CurrentWeatherCoords instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
