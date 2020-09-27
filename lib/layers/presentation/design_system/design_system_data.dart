import 'package:flutter/material.dart';

import 'package:tada_team_test/helper/extensions.dart';

class DesignSystemColor {
  final Color blue;

  const DesignSystemColor({
    @required this.blue,
  });
}

class DesignSystemText {}

class DesignSystemData {
  final DesignSystemColor color;
  final DesignSystemText text;

  const DesignSystemData({
    @required this.color,
    @required this.text,
  });

  factory DesignSystemData.main() {
    const color = DesignSystemColor(
      blue: Colors.blue,
    );

    return DesignSystemData(
      color: color,
      text: DesignSystemText(),
    );
  }
}
