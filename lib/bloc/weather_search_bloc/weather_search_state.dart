part of 'weather_search_bloc.dart';

class WeatherSearchState extends Equatable {
  final String text;
  final List? suggestionList;
  const WeatherSearchState({
    this.suggestionList,
    this.text = '',
  });

  WeatherSearchState copyWith({List? suggestionList, String? text}) {
    return WeatherSearchState(
        suggestionList: suggestionList ?? this.suggestionList,
        text: text ?? this.text);
  }

  @override
  List<Object?> get props => [suggestionList, text];
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
