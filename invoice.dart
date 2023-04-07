import 'package:flutter/material.dart';
import '../widgets/profil.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationWidget(),
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Beranda(),
    Tentang(),
    Pemesanan(),
    Profil(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 128, 128),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Tentang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Beranda'),
    );
  }
}

class Tentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tentang'),
    );
  }
}

class Pemesanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Pemesanan'),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                              Text(
                                "Paket",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Harga",
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
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfilPage(),
                                ),
                              );
                            },
                            child: Text("Selesai"),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 128, 128),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
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
    );
  }
}
