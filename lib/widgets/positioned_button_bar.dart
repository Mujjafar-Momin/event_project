import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PositionedButton extends StatelessWidget {
  const PositionedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 16,
        right: 16,
        child: FilledButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.black87)
          ),
          onPressed: () => onPressed.call(),
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
