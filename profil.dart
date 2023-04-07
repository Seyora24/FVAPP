import 'package:flutter/material.dart';
import '../widgets/invoice.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

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
        children: [
          AppBar(
            toolbarHeight: 230,
            backgroundColor: Color.fromARGB(255, 0, 128, 128),
            actions: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('images/cat.jpeg'),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 390,
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
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  Nama Lengkap",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  No. Telepon",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  Tanggal Lahir",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Align(
                          child: Text(
                            "  Riwayat Pemesanan",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => InvoicePage(),
                                    ),
                                  );
                                },
                                child: Text("Lihat"),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 0, 128, 128),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
