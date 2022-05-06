// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonListStateTearOff {
  const _$PokemonListStateTearOff();

  _PokemonListState call(
      {List<Pokemon> pokemons = const [],
      bool hasReachedMax = false,
      StateStatus status = const StateStatus.loading()}) {
    return _PokemonListState(
      pokemons: pokemons,
      hasReachedMax: hasReachedMax,
      status: status,
    );
  }
}

/// @nodoc
const $PokemonListState = _$PokemonListStateTearOff();

/// @nodoc
mixin _$PokemonListState {
  List<Pokemon> get pokemons => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemons, bool hasReachedMax, StateStatus status});

  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  final PokemonListState _value;
  // ignore: unused_field
  final $Res Function(PokemonListState) _then;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }

  @override
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonListStateCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$PokemonListStateCopyWith(
          _PokemonListState value, $Res Function(_PokemonListState) then) =
      __$PokemonListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Pokemon> pokemons, bool hasReachedMax, StateStatus status});

  @override
  $StateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$PokemonListStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements _$PokemonListStateCopyWith<$Res> {
  __$PokemonListStateCopyWithImpl(
      _PokemonListState _value, $Res Function(_PokemonListState) _then)
      : super(_value, (v) => _then(v as _PokemonListState));

  @override
  _PokemonListState get _value => super._value as _PokemonListState;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
  }) {
    return _then(_PokemonListState(
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc

class _$_PokemonListState implements _PokemonListState {
  const _$_PokemonListState(
      {this.pokemons = const [],
      this.hasReachedMax = false,
      this.status = const StateStatus.loading()});

  @JsonKey()
  @override
  final List<Pokemon> pokemons;
  @JsonKey()
  @override
  final bool hasReachedMax;
  @JsonKey()
  @override
  final StateStatus status;

  @override
  String toString() {
    return 'PokemonListState(pokemons: $pokemons, hasReachedMax: $hasReachedMax, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonListState &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pokemons),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$PokemonListStateCopyWith<_PokemonListState> get copyWith =>
      __$PokemonListStateCopyWithImpl<_PokemonListState>(this, _$identity);
}

abstract class _PokemonListState implements PokemonListState {
  const factory _PokemonListState(
      {List<Pokemon> pokemons,
      bool hasReachedMax,
      StateStatus status}) = _$_PokemonListState;

  @override
  List<Pokemon> get pokemons;
  @override
  bool get hasReachedMax;
  @override
  StateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$PokemonListStateCopyWith<_PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StateStatusTearOff {
  const _$StateStatusTearOff();

  Loading loading() {
    return const Loading();
  }

  FetchingMore fetchingMore() {
    return const FetchingMore();
  }

  Loaded loaded() {
    return const Loaded();
  }

  PrimaryError primaryError(String errorMessage) {
    return PrimaryError(
      errorMessage,
    );
  }

  SecondaryError secondaryError(String errorMessage) {
    return SecondaryError(
      errorMessage,
    );
  }
}

/// @nodoc
const $StateStatus = _$StateStatusTearOff();

/// @nodoc
mixin _$StateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() fetchingMore,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) primaryError,
    required TResult Function(String errorMessage) secondaryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Loaded value) loaded,
    required TResult Function(PrimaryError value) primaryError,
    required TResult Function(SecondaryError value) secondaryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateStatusCopyWith<$Res> {
  factory $StateStatusCopyWith(
          StateStatus value, $Res Function(StateStatus) then) =
      _$StateStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateStatusCopyWithImpl<$Res> implements $StateStatusCopyWith<$Res> {
  _$StateStatusCopyWithImpl(this._value, this._then);

  final StateStatus _value;
  // ignore: unused_field
  final $Res Function(StateStatus) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$StateStatusCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'StateStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() fetchingMore,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) primaryError,
    required TResult Function(String errorMessage) secondaryError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Loaded value) loaded,
    required TResult Function(PrimaryError value) primaryError,
    required TResult Function(SecondaryError value) secondaryError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StateStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FetchingMoreCopyWith<$Res> {
  factory $FetchingMoreCopyWith(
          FetchingMore value, $Res Function(FetchingMore) then) =
      _$FetchingMoreCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingMoreCopyWithImpl<$Res> extends _$StateStatusCopyWithImpl<$Res>
    implements $FetchingMoreCopyWith<$Res> {
  _$FetchingMoreCopyWithImpl(
      FetchingMore _value, $Res Function(FetchingMore) _then)
      : super(_value, (v) => _then(v as FetchingMore));

  @override
  FetchingMore get _value => super._value as FetchingMore;
}

/// @nodoc

class _$FetchingMore implements FetchingMore {
  const _$FetchingMore();

  @override
  String toString() {
    return 'StateStatus.fetchingMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchingMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() fetchingMore,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) primaryError,
    required TResult Function(String errorMessage) secondaryError,
  }) {
    return fetchingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
  }) {
    return fetchingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
    required TResult orElse(),
  }) {
    if (fetchingMore != null) {
      return fetchingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Loaded value) loaded,
    required TResult Function(PrimaryError value) primaryError,
    required TResult Function(SecondaryError value) secondaryError,
  }) {
    return fetchingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
  }) {
    return fetchingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
    required TResult orElse(),
  }) {
    if (fetchingMore != null) {
      return fetchingMore(this);
    }
    return orElse();
  }
}

