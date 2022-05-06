# Pokedex

This application is build using `Flutter 2.8.1` version but is compiled using latest version too which is `Flutter 2.10.4`.

In order to run the application following commands are required.

```cmd
cd pokedex/
flutter clean
flutter pub get
```

Since, emulator does not support `release` and `profile` mode then:

```cmd
 flutter run --debug
```

In order to run the app in android device:

```cmd
 flutter run --release
```

## Packages Used

Packages used in this app can be catogorized as following:

### UI and views

`extended_image` [view](https://pub.dev/packages/extended_image) : Used to render image and cache for easy loading

`shimmer` [view](https://pub.dev/packages/shimmer) : used for shiny color loading indicator

`flutter_spinkit` [view](https://pub.dev/packages/flutter_spinkit) : used for animated loading in pagination

`badges` [view](https://pub.dev/packages/badges) : used for showing count of favourites in favourite tab

`tab_indicator_styler` [view](https://pub.dev/packages/tab_indicator_styler) : used to style tab indicator in **main screen**

`flutter_launcher_icons` [view](https://pub.dev/packages/flutter_launcher_icons) : used to set up icon for the app for android and ios

### state Management

`Flutter_bloc` [view](https://pub.dev/packages/flutter_bloc) : Used to manage the whole state of the application.Since the package offers two ways to do it using _bloc_ and _Cubit_, this applications uses _Cubit_

### Dependency Injection

`get_it` [view](https://pub.dev/packages/get_it) : this package is used to manage dependency and creation of instances. For now, it is only used in data layer.

### Code Generator

`Freezed` [view](https://pub.dev/packages/freezed): used to generate data class for easy use.

`build_runner`[view](https://pub.dev/packages/build_runner) : used for code generation

`json_serializable` [view](https://pub.dev/packages/json_serializable) : used for serializing json from/to dart object.

### Network

`Dio` [view](https://pub.dev/packages/dio) : used to make network request from the application.

### Local Storage

`Hive` [view](https://pub.dev/packages/hive) : used to store favourite pokemons in local storage.

`path_provider` [view](https://pub.dev/packages/path_provider) : used to get application path in local storage.
