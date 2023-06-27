import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_pratico_nowmed/app/util.dart';

class HourButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const HourButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  _HourButtonWidgetState createState() => _HourButtonWidgetState();
}

class _HourButtonWidgetState extends State<HourButtonWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.0,
      height: 35.0,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = true;
          });
          widget.onPressed();
          final buttons = _HourButtonWidgetState.buttons;
          for (var button in buttons) {
            if (button != this) {
              button.setState(() {
                button.isSelected = false;
              });
            }
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Palette.yellowPallete : Palette.bluePalette,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: isSelected ? Palette.bluePalette : Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600
              ),
            )
          ),
        ),
      ),
    );
  }

  static List<_HourButtonWidgetState> buttons = [];

  @override
  void initState() {
    super.initState();
    buttons.add(this);
  }

  @override
  void dispose() {
    buttons.remove(this);
    super.dispose();
  }
}
