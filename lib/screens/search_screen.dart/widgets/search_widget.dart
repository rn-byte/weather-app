import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_bloc.dart';

class SearchWidget extends StatefulWidget {
  // final VoidCallback onPressed;
  const SearchWidget({
    super.key,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textEditingController = TextEditingController();
  late WeatherSearchBloc _weatherSearchBloc;
  @override
  void initState() {
    _weatherSearchBloc = WeatherSearchBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: BlocBuilder<WeatherSearchBloc, WeatherSearchState>(
        bloc: _weatherSearchBloc,
        builder: (context, state) {
          return TextField(
            controller: textEditingController,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      debugPrint(textEditingController.text.toString().trim());
                      context.read<WeatherSearchBloc>().add(
                          FetchSearchWeatherEvent(
                              textEditingController.text.toString().trim()));
                    },
                    icon: const Icon(Icons.search)),
                hintText: 'Enter Location to Search',
                contentPadding: const EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30),
                )),
          );
        },
      ),
    );
  }
}
