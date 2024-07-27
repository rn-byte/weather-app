import 'package:bloc/bloc.dart';
import 'package:weather_app/Services/api_search_services.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_event.dart';
import 'package:weather_app/bloc/weather_search_bloc/weather_search_state.dart';

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
      if (response.statusCode == 200) {}
    } catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }
}
