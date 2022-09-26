import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nba_app/widgets/schedulebox.dart';

class ScheduleBody extends StatelessWidget {
  const ScheduleBody({Key? key}) : super(key: key);
  final _length = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _length,
                itemBuilder: (context, index) {
                  if(index==0){
                    return Container(margin: const EdgeInsets.only(top: 15),
                    child: const ScheduleBox(),);
                  }
                  else if(index==_length-1){
                    return Container(margin: const EdgeInsets.only(bottom: 15),
                    child: const ScheduleBox(),);
                  }
                  return const ScheduleBox();
                })),
      ],
    );
  }
}
