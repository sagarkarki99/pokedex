import 'package:flutter/material.dart';
import 'package:pokedex/presentation/ui/ui.dart';

import 'presentation/pokemon/ui/home_screen.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: AppTheme.primary(),
      home: const HomeScreen(),
    );
  }
}
