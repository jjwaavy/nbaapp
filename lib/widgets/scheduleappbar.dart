import 'package:flutter/material.dart';
import 'package:nba_app/widgets/titleselectors/date_selector.dart';

class ScheduleAppBar extends StatefulWidget implements PreferredSizeWidget{
  const ScheduleAppBar({Key? key}) : preferredSize = const Size.fromHeight(56),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<ScheduleAppBar> createState() => _ScheduleAppBarState();
}

class _ScheduleAppBarState extends State<ScheduleAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
        shape: const Border(
            bottom: BorderSide(
                color: Color.fromARGB(255, 239, 239, 239), width: 1)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const DateSelector());
  }
}