import 'package:flutter/material.dart';
import '../widgets/app_text.dart';

class DetailMenuPage extends StatelessWidget {
  final String nama;
  final int harga;

  const DetailMenuPage({super.key, required this.nama, required this.harga});

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        // Gaya AppBar dibuat sama seperti halaman lain agar konsisten
        backgroundColor: warna.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const AppText('Detail Menu', size: 20, color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu, size: 72, color: warna.primary),
            const SizedBox(height: 16),
            AppText(nama, size: 28, weight: FontWeight.bold),
            const SizedBox(height: 8),
            AppText('Rp $harga', size: 20, color: warna.primary),
          ],
        ),
      ),
    );
  }
}