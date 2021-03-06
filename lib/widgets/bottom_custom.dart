import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function currentIndex;
  const BottomNav({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        iconSize: 25.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery_outlined), label: 'Galeria'),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: 'Animado')
        ]);
  }
}
