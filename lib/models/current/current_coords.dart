
import 'package:json_annotation/json_annotation.dart';

part 'current_coords.g.dart';

@JsonSerializable(explicitToJson: true)
class CurrentWeatherCoords {

  @JsonKey(defaultValue: 0.0, name: "lon")
  double lon;

  @JsonKey(defaultValue: 0.0, name: "lat")
  double lat;


  CurrentWeatherCoords({
    required this.lon,
    required this.lat,
  });

  factory CurrentWeatherCoords.fromJson(Map<String, dynamic> json) => _$CurrentWeatherCoordsFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherCoordsToJson(this);
}

