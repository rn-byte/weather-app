part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final Position position;
  const FetchWeather(this.position);
  @override
  List<Object> get props => [position];
}

class FetchSearchWeatherEvent extends WeatherEvent {
  final String location;
  const FetchSearchWeatherEvent(this.location);
  @override
  List<Object> get props => [location];
}
