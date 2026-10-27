import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Memakai font Lora karena huruf nya terasa semi formal dan nyaman dibaca,
// menurut saya cocok untuk font daftar menu kantin. Warna dasar cokelat saya pilih
// agar nyaman di mata dan tetap kontras dengan background krem.
class AppText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;

  const AppText(
    this.text, {
    super.key,
    this.size = 16,
    this.weight = FontWeight.normal,
    this.color = const Color(0xFF3E2723),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lora(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}