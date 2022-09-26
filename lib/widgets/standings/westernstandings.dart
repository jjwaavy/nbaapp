import 'package:flutter/material.dart';
import 'package:nba_app/widgets/standings/westernstandingslist.dart';

class WesternStandings extends StatelessWidget {
  const WesternStandings({Key? key}) : super(key: key);
  final _length = 15;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
                    Flexible(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: _length,
                            itemBuilder: (context, index) {
                              if(index.isEven || index==0){
                                return const WestStandings(color: Colors.white);
                              }
                              return const WestStandings(color: Color.fromRGBO(239, 239, 239, 0.51));
                            }))
                  ]);
  }
}
