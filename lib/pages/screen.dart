import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  List<IconData> bottomNavIcons = [
    Icons.house,
    Icons.theaters,
    Icons.add_box,
    Icons.shopping_cart,
    Icons.person,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.reply,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.heart_broken,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedIconTheme: const IconThemeData(color: Colors.black),
        items: List.generate(
          bottomNavIcons.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(bottomNavIcons[index]),
            label: '',
          ),
        ),
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
      ),
    );
  }
}
