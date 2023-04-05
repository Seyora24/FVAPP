import 'package:flutter/material.dart';
import '../widgets/profil.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _HomePageState();
}

class _HomePageState extends State<InvoicePage> {
  late int index;
  // List<String> data = [
  //   "Pernikahan", "Hajatan", "Tunangan", "Siraman"
  // ];

  List showWidget = [
    Center(
      child: Text("Beranda"),
    ),
    Center(
      child: Text("Tentang"),
    ),
    Center(child: Text("Pemesanan"),
    ),
    Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                              child: ClipOval(
                                child: Image.asset('images/logo.jpeg'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "       Invoice no : 01",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "       26 Februari 2023",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                  height: 20,
                                  indent: 20,
                                  endIndent: 20,
                                ),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text("Paket",
                                style: TextStyle(
                                  fontSize: 15,
                                  ),
                                ),
                                Text("Harga",
                                style: TextStyle(
                                  fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                                SizedBox(height: 160),
                                Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                  height: 20,
                                  indent: 20,
                                  endIndent: 20,
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "       Kirim Pembayaran ke :",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Terimakasih       ",
                                style: TextStyle(
                                  fontSize: 13,
                              ),
                            ),
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Selesai"),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 128, 128),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )
                              ),
                              ),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 0, 128, 128),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey[50],
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Tentang"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Pemesanan"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: "Profil"),
          ]),
    );
  }
}

