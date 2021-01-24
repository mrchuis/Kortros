import 'package:auth_firebase/developer/developer.dart';
import 'package:auth_firebase/favorites/favorites.dart';
import 'package:auth_firebase/messanger/messenger.dart';
import 'package:auth_firebase/news/news.dart';
import 'package:auth_firebase/search/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    SearchScreen(),
    FavoritesScreen(),
    DeveloperScreen(),
    NewsScreen(),
    MessengerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.red),
            //label: 'Поиск',
            title: Text(
              'Поиск',
              style: TextStyle(fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.red),
            //label: 'Избранное',
            title: Text(
              'Избранное',
              style: TextStyle(fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.red),
            //label: 'Застройщик',
            title: Text(
              'Застройщик',
              style: TextStyle(fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article, color: Colors.red),
            //label: 'Новости',
            title: Text(
              'Новости',
              style: TextStyle(fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.red),
            //label: 'Чаты',
            title: Text(
              'Чаты',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
