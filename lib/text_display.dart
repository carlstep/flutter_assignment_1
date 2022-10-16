import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  const TextDisplay({
    Key? key,
    required List<String> textDisplay,
    required int textDisplayIndex,
  })  : _textDisplay = textDisplay,
        _textDisplayIndex = textDisplayIndex,
        super(key: key);

  final List<String> _textDisplay;
  final int _textDisplayIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      _textDisplay[_textDisplayIndex],
      style: const TextStyle(fontSize: 28),
    );
  }
}
