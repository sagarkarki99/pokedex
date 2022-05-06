// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonViewModelTearOff {
  const _$PokemonViewModelTearOff();

  _PokemonViewModel call(
      {required int id,
      required String idString,
      required String name,
      required String power,
      required String svgUrl,
      Color bgColor = AppColors.waterBackground}) {
    return _PokemonViewModel(
      id: id,
      idString: idString,
      name: name,
      power: power,
      svgUrl: svgUrl,
      bgColor: bgColor,
    );
  }
}

/// @nodoc
const $PokemonViewModel = _$PokemonViewModelTearOff();

/// @nodoc
mixin _$PokemonViewModel {
  int get id => throw _privateConstructorUsedError;
  String get idString => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get power => throw _privateConstructorUsedError;
  String get svgUrl => throw _privateConstructorUsedError;
  Color get bgColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonViewModelCopyWith<PokemonViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonViewModelCopyWith<$Res> {
  factory $PokemonViewModelCopyWith(
          PokemonViewModel value, $Res Function(PokemonViewModel) then) =
      _$PokemonViewModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String idString,
      String name,
      String power,
      String svgUrl,
      Color bgColor});
}

/// @nodoc
class _$PokemonViewModelCopyWithImpl<$Res>
    implements $PokemonViewModelCopyWith<$Res> {
  _$PokemonViewModelCopyWithImpl(this._value, this._then);

  final PokemonViewModel _value;
  // ignore: unused_field
  final $Res Function(PokemonViewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idString = freezed,
    Object? name = freezed,
    Object? power = freezed,
    Object? svgUrl = freezed,
    Object? bgColor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idString: idString == freezed
          ? _value.idString
          : idString // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      power: power == freezed
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String,
      svgUrl: svgUrl == freezed
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bgColor: bgColor == freezed
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$PokemonViewModelCopyWith<$Res>
    implements $PokemonViewModelCopyWith<$Res> {
  factory _$PokemonViewModelCopyWith(
          _PokemonViewModel value, $Res Function(_PokemonViewModel) then) =
      __$PokemonViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String idString,
      String name,
      String power,
      String svgUrl,
      Color bgColor});
}

/// @nodoc
class __$PokemonViewModelCopyWithImpl<$Res>
    extends _$PokemonViewModelCopyWithImpl<$Res>
    implements _$PokemonViewModelCopyWith<$Res> {
  __$PokemonViewModelCopyWithImpl(
      _PokemonViewModel _value, $Res Function(_PokemonViewModel) _then)
      : super(_value, (v) => _then(v as _PokemonViewModel));

  @override
  _PokemonViewModel get _value => super._value as _PokemonViewModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? idString = freezed,
    Object? name = freezed,
    Object? power = freezed,
    Object? svgUrl = freezed,
    Object? bgColor = freezed,
  }) {
    return _then(_PokemonViewModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idString: idString == freezed
          ? _value.idString
          : idString // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      power: power == freezed
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String,
      svgUrl: svgUrl == freezed
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bgColor: bgColor == freezed
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_PokemonViewModel implements _PokemonViewModel {
  _$_PokemonViewModel(
      {required this.id,
      required this.idString,
      required this.name,
      required this.power,
      required this.svgUrl,
      this.bgColor = AppColors.waterBackground});

  @override
  final int id;
  @override
  final String idString;
  @override
  final String name;
  @override
  final String power;
  @override
  final String svgUrl;
  @JsonKey()
  @override
  final Color bgColor;

  @override
  String toString() {
    return 'PokemonViewModel(id: $id, idString: $idString, name: $name, power: $power, svgUrl: $svgUrl, bgColor: $bgColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonViewModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idString, idString) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.power, power) &&
            const DeepCollectionEquality().equals(other.svgUrl, svgUrl) &&
            const DeepCollectionEquality().equals(other.bgColor, bgColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idString),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(power),
      const DeepCollectionEquality().hash(svgUrl),
      const DeepCollectionEquality().hash(bgColor));

  @JsonKey(ignore: true)
  @override
  _$PokemonViewModelCopyWith<_PokemonViewModel> get copyWith =>
      __$PokemonViewModelCopyWithImpl<_PokemonViewModel>(this, _$identity);
}

abstract class _PokemonViewModel implements PokemonViewModel {
  factory _PokemonViewModel(
      {required int id,
      required String idString,
      required String name,
      required String power,
      required String svgUrl,
      Color bgColor}) = _$_PokemonViewModel;

  @override
  int get id;
  @override
  String get idString;
  @override
  String get name;
  @override
  String get power;
  @override
  String get svgUrl;
  @override
  Color get bgColor;
  @override
  @JsonKey(ignore: true)
  _$PokemonViewModelCopyWith<_PokemonViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
