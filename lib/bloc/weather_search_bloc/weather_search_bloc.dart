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
  }

  Future<void> _fetchSearchData(
      FetchSearchWeatherEvent event, Emitter<WeatherSearchState> emit) async {
    emit(WeatherLoading());
    print('Event Location : ${event.location}');
    try {
      final response =
          await _apiSearchServices.getSearchedWeatherdData(event.location);
      print(response.statusCode);
      if (response.statusCode == 200) {
        WeatherModel weatherModel =
            WeatherModel.fromJson(jsonDecode(response.body));
        print(weatherModel.main!.tempMax);
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
      print(e.toString());
      emit(WeatherFailure(e.toString()));
    }
  }
}
