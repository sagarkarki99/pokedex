import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/pokemon.dart';
import '../../../data/pokemon_repository.dart';
import '../../pokemon_detail/view_model/pokemon_detail_view_model.dart';
import '../../ui/ui_extension.dart';
import './../../favourites/cubit/favourite_cubit.dart';
part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  final PokemonRepository repository;
  final FavouriteCubit favouriteCubit;
  final String detailUrl;
  late Pokemon pokemon;
  PokemonCubit({
    required this.repository,
    required this.detailUrl,
    required this.favouriteCubit,
  }) : super(const PokemonState.loading()) {
    getDetail();
  }

  Future<void> getDetail() async {
    print(detailUrl);
    try {
      pokemon = await repository.getPokemonDetail(detailUrl);
      emit(Loaded(pokemon.toViewModel));
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> toggleFavourite() async {
    pokemon = pokemon.isFavourite
        ? await favouriteCubit.removeFromFavourites(pokemon)
        : await favouriteCubit.addToFavourite(pokemon);
    emit(Loaded(pokemon.toViewModel));
  }
}
