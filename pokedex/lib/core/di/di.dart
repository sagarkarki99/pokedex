import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/data/pokemon_repository_impl.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  await setupRepository();

  await locator.allReady();
}

Future<void> setupRepository() async {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(
      dio: locator(),
    ),
  );
}
