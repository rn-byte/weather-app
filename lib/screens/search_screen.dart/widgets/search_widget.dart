import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_bloc.dart';
import 'package:weather_app/data/newtork/api_search_services.dart';

class SearchWidget extends StatefulWidget {
  // final VoidCallback onPressed;
  const SearchWidget({
    super.key,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController controller = TextEditingController();
  late WeatherSearchBloc _weatherSearchBloc;
  @override
  void initState() {
    _weatherSearchBloc = WeatherSearchBloc();
    super.initState();
  }

  @override
  void dispose() {
    _weatherSearchBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: BlocBuilder<WeatherSearchBloc, WeatherSearchState>(
        buildWhen: (previous, current) =>
            current.suggestionList != previous.suggestionList,
        bloc: _weatherSearchBloc,
        builder: (context, state) {
          return TypeAheadField(
            hideOnLoading: true,
            hideOnEmpty: true,
            hideOnSelect: true,
            decorationBuilder: (context, child) {
              return Material(
                type: MaterialType.transparency,
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent,
                child: child,
              );
            },
            suggestionsCallback: (search) async =>
                await ApiSearchServices().fetchCitySuggestionData(search),
            builder: (context, controller, focusNode) {
              return TextField(
                controller: controller,
                focusNode: focusNode,
                autofocus: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                    hintText: 'Enter Location to Search',
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    )),
                onChanged: (value) {
                  _weatherSearchBloc.add(SearchChangeEvent(value));
                },
              );
            },
            itemBuilder: (BuildContext context, suggestion) {
              return ListTile(
                title: Text(suggestion['name']),
                subtitle: Text(suggestion['country']),
              );
            },
            onSelected: (suggestion) {
              context
                  .read<WeatherSearchBloc>()
                  .add(FetchSearchWeatherEvent(suggestion['name']));
              controller.text = suggestion['name'];
            },
          );
        },
      ),
    );
  }
}