abstract class FetchingMore implements StateStatus {
  const factory FetchingMore() = _$FetchingMore;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$StateStatusCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded();

  @override
  String toString() {
    return 'StateStatus.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() fetchingMore,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) primaryError,
    required TResult Function(String errorMessage) secondaryError,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Loaded value) loaded,
    required TResult Function(PrimaryError value) primaryError,
    required TResult Function(SecondaryError value) secondaryError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements StateStatus {
  const factory Loaded() = _$Loaded;
}

/// @nodoc
abstract class $PrimaryErrorCopyWith<$Res> {
  factory $PrimaryErrorCopyWith(
          PrimaryError value, $Res Function(PrimaryError) then) =
      _$PrimaryErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$PrimaryErrorCopyWithImpl<$Res> extends _$StateStatusCopyWithImpl<$Res>
    implements $PrimaryErrorCopyWith<$Res> {
  _$PrimaryErrorCopyWithImpl(
      PrimaryError _value, $Res Function(PrimaryError) _then)
      : super(_value, (v) => _then(v as PrimaryError));

  @override
  PrimaryError get _value => super._value as PrimaryError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(PrimaryError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PrimaryError implements PrimaryError {
  const _$PrimaryError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'StateStatus.primaryError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrimaryError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $PrimaryErrorCopyWith<PrimaryError> get copyWith =>
      _$PrimaryErrorCopyWithImpl<PrimaryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() fetchingMore,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) primaryError,
    required TResult Function(String errorMessage) secondaryError,
  }) {
    return primaryError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
  }) {
    return primaryError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
    required TResult orElse(),
  }) {
    if (primaryError != null) {
      return primaryError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Loaded value) loaded,
    required TResult Function(PrimaryError value) primaryError,
    required TResult Function(SecondaryError value) secondaryError,
  }) {
    return primaryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
  }) {
    return primaryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
    required TResult orElse(),
  }) {
    if (primaryError != null) {
      return primaryError(this);
    }
    return orElse();
  }
}

abstract class PrimaryError implements StateStatus {
  const factory PrimaryError(String errorMessage) = _$PrimaryError;

  String get errorMessage;
  @JsonKey(ignore: true)
  $PrimaryErrorCopyWith<PrimaryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryErrorCopyWith<$Res> {
  factory $SecondaryErrorCopyWith(
          SecondaryError value, $Res Function(SecondaryError) then) =
      _$SecondaryErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$SecondaryErrorCopyWithImpl<$Res> extends _$StateStatusCopyWithImpl<$Res>
    implements $SecondaryErrorCopyWith<$Res> {
  _$SecondaryErrorCopyWithImpl(
      SecondaryError _value, $Res Function(SecondaryError) _then)
      : super(_value, (v) => _then(v as SecondaryError));

  @override
  SecondaryError get _value => super._value as SecondaryError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(SecondaryError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SecondaryError implements SecondaryError {
  const _$SecondaryError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'StateStatus.secondaryError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecondaryError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $SecondaryErrorCopyWith<SecondaryError> get copyWith =>
      _$SecondaryErrorCopyWithImpl<SecondaryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() fetchingMore,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) primaryError,
    required TResult Function(String errorMessage) secondaryError,
  }) {
    return secondaryError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
  }) {
    return secondaryError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? fetchingMore,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? primaryError,
    TResult Function(String errorMessage)? secondaryError,
    required TResult orElse(),
  }) {
    if (secondaryError != null) {
      return secondaryError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Loaded value) loaded,
    required TResult Function(PrimaryError value) primaryError,
    required TResult Function(SecondaryError value) secondaryError,
  }) {
    return secondaryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
  }) {
    return secondaryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Loaded value)? loaded,
    TResult Function(PrimaryError value)? primaryError,
    TResult Function(SecondaryError value)? secondaryError,
    required TResult orElse(),
  }) {
    if (secondaryError != null) {
      return secondaryError(this);
    }
    return orElse();
  }
}

abstract class SecondaryError implements StateStatus {
  const factory SecondaryError(String errorMessage) = _$SecondaryError;

  String get errorMessage;
  @JsonKey(ignore: true)
  $SecondaryErrorCopyWith<SecondaryError> get copyWith =>
      throw _privateConstructorUsedError;
}
