import 'package:equatable/equatable.dart';

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
