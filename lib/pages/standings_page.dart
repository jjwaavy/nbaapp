import 'package:flutter/material.dart';
import 'package:nba_app/widgets/standings/easternstandings.dart';
import 'package:nba_app/widgets/standingsappbar.dart';
import 'package:nba_app/widgets/standingsheader.dart';
import 'package:nba_app/widgets/standings/easternstandingslist.dart';
import 'package:nba_app/widgets/standings/westernstandings.dart';

class StandingsPage extends StatelessWidget {
  const StandingsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Column( children: const [StandingsHeader(),Expanded(child:TabBarView(
                // physics: NeverScrollableScrollPhysics(), // To Disable swiping between tabs
                children: [
                  EasternStandings(),
                  WesternStandings(),
                ]))]),
            appBar: const StandingsAppbar(),
            backgroundColor: const Color.fromRGBO(239, 239, 239, 0.51)));
  }
}
