import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: MyStatefulWidget());
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Azfa Fairuzia H', style: optionStyle),
    Text('2211102328', style: optionStyle),
    Text('Black & White, also Blue', style: optionStyle),
    Text('Watching Movies, Listening to Music', style: optionStyle),
    Text('Surakarta', style: optionStyle),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar Sample')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Tambahkan ini
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Nama'),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'NIM'),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Warna Favorit',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Hobi'),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Asal Daerah',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 138, 70, 222),
        onTap: _onItemTapped,
      ),
    );
  }
}