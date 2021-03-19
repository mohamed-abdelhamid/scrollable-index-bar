import 'package:flutter/material.dart';
import 'color_object.dart';

enum colorCategories {
  red,
  green,
  blue,
  yellow,
  white,
  black,
}

extension ParseToString on colorCategories {
  String toShortString() {
    // return for ex red not colorCategories.red
    return this.toString().split('.').last;
  }
}

class ColorPalette{
  static final List<ColorObject> palette = [

    ColorObject( colorCategories.red.toShortString(), Colors.red[200]),
    ColorObject( colorCategories.red.toShortString(),  Colors.red[400]),
    ColorObject( colorCategories.red.toShortString(),  Colors.red[600]),
    ColorObject( colorCategories.red.toShortString(),  Colors.red[800]),
    ColorObject( colorCategories.red.toShortString(),  Colors.red[900]),

    ColorObject( colorCategories.green.toShortString(),  Colors.green[200]),
    ColorObject( colorCategories.green.toShortString(),  Colors.green[500]),
    ColorObject( colorCategories.green.toShortString(),  Colors.green[800]),

    ColorObject( colorCategories.blue.toShortString(),  Colors.blue[100]),
    ColorObject( colorCategories.blue.toShortString(),  Colors.blue[300]),
    ColorObject( colorCategories.blue.toShortString(),  Colors.blue[500]),
    ColorObject( colorCategories.blue.toShortString(),  Colors.blue[700]),
    ColorObject( colorCategories.blue.toShortString(),  Colors.blue[900]),

    ColorObject( colorCategories.yellow.toShortString(),  Colors.yellow[300]),
    ColorObject( colorCategories.yellow.toShortString(),  Colors.yellow[700]),

    ColorObject( colorCategories.white.toShortString(),  Colors.white10),
    ColorObject( colorCategories.white.toShortString(),  Colors.white12),
    ColorObject( colorCategories.white.toShortString(),  Colors.white24),
    ColorObject( colorCategories.white.toShortString(),  Colors.white30),
    ColorObject( colorCategories.white.toShortString(),  Colors.white38),
    ColorObject( colorCategories.white.toShortString(),  Colors.white54),
    ColorObject( colorCategories.white.toShortString(),  Colors.white60),
    ColorObject( colorCategories.white.toShortString(),  Colors.white70),
    
    ColorObject( colorCategories.black.toShortString(),  Colors.black12),
    ColorObject( colorCategories.black.toShortString(),  Colors.black26),
    ColorObject( colorCategories.black.toShortString(),  Colors.black45),
    ColorObject( colorCategories.black.toShortString(),  Colors.black54),
    ColorObject( colorCategories.black.toShortString(),  Colors.black87),

  ];
}
