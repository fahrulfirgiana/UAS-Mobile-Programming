import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoadingPage(),
    );
  }
}
class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // Simulasikan waktu loading sebelum pindah ke halaman login
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/arvl.png',
              width: 300.0,
              height: 300.0,), // Ganti 'logo.png' dengan nama file gambar Anda
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}