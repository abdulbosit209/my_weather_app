// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      capital: json['capital'] as String? ?? '',
      countryCode: json['country_code'] as String? ?? '',
      countryName: json['country_name'] as String? ?? '',
      flagImage: json['flag_image'] as String? ?? '',
      populationCount: json['population_count'] as String? ?? '',
      regionsCount: json['regioons_count'] as int? ?? 0,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'country_name': instance.countryName,
      'country_code': instance.countryCode,
      'capital': instance.capital,
      'regioons_count': instance.regionsCount,
      'population_count': instance.populationCount,
      'flag_image': instance.flagImage,
    };
