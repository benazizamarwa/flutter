import 'package:app/Custom.dart';
import 'package:app/box.dart';
import 'package:app/contact.dart';


import 'package:flutter/material.dart';
import 'form_page.dart';
import 'table_admin.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'Flutter Demo',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   // ignore: unnecessary_const
   MyHomePage(),
    FormPage(),
    Contact(),
   TableAdmin(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: Custom(),
          child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: Colors.teal[200],
          ),
        ),
        ),
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
     
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.supervised_user_circle),
            label: 'Service',
            backgroundColor:Colors.teal[700],
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.verified_user_rounded),
            label: 'Demande',
            backgroundColor:Colors.teal[600],
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contact',
            backgroundColor: Colors.teal,
          ),
           BottomNavigationBarItem(
            icon: const  Icon(Icons.arrow_forward_ios),
            label: 'Admin',
            backgroundColor: Colors.teal[400],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
