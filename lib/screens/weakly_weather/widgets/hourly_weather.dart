

import 'package:flutter/material.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({Key? key, required this.hour, required this.image, required this.tempHourly }) : super(key: key);

  final String hour; // formaterHour.format(DateTime.fromMillisecondsSinceEpoch(oneCallData.hourly[index].dt * 1000)))
  final String image; // "http://openweathermap.org/img/wn/${oneCallData.hourly[index].weather[0].icon}@2x.png"
  final double tempHourly; // oneCallData.hourly[index].temp

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFEEBCF),
                Color(0xFFFCD6B5),
                Color(0xFFF9BA8A),
                Color(0xFFFDD3B0),
                Color(0xFFFEBD88)
              ]
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(hour),
          Image.network(image),
          Text("${tempHourly.truncate()} °c")
        ],
      ),
    );
  }
}
