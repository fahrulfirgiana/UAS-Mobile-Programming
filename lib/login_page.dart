import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // Anda dapat menambahkan logika validasi email yang lebih spesifik di sini jika diperlukan
    return null; // Mengembalikan null jika validasi berhasil
  }

  InputDecoration _inputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(
        fontFamily: 'Poppins',
        color: Colors.black,
      ),
      filled: true,
      fillColor: const Color(0xFFF1F4F8),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFF1F4F8)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFF1F4F8)),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 100.0),
              Image.asset(
                'assets/arvl1.png',
                width: 160.0,
                height: 160.0,
              ),
              const SizedBox(height: 75.0),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: const Text(
                  'Login Arvl.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF394867),
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(
                thickness: 4,
                color: Color(0xFF394867),
                indent: 100,
                endIndent: 100,
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                validator: _emailValidator,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
                decoration: _inputDecoration('Email'),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
                decoration: _inputDecoration('Password'),
              ),
              const SizedBox(height: 20.0),
              const SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardPage(),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 70.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF394867),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  // Tambahkan aksi yang ingin Anda lakukan saat tombol "Forgot Password?" ditekan
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF394867),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
