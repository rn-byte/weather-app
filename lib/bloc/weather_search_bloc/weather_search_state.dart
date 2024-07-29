part of 'weather_search_bloc.dart';

class WeatherSearchState extends Equatable {
  final String text;
  const WeatherSearchState({this.text = ''});

  WeatherSearchState copyWith({String? text}) {
    return WeatherSearchState(text: text ?? this.text);
  }

  @override
  List<Object> get props => [text];
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
