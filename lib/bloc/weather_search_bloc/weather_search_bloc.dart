import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:weather_app/data/newtork/api_search_services.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/model/weather_model.dart';
part 'weather_search_event.dart';
part 'weather_search_state.dart';

class WeatherSearchBloc extends Bloc<WeatherSearchEvent, WeatherSearchState> {
  final ApiSearchServices _apiSearchServices = ApiSearchServices();
  WeatherSearchBloc() : super(const WeatherSearchState()) {
    on<FetchSearchWeatherEvent>(_fetchSearchData);
    on<SearchChangeEvent>(_onSearchChange);
  }

  Future<void> _fetchSearchData(
      FetchSearchWeatherEvent event, Emitter<WeatherSearchState> emit) async {
    emit(WeatherLoading());
    print('Event Location : ${event.location}');

    await _apiSearchServices
        .getSearchedWeatherdData(event.location)
        .then((value) {
      print(value);
      emit(WeatherSuccess(WeatherModel.fromJson(jsonDecode(value.body))));
    }).onError((error, stackTrace) {
      print(stackTrace);
      print(error);
      emit(WeatherFailure(error.toString()));
    });
  }

  void _onSearchChange(
      SearchChangeEvent event, Emitter<WeatherSearchState> emit) {
    print(event.text);
    emit(state.copyWith(text: event.text));
  }
}
