import 'package:flutter/material.dart';

import './text_display.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState(); //
  }
}

class _TextControlState extends State<TextControl> {
  final _textDisplay = [
    'some words',
    'some more words',
    'even more words',
    'click to reset!'
  ];

  var _textDisplayIndex = 0;

  void _resetTextDisplay() {
    if (_textDisplayIndex == _textDisplay.length - 1) {
      setState(() {
        _textDisplayIndex = 0;
        print('if textDisplayIndex - $_textDisplayIndex');
      });
    } else {
      setState(() {
        _textDisplayIndex = _textDisplayIndex + 1;
        print('else textDisplayIndex - $_textDisplayIndex');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextDisplay(
            textDisplay: _textDisplay, textDisplayIndex: _textDisplayIndex),
        ElevatedButton(
          onPressed: _resetTextDisplay,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            foregroundColor: MaterialStateProperty.all(Colors.grey[900]),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'click me!',
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
