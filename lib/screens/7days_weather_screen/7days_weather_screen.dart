// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_bloc.dart';

class WeekWeatherScreen extends StatefulWidget {
  final String location;
  const WeekWeatherScreen({super.key, required this.location});

  @override
  State<WeekWeatherScreen> createState() => _WeekWeatherScreenState();
}

class _WeekWeatherScreenState extends State<WeekWeatherScreen> {
  late WeatherSearchBloc _weatherSearchBloc;
  @override
  void initState() {
    _weatherSearchBloc = WeatherSearchBloc();
    _weatherSearchBloc.add(Fetch7daysForecastEvent(widget.location));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('${widget.location}\'s 7 days Weather'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topCenter,
                colors: [
              Colors.black,
              Color.fromARGB(255, 74, 48, 119),
              Color.fromARGB(255, 46, 31, 84),
              Color.fromARGB(255, 39, 22, 68),
              Color.fromARGB(255, 98, 74, 43),
            ])),
        child: BlocProvider(
          create: (context) => _weatherSearchBloc,
          child: BlocBuilder<WeatherSearchBloc, WeatherSearchState>(
            builder: (context, state) {
              if (state is WeatherLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is WeatherFailure) {
                return Center(
                  child: Text(state.error),
                );
              } else if (state is WeatherSuccess) {
                var data = state.weatherModel.forecast!.forecastday;
                return ListView.builder(
                  itemCount: state.weatherModel.forecast!.forecastday!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset('assets/icons/cloudy.png'),
                        title: Text(
                          "${DateFormat('EEEE , MMMM d ').format(data![index].date!)}\n${data[index].day!.avgtempC!.round()} °C",
                          style: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          data[index].day!.condition!.text.toString(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        trailing: Text(
                          "Max : ${data[index].day!.maxtempC!} °C \nMin : ${data[index].day!.mintempC!} °C",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text('Something Went Wrong'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
