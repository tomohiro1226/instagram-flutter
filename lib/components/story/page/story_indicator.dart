import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/configs/cnstants.dart';

class StoriesIndicator extends StatefulWidget {
  @override
  _StoriesIndicatorState createState() => _StoriesIndicatorState();
}

class _StoriesIndicatorState extends State<StoriesIndicator> {
  var _value = 0.0;
  var _timer;

  @override
  void initState() {
    const timeout = const Duration(milliseconds: 100);

    _timer = Timer.periodic(timeout, (Timer t) {
      setState(() {
        _value = _value + 0.025;
        if (_value > 1.025) {
          // _value = 0.0;
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      height: 2,
      child: LinearProgressIndicator(
        value: _value,
        backgroundColor: Colors.white54,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
}