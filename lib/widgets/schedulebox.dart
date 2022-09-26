import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ScheduleBox extends StatelessWidget {
  const ScheduleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Container(
      margin: const EdgeInsets.only(top: 6, bottom: 6),
      width: 349,
      height: 133,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromRGBO(239, 239, 239, 1)),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 0,
            blurRadius: 2,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(margin: const EdgeInsets.only(top: 28, left: 0), child: Column(children: [
            Image.asset("assets/imgs/sunsbig.png"),
            const Flexible(
                child: Text(
              "41-39",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 12, color: Color.fromRGBO(87, 87, 87, 1)),
            )),
          ])),
          Container(margin: const EdgeInsets.only(top: 40, left: 45, right: 45), child: Column(
            children: const [
              Flexible(
                  child: Text("15 - 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25, color: Color.fromRGBO(87, 87, 87, 1)))),
              // Flexible(
              //     child: Text("FINAL",
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //             fontSize: 11, color: Color.fromRGBO(87, 87, 87, 1)))),
              Flexible(
                  child: Padding(padding: EdgeInsets.only(top: 4), child: Text("12:00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(87, 87, 87, 1))))),
              Flexible(
                  child: Text("Q4",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11, color: Color.fromRGBO(87, 87, 87, 1)))),

            ],
          )),
          Container(margin: const EdgeInsets.only(top: 28), child: Column(children: [
            Image.asset("assets/imgs/mavs.png"),
            const Flexible(
                child: Text("21-60",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(87, 87, 87, 1))))
          ])),
        ],
      ),
    ));
  }
}
