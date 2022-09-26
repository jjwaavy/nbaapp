import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class WesternTab extends StatelessWidget {
  const WesternTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Tab(
                  child: Text(
                      style: TextStyle(
                          color: Color.fromARGB(255, 89, 89, 89), fontSize: 12),
                      'Western Conference'));
  }
}