import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/presentation/ui/ui.dart';
part 'pokemon_view_model.freezed.dart';

@freezed
class PokemonViewModel with _$PokemonViewModel {
  factory PokemonViewModel({
    required int id,
    required String idString,
    required String name,
    required String power,
    required String svgUrl,
    @Default(AppColors.waterBackground) Color bgColor,
  }) = _PokemonViewModel;
}
