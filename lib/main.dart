import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/daftar_menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Saya memberikan satu warna dasar cokelat sebagai patokan warna,
        // agar semua halaman memiliki warna senada dan konsisten.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB5651D)),
        // Latar krem agar lebih nyaman dilihat,
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
      ),
      home: const DaftarMenuPage(),
    );
  }
}