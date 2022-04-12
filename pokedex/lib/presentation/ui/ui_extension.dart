import 'package:flutter/material.dart';

import '../../data/models/pokemon.dart';
import '../pokemon_detail/view_model/pokemon_detail_view_model.dart';
import 'ui.dart';

extension BgColor on PokemonDetailViewModel {
  Color getBgColor() {
    if (type.contains('fire')) {
      return AppColors.fireBackground;
    } else if (type.contains('grass')) {
      return AppColors.grassBackground;
    } else {
      return AppColors.waterBackground;
    }
  }
}

extension ViewModel on Pokemon {
  PokemonDetailViewModel get toViewModel {
    return PokemonDetailViewModel(
      id: id,
      height: height.toString(),
      weight: weight.toString(),
      bmi: bmi,
      type: types.join(','),
      name: name,
      svgUrl: svgUrl,
      hp: stats.firstWhere((stat) => stat.name == 'hp').value,
      attack: stats.firstWhere((stat) => stat.name == 'attack').value,
      defense: stats.firstWhere((stat) => stat.name == 'defense').value,
      specialAttack:
          stats.firstWhere((stat) => stat.name == 'special-attack').value,
      specialDefense:
          stats.firstWhere((stat) => stat.name == 'special-defense').value,
      speed: stats.firstWhere((stat) => stat.name == 'speed').value,
      isFavourite: isFavourite,
    );
  }
}
