
import 'package:json_annotation/json_annotation.dart';
import 'package:my_weather_app/models/one_call/daily/temp.dart';

import '../hourly_item/weather.dart';
import 'feels_like.dart';

part 'daily.g.dart';

@JsonSerializable(explicitToJson: true)
class Daily {

  @JsonKey(defaultValue: 0, name: "dt")
  int dt;

  @JsonKey(defaultValue: 0, name: "sunrise")
  int sunrise;

  @JsonKey(defaultValue: 0, name: "sunset")
  int sunset;

  @JsonKey(defaultValue: 0, name: "moonrise")
  int moonrise;

  @JsonKey(defaultValue: 0, name: "moonset")
  int moonset;

  @JsonKey(defaultValue: 0.0, name: "moon_phase")
  double moonPhase;

  @JsonKey(defaultValue: 0, name: "pressure")
  int pressure;

  @JsonKey(defaultValue: 0, name: "humidity")
  int humidity;

  @JsonKey(defaultValue: 0.0, name: "dew_point")
  double dewPoint;

  @JsonKey(defaultValue: 0.0, name: "wind_speed")
  double windSpeed;

  @JsonKey(defaultValue: 0, name: "wind_deg")
  int windDeg;

  @JsonKey(defaultValue: 0.0, name: "wind_gust")
  double windGust;

  @JsonKey(defaultValue: 0, name: "clouds")
  int clouds;

  @JsonKey(defaultValue: 0.0, name: "pop")
  double pop;

  @JsonKey(defaultValue: 0.0, name: "uvi")
  double uvi;

  @JsonKey(name: "temp")
  Temp temp;

  @JsonKey(name: "feels_like")
  FeelsLike feelsLike;

  @JsonKey(defaultValue: [], name: "weather")
  List<Weather> weather;

  Daily({
    required this.windSpeed,
    required this.windGust,
    required this.windDeg,
    required this.uvi,
    required this.temp,
    required this.pressure,
    required this.humidity,
    required this.feelsLike,
    required this.weather,
    required this.dt,
    required this.dewPoint,
    required this.clouds,
    required this.pop,
    required this.moonPhase,
    required this.moonrise,
    required this.moonset,
    required this.sunrise,
    required this.sunset
  });

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}
