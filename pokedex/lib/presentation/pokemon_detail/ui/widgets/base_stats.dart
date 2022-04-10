import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pokemon_detail/view_model/pokemon_detail_view_model.dart';
import 'package:pokedex/presentation/ui/ui.dart';

class BaseStats extends StatelessWidget {
  final PokemonDetailViewModel model;

  const BaseStats({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      color: AppColors.light,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _Stats(title: 'Hp', value: 54),
          _Stats(title: 'Attack', value: 80),
          _Stats(title: 'Defense', value: 70),
          _Stats(title: 'Defense', value: 70),
          _Stats(title: 'Defense', value: 70),
          _Stats(title: 'Defense', value: 70),
          _Stats(
            title: 'Special Attack',
            value: 60,
            color: AppColors.yellowish,
          ),
          _Stats(
            title: 'Special Defence',
            value: 40,
            color: AppColors.yellowish,
          ),
          _Stats(title: 'Speed', value: 70),
          _Stats(title: 'Avg. Power', value: 10),
        ],
      ),
    );
  }
}

class _Stats extends StatelessWidget {
  final String title;
  final int value;
  final Color color;
  const _Stats({
    Key? key,
    required this.title,
    required this.value,
    this.color = AppColors.redish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TextStat(title, value.toString()),
          const SizedBox(height: 8.0),
          _LinearStat(
            value: value,
            color: color,
          ),
        ],
      ),
    );
  }
}

class _TextStat extends StatelessWidget {
  final String title;
  final String value;
  const _TextStat(
    this.title,
    this.value, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title),
        const SizedBox(width: 8.0),
        Text(
          value,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class _LinearStat extends StatelessWidget {
  final int value;
  final Color color;
  const _LinearStat({
    Key? key,
    required this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;
    final width = (value / 100) * totalWidth;
    return Stack(
      children: [
        _Bar(
            color: AppColors.background,
            width: totalWidth,
            totalWidth: totalWidth),
        _Bar(color: color, width: width, totalWidth: totalWidth),
      ],
    );
  }
}

class _Bar extends StatefulWidget {
  final Color color;
  final double width;
  final double totalWidth;
  const _Bar({
    Key? key,
    required this.color,
    required this.width,
    required this.totalWidth,
  }) : super(key: key);

  @override
  State<_Bar> createState() => _BarState();
}

class _BarState extends State<_Bar> {
  late double newWidth;
  @override
  void initState() {
    newWidth = widget.totalWidth;
    if (widget.width != widget.totalWidth) {
      Future.delayed(const Duration(milliseconds: 300), () {
        setState(() {
          newWidth = widget.width;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
      width: newWidth,
      height: 4.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: widget.color,
      ),
    );
  }
}
