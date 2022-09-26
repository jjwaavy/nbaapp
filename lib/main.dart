import 'package:flutter/material.dart';
import 'package:nba_app/pages/pageHandler.dart';
import 'package:nba_app/pages/schedule_page.dart';
import 'package:nba_app/pages/standings_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'Helvetica',
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      ),
      title: _title,
      home: const PageHandler(),
      // home: Container( color: Colors.white, child: const StandingsPage()),
      // home: Container(color: Colors.white, child: const SchedulePage()),
    );
  }
}

