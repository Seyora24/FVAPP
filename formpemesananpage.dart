import 'dart:core';

import 'package:flutter/material.dart';
import 'package:fv_aplication/page1/cekpesananpage.dart';
import 'package:fv_aplication/page1/paket.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:intl/intl.dart';

class FromPemesananPage extends StatelessWidget {
  const FromPemesananPage({super.key});

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
    Pemesanan(),
  ];

  void _onTabTapped(int index) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CekPesananPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 128, 128),
        title: Text(
          "Rencana Pemotretan",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Paket(),
            ));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 128, 128),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 20,
        iconSize: 1,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: "LANJUT"),
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
        ],
      ),
    );
  }
}

class Pemesanan extends StatefulWidget {
  @override
  State<Pemesanan> createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  DateTime selectDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay(hour: 08, minute: 00);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  List<String> data1 = [
    "Fotografer Pernikahan",
    "Fotografer Keliling",
    "Fotografer Sekolah"
  ];

  List<String> data2 = [
    "Per-Jam",
    "Per-Hari",
  ];

  List<String> data3 = [
    "1 Jam",
    "2 Jam",
    "3 Jam",
    "4 Jam",
    "5 Jam",
    "6 Jam",
    "7 Jam",
    "8 Jam",
    "9 Jam",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buat Rencana Anda",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jenis Pemotretan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 345,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 5, top: 2),
              child: DropdownSearch<String>(
                popupProps: PopupProps.menu(
                    showSelectedItems: true, fit: FlexFit.loose),
                items: data1,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
                onChanged: print,
                selectedItem: "Fotografer Pernikahan",
              ),
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Paket",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 345,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 5, top: 2),
              child: DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                  fit: FlexFit.loose,
                ),
                items: data2,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration:
                      InputDecoration(border: InputBorder.none),
                ),
                onChanged: print,
                selectedItem: "Per-Jam",
              ),
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Atur Bulan, Tanggal dan Hari",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 345,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    DateFormat.yMMMEd().format(selectDate),
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: selectDate,
                        firstDate: selectDate.subtract(Duration(days: 30)),
                        lastDate: DateTime(selectDate.year + 1),
                        initialEntryMode: DatePickerEntryMode.input)
                          .then((value) {
                        if (value != null)
                          setState(() {
                            selectDate = value;
                          });
                        String formattedText = DateFormat('dd/MM/yyyy').format(selectDate);
                        print(formattedText);
                      });
                    },
                    icon: Icon(Icons.arrow_drop_down),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Atur Waktu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 345,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    _timeOfDay.format(context).toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: IconButton(
                    onPressed: _showTimePicker,
                    icon: Icon(Icons.arrow_drop_down),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sesi Waktu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 345,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 5, top: 2),
              child: DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                  fit: FlexFit.loose,
                ),
                items: data3,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration:
                      InputDecoration(border: InputBorder.none),
                ),
                onChanged: print,
                selectedItem: "1 hour",
              ),
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Perkiraan harga",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Fotografer Pernikahan",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Text(
                  "Rp.500.000",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
