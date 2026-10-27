import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/app_text.dart';
import 'detail_menu_page.dart';
import 'tambah_menu_page.dart';

class DaftarMenuPage extends StatefulWidget {
  const DaftarMenuPage({super.key});

  @override
  State<DaftarMenuPage> createState() => _DaftarMenuPageState();
}

class _DaftarMenuPageState extends State<DaftarMenuPage> {
  final List<Map<String, dynamic>> _menu = [
    {'nama': 'Nasi Goreng', 'harga': 15000},
    {'nama': 'Mie Ayam', 'harga': 12000},
    {'nama': 'Soto Ayam', 'harga': 13000},
    {'nama': 'Es Teh Manis', 'harga': 4000},
    {'nama': 'Gado-Gado', 'harga': 11000},
  ];

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        // AppBar berwarna coklat dan teks putih agar warna nya kontras dan mencolok
        backgroundColor: warna.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const AppText(
          'Menu Kantin',
          size: 20,
          weight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            // Subjudul memakai warna coklat, dibuat bold agar jadi
            // perhatian pertama customer sebelum lihat daftar menu.
            child: AppText(
              'Daftar Menu Hari Ini',
              size: 18,
              weight: FontWeight.w600,
              color: warna.primary,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _menu.length,
              itemBuilder: (context, index) {
                final item = _menu[index];
                return Card(
                  color: Colors.white,
                  elevation: 2,
                  clipBehavior: Clip.antiAlias,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.restaurant_menu, color: warna.primary),
                    title: AppText(item['nama'], weight: FontWeight.bold),
                    // Harga diberi warna coklat agar mudah terbaca
                    // karena harga adalah salah satu informasi penting bagi customer.
                    subtitle: AppText(
                      'Rp ${item['harga']}',
                      size: 14,
                      color: warna.primary,
                    ),
                    trailing:
                        const Icon(Icons.chevron_right, color: Colors.grey),
                    onTap: () {
                      Get.to(() => DetailMenuPage(
                            nama: item['nama'],
                            harga: item['harga'],
                          ));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: warna.primary,
        foregroundColor: Colors.white,
        onPressed: () async {
          final result = await Get.to(() => const TambahMenuPage());
          if (result != null) {
            setState(() {
              _menu.add(result);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}