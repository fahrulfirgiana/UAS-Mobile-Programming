import 'package:flutter/material.dart';
import 'home.dart';
import 'trending.dart';
import 'terbaru.dart';
import 'disimpan.dart';
import 'akun.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const TrendingPage(),
    const TerbaruPage(),
    const DisimpanPage(),
    const AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedIconTheme:
            const IconThemeData(size: 24), // Ubah ukuran ikon yang aktif
        unselectedIconTheme:
            const IconThemeData(size: 24), // Ubah ukuran ikon yang tidak aktif
        backgroundColor:
            const Color(0xFFFFFFFF), // Ubah warna latar belakang navbar
        selectedItemColor:
            const Color(0xFF757575), // Ubah warna ikon yang dipilih
        unselectedItemColor: const Color(0xFF757575), // Ubah warna ikon yang tidak dipilih
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.show_chart_outlined,
              size: 24,
            ),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time_outlined,
              size: 24,
            ),
            label: 'Terbaru',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline,
              size: 24,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              size: 24,
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
