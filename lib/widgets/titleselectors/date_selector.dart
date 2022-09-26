import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({Key? key}) : super(key: key);

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  Color textColor = const Color.fromARGB(255, 87, 87, 87);
  DateTime date = DateTime.now();
  void _showDialog(Widget child) async {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            )).then((val) {
      //Make your API request to LeagueStandingsV3 here as this happens after dismissal
      // print("hey");
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      onTapUp: ((details) {
        setState(() {
          textColor = const Color.fromARGB(255, 87, 87, 87);;
        });
      }),
      onTapDown: ((details) {
        setState(() {
          textColor = const Color.fromRGBO(202, 202, 202, 1);
        });
      }),
      onTapCancel: (() {
        setState(() {
          textColor = const Color.fromARGB(255, 87, 87, 87);;
        });
      }),
      child: Text(
                      DateFormat.yMMMd().format(date),
                      style: TextStyle(
                        fontSize: 20,
                        color: textColor,
                      ),
      ),
      onTap: () => _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: date,
                        mode: CupertinoDatePickerMode.date,
                        use24hFormat: true,
                        // This is called when the user changes the date.
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() => date = newDate);
                        },
                      ),
                    ),
    );
  }
}