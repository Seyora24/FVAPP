import 'package:flutter/material.dart';
import 'package:fv_aplication/page1/aplikasipage.dart';
import 'package:fv_aplication/page1/formpemesananpage.dart';

class Paket extends StatelessWidget {
  const Paket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FV App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
    PaketPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FromPemesananPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 128, 128),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 20,
        iconSize: 1,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: "PESAN"
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: ''
          ),
        ],
      ),
    );
  }
}

class PaketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 500,
            height: 360,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("image/contoh.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AplikasiPage(),
                        ));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Mitra 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Fotografer Pernikahan",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 185,
                  height: 185,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage('https://picsum.photos/185/185')
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1.0, 1.0),
                    ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                          width: 87,
                          height: 87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.grey,
                            image: DecorationImage(
                            fit: BoxFit.cover,
                            image:NetworkImage('https://picsum.photos/185/100')
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Container(
                          width: 87,
                          height: 87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.grey,
                            image: DecorationImage(
                            fit: BoxFit.cover,
                            image:NetworkImage('https://picsum.photos/100/185')
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                          width: 87,
                          height: 87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.grey,
                            image: DecorationImage(
                            fit: BoxFit.cover,
                            image:NetworkImage('https://picsum.photos/190/188')
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Container(
                          width: 87,
                          height: 87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.grey,
                            image: DecorationImage(
                            fit: BoxFit.cover,
                            image:NetworkImage('https://picsum.photos/195/150')
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 500,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 13),
              child: Text("Daftar Paket",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fotografer Pernikahan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 13),
            child: Row(
              children: [
                Text("Waktu yang tersedia",
                style: TextStyle(
                  fontSize: 15
                  ),
                ),
                SizedBox(width: 80),
                Text("08:00 AM - 08:00 PM",
                style: TextStyle(
                  fontSize: 15
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 13),
            child: Row(
              children: [
                Text("Harga sesi per jam",
                style: TextStyle(
                  fontSize: 15
                  ),
                ),
                SizedBox(width: 140),
                Text("IDR 1.000.000",
                style: TextStyle(
                  fontSize: 15
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 13),
            child: Row(
              children: [
                Text("harga harian / sesi 6 jam",
                style: TextStyle(
                  fontSize: 15
                  ),
                ),
                SizedBox(width: 95),
                Text("IDR 4.000.000",
                style: TextStyle(
                  fontSize: 15
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}