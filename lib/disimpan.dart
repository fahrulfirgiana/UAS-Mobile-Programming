import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

void main() {
  runApp(const MaterialApp(
    home: DisimpanPage(),
  ));
}

class DisimpanPage extends StatelessWidget {
  const DisimpanPage({super.key});

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
      body: const _DisimpanWidget(),
    );
  }
}

class _DisimpanWidget extends StatefulWidget {
  const _DisimpanWidget({Key? key}) : super(key: key);

  @override
  __DisimpanWidgetState createState() => __DisimpanWidgetState();
}

class __DisimpanWidgetState extends State<_DisimpanWidget> {
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Container(
                      height: 50, // Ubah tinggi menjadi lebih tinggi dari 50
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: SizedBox(
                              height: 40, // Panjang divider
                              child: VerticalDivider(
                                thickness: 10, // Ketebalan divider
                                color: Color(0xFF394867),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 12), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Text(
                                  'Semua', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        5), // Add spacing between text and icon
                                Icon(
                                  FontAwesomeIcons
                                      .caretDown, // Add the caret-down icon
                                  color: Color(0xFF57636C),
                                  size: 15, // Adjust the size of the icon
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 100), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons
                                      .filter, // Add the caret-down icon
                                  color: Color(0xFF57636C),
                                  size: 15, // Adjust the size of the icon
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Semua', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 12), // Jarak 30 ke sisi kiri
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons
                                      .table, // Add the caret-down icon
                                  color: Color(0xFF57636C),
                                  size: 15, // Adjust the size of the icon
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Tata Letak', // Replace the icon with "Kategori"
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 3, // Panjang divider horizontal
                thickness: 3, // Ketebalan divider horizontal
                color: Color(0xFFE0E0E0), // Warna divider horizontal
                indent: 15, // Jarak dari sisi kiri
                endIndent: 15, // Jarak dari sisi kanan
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0), // Add bottom spacing
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 105,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/kita.jpeg', // Ubah dengan path gambar yang diinginkan
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 10), // Add horizontal spacing
                                Container(
                                  width: 255,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255,
                                        255), // Warna latar belakang container abu
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height:
                                            75, // Setengah dari tinggi container
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:
                                                    8), // Jarak dari sisi kiri
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        top:
                                                            10), // Jarak kiri dan atas pada teks judul
                                                    child: Text(
                                                      'Erick Thohir Tunjuk Bos Baru Waskita Karya, Ini Dia Orangnya', // Isi judul berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          5), // Jarak antara judul dan narasumber
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            5), // Jarak kiri pada teks narasumber
                                                    child: Text(
                                                      'arvlNEWS', // Isi narasumber berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Jarak antara container pertama dan kedua
                                      Container(
                                        height: 40, // Tinggi container kedua
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255,
                                              255), // Warna latar belakang kolom kedua
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                15), // Rounded ujung bawah
                                            bottomRight: Radius.circular(
                                                15), // Rounded ujung bawah
                                          ),
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      15), // Jarak dari sisi kiri
                                              child: Text(
                                                '3 Suka . 1 Komentar . 9 jam', // Isi kolom kedua
                                                style: TextStyle(
                                                  color: Color(0xFF757575),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      70), // Jarak dari sisi kanan
                                              child: FaIcon(
                                                FontAwesomeIcons
                                                    .trashAlt, // Use the FontAwesomeIcons.bookmark icon
                                                color: Color.fromARGB(255, 0, 0,
                                                    0), // Adjust the color as needed
                                                size:
                                                    23, // Adjust the size as needed
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0), // Add bottom spacing
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 105,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/mesi.jpeg', // Ubah dengan path gambar yang diinginkan
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 10), // Add horizontal spacing
                                Container(
                                  width: 255,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255,
                                        255), // Warna latar belakang container abu
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height:
                                            75, // Setengah dari tinggi container
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:
                                                    8), // Jarak dari sisi kiri
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        top:
                                                            10), // Jarak kiri dan atas pada teks judul
                                                    child: Text(
                                                      '5 Poin Erick Thohir soal Indonesia Vs Argentina', // Isi judul berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          5), // Jarak antara judul dan narasumber
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            5), // Jarak kiri pada teks narasumber
                                                    child: Text(
                                                      'arvlSPORTS', // Isi narasumber berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Jarak antara container pertama dan kedua
                                      Container(
                                        height: 40, // Tinggi container kedua
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255,
                                              255), // Warna latar belakang kolom kedua
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                15), // Rounded ujung bawah
                                            bottomRight: Radius.circular(
                                                15), // Rounded ujung bawah
                                          ),
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      15), // Jarak dari sisi kiri
                                              child: Text(
                                                '3 Suka . 1 Komentar . 9 jam', // Isi kolom kedua
                                                style: TextStyle(
                                                  color: Color(0xFF757575),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      70), // Jarak dari sisi kanan
                                              child: FaIcon(
                                                FontAwesomeIcons
                                                    .trashAlt, // Use the FontAwesomeIcons.bookmark icon
                                                color: Color.fromARGB(255, 0, 0,
                                                    0), // Adjust the color as needed
                                                size:
                                                    23, // Adjust the size as needed
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0), // Add bottom spacing
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 105,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/mesi.jpeg', // Ubah dengan path gambar yang diinginkan
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 10), // Add horizontal spacing
                                Container(
                                  width: 255,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255,
                                        255), // Warna latar belakang container abu
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height:
                                            75, // Setengah dari tinggi container
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:
                                                    8), // Jarak dari sisi kiri
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        top:
                                                            10), // Jarak kiri dan atas pada teks judul
                                                    child: Text(
                                                      '5 Poin Erick Thohir soal Indonesia Vs Argentina', // Isi judul berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          5), // Jarak antara judul dan narasumber
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            5), // Jarak kiri pada teks narasumber
                                                    child: Text(
                                                      'arvlSPORTS', // Isi narasumber berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Jarak antara container pertama dan kedua
                                      Container(
                                        height: 40, // Tinggi container kedua
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255,
                                              255), // Warna latar belakang kolom kedua
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                15), // Rounded ujung bawah
                                            bottomRight: Radius.circular(
                                                15), // Rounded ujung bawah
                                          ),
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      15), // Jarak dari sisi kiri
                                              child: Text(
                                                '3 Suka . 1 Komentar . 9 jam', // Isi kolom kedua
                                                style: TextStyle(
                                                  color: Color(0xFF757575),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      70), // Jarak dari sisi kanan
                                              child: FaIcon(
                                                FontAwesomeIcons
                                                    .trashAlt, // Use the FontAwesomeIcons.bookmark icon
                                                color: Color.fromARGB(255, 0, 0,
                                                    0), // Adjust the color as needed
                                                size:
                                                    23, // Adjust the size as needed
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0), // Add bottom spacing
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 105,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/mesi.jpeg', // Ubah dengan path gambar yang diinginkan
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 10), // Add horizontal spacing
                                Container(
                                  width: 255,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255,
                                        255), // Warna latar belakang container abu
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height:
                                            75, // Setengah dari tinggi container
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:
                                                    8), // Jarak dari sisi kiri
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        top:
                                                            10), // Jarak kiri dan atas pada teks judul
                                                    child: Text(
                                                      '5 Poin Erick Thohir soal Indonesia Vs Argentina', // Isi judul berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          5), // Jarak antara judul dan narasumber
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            5), // Jarak kiri pada teks narasumber
                                                    child: Text(
                                                      'arvlSPORTS', // Isi narasumber berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Jarak antara container pertama dan kedua
                                      Container(
                                        height: 40, // Tinggi container kedua
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255,
                                              255), // Warna latar belakang kolom kedua
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                15), // Rounded ujung bawah
                                            bottomRight: Radius.circular(
                                                15), // Rounded ujung bawah
                                          ),
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      15), // Jarak dari sisi kiri
                                              child: Text(
                                                '3 Suka . 1 Komentar . 9 jam', // Isi kolom kedua
                                                style: TextStyle(
                                                  color: Color(0xFF757575),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      70), // Jarak dari sisi kanan
                                              child: FaIcon(
                                                FontAwesomeIcons
                                                    .trashAlt, // Use the FontAwesomeIcons.bookmark icon
                                                color: Color.fromARGB(255, 0, 0,
                                                    0), // Adjust the color as needed
                                                size:
                                                    23, // Adjust the size as needed
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0), // Add bottom spacing
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 105,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/mesi.jpeg', // Ubah dengan path gambar yang diinginkan
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 10), // Add horizontal spacing
                                Container(
                                  width: 255,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255,
                                        255), // Warna latar belakang container abu
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height:
                                            75, // Setengah dari tinggi container
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:
                                                    8), // Jarak dari sisi kiri
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        top:
                                                            10), // Jarak kiri dan atas pada teks judul
                                                    child: Text(
                                                      '5 Poin Erick Thohir soal Indonesia Vs Argentina', // Isi judul berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          5), // Jarak antara judul dan narasumber
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left:
                                                            5), // Jarak kiri pada teks narasumber
                                                    child: Text(
                                                      'arvlSPORTS', // Isi narasumber berita
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Jarak antara container pertama dan kedua
                                      Container(
                                        height: 40, // Tinggi container kedua
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255,
                                              255), // Warna latar belakang kolom kedua
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                15), // Rounded ujung bawah
                                            bottomRight: Radius.circular(
                                                15), // Rounded ujung bawah
                                          ),
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      15), // Jarak dari sisi kiri
                                              child: Text(
                                                '3 Suka . 1 Komentar . 9 jam', // Isi kolom kedua
                                                style: TextStyle(
                                                  color: Color(0xFF757575),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      70), // Jarak dari sisi kanan
                                              child: FaIcon(
                                                FontAwesomeIcons
                                                    .trashAlt, // Use the FontAwesomeIcons.bookmark icon
                                                color: Color.fromARGB(255, 0, 0,
                                                    0), // Adjust the color as needed
                                                size:
                                                    23, // Adjust the size as needed
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
