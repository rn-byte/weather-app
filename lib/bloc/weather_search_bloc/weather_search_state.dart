part of 'weather_search_bloc.dart';

class WeatherSearchState extends Equatable {
  const WeatherSearchState();
  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherSearchState {}

class WeatherLoading extends WeatherSearchState {}

class WeatherFailure extends WeatherSearchState {
  final String error;
  const WeatherFailure(this.error);

  @override
  List<Object> get props => [error];
}

final class WeatherSuccess extends WeatherSearchState {
  final WeatherModel weatherModel;

  const WeatherSuccess(this.weatherModel);
  @override
  List<Object> get props => [weatherModel];
}
