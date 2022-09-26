import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WestStandings extends StatelessWidget {
  final String lengthS= '1';
  const WestStandings({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    const styling = TextStyle(
        fontFamily: 'Helvetica',
        fontSize: 12,
        color: Color.fromRGBO(87, 87, 87, 1));
    const spacing = Spacer();
    return Container(
      height: 40,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(left: 15), child: Text('1', style: styling)),
          Padding(padding: EdgeInsets.only(left: (lengthS.length > 1) ? 4 : 10), child: Image.asset(width: 30, height: 30, "assets/imgs/suns.png")),
          const Padding(padding: EdgeInsets.only(left: 49)),
          spacing,
          const Expanded(child: Text('64', style: styling)),
          // spacing,
          const Expanded(child: Text('18', style: styling,)),
          // spacing,
          const Expanded(child: Text('.780', style: styling)),
          // spacing,
          const Expanded(child: Text('-', style: styling)),
          // spacing,
          const Expanded(child: Text('6-4', style: styling)),
          // spacing,
          const Expanded(child: Text('L1', style: styling)),
          // spacing
        ],
      ),
    );
  }
}
