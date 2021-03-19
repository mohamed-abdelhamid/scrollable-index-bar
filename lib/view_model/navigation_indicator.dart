import 'package:scrollable_index_bar/color_model/color_palette.dart';

class NavigationIndicator{
  //will help me know where to navigate

  NavigationIndicator._privateConstructor(){
    // i want it to calculate colors offsets only first time it gets instantiated
    this._calculateColorsOffsets();
  }
  static final NavigationIndicator _instance = NavigationIndicator._privateConstructor();

  factory NavigationIndicator() {
    return _instance;
  }

  final int paletteSize = ColorPalette.palette.length;
  Map<String,int> _colorsOffsets = new Map();

  int getColorOffsets(int index) => _colorsOffsets.values.elementAt(index);



  void _calculateColorsOffsets() {

    for (var c in colorCategories.values){
      String color = c.toShortString();

      // get the offset of first degree of color
      int colorOffset = ColorPalette.palette.indexWhere((e) => e.type == color) ;

      // append color and its first offset in palette to the map
      _colorsOffsets[color] = colorOffset ;
    }
  }

}