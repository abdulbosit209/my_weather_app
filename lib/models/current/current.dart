
import 'package:json_annotation/json_annotation.dart';
import 'package:my_weather_app/models/current/current_sys.dart';
import 'package:my_weather_app/models/current/current_wind.dart';
import 'package:my_weather_app/models/one_call/hourly_item/weather.dart';

import 'current_clouds.dart';
import 'current_coords.dart';
import 'current_main.dart';

part 'current.g.dart';

@JsonSerializable()
class Current {

  @JsonKey(defaultValue: 0, name: "timezone")
  int timezone;

  @JsonKey(defaultValue: 0, name: "id")
  int id;

  @JsonKey(defaultValue: "", name: "name")
  String name;

  @JsonKey(defaultValue: 0, name: "cod")
  int cod;

  @JsonKey(defaultValue: 0, name: "dt")
  int dt;

  @JsonKey(defaultValue: 0, name: "visibility")
  int visibility;

  @JsonKey(defaultValue: "", name: "base")
  String base;

  @JsonKey(defaultValue: [], name: "weather")
  List<Weather> weather;

  @JsonKey( name: "coord")
  CurrentWeatherCoords coord;

  @JsonKey( name: "main")
  CurrentWeatherMain main;

  @JsonKey( name: "wind")
  CurrentWeatherWind wind;

  @JsonKey( name: "clouds")
  CurrentWeatherClouds clouds;

  @JsonKey( name: "sys")
  CurrentWeatherSys sys;


  Current({
    required this.id,
    required this.timezone,
    required this.clouds,
    required this.dt,
    required this.visibility,
    required this.main,
    required this.name,
    required this.base,
    required this.cod,
    required this.coord,
    required this.sys,
    required this.weather,
    required this.wind
  });

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

//flutter pub run build_runner build