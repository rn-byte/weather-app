import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    @JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson) Coord? coord,
    @JsonKey(fromJson: Weather.fromJsonList, toJson: Weather.toJsonList)
    List<Weather>? weather,
    String? base,
    @JsonKey(fromJson: Main.fromJson, toJson: Main.toJson) Main? main,
    int? visibility,
    @JsonKey(fromJson: Wind.fromJson, toJson: Wind.toJson) Wind? wind,
    @JsonKey(fromJson: Clouds.fromJson, toJson: Clouds.toJson) Clouds? clouds,
    int? dt,
    @JsonKey(fromJson: Sys.fromJson, toJson: Sys.toJson) Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherModel;
  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

class Coord with _$Coord {
  factory Coord({
    double? lon,
    double? lat,
  }) = _Coord;
  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

class Weather with _$Weather {
  factory Weather({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _Weather;
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  static List<Weather>? fromJsonList(List<dynamic>? json) =>
      json?.map((e) => Weather.fromJson(e as Map<String, dynamic>)).toList();

  static List<Map<String, dynamic>>? toJsonList(List<Weather>? list) =>
      list?.map((e) => e.toJson()).toList();
}

class Main with _$Main {
  factory Main({
    double? temp,
    @JsonKey(name: 'feels_like') double? feelsLike,
    @JsonKey(name: 'temp_min') double? tempMin,
    @JsonKey(name: 'temp_max') double? tempMax,
    int? pressure,
    int? humidity,
    @JsonKey(name: 'sea_level') int? seaLevel,
    @JsonKey(name: 'grnd_level') int? grndLevel,
  }) = _Main;
  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}

class Wind with _$Wind {
  factory Wind({
    double? speed,
    int? deg,
  }) = _Wind;
  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}

class Clouds with _$Clouds {
  factory Clouds({
    int? all,
  }) = _Clouds;
  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

class Sys with _$Sys {
  factory Sys({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) = _Sys;
  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}
