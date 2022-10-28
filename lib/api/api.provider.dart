import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as https;
import 'package:my_weather_app/models/country/country.dart';
import '../models/current/current.dart';
import '../models/one_call/one_call_data.dart';
import '../utils/constant.dart';

class ApiProvider{

  static Future<Current> getCurrentWeatherByText({
    required String searchText,
  }) async {
    try {
      Response response = await https.get(
        Uri.parse("https://api.openweathermap.org/data/2.5/weather?appid=70f6229e1204202889d756d173e1754b&q=$searchText"),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return Current.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    } finally {}
  }

  static Future<Current> getCurrentWeatherByLatLong({
    required double latitude,
    required double longitude,
  }) async {
    try {
      var queryParams = {
        "lat": latitude.toString(),
        "lon": longitude.toString(),
        "appid": API_KEY,
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/weather", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return Current.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    } finally {}
  }

  static Future<OneCallData> getOneCallByLatLong({
    required double latitude,
    required double longitude,
  }) async {
    try {
      Response response = await https.get(
        Uri.parse("https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitude&units=metric&exclude=minutely,current&appid=70f6229e1204202889d756d173e1754b"),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return OneCallData.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    } finally {}
  }

  static Future<Country> getCountryData() async {
    try{
      Response response = await https.get(Uri.parse("https://easyenglishuzb.free.mockoapp.net/country/UZ"));
      if(response.statusCode == 200){
        return Country.fromJson(jsonDecode(response.body));
      }else{
        throw Exception();
      }
    }catch(e){
      print(e);
      throw Exception(e);
    }
  }
}