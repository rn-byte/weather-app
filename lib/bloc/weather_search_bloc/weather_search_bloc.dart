import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:weather_app/Services/api_search_services.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_event.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_state.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherSearchBloc extends Bloc<WeatherSearchEvent, WeatherSearchState> {
  final ApiSearchServices _apiSearchServices = ApiSearchServices();
  WeatherSearchBloc() : super(const WeatherSearchState()) {
    on<FetchSearchWeatherEvent>(_fetchSearchData);
  }

  Future<void> _fetchSearchData(
      FetchSearchWeatherEvent event, Emitter<WeatherSearchState> emit) async {
    emit(WeatherLoading());
    try {
      final response =
          await _apiSearchServices.getSearchedWeatherdData(event.location);
      if (response.statusCode == 200) {
        WeatherModel weatherModel =
            WeatherModel.fromJson(jsonDecode(response.body));
        emit(WeatherSuccess(weatherModel));
      } else if (response.statusCode == 404) {
        final data = jsonDecode(response.body);
        emit(WeatherFailure(data['message']));
      } else if (response.statusCode == 429) {
        emit(const WeatherFailure('Limit Crossed'));
      } else {
        emit(WeatherFailure(
            'Unknown Error : Status Code = ${response.statusCode}'));
      }
    } catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }
}
