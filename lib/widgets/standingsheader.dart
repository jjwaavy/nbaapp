import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StandingsHeader extends StatelessWidget {
  const StandingsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styling = TextStyle(fontFamily: 'Helvetica', fontSize: 12, color: Color.fromRGBO(87, 87, 87, 1));
    const spacing = Spacer();
    return Container(
      height: 40,
      color: const Color.fromRGBO(239, 239, 239, 0.51),
      child: Row(
        children:  const <Widget>[
          Padding(padding: EdgeInsets.only(left: 110)),
          spacing,
          Expanded(child: Text('W', style: styling)),
          // spacing,
          Expanded(child: Text('L', style: styling,)),
          // spacing,
          Expanded(child: Text('PCT', style: styling)),
          // spacing,
          Expanded(child: Text('GB', style: styling)),
          // spacing,
          Expanded(child: Text('L10', style: styling)),
          // spacing,
          Expanded(child: Text('STRK', style: styling)),
          // spacing
        ],
      ),
    );
  }
}
