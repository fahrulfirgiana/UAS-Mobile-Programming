import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

void main() {
  runApp(const MaterialApp(
    home: AkunPage(),
  ));
}

class AkunPage extends StatelessWidget {
  const AkunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/arvl.png', // Replace with your logo image path
          width: 100, // Adjust the width as needed
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        actions: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 50,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF757575),
                      size: 30,
                    ),
                    onPressed: () {
                      Logger().d('Search IconButton pressed ...');
                    },
                  ),
                ),
                Container(
                  width: 50,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications_sharp,
                      color: Color(0xFF757575),
                      size: 30,
                    ),
                    onPressed: () {
                      Logger().d('Search IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: const _AkunWidget(),
    );
  }
}

class _AkunWidget extends StatefulWidget {
  const _AkunWidget({Key? key}) : super(key: key);

  @override
  __AkunWidgetState createState() => __AkunWidgetState();
}

class __AkunWidgetState extends State<_AkunWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10), // Jarak atas
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 0, top: 10), // Add bottom spacing
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 12), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .person_2_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 35, // Adjust the size of the icon
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Akun', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, top: 15), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .branding_watermark_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 28, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Kategori', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 15), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .dark_mode_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Mode Gelap', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Divider(
                              height: 3, // Panjang divider horizontal
                              thickness: 3, // Ketebalan divider horizontal
                              color:
                                  Color(0xFFE0E0E0), // Warna divider horizontal
                              indent: 15, // Jarak dari sisi kiri
                              endIndent: 15, // Jarak dari sisi kanan
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 10), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .mail_outline, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Informasi Kerja Sama', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Divider(
                              height: 3, // Panjang divider horizontal
                              thickness: 3, // Ketebalan divider horizontal
                              color:
                                  Color(0xFFE0E0E0), // Warna divider horizontal
                              indent: 15, // Jarak dari sisi kiri
                              endIndent: 15, // Jarak dari sisi kanan
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 10), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .show_chart_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Trending', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 15), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .location_on_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Trending', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 15), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .edit_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Opini & Cerita', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Divider(
                              height: 3, // Panjang divider horizontal
                              thickness: 3, // Ketebalan divider horizontal
                              color:
                                  Color(0xFFE0E0E0), // Warna divider horizontal
                              indent: 15, // Jarak dari sisi kiri
                              endIndent: 15, // Jarak dari sisi kanan
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 15), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .help_outline_outlined, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Bantuan', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 13, top: 15), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  Icons
                                      .info_outline, // Use the person outline icon
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 30, // Adjust the size of the icon
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Tentang', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ), // Add spacing between text and icon
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )

              // Continue adding the rest of your content here.
            ],
          ),
        ),
      ),
    );
  }
}
