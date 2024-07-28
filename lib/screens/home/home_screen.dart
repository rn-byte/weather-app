import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_bloc/weather_bloc.dart';
import 'package:weather_app/screens/search_screen.dart/search_screen.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          SearchIconWidget(
            onClicked: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ));
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
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
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherSuccess) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                txt: state.weather.areaName.toString(),
                                fw: FontWeight.w400),
                            const SizedBox(
                              height: 8,
                            ),
                            TextWidget(
                                txt: state.weather.date!.hour < 12
                                    ? 'Good Morning'
                                    : state.weather.date!.hour < 18
                                        ? 'Good Afternoon'
                                        : 'Good Evening',
                                fontSize: 25,
                                fw: FontWeight.bold),

                            //Image.asset('assets/images/1.png'),
                            WeatherImageWidget(
                                code: state.weather.weatherConditionCode!),
                            Center(
                              child: TextWidget(
                                  txt:
                                      '${state.weather.temperature!.celsius!.round()} °C',
                                  fontSize: 55,
                                  fw: FontWeight.w600),
                            ),
                            Center(
                              child: TextWidget(
                                  txt: state.weather.weatherMain!.toUpperCase(),
                                  fontSize: 25,
                                  fw: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: TextWidget(
                                  txt: DateFormat('EEEE dd ,')
                                      .add_jm()
                                      .format(state.weather.date!),
                                  // 'Friday 16, 09:41 am',
                                  fontSize: 16,
                                  fw: FontWeight.w300),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RowColumnWidget(
                                    imageUrl: 'assets/images/11.png',
                                    cTitleFirst: 'Sunrise',
                                    cTitleSecond: DateFormat()
                                        .add_jm()
                                        .format(state.weather.sunrise!)),
                                RowColumnWidget(
                                    imageUrl: 'assets/images/12.png',
                                    cTitleFirst: 'Sunset',
                                    cTitleSecond: DateFormat()
                                        .add_jm()
                                        .format(state.weather.sunset!)),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Divider(
                                color: Colors.grey,
                                thickness: 0.3,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RowColumnWidget(
                                    imageUrl: 'assets/images/13.png',
                                    cTitleFirst: 'Temp Max',
                                    cTitleSecond:
                                        '${state.weather.tempMax!.celsius!.round()} °C'),
                                RowColumnWidget(
                                    imageUrl: 'assets/images/14.png',
                                    cTitleFirst: 'Temp Min',
                                    cTitleSecond:
                                        '${state.weather.tempMin!.celsius!.round()} °C'),
                              ],
                            ),
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
    );
  }
}
