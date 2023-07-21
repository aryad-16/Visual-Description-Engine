import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyNow extends StatelessWidget {
  const ApplyNow({
    super.key,
    required this.onPressed,
    required this.text,
    required this.elevation,
    required this.alignment,
  });
  final VoidCallback onPressed;
  final String text;
  final double elevation;
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: elevation,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Card(
                color: Colors.blueGrey.shade600,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                shadowColor: Colors.blueGrey.shade600.withOpacity(0.8),
                elevation: 6,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Text(
                        text,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
