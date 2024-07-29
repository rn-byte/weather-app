import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_bloc.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/screens/search_screen.dart/widgets/search_widget.dart';
import '../home/widgets/widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  WeatherModel weatherModel = WeatherModel();
  late WeatherSearchBloc _weatherSearchBloc;
  @override
  void initState() {
    _weatherSearchBloc = WeatherSearchBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _weatherSearchBloc,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchWidget(),
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                const AlignWidget(
                    h: 300,
                    w: 300,
                    color: Colors.deepPurple,
                    x: 8,
                    y: -0.3,
                    shape: BoxShape.circle),
                const AlignWidget(
                    color: Color(0xFF673AB7),
                    x: -8,
                    y: -0.3,
                    h: 300,
                    w: 300,
                    shape: BoxShape.circle),
                const AlignWidget(
                  color: Color(0xFFFFAB40),
                  x: 0,
                  y: -1.2,
                  h: 300,
                  w: 600,
                  shape: BoxShape.rectangle,
                ),
                const BackdropFilterWidget(
                    x: 100, y: 100, color: Colors.transparent),
                BlocBuilder<WeatherSearchBloc, WeatherSearchState>(
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
                      final location = state.weatherModel.location!;
                      final current = state.weatherModel.current!;
                      final forecast = state.weatherModel.forecast!;
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // TextWidget(
                              //     txt: location.name!, fw: FontWeight.w400),
                              // const SizedBox(
                              //   height: 8,
                              // ),
                              // // TextWidget(
                              // //     txt: state.weather.date!.hour < 12
                              // //         ? 'Good Morning'
                              // //         : state.weather.date!.hour < 18
                              // //             ? 'Good Afternoon'
                              // //             : 'Good Evening',
                              // //     fontSize: 25,
                              // //     fw: FontWeight.bold),

                              // //Image.asset('assets/images/1.png'),
                              // //WeatherImageWidget(code: we![0].id!),
                              // Center(
                              //   child: TextWidget(
                              //       txt: '${current.tempC!.round()} °C',
                              //       fontSize: 55,
                              //       fw: FontWeight.w600),
                              // ),
                              // Center(
                              //   child: TextWidget(
                              //       txt: current.condition!.text!.toUpperCase(),
                              //       fontSize: 25,
                              //       fw: FontWeight.w500),
                              // ),
                              // const SizedBox(
                              //   height: 5,
                              // ),
                              // // Center(
                              // //   child: TextWidget(
                              // //       txt: DateFormat('EEEE dd ,')
                              // //           .add_jm()
                              // //           .format(data.dt as DateTime),
                              // //       // 'Friday 16, 09:41 am',
                              // //       fontSize: 16,
                              // //       fw: FontWeight.w300),
                              // // ),
                              // const SizedBox(
                              //   height: 30,
                              // ),
                              // const Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     // RowColumnWidget(
                              //     //     imageUrl: 'assets/images/11.png',
                              //     //     cTitleFirst: 'Sunrise',
                              //     //     cTitleSecond: DateFormat()
                              //     //         .add_jm()
                              //     //         .format(data.sys!.sunrise as DateTime)),
                              //     // RowColumnWidget(
                              //     //     imageUrl: 'assets/images/12.png',
                              //     //     cTitleFirst: 'Sunset',
                              //     //     cTitleSecond: DateFormat()
                              //     //         .add_jm()
                              //     //         .format(data.sys!.sunset as DateTime)),
                              //   ],
                              // ),
                              // const Padding(
                              //   padding: EdgeInsets.symmetric(vertical: 5.0),
                              //   child: Divider(
                              //     color: Colors.grey,
                              //     thickness: 0.3,
                              //   ),
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     RowColumnWidget(
                              //         imageUrl: 'assets/images/13.png',
                              //         cTitleFirst: 'Temp Max',
                              //         cTitleSecond:
                              //             '${forecast.forecastday![0].day!.maxtempC!.round()} °C'),
                              //     RowColumnWidget(
                              //         imageUrl: 'assets/images/14.png',
                              //         cTitleFirst: 'Temp Min',
                              //         cTitleSecond:
                              //             '${forecast.forecastday![0].day!.mintempC!.round()} °C'),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
