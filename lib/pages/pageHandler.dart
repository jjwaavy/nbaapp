import 'package:flutter/material.dart';
import 'package:nba_app/pages/schedule_page.dart';
import 'package:nba_app/pages/standings_page.dart';
import 'package:nba_app/widgets/navigationbar.dart';

class PageHandler extends StatefulWidget {
  const PageHandler({Key? key}) : super(key: key);

  @override
  State<PageHandler> createState() => _PageHandlerState();
}

class _PageHandlerState extends State<PageHandler> {
  int _selectedIndex = 0;
  final screens = [
    const StandingsPage(),
    const SchedulePage(),
    // const SchedulePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex,
      children: screens),
      bottomNavigationBar: BottomNavigationBar(
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_sharp),
            label: 'Standings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedule',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.bar_chart_outlined),
          //   label: 'Stats',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 202, 202, 202),
        selectedLabelStyle: const TextStyle(fontFamily: 'Helvetica', fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        onTap: _onItemTapped,
      ),
    );
  }
}