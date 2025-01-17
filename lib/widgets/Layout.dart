import 'package:flutter/material.dart';
import 'package:h_flutter_example_project/views/AddCoffeeScreen.dart';
import 'package:h_flutter_example_project/views/FavoriteCoffeeListScreen.dart';
import 'package:h_flutter_example_project/views/RootScreen.dart';

class Layout extends StatefulWidget{
  Layout({super.key});

  @override
  LayoutState createState() => LayoutState();
}


class LayoutState extends State<Layout>{
  int _currunIndex = 0;


  void _onItemTapped(int index){
    setState(() {
      _currunIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Rootscreen(),
    FavoriteCoffeeListScreen(),
    AddCoffeeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold로 변경
        appBar: AppBar(title: const Text("커피 리스트")), // AppBar 추가
        body: _pages[_currunIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "홈"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.coffee),
                label: "하트"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "추가"
            ),
          ],
          currentIndex: _currunIndex,
          onTap: _onItemTapped,
        )
    );
  }
}