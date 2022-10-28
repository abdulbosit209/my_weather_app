
import 'package:json_annotation/json_annotation.dart';

part 'current_sys.g.dart';

@JsonSerializable(explicitToJson: true)
class CurrentWeatherSys {

  @JsonKey(defaultValue: 0, name: "type")
  int type;

  @JsonKey(defaultValue: 0, name: "id")
  int id;

  @JsonKey(defaultValue: 0, name: "sunrise")
  int sunrise;

  @JsonKey(defaultValue: 0, name: "sunset")
  int sunset;

  @JsonKey(defaultValue: "", name: "country")
  String country;


  CurrentWeatherSys({
    required this.sunset,
    required this.sunrise,
    required this.id,
    required this.country,
    required this.type
  });

  factory CurrentWeatherSys.fromJson(Map<String, dynamic> json) => _$CurrentWeatherSysFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherSysToJson(this);
}
