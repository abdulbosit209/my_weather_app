import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_weather_app/api/api.provider.dart';
import 'package:my_weather_app/screens/weakly_weather/widgets/description.dart';
import 'package:my_weather_app/screens/weakly_weather/widgets/hourly_weather.dart';
import 'package:my_weather_app/screens/weakly_weather/widgets/weather_week.dart';

import '../../models/one_call/one_call_data.dart';

class WeaklyWeather extends StatefulWidget {
  const WeaklyWeather({Key? key, required this.lat, required this.lon})
      : super(key: key);

  final double lat;
  final double lon;

  @override
  State<WeaklyWeather> createState() => _WeaklyWeatherState();
}

class _WeaklyWeatherState extends State<WeaklyWeather> {
  DateFormat formater = DateFormat.yMMMMd();
  DateFormat formaterHour = DateFormat.Hm();
  DateFormat formaterDay = DateFormat.EEEE();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xFFFEEBCF),
            Color(0xFFFCD6B5),
            Color(0xFFF9BA8A),
            Color(0xFFFDD3B0),
            Color(0xFFFEBD88)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Next 7 Days",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 25, color: Colors.black),
          ),
        ),
        body: FutureBuilder<OneCallData>(
          future: ApiProvider.getOneCallByLatLong(
              latitude: widget.lat, longitude: widget.lon),
          builder: (BuildContext context, AsyncSnapshot<OneCallData> snap) {
            if (snap.hasData) {
              var oneCallData = snap.data!;
              return Column(
                children: [
                  Expanded(
                    flex: 17,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          DescriptionWeather(
                              timezone: oneCallData.timezone,
                              sunRise: formaterHour.format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                      oneCallData.daily[1].sunrise * 1000)),
                              sunSet: formaterHour.format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                      oneCallData.daily[1].sunset * 1000)),
                              tempDay: "${oneCallData.daily[1].temp.day}",
                              tempNight: "${oneCallData.daily[1].temp.night}",
                              weatherDescription:
                                  oneCallData.daily[1].weather[0].description),
                          const SizedBox(height: 20),
                          Expanded(
                            child: ListView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                WeatherWeek(
                                  dayTemp: oneCallData.daily[2].temp.day,
                                  imageIcon:
                                      "http://openweathermap.org/img/wn/${oneCallData.daily[2].weather[0].icon}@2x.png",
                                  formatDay: formaterDay.format(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          oneCallData.daily[2].dt * 1000)),
                                ),
                                const SizedBox(height: 10),
                                WeatherWeek(
                                  dayTemp: oneCallData.daily[3].temp.day,
                                  imageIcon:
                                      "http://openweathermap.org/img/wn/${oneCallData.daily[3].weather[0].icon}@2x.png",
                                  formatDay: formaterDay.format(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          oneCallData.daily[3].dt * 1000)),
                                ),
                                const SizedBox(height: 10),
                                WeatherWeek(
                                  dayTemp: oneCallData.daily[4].temp.day,
                                  imageIcon:
                                      "http://openweathermap.org/img/wn/${oneCallData.daily[4].weather[0].icon}@2x.png",
                                  formatDay: formaterDay.format(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          oneCallData.daily[4].dt * 1000)),
                                ),
                                const SizedBox(height: 10),
                                WeatherWeek(
                                  dayTemp: oneCallData.daily[5].temp.day,
                                  imageIcon:
                                      "http://openweathermap.org/img/wn/${oneCallData.daily[5].weather[0].icon}@2x.png",
                                  formatDay: formaterDay.format(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          oneCallData.daily[5].dt * 1000)),
                                ),
                                const SizedBox(height: 10),
                                WeatherWeek(
                                  dayTemp: oneCallData.daily[6].temp.day,
                                  imageIcon:
                                      "http://openweathermap.org/img/wn/${oneCallData.daily[6].weather[0].icon}@2x.png",
                                  formatDay: formaterDay.format(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          oneCallData.daily[6].dt * 1000)),
                                ),
                                const SizedBox(height: 10),
                                WeatherWeek(
                                  dayTemp: oneCallData.daily[7].temp.day,
                                  imageIcon:
                                      "http://openweathermap.org/img/wn/${oneCallData.daily[7].weather[0].icon}@2x.png",
                                  formatDay: formaterDay.format(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          oneCallData.daily[7].dt * 1000)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          oneCallData.hourly.length,
                          (index) => HourlyWeather(
                            tempHourly: oneCallData.hourly[index].temp,
                            hour: formaterHour.format(
                              DateTime.fromMillisecondsSinceEpoch(
                                  oneCallData.hourly[index].dt * 1000),
                            ),
                            image:
                                "http://openweathermap.org/img/wn/${oneCallData.hourly[index].weather[0].icon}@2x.png",
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            } else if (snap.hasError) {
              return const Center(child: Text("Error occurred"));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
