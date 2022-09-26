import 'package:flutter/material.dart';
import 'package:nba_app/widgets/standingstabs/easterntab.dart';
import 'package:nba_app/widgets/standingstabs/westerntab.dart';
import 'package:nba_app/widgets/titleselectors/season_selector.dart';

class StandingsAppbar extends StatefulWidget implements PreferredSizeWidget {
  const StandingsAppbar({Key? key})
      : preferredSize = const Size.fromHeight(100),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<StandingsAppbar> createState() => _StandingsAppbarState();
}

class _StandingsAppbarState extends State<StandingsAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
        shape: const Border(
            bottom: BorderSide(
                color: Color.fromARGB(255, 239, 239, 239), width: 1)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const SeasonSelector(),
        bottom: const TabBar(
            labelPadding: EdgeInsets.all(0),
            indicatorColor: Color.fromARGB(255, 89, 89, 89),
            tabs: <Widget>[EasternTab(), WesternTab()]));
  }
}
