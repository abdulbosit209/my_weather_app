import 'package:flutter/material.dart';

class DescriptionWeather extends StatelessWidget {
   const DescriptionWeather({
    Key? key,
    required this.timezone,
    required this.sunRise,
    required this.sunSet,
    required this.tempDay,
    required this.tempNight,
    required this.weatherDescription,
  }) : super(key: key);

  final String timezone; // oneCallData.timezone
  final String tempDay; // oneCallData.daily[1].temp.day
  final String tempNight; // oneCallData.daily[1].temp.night
  final String weatherDescription; // oneCallData.daily[1].weather[0].description
  final String sunRise; // formaterHour.format(DateTime.fromMillisecondsSinceEpoch(oneCallData.daily[1].sunrise * 1000))
  final String sunSet; // formaterHour.format(DateTime.fromMillisecondsSinceEpoch(oneCallData.daily[1].sunset * 1000))

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFFEE6D1),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  timezone, // timezone
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const Expanded(child: SizedBox()),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 20),
                child: Text(
                  "Tommorow",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/temp.png",
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      "Temp day",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    tempDay // tempday
                        .toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/temp.png",
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      "Temp night",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    tempNight // tempNight
                        .toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/description.png",
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      "description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    weatherDescription, // weatherDescription
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/sunrise.png",
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      "Sunrise",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    sunRise,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/sunset.png",
                      width: 25,
                      height: 25,
                    ),
                    const Text(
                      "Sunset",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    sunSet,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
