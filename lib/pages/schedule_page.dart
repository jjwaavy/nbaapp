import 'package:flutter/material.dart';
import 'package:nba_app/widgets/scheduleappbar.dart';
import 'package:nba_app/widgets/schedulebody.dart';
import 'package:nba_app/widgets/standings/westernstandings.dart';
class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ScheduleAppBar(),
      backgroundColor: Color.fromRGBO(239, 239, 239, 0.51),
      body: ScheduleBody(),
    );
  }
}