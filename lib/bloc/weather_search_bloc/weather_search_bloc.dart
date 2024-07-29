import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:weather_app/data/newtork/api_search_services.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/model/weather_model.dart';
part 'weather_search_event.dart';
part 'weather_search_state.dart';

class WeatherSearchBloc extends Bloc<WeatherSearchEvent, WeatherSearchState> {
  final List<dynamic>? sugList = [];
  final ApiSearchServices _apiSearchServices = ApiSearchServices();
  WeatherSearchBloc() : super(const WeatherSearchState()) {
    on<FetchSearchWeatherEvent>(_fetchSearchData);
    on<SearchChangeEvent>(_onSearchChange);
    on<Fetch7daysForecastEvent>(_fetch7daysForecast);
  }

  Future<void> _fetchSearchData(
      FetchSearchWeatherEvent event, Emitter<WeatherSearchState> emit) async {
    emit(WeatherLoading());
    // print('Event Location : ${event.location}');

    if (event.location != '') {
      await _apiSearchServices
          .getSearchedWeatherdData(event.location)
          .then((value) {
        //print(value);
        emit(WeatherSuccess(WeatherModel.fromJson(jsonDecode(value.body))));
      }).onError((error, stackTrace) {
        //print(stackTrace);
        //print(error);
        emit(WeatherFailure(error.toString()));
      });
    } else {
      emit(const WeatherFailure('Enter Location To Search'));
    }
  }

  void _onSearchChange(
      SearchChangeEvent event, Emitter<WeatherSearchState> emit) async {
    await _apiSearchServices.fetchCitySuggestionData(event.stext).then((value) {
      emit(state.copyWith(suggestionList: value));
    }).onError((error, stackTrace) {
      emit(const WeatherFailure('Location not found'));
    });
  }

  Future<void> _fetch7daysForecast(
      Fetch7daysForecastEvent event, Emitter<WeatherSearchState> emit) async {
    emit(WeatherLoading());
    // print('Event Location : ${event.location}');

    await _apiSearchServices
        .get7daysForecastdData(event.location)
        .then((value) {
      //print(value.body);
      emit(WeatherSuccess(WeatherModel.fromJson(jsonDecode(value.body))));
    }).onError((error, stackTrace) {
      // print(stackTrace);
      // print(error);
      emit(WeatherFailure(error.toString()));
    });
  }
}
