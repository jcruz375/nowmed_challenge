import 'package:flutter/material.dart';
import 'package:teste_pratico_nowmed/app/widgets/hour_button.dart';

class HourListWidget extends StatelessWidget {
  final List<String> buttonLabels = [
    '8:30',
    '10:00',
    '10:30',
    '11:30',
    '13:00',
    '14:00',
    '14:30',
    '15:00',
    '17:30',
  ];

  HourListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: (68/35),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          shrinkWrap: true,
          children: List.generate(buttonLabels.length, (index) {
            return HourButtonWidget(
              label: buttonLabels[index],
              onPressed: () {
                // Marcar horario
              },
            );
          }),
        ),
      ),
    );
  }
}
