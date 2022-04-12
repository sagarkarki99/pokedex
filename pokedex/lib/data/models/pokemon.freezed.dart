// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonTearOff {
  const _$PokemonTearOff();

  _Pokemon call(
      {required int id,
      required String name,
      required int height,
      required int weight,
      required String svgUrl,
      required List<Stat> stats,
      required List<String> types,
      bool isFavourite = false}) {
    return _Pokemon(
      id: id,
      name: name,
      height: height,
      weight: weight,
      svgUrl: svgUrl,
      stats: stats,
      types: types,
      isFavourite: isFavourite,
    );
  }
}

/// @nodoc
const $Pokemon = _$PokemonTearOff();

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get svgUrl => throw _privateConstructorUsedError;
  List<Stat> get stats => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      String svgUrl,
      List<Stat> stats,
      List<String> types,
      bool isFavourite});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? svgUrl = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      svgUrl: svgUrl == freezed
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      String svgUrl,
      List<Stat> stats,
      List<String> types,
      bool isFavourite});
}

/// @nodoc
class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? svgUrl = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_Pokemon(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      svgUrl: svgUrl == freezed
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Pokemon extends _Pokemon {
  _$_Pokemon(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.svgUrl,
      required this.stats,
      required this.types,
      this.isFavourite = false})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final String svgUrl;
  @override
  final List<Stat> stats;
  @override
  final List<String> types;
  @JsonKey()
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight, svgUrl: $svgUrl, stats: $stats, types: $types, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pokemon &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.svgUrl, svgUrl) &&
            const DeepCollectionEquality().equals(other.stats, stats) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(svgUrl),
      const DeepCollectionEquality().hash(stats),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(isFavourite));

  @JsonKey(ignore: true)
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);
}

abstract class _Pokemon extends Pokemon {
  factory _Pokemon(
      {required int id,
      required String name,
      required int height,
      required int weight,
      required String svgUrl,
      required List<Stat> stats,
      required List<String> types,
      bool isFavourite}) = _$_Pokemon;
  _Pokemon._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  String get svgUrl;
  @override
  List<Stat> get stats;
  @override
  List<String> get types;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
