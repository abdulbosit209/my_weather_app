

import 'package:flutter/material.dart';

class WeatherWeek extends StatelessWidget {
  const WeatherWeek({Key? key, required this.formatDay, required this.dayTemp, required this.imageIcon}) : super(key: key);

  final formatDay; // formaterDay.format(DateTime.fromMillisecondsSinceEpoch(oneCallData.daily[2].dt *1000)),
  final dayTemp; // oneCallData.daily[2].temp.day
  final imageIcon;  //"http://openweathermap.org/img/wn/${oneCallData.daily[2].weather[0].icon}@2x.png",


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFFDECDA),
                Color(0xFFFCDBC1),
                Color(0xFFF7D2B4),
              ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          Text(
            formatDay,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          const Expanded(child: SizedBox()),
          Text(
            "${((dayTemp)
                .toString())} °c",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          Image.network(
            imageIcon,
            height: 60,
            width: 60,
          ),
        ],
      ),
    );
  }
}
