part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = Initial;
  const factory FavouriteState.loaded(List<Pokemon> pokes) = Loaded;
  const factory FavouriteState.empty() = Empty;
}
