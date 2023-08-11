import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const _DashboardWidget(),
    );
  }
}

class _DashboardWidget extends StatefulWidget {
  const _DashboardWidget({Key? key}) : super(key: key);

  @override
  __DashboardWidgetState createState() => __DashboardWidgetState();
}

class __DashboardWidgetState extends State<_DashboardWidget> {
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
                child: Row(
                  children: [
                    _buildNewsContainer(
                      'assets/terowongan.jpg',
                      '10 Destinasi Menawan yang berada di Indonesia',
                      'arvlTRAVEL',
                      '0 Suka . 0 Komentar . 9 menit',
                    ),
                    _buildNewsContainer(
                      'assets/vila.jpg',
                      'Beach Club Bali di Pantai Pandawa yang Ramah Keluarga',
                      'arvlTRAVEL',
                      '5 Suka . 0 Komentar . 11 menit',
                    ),
                    _buildNewsContainer(
                      'assets/uno.jpeg',
                      'Begini Isi Garasi Menteri Terkaya di Kabinet Jokowi',
                      'arvlNEWS',
                      '3 Suka . 1 Komentar . 9 mnt',
                    ),
                  ],
                ),
              ),
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
                      padding:
                          EdgeInsets.only(left: 20), // Jarak 20 ke sisi kiri
                      child: Text(
                        'Trending',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30), // Jarak 30 ke sisi kiri
                      child: Icon(
                        FontAwesomeIcons.angleRight,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 30, // Ukuran ikon Angle
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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 115,
                      height: 115,
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
                    ), // Jarak antara dua container
                    Container(
                      width: 276,
                      height: 115,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255,
                            255), // Warna latar belakang container abu
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 75, // Setengah dari tinggi container
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10), // Jarak dari sisi kiri
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
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
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
                                            color: Color.fromARGB(255, 0, 0, 0),
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
                                bottomLeft:
                                    Radius.circular(15), // Rounded ujung bawah
                                bottomRight:
                                    Radius.circular(15), // Rounded ujung bawah
                              ),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15), // Jarak dari sisi kiri
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
                                      left: 65), // Jarak dari sisi kanan
                                  child: Icon(
                                    Icons.bookmark, // Ikona bookmark
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    size: 30,
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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 115,
                      height: 115,
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
                    ), // Jarak antara dua container
                    Container(
                      width: 276,
                      height: 115,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255,
                            255), // Warna latar belakang container abu
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 75, // Setengah dari tinggi container
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10), // Jarak dari sisi kiri
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
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
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
                                            color: Color.fromARGB(255, 0, 0, 0),
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
                                bottomLeft:
                                    Radius.circular(15), // Rounded ujung bawah
                                bottomRight:
                                    Radius.circular(15), // Rounded ujung bawah
                              ),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15), // Jarak dari sisi kiri
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
                                      left: 70), // Jarak dari sisi kanan
                                  child: FaIcon(
                                    FontAwesomeIcons
                                        .bookmark, // Use the FontAwesomeIcons.bookmark icon
                                    color: Color.fromARGB(255, 0, 0,
                                        0), // Adjust the color as needed
                                    size: 23, // Adjust the size as needed
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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 115,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/kk.jpg', // Ubah dengan path gambar yang diinginkan
                          fit: BoxFit.cover,
                        ),
                      ),
                    ), // Jarak antara dua container
                    Container(
                      width: 276,
                      height: 115,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255,
                            255), // Warna latar belakang container abu
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 75, // Setengah dari tinggi container
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10), // Jarak dari sisi kiri
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
                                          '5 Rekomendasi Hotel di Kuala Lumpur dengan Lokasi Strategis', // Isi judul berita
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
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
                                          'arvlTRAVELS', // Isi narasumber berita
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
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
                                bottomLeft:
                                    Radius.circular(15), // Rounded ujung bawah
                                bottomRight:
                                    Radius.circular(15), // Rounded ujung bawah
                              ),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Mengubah alignment menjadi CrossAxisAlignment.start
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15), // Jarak dari sisi kiri
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
                                      left: 65), // Jarak dari sisi kanan
                                  child: Icon(
                                    Icons.bookmark, // Ikona bookmark
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    size: 30,
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
    );
  }

  Widget _buildNewsContainer(
    String imagePath,
    String newsTitle,
    String narasumber,
    String jumlahLike,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: 340,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 340,
            height: 165,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
            child: Text(
              newsTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 2),
            child: Text(
              narasumber,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              jumlahLike,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
