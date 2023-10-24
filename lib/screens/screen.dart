import 'package:flutter/material.dart';
import 'package:login/screens/homescreen.dart';
import 'package:login/screens/porfilescreen.dart';
import 'package:login/screens/reelscreen.dart';
import 'package:login/screens/searchscree.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 
 int _selectIndex =0;

  static final List<Widget> _listOptions =  [
    const HomeScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const ProfileScreen(),
  ];
  void _OnItemsTap(int index){
    setState(() {
      _selectIndex =index;
    });

  }
 
  @override

  


  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(child: _listOptions.elementAt(_selectIndex)),
     backgroundColor:Colors.black ,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon:  Icon(Icons.home), label: '', backgroundColor: Colors.black),
           BottomNavigationBarItem(icon:  Icon(Icons.search_outlined), label: '', backgroundColor: Colors.black),
            BottomNavigationBarItem(icon:  Icon(Icons.play_arrow_outlined), label: '', backgroundColor: Colors.black),
             BottomNavigationBarItem(icon:  Icon(Icons.person_2_outlined), label: '', backgroundColor: Colors.black),
             
        ],

        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels:false,
        iconSize: 30,
        currentIndex: _selectIndex,
        selectedItemColor: Colors.white,
        onTap: _OnItemsTap,
        
       ),
    ); 
      
    
  }
}