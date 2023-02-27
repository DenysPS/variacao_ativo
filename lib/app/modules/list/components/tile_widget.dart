import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../app/models/variation_model.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key, required this.day});
  final VariationDayModel day;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(DateFormat('dd/MM').format(day.day)),
      title: Text(
          'Variação D-1: ${day.variationD1 == null ? ' - ' : day.variationD1!.toStringAsFixed(3)}'),
      subtitle: Text(
          'Variação Inicial: ${day.variationInit == null ? ' - ' : day.variationInit!.toStringAsFixed(3)}'),
    );
  }
}
