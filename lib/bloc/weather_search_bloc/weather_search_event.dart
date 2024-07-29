part of 'weather_search_bloc.dart';

abstract class WeatherSearchEvent extends Equatable {
  const WeatherSearchEvent();
  @override
  List<Object?> get props => [];
}

class FetchSearchWeatherEvent extends WeatherSearchEvent {
  final String location;
  const FetchSearchWeatherEvent(this.location);
  @override
  List<Object> get props => [location];
}

class Fetch7daysForecast extends WeatherSearchEvent {
  final String location;
  const Fetch7daysForecast(this.location);
  @override
  List<Object> get props => [location];
}

final class SearchChangeEvent extends WeatherSearchEvent {
  final String text;
  const SearchChangeEvent(this.text);

  @override
  List<Object> get props => [text];
}
