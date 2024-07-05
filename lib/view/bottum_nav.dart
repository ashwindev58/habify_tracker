import 'package:flutter/material.dart';
import 'package:habify_tracker/view/add.dart';
import 'package:habify_tracker/view/calender.dart';
import 'package:habify_tracker/view/chart.dart';
import 'package:habify_tracker/view/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      const HomeScreen(),
      const CalenderScreen(),
      const AddScreen(),
      const ChartScreen(),
      // const ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onItemTapped(2);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF29068D),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              color: _selectedIndex == 0
                  ? const Color.fromARGB(255, 12, 12, 129)
                  : const Color.fromARGB(255, 43, 42, 42),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              color: _selectedIndex == 1
                  ? const Color.fromARGB(255, 12, 12, 129)
                  : const Color.fromARGB(255, 43, 42, 42),
              onPressed: () => _onItemTapped(1),
            ),
            const SizedBox(width: 40),
            // The space for the FAB
            IconButton(
              icon: const Icon(Icons.graphic_eq),
              color: _selectedIndex == 3
                  ? const Color.fromARGB(255, 12, 12, 129)
                  : const Color.fromARGB(255, 43, 42, 42),
              onPressed: () => _onItemTapped(3),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              color: _selectedIndex == 4
                  ? const Color.fromARGB(255, 12, 12, 129)
                  : const Color.fromARGB(255, 43, 42, 42),
              onPressed: () => _onItemTapped(4),
            ),
          ],
        ),
      ),
    );
  }
}

