import 'package:flutter/material.dart';
import 'package:pokedex/presentation/ui/ui.dart';

class TextStyles {
  TextStyles._();
  static const TextStyle _base = TextStyle(
    fontFamily: 'NotoSans',
    color: AppColors.primaryDark,
  );

  static TextTheme get textTheme => TextTheme(
        headline1: _headline1,
        headline2: _headline2,
        headline3: _headline3,
        headline4: _headline4,
        headline5: _headline5,
        headline6: _headline6,
        bodyText1: _bodyText1,
        bodyText2: _bodyText2,
        button: _button,
      );

  static final _headline1 = _base.copyWith(
    fontSize: 56.0,
    fontWeight: FontWeight.w300,
  );

  static final _headline2 = _base.copyWith(
    fontSize: 48.0,
    fontWeight: FontWeight.w300,
  );

  static final _headline3 = _base.copyWith(
    fontSize: 32.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline4 = _base.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline5 = _base.copyWith(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static final _headline6 = _base.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
  static final _bodyText1 = _base.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
  );
  static final _bodyText2 = _base.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w200,
  );
  static final _button = _base.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );
}
