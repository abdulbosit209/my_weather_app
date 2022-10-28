import 'package:json_annotation/json_annotation.dart';
import 'package:my_weather_app/models/one_call/hourly_item/weather.dart';

part 'hourly_item.g.dart';

@JsonSerializable(explicitToJson: true)
class HourlyItem {

  @JsonKey(defaultValue: 0, name: "dt")
  int dt;

  @JsonKey(defaultValue: 0.0, name: "temp")
  double temp;

  @JsonKey(defaultValue: 0.0, name: "feels_like")
  double feelsLike;

  @JsonKey(defaultValue: 0, name: "pressure")
  int pressure;

  @JsonKey(defaultValue: 0, name: "humidity")
  int humidity;

  @JsonKey(defaultValue: 0.0, name: "dew_point")
  double dewPoint;

  @JsonKey(defaultValue: 0.0, name: "uvi")
  double uvi;

  @JsonKey(defaultValue: 0, name: "clouds")
  int clouds;

  @JsonKey(defaultValue: 0, name: "visibility")
  int visibility;

  @JsonKey(defaultValue: 0.0, name: "wind_speed")
  double windSpeed;

  @JsonKey(defaultValue: 0, name: "wind_deg")
  int windDeg;

  @JsonKey(defaultValue: 0.0, name: "wind_gust")
  double windGust;

  @JsonKey(defaultValue: 0.0, name: "pop")
  double pop;

  @JsonKey(defaultValue: [], name: "weather")
  List<Weather> weather;

  HourlyItem({
    required this.pop,
    required this.clouds,
    required this.dewPoint,
    required this.dt,
    required this.weather,
    required this.feelsLike,
    required this.humidity,
    required this.pressure,
    required this.temp,
    required this.uvi,
    required this.visibility,
    required this.windDeg,
    required this.windGust,
    required this.windSpeed
  });

  factory HourlyItem.fromJson(Map<String, dynamic> json) => _$HourlyItemFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyItemToJson(this);
}
