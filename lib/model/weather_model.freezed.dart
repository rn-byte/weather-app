// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson)
  Coord? get coord => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Weather.fromJsonList, toJson: Weather.toJsonList)
  List<Weather>? get weather => throw _privateConstructorUsedError;
  String? get base => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Main.fromJson, toJson: Main.toJson)
  Main? get main => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Wind.fromJson, toJson: Wind.toJson)
  Wind? get wind => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Clouds.fromJson, toJson: Clouds.toJson)
  Clouds? get clouds => throw _privateConstructorUsedError;
  int? get dt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Sys.fromJson, toJson: Sys.toJson)
  Sys? get sys => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson) Coord? coord,
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
      int? cod});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_value.copyWith(
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson) Coord? coord,
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
      int? cod});
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  _$WeatherModelImpl(
      {@JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson) this.coord,
      @JsonKey(fromJson: Weather.fromJsonList, toJson: Weather.toJsonList)
      final List<Weather>? weather,
      this.base,
      @JsonKey(fromJson: Main.fromJson, toJson: Main.toJson) this.main,
      this.visibility,
      @JsonKey(fromJson: Wind.fromJson, toJson: Wind.toJson) this.wind,
      @JsonKey(fromJson: Clouds.fromJson, toJson: Clouds.toJson) this.clouds,
      this.dt,
      @JsonKey(fromJson: Sys.fromJson, toJson: Sys.toJson) this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod})
      : _weather = weather;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  @JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson)
  final Coord? coord;
  final List<Weather>? _weather;
  @override
  @JsonKey(fromJson: Weather.fromJsonList, toJson: Weather.toJsonList)
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? base;
  @override
  @JsonKey(fromJson: Main.fromJson, toJson: Main.toJson)
  final Main? main;
  @override
  final int? visibility;
  @override
  @JsonKey(fromJson: Wind.fromJson, toJson: Wind.toJson)
  final Wind? wind;
  @override
  @JsonKey(fromJson: Clouds.fromJson, toJson: Clouds.toJson)
  final Clouds? clouds;
  @override
  final int? dt;
  @override
  @JsonKey(fromJson: Sys.fromJson, toJson: Sys.toJson)
  final Sys? sys;
  @override
  final int? timezone;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? cod;

  @override
  String toString() {
    return 'WeatherModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      const DeepCollectionEquality().hash(_weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  factory _WeatherModel(
      {@JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson)
      final Coord? coord,
      @JsonKey(fromJson: Weather.fromJsonList, toJson: Weather.toJsonList)
      final List<Weather>? weather,
      final String? base,
      @JsonKey(fromJson: Main.fromJson, toJson: Main.toJson) final Main? main,
      final int? visibility,
      @JsonKey(fromJson: Wind.fromJson, toJson: Wind.toJson) final Wind? wind,
      @JsonKey(fromJson: Clouds.fromJson, toJson: Clouds.toJson)
      final Clouds? clouds,
      final int? dt,
      @JsonKey(fromJson: Sys.fromJson, toJson: Sys.toJson) final Sys? sys,
      final int? timezone,
      final int? id,
      final String? name,
      final int? cod}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  @JsonKey(fromJson: Coord.fromJson, toJson: Coord.toJson)
  Coord? get coord;
  @override
  @JsonKey(fromJson: Weather.fromJsonList, toJson: Weather.toJsonList)
  List<Weather>? get weather;
  @override
  String? get base;
  @override
  @JsonKey(fromJson: Main.fromJson, toJson: Main.toJson)
  Main? get main;
  @override
  int? get visibility;
  @override
  @JsonKey(fromJson: Wind.fromJson, toJson: Wind.toJson)
  Wind? get wind;
  @override
  @JsonKey(fromJson: Clouds.fromJson, toJson: Clouds.toJson)
  Clouds? get clouds;
  @override
  int? get dt;
  @override
  @JsonKey(fromJson: Sys.fromJson, toJson: Sys.toJson)
  Sys? get sys;
  @override
  int? get timezone;
  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get cod;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
