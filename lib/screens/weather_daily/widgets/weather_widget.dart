

import 'package:flutter/material.dart';

class WeatherDaily extends StatelessWidget {
  const WeatherDaily({Key? key, required this.weatherName, required this.dayFormat, required this.iconWeather, required this.weatherTemp, required this.weatherText, required this.weatherSpeed, required this.humidity}) : super(key: key);

  final String weatherName; // currentWeather.name
  final String dayFormat; // formater.format(DateTime.fromMillisecondsSinceEpoch(currentWeather.dt * 1000))
  final String iconWeather; // "http://openweathermap.org/img/wn/${currentWeather.weather[0].icon}@2x.png"
  final double weatherTemp; // (currentWeather.main.temp - 273).truncate()
  final String weatherText; // currentWeather.weather[0].main
  final double weatherSpeed; // currentWeather.wind.speed
  final int humidity; // ((currentWeather.main.humidity).truncate())

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(weatherName, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
            Text(dayFormat),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(iconWeather),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: (weatherTemp.truncate()).toString(),
                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 30, color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(text: '°', ),
                          TextSpan(text: 'c',style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),
                    Text(weatherText, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFFDECDA),
                        Color(0xFFFCDBC1),
                        Color(0xFFF7D2B4),
                      ]
                  )
              ),
              child: Row(
                children: [
                  Image.network(iconWeather, height: 60, width: 60,),
                  const SizedBox(width: 10),
                  Text(weatherText, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                  const Expanded(child: SizedBox()),
                  Text("${weatherTemp.truncate().toString()} c", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFFDECDA),
                        Color(0xFFFCDBC1),
                        Color(0xFFF7D2B4),
                      ]
                  )
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/vector.png"),
                  const SizedBox(width: 10),
                  const Text("Wind", style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                  const Expanded(child: SizedBox()),
                  Text("$weatherSpeed km/h", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFFDECDA),
                        Color(0xFFFCDBC1),
                        Color(0xFFF7D2B4),
                      ]
                  )
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/water.png"),
                  const SizedBox(width: 10),
                  const Text("Humidity", style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                  const Expanded(child: SizedBox()),
                  Text("${humidity.toString()} %", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
