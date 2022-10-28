

import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {

  @JsonKey(defaultValue: "", name: "country_name")
  String countryName;

  @JsonKey(defaultValue: "", name: "country_code")
  String countryCode;

  @JsonKey(defaultValue: "", name: "capital")
  String capital;

  @JsonKey(defaultValue: 0, name: "regioons_count")
  int regionsCount;

  @JsonKey(defaultValue: "", name: "population_count")
  String populationCount;

  @JsonKey(defaultValue: "", name: "flag_image")
  String flagImage;



  Country({
    required this.capital,
    required this.countryCode,
    required this.countryName,
    required this.flagImage,
    required this.populationCount,
    required this.regionsCount,
  });

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}



/*
      {
      "country_name": "Uzbekistan",
      "country_code": "UZ",
      "capital": "Tashkent",
      "regioons_count": 12,
      "population_count": "37 million",
      "flag_image": "http://tfi.uz/photos/1/photos/flag-1024x512.jpg"
      }
 */