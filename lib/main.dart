import 'package:flutter/material.dart';
import 'package:navegator_bottom/pages/home.dart';
import 'package:navegator_bottom/pages/people.dart';
import 'package:navegator_bottom/pages/setting.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  List<Widget> _paginas = [
    Home(),
    Setting(),
    People(),
    People()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navegator', style: TextStyle(color: Colors.white),),
          backgroundColor: const Color.fromARGB(255, 2, 3, 73),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_rounded),
          label: "Home", 
          backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Settiing", 
          backgroundColor: const Color.fromARGB(255, 108, 19, 107)
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp),
          label: "People", 
          backgroundColor: const Color.fromARGB(255, 129, 169, 27)
          ),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app),
          label: "Exit", 
          backgroundColor: const Color.fromARGB(255, 190, 34, 14)
          ),
        ]),
      ),
    );
  }
}