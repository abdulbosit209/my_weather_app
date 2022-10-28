// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      windSpeed: (json['wind_speed'] as num?)?.toDouble() ?? 0.0,
      windGust: (json['wind_gust'] as num?)?.toDouble() ?? 0.0,
      windDeg: json['wind_deg'] as int? ?? 0,
      uvi: (json['uvi'] as num?)?.toDouble() ?? 0.0,
      temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
      pressure: json['pressure'] as int? ?? 0,
      humidity: json['humidity'] as int? ?? 0,
      feelsLike: FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      dt: json['dt'] as int? ?? 0,
      dewPoint: (json['dew_point'] as num?)?.toDouble() ?? 0.0,
      clouds: json['clouds'] as int? ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0.0,
      moonPhase: (json['moon_phase'] as num?)?.toDouble() ?? 0.0,
      moonrise: json['moonrise'] as int? ?? 0,
      moonset: json['moonset'] as int? ?? 0,
      sunrise: json['sunrise'] as int? ?? 0,
      sunset: json['sunset'] as int? ?? 0,
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'uvi': instance.uvi,
      'temp': instance.temp.toJson(),
      'feels_like': instance.feelsLike.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
    };
