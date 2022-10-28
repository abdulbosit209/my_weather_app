
import 'package:json_annotation/json_annotation.dart';

part 'temp.g.dart';

@JsonSerializable(explicitToJson: true)
class Temp {

  @JsonKey(defaultValue: 0.0, name: "day")
  double day;

  @JsonKey(defaultValue: 0.0, name: "min")
  double min;

  @JsonKey(defaultValue: 0.0, name: "max")
  double max;

  @JsonKey(defaultValue: 0.0, name: "night")
  double night;

  @JsonKey(defaultValue: 0.0, name: "eve")
  double eve;

  @JsonKey(defaultValue: 0.0, name: "morn")
  double morn;



  Temp({
    required this.night,
    required this.morn,
    required this.eve,
    required this.day,
    required this.max,
    required this.min,
  });

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
  Map<String, dynamic> toJson() => _$TempToJson(this);
}

/*
"temp": {
                "day": 36.26,
                "min": 25.4,
                "max": 36.55,
                "night": 28.77,
                "eve": 35.57,
                "morn": 25.41
            },
 */