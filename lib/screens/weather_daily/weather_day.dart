import 'package:flutter/material.dart';
import 'package:my_weather_app/api/api.provider.dart';
import 'package:my_weather_app/models/current/current.dart';
import 'package:intl/intl.dart';
import 'package:my_weather_app/screens/weakly_weather/weekly_weather.dart';
import 'package:my_weather_app/screens/weather_daily/widgets/weather_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  DateFormat formater = DateFormat.yMMMMd();

  late Current currentWeather;
  final TextEditingController controllerLocation = TextEditingController();
  bool isLoading = true;

  Future<void> update({required String searchText})async{
    isLoading = true;
    setState((){});
    currentWeather = await ApiProvider.getCurrentWeatherByText(searchText: searchText);
    isLoading = false;
    setState((){});
  }

  @override
  void initState() {
    update(searchText: "Tashkent");
    super.initState();
  }


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
          ]
        )
      ),
      child: Scaffold(

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return WeaklyWeather(lat: currentWeather.coord.lat, lon: currentWeather.coord.lon);
            }));
          },
          label: const Text('More Info'),
          icon: const Icon(Icons.navigation_outlined),
          backgroundColor: Colors.green,
        ),

        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration:  InputDecoration(
                            hintText: "type location",
                            prefixIcon: const Icon(Icons.location_on_outlined),
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          controller: controllerLocation,
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            update(searchText: controllerLocation.text);
                          },
                          icon: const Icon(Icons.search_rounded),)
                    ],
                  ),
                ),

                Expanded(
                    child: isLoading
                        ? const Center(
                      child: CircularProgressIndicator(),
                    )
                        :  WeatherDaily(
                      weatherName: currentWeather.name,
                      weatherSpeed: currentWeather.wind.speed,
                      dayFormat: formater.format(DateTime.fromMillisecondsSinceEpoch(currentWeather.dt * 1000)),
                      weatherTemp: (currentWeather.main.temp - 273),
                      humidity: (currentWeather.main.humidity),
                      weatherText: currentWeather.weather[0].main,
                      iconWeather: "http://openweathermap.org/img/wn/${currentWeather.weather[0].icon}@2x.png",),
                ),
              ],
            ),

          )
        ),
      ),
    );
  }
}
