
import 'package:json_annotation/json_annotation.dart';

part 'current_main.g.dart';

@JsonSerializable(explicitToJson: true)
class CurrentWeatherMain{

  @JsonKey(defaultValue: 0.0, name: "temp")
  double temp;

  @JsonKey(defaultValue: 0.0, name: "feels_like")
  double feelsLike;

  @JsonKey(defaultValue: 0.0, name: "temp_min")
  double tempMin;

  @JsonKey(defaultValue: 0.0, name: "temp_max")
  double tempMax;

  @JsonKey(defaultValue: 0, name: "pressure")
  int pressure;

  @JsonKey(defaultValue: 0, name: "humidity")
  int humidity;


  CurrentWeatherMain({
    required this.feelsLike,
    required this.humidity,
    required this.pressure,
    required this.temp,
    required this.tempMax,
    required this.tempMin
  });

  factory CurrentWeatherMain.fromJson(Map<String, dynamic> json) => _$CurrentWeatherMainFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherMainToJson(this);
}


/*
"main": {
        "temp": 309.12,
        "feels_like": 307.3,
        "temp_min": 309.12,
        "temp_max": 309.12,
        "pressure": 1006,
        "humidity": 20
    },
 */