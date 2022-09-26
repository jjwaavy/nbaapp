import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double _kItemExtent = 32.0;
const List<String> _seasons = <String>[
  '2021-2022',
  '2020-2021',
  '2019-2020',
  '2018-2019',
  '2017-2018',
  '2016-2017',
  '2015-2016',
  '2014-2015',
  '2013-2014',
  '2012-2013',
  '2011-2012',
  '2010-2011',
  '2009-2010',
  '2008-2009',
  '2007-2008',
  '2006-2007',
  '2005-2006',
  '2004-2005',
  '2003-2004',
  '2002-2003',
  '2001-2002',
  '2000-2001',
];

class SeasonSelector extends StatefulWidget {
  const SeasonSelector({Key? key}) : super(key: key);

  @override
  State<SeasonSelector> createState() => _SeasonSelectorState();
}

class _SeasonSelectorState extends State<SeasonSelector> {
  Color textColor = const Color.fromARGB(255, 87, 87, 87);
  int _selectedSeason = 0;

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
        _seasons[_selectedSeason],
        style: TextStyle(
          color: textColor,
          fontSize: 20,
        ),
      ),
      onTap: () async => _showDialog(
          CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            scrollController:
                FixedExtentScrollController(initialItem: _selectedSeason),
            itemExtent: _kItemExtent,
            // This is called when selected item is changed.
            onSelectedItemChanged: (int selectedItem) {
              setState(() {
                _selectedSeason = selectedItem;
              });
            },
            children: List<Widget>.generate(_seasons.length, (int index) {
              return Center(
                child: Text(
                  _seasons[index],
                ),
              );
            }),
          ),
        ),
    );
  }
}
